Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68858114147
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 14:15:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVGb8HnyEw3WIo4RYPdTJtNlfri1vjtzCwyy8rDzaDU=; b=TzPgbk6mYcSapT
	m9VtfXoRC00ZXpdUSNF3P2MZal9RivpmNvs1n0FYPNLdlchBbj9ZCCVF4Qfo3SFND9RR79iyXIrDF
	mapAopCwypYh9JoQpMjc29jCZg4OYgFRQKJ7AbzGKi185LCUFkx8q+PB6dIJ+53bqWn3M65qjln00
	z+Oki89ludbLQv6ElJ5AB9VieewiHBuq1YUL/Qd3uZt7XxFCWsuDW3VZT76WDNXlxG+31gEiLK/Aa
	AIpxkQcbkCxLpj9FSN2HuZ+RQsAqq5K0/hwRnmWlYnalNuDxcNRNXUZYu7QIT8hUq1k781MYh2wHm
	H3IRRSYZQ0EITj/O17wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icqyQ-0007oY-UH; Thu, 05 Dec 2019 13:15:14 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icqyH-0007LD-2O
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 13:15:06 +0000
Received: by mail-qt1-x843.google.com with SMTP id 14so3478105qtf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 05:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=ci+Il7R0z85hcBaZjDpG/Dx0n3gFLviKjHNEHX1Pepk=;
 b=TP6Rm1zOouE3WSPWD8apJn5tfIaeOGIdFpSt5bs/4GbVl6fN5nFf05kN/RyiB0tQgs
 7+pi9+O0IfLFLMN8JyhbC64Lt69jKs1Hnn5YJhGDkGdML0trHHHwrv1UbYP1IHKxqfnT
 1c+7haZO77OhJJlUBsroTbFcDMTVlmNYLaNrcTjZ8yFNbarKmA0vkrvweWmLQ3e2/3Rc
 j2a2sHFIkWwNYdvePdcsP03aplXXl5o0huznYeYuC8O0+k5xPRPE99hbTibY/s8WLnTW
 L//lt3nW/AocEgytxvAzk+kn1RBaE4xSlMrVH5iCVPlsoQElHKzU+CiVZKNYXHLQuTTw
 VOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=ci+Il7R0z85hcBaZjDpG/Dx0n3gFLviKjHNEHX1Pepk=;
 b=DqoIMbI/1cLnV5mXNCBYZrMcXJW1jQQQWYbO9uF5DUHRFbfWiwnj/QGHNjX5afuQQG
 L9rzz9Um9hJ+kMSHWwvJDgiA7UNk+QhxyAmkz7wKL2OSM7j+TWSH/m5aF4N9NN/2C48F
 /zJTlZU1/2wLQcQTP/XbvMybNYe8liPB4V/rfc6AkftImOgbAVtNWl1TqLP6a49h7hzo
 cYB2+JIzu2MTZCUY6dFYLKpViQIJIPR2cclEqUkd2Lc1kRViC4EQcXX6InicawiFIFRE
 W+0XRAe3hi1An5Ynm5fgwFwkFNlhGlc6HFQLOcwItFJ/Supq8NhVB7LKT7ZzABOTZ9BH
 Mmzw==
X-Gm-Message-State: APjAAAWqiE7XhxEa7IqjftLcSSaAQPKX+kZms0+8wjDk7NQRfCXB2+mK
 r15LRa1oXr2Z8EOJ/cPmILWrYPnGYoL0Rw==
X-Google-Smtp-Source: APXvYqxHW8DGT/kKJL7N6FSy/ayvCsum2cTR7vYA5fykS6fEhOCjJRkFygAl+kF2HccA8SqNMAi0nQ==
X-Received: by 2002:ac8:60cc:: with SMTP id i12mr7329084qtm.103.1575551703794; 
 Thu, 05 Dec 2019 05:15:03 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id d134sm4917395qkc.42.2019.12.05.05.15.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 05:15:02 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v15 00/23] Generic page walk and ptdump
Date: Thu, 5 Dec 2019 08:15:02 -0500
Message-Id: <A22DE6B7-23A1-41FA-AF82-9613778277C7@lca.pw>
References: <20191204163235.GA1597@arm.com>
In-Reply-To: <20191204163235.GA1597@arm.com>
To: Steven Price <Steven.Price@arm.com>
X-Mailer: iPhone Mail (17B111)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_051505_143343_ADAEF14F 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, David Hildenbrand <david@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Linux-MM <linux-mm@kvack.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, Thomas Hellstrom <thellstrom@vmware.com>,
 the arch/x86 maintainers <x86@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>,
 =?utf-8?Q?J=C3=A9r=C3=B4me_Glisse?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 James Morse <James.Morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIERlYyA0LCAyMDE5LCBhdCAxMTozMiBBTSwgU3RldmVuIFByaWNlIDxTdGV2ZW4uUHJp
Y2VAYXJtLmNvbT4gd3JvdGU6Cj4gCj4gSSd2ZSBiaXNlY3RlZCB0aGlzIHByb2JsZW0gYW5kIGl0
J3MgYSBtZXJnZSBjb25mbGljdCB3aXRoOgo+IAo+IGFjZTg4ZjEwMThiOCAoIm1tOiBwYWdld2Fs
azogVGFrZSB0aGUgcGFnZXRhYmxlIGxvY2sgaW4gd2Fsa19wdGVfcmFuZ2UoKSIpCgpTaWdoLCBo
b3cgZG9lcyB0aGF0IGNvbW1pdCBlbmQgdXAgbWVyZ2luZyBpbiB0aGUgbWFpbmxpbmUgd2l0aG91
dCBnb2luZyB0aHJvdWdoIEFuZHJld+KAmXMgdHJlZSBhbmQgbWlzc2VkIGFsbCB0aGUgbGludXgt
bmV4dCB0ZXN0aW5nPyBJdCB3YXMgbWVyZ2VkIGludG8gdGhlIG1haW5saW5lIE9jdCA0dGg/Cgo+
IFJldmVydGluZyB0aGF0IGNvbW1pdCAiZml4ZXMiIHRoZSBwcm9ibGVtLiBUaGF0IGNvbW1pdCBh
ZGRzIGEgY2FsbCB0bwo+IHB0ZV9vZmZzZXRfbWFwX2xvY2soKSwgaG93ZXZlciB0aGF0IGlzbid0
IG5lY2Vzc2FyaWx5IHNhZmUgd2hlbgo+IGNvbnNpZGVyaW5nIGFuICJ1bnVzdWFsIiBtYXBwaW5n
IGluIHRoZSBrZXJuZWwuIENvbWJpbmVkIHdpdGggbXkgcGF0Y2gKPiBzZXQgdGhpcyBsZWFkcyB0
byB0aGUgQlVHIHdoZW4gd2Fsa2luZyB0aGUga2VybmVsJ3MgcGFnZSB0YWJsZXMuCj4gCj4gQXQg
dGhpcyBzdGFnZSBJIHRoaW5rIGl0J3MgYmVzdCBpZiBBbmRyZXcgZHJvcHMgbXkgc2VyaWVzIGFu
ZCBJJ2xsIHRyeQo+IHRvIHJld29yayBpdCBvbiB0b3AgLXJjMSBmaXhpbmcgdXAgdGhpcyBjb25m
bGljdCBhbmQgdGhlIG90aGVyIHg4Ngo+IDMyLWJpdCBpc3N1ZSB0aGF0IGhhcyBjcm9wcGVkIHVw
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
