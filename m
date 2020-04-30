Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDBC1C08FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gO8K0Nqu3Rg+qqq22g2iJ7G8HqMjwWYdOCXCSJ91Xzw=; b=GI1SamUAJ2kFSs
	ffh/nNyNjGIKoAsN2NkNJf4yAZm4g3he7HCtomDMlS0rmQDe/KaVdSArb6XstBKQOr8AwA2dr587+
	2iSkOlckK92VdUVuZ6VwHpqnKwvn1PDG1eMRZWMtHXBTF7G1irH1bZ5RxUVB24MAmsiGea9j/x8gt
	N3eGFFJrrgDmGRP9Oi+3JdS+eeLqL/eY5KikDX3iLpeBC83f52B5O/nW/4GD+p3R2c2GqjwoYulzY
	3q7QzUKdPvQcgPSy5e7dSLz3xMvNW9EQDpySZvLOW8cZL8p1GzktJ52PBkAxkkiZnQ5YJu1kZ0R9s
	lMJhQgR3LEXfDsHhHzMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGWw-0007hR-3z; Thu, 30 Apr 2020 21:15:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGU6-0005HE-7h
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:12:44 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 176AA207DD;
 Thu, 30 Apr 2020 21:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588281161;
 bh=ZD0jljxwJlB1qZk4zuXOvumuhDv7yUCcoT6YJz1JRXo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mirM/kzSKwe1mHuJk5PQ1mOaSLvi7v/LHKLnjZk9S6O/zYkBpOkwcn/Nw4bwlenzF
 ZD3f6fqWR70X1JeimYBzkAExHM6GphHXuV/1Ds7P71C752KiHyHbS8p3rnNcGamPaY
 wfRn3q/1eXaWUVvgUXhzcAQ0soKR4OXjdWIuRJZg=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Mark Rutland <mark.rutland@arm.com>,
 x86@kernel.org, Borislav Petkov <bp@alien8.de>,
 Ingo Molnar <mingo@redhat.com>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
Subject: Re: [PATCH v2 0/2] Make memory size reporting in kexec_file_load()
 accurate
Date: Thu, 30 Apr 2020 22:12:25 +0100
Message-Id: <158827870560.24445.10969636442610279958.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200430163142.27282-1-l.stelmach@samsung.com>
References: <20200430105034.17513-1-l.stelmach@samsung.com>
 <CGME20200430163213eucas1p2c5c040b5d34cf2f41286b99751df7cb2@eucas1p2.samsung.com>
 <20200430163142.27282-1-l.stelmach@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141242_494389_AE08212F 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Bhupesh Sharma <bhsharma@redhat.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 James Morse <james.morse@arm.com>,
 Thiago Jung Bauermann <bauerman@linux.vnet.ibm.com>,
 Will Deacon <will@kernel.org>, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAzMCBBcHIgMjAyMCAxODozMTo0MCArMDIwMCwgPT9VVEYtOD9xPz1DNT04MXVrYXN6
PTIwU3RlbG1hY2g/PSB3cm90ZToKPiBDYWxsaW5nIGtleGVjX2FkZF9idWZmZXIoKSBwYWdlLWFs
bGlnbnMgdGhlIHZhbHVlIG9mIGtidWYubWVtc3osIHNvIGl0Cj4gaXMgbm90IHNhbWUgYXMgdGhl
IHJlcXVlc3RlZCB2YWx1ZS4gSGVuY2UgYm90aCBidWZzeiBhbmQgbWVtc3ogc2hvdWxkCj4gYWZ0
ZXIga2V4ZWNfYWRkX2J1ZmZlcigpIGlzIGNhbGxlZCBzaG91bGQgYmUgYmUgcmVwb3J0ZWQgc2Vw
YXJhdGVseS4KPiAKPiDFgXVrYXN6IFN0ZWxtYWNoICgyKToKPiAgIGFybTY0OiBrZXhlY19maWxl
OiBwcmludCBhcHByb3ByaWF0ZSB2YXJpYWJsZQo+ICAgeDg2OiBrZXhlY19maWxlOiBwcmludCBh
cHByb3ByaWF0ZSB2YXJpYWJsZQo+IAo+IFsuLi5dCgpBcHBsaWVkIHRvIGFybTY0IChmb3ItbmV4
dC9taXNjKSwgdGhhbmtzIQoKWzEvMl0gYXJtNjQ6IGtleGVjX2ZpbGU6IHByaW50IGFwcHJvcHJp
YXRlIHZhcmlhYmxlCiAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvYXJtNjQvYy81MTA3NWUw
Y2I3NTkKWzIvMl0geDg2OiBrZXhlY19maWxlOiBwcmludCBhcHByb3ByaWF0ZSB2YXJpYWJsZQog
ICAgICAobm90IGFwcGxpZWQpCgpDaGVlcnMsCi0tIApXaWxsCgpodHRwczovL2ZpeGVzLmFybTY0
LmRldgpodHRwczovL25leHQuYXJtNjQuZGV2CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
