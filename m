Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E5C1ED328
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 17:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=APGMYSnTZXZJj3VLdZVJ9Jd3EeKAxjBqaOYCs2IkxvI=; b=pLXXB38zr9+p4d0RvagOZGcP3
	YjjDUWZkMPXtLnpJte2owboH/IXwuNvT+ZCD/fKrEyWVWDdTmpLm7TZhiLJWNaM69KUzvjeVD2TVK
	lHqE58SjEAp1MsCEBKwjzQ2Y0KWSV8yGxq5o26B76ZA23jg+J8adqPoKySuYaBaydTZuMcG6RmbZF
	QxJMUCiQp7BHDQilYscjNTrKtrhvRqvjNbtpGMPfHHkFe2mzBa3XIHAjNZC106ujKDvF5QthZXTmf
	BEi72aBt3WtNG/yCNtBpC3KcLcVJ4hj+3ClrzNwtFVPkxWfBtRHFPqsGIEXJZFiYnPjxdjgA1aSCj
	w6syGLZIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgV8T-00065i-4p; Wed, 03 Jun 2020 15:16:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgV8M-000650-7y
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 15:16:51 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA17D206E6;
 Wed,  3 Jun 2020 15:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591197409;
 bh=8vfgBSrae1Sl/Co8GuGiBgYLsvF7HA7YclCM8lPnj00=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=m3jJeo6lRuQ/vrRynASEprCi/bRIUGaRSPi5aAhrtSctPEaYpqEArdFme9bVSBOEJ
 w4UTYgt9Ysw8WAI1PfQNDp5kCgvW93kVXGqin/tZ0rkMeOAeQJmH6wQ+A1RfXlL5nV
 mmiINRD+WgMbVywc7EV4SJqSkJ6deRbaX1mIS4sI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jgV8K-00HUXD-7G; Wed, 03 Jun 2020 16:16:48 +0100
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 16:16:48 +0100
From: Marc Zyngier <maz@kernel.org>
To: "Saidi, Ali" <alisaidi@amazon.com>
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
In-Reply-To: <AE04B507-C5E2-44D2-9190-41E9BE720F9D@amazon.com>
References: <AE04B507-C5E2-44D2-9190-41E9BE720F9D@amazon.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <622fb6be108e894ee365d6b213535c8b@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alisaidi@amazon.com, benh@amazon.com, tglx@linutronix.de,
 jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dwmw@amazon.co.uk, zeev@amazon.com,
 zorik@amazon.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_081650_305221_F9F5E75C 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Herrenschmidt, Benjamin" <benh@amazon.com>, jason@lakedaemon.net,
 "Machulsky, Zorik" <zorik@amazon.com>, linux-kernel@vger.kernel.org,
 "Zilberman, Zeev" <zeev@amazon.com>, linux-arm-kernel@lists.infradead.org,
 tglx@linutronix.de, "Woodhouse, David" <dwmw@amazon.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNi0wMiAxOTo0NywgU2FpZGksIEFsaSB3cm90ZToKClsuLi5dCgo+IExvb2tzIGxp
a2UgdGhlIHg4NiBhcGljIHNldF9hZmZpbml0eSBjYWxsIGV4cGxpY2l0bHkgY2hlY2tzIGZvciBp
Zgo+IGl04oCZcyBhY3RpdmF0ZWQgaW4gdGhlIG1hbmFnZWQgY2FzZSB3aGljaCBtYWtlcyBzZW5z
ZSBnaXZlbiB0aGUgY29kZQo+IEJlbiBwb3N0ZWQgYWJvdmU6Cj4gICAgICAgICAgIC8qCj4gICAg
ICAgICAgICAqIENvcmUgY29kZSBjYW4gY2FsbCBoZXJlIGZvciBpbmFjdGl2ZSBpbnRlcnJ1cHRz
LiBGb3IgCj4gaW5hY3RpdmUKPiAgICAgICAgICAgICogaW50ZXJydXB0cyB3aGljaCB1c2UgbWFu
YWdlZCBvciByZXNlcnZhdGlvbiBtb2RlIHRoZXJlIGlzIAo+IG5vCj4gICAgICAgICAgICAqIHBv
aW50IGluIGdvaW5nIHRocm91Z2ggdGhlIHZlY3RvciBhc3NpZ25tZW50IHJpZ2h0IG5vdyBhcyAK
PiB0aGUKPiAgICAgICAgICAgICogYWN0aXZhdGlvbiB3aWxsIGFzc2lnbiBhIHZlY3RvciB3aGlj
aCBmaXRzIHRoZSBkZXN0aW5hdGlvbgo+ICAgICAgICAgICAgKiBjcHVtYXNrLiBMZXQgdGhlIGNv
cmUgY29kZSBzdG9yZSB0aGUgZGVzdGluYXRpb24gbWFzayBhbmQgCj4gYmUKPiAgICAgICAgICAg
ICogZG9uZSB3aXRoIGl0Lgo+ICAgICAgICAgICAgKi8KPiAgICAgICAgICAgaWYgKCFpcnFkX2lz
X2FjdGl2YXRlZChpcnFkKSAmJgo+ICAgICAgICAgICAgICAgKGFwaWNkLT5pc19tYW5hZ2VkIHx8
IGFwaWNkLT5jYW5fcmVzZXJ2ZSkpCj4gCj4gTXkgb3JpZ2luYWwgcGF0Y2ggc2hvdWxkIGNlcnRh
aW4gY2hlY2sgYWN0aXZhdGVkIGFuZCBub3QgZGlzYWJsZWQuCj4gV2l0aCB0aGF0IGRvIHlvdSBz
dGlsbCBoYXZlIHJlc2VydmF0aW9ucyBNYXJjPwoKSSdkIHN0aWxsIHByZWZlciBpdCBpZiB3ZSBj
b3VsZCBkbyBzb21ldGhpbmcgaW4gY29yZSBjb2RlLCByYXRoZXIKdGhhbiBzcHJlYWRpbmcgdGhl
c2UgY2hlY2tzIGluIHRoZSBpbmRpdmlkdWFsIGRyaXZlcnMuIElmIHdlIGNhbid0LApmYWlyIGVu
b3VnaC4gQnV0IGl0IGZlZWxzIGxpa2UgdGhlIGNvcmUgc2V0X2FmZmluaXR5IGZ1bmN0aW9uIGNv
dWxkCmp1c3QgZG8gdGhlIHNhbWUgdGhpbmcgaW4gYSBzaW5nbGUgcGxhY2UgKGFsdGhvdWdoIHRo
ZSBzdGFydGVkIHZzCmFjdGl2YXRlZCBpcyB5ZXQgYW5vdGhlciBwaWVjZSBvZiB0aGUgcHV6emxl
IEkgZGlkbid0IGNvbnNpZGVyLAphbmQgdGhlIElUUyBkb2Vzbid0IG5lZWQgdGhlICJjYW5fcmVz
ZXJ2ZSIgdGhpbmcpLgoKVGhhbmtzLAoKICAgICAgICAgTS4KLS0gCkphenogaXMgbm90IGRlYWQu
IEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
