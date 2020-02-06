Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C13E1540FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 10:16:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jmp1n4BPGPJbdp+CCtn5kxnV1qv8nGb7HRflwsUQOws=; b=YYTo7BxV4ev1QGgP6hu+Y5CcI
	gqBd18ge3Ik8CE6BIhZ37hJ21RJ3w0GfuDZEyuY/j1OLb3+TeMHZPQEGoDM2lX1KfHuvBsUfzxv6F
	lJDV4PdkgeFZQM8OY6YGOAsJBebypQ2ORmKjNZJqlbkavutqLfLJhNdRHD1cIfn7D0pgkMkLdoc9K
	aZzvv3a1ftVzc+lt4e/EC2VjsWUU2rdGQyKH0F6ZgtUXJGFbkcjKcXgEpX5MR9ovsuj8f1Ibykf/W
	Mtn3+o1c0Xsvm46ZFAYZ4FsP9n1AwY04rUemKKQyl/PgfI5CmgfVN9VMWSgyL4kNDMf5p3FYbuGb+
	4EBNXVP9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izdGV-0006A9-NI; Thu, 06 Feb 2020 09:16:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izdGP-00069n-4b
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 09:15:58 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B3001206CC;
 Thu,  6 Feb 2020 09:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580980556;
 bh=rQxdXGb3JBObZixrLXhy0G1L2s3YNcGekksClrmrHRo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DHREm+Ty+0AsFxcgp5M0I4HD7EFZJvI1s2CepcnjEDWaMxgL35WipfJK4R73meckj
 2VrfXkdrnGk108m+83h+r33Y7R4b2Ke453jmIRAURghZwoGftr+9DSUTd2gCOWVDUm
 jsRcF2c11YdSD18KTefyAHVzStDT7MhXZ+pccbt4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1izdGM-003HSq-Vh; Thu, 06 Feb 2020 09:15:55 +0000
MIME-Version: 1.0
Date: Thu, 06 Feb 2020 09:15:54 +0000
From: Marc Zyngier <maz@kernel.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH v2] irqchip: xilinx: Add support for multiple instances
In-Reply-To: <575c6350-139b-65b9-f9e2-2633656baa85@xilinx.com>
References: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
 <b8e7b9120bc6cd306bda3347cde117ff@kernel.org>
 <3d6077c1-2b13-acc6-e8f4-3d1ab23dc159@xilinx.com>
 <8b5c5b5d601856ddc3f4388e267c4cd0@kernel.org>
 <575c6350-139b-65b9-f9e2-2633656baa85@xilinx.com>
Message-ID: <a3008824af22411034a6172cf09b450f@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: michal.simek@xilinx.com, mubin.usman.sayyed@xilinx.com,
 tglx@linutronix.de, jason@lakedaemon.net, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, siva.durga.paladugu@xilinx.com,
 anirudha.sarangi@xilinx.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_011557_222522_4AA29897 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jason@lakedaemon.net, Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>,
 anirudha.sarangi@xilinx.com, linux-kernel@vger.kernel.org, tglx@linutronix.de,
 siva.durga.paladugu@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMi0wNiAwOToxMSwgTWljaGFsIFNpbWVrIHdyb3RlOgo+IE9uIDA2LiAwMi4gMjAg
MTA6MDksIE1hcmMgWnluZ2llciB3cm90ZToKPj4gT24gMjAyMC0wMi0wNiAwNzowNiwgTWljaGFs
IFNpbWVrIHdyb3RlOgo+Pj4gT24gMDUuIDAyLiAyMCAxNzo1MywgTWFyYyBaeW5naWVyIHdyb3Rl
Ogo+Pj4+IE9uIDIwMjAtMDItMDUgMTQ6MDUsIE11YmluIFVzbWFuIFNheXllZCB3cm90ZToKPj4g
Cj4+IFsuLi5dCj4+IAo+Pj4+PiDCoHVuc2lnbmVkIGludCB4aW50Y19nZXRfaXJxKHZvaWQpCj4+
Pj4+IMKgewo+Pj4+PiAtwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBod2lycSwgaXJxID0gLTE7
Cj4+Pj4+ICvCoMKgwqDCoMKgwqAgaW50IGh3aXJxLCBpcnEgPSAtMTsKPj4+Pj4gCj4+Pj4+IC3C
oMKgwqDCoMKgwqAgaHdpcnEgPSB4aW50Y19yZWFkKElWUik7Cj4+Pj4+ICvCoMKgwqDCoMKgwqAg
aHdpcnEgPSB4aW50Y19yZWFkKHByaW1hcnlfaW50Yy0+YmFzZSArIElWUik7Cj4+Pj4+IMKgwqDC
oMKgwqDCoMKgIGlmIChod2lycSAhPSAtMVUpCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGlycSA9IGlycV9maW5kX21hcHBpbmcoeGludGNfaXJxYy0+cm9vdF9kb21haW4sIAo+
Pj4+PiBod2lycSk7Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlycSA9IGly
cV9maW5kX21hcHBpbmcocHJpbWFyeV9pbnRjLT5yb290X2RvbWFpbiwKPj4+Pj4gaHdpcnEpOwo+
Pj4+PiAKPj4+Pj4gwqDCoMKgwqDCoMKgwqAgcHJfZGVidWcoImlycS14aWxpbng6IGh3aXJxPSVk
LCBpcnE9JWRcbiIsIGh3aXJxLCBpcnEpOwo+Pj4+IAo+Pj4+IEkgaGF2ZSB0aGUgdWdseSBmZWVs
aW5nIEknbSByZWFkaW5nIHRoZSBzYW1lIGNvZGUgdHdpY2UuLi4gU3VyZWx5IAo+Pj4+IHlvdQo+
Pj4+IGNhbgo+Pj4+IG1ha2UgdGhlc2UgdHdvIGZ1bmN0aW9ucyBjb21tb24gY29kZS4KPj4+IAo+
Pj4gSSBoYXZlIHNvbWUgcXVlc3Rpb25zIHJlZ2FyZGluZyB0aGlzLgo+Pj4gSSBoYXZlIHVwZGF0
ZWQgb25lIHBhdGNoc2V0IHdoaWNoIGlzIGFkZGluZyBzdXBwb3J0IGZvciBNaWNyb2JsYXplIAo+
Pj4gU01QLgo+Pj4gQW5kIHdoZW4gSSB3YXMgbG9va2luZyBhdCBjdXJyZW50IHdpcmluZyBvZiB0
aGlzIGRyaXZlciBJIGhhdmUgCj4+PiBkZWNpZGVkCj4+PiB0byBjaGFuZ2UgaXQuCj4+PiAKPj4+
IEkgaGF2ZSBlbmFibGVkwqAgR0VORVJJQ19JUlFfTVVMVElfSEFORExFUiBhbmQgSEFORExFX0RP
TUFJTl9JUlEuCj4+PiBUaGlzIGRyaXZlciBjYWxscyBzZXRfaGFuZGxlX2lycSh4aWxfaW50Y19o
YW5kbGVfaXJxKQo+Pj4gYW5kIE1CIGRvX0lSUSgpIGNhbGwgaGFuZGxlX2FyY2hfaXJxKCkKPj4+
IGFuZCBJUlEgcm91dGluZSBoZXJlIGlzIHVzaW5nIGhhbmRsZV9kb21haW5faXJxKCkuCj4+PiAK
Pj4+IEkgd291bGQgZXhwZWN0IHRoYXQgdGhpcyBjaGFpbmVkIElSUSBoYW5kbGVyIGNhbiBhbHNv
IHVzZQo+Pj4gaGFuZGxlX2RvbWFpbl9pcnEoKS4KPj4+IAo+Pj4gSXMgdGhhdCBjb3JyZWN0IHVu
ZGVyc3RhbmRpbmc/Cj4+IAo+PiBoYW5kbGVfZG9tYWluX2lycSgpIGltcGxpZXMgdGhhdCB5b3Ug
aGF2ZSBhIHNldCBvZiBwdF9yZWdzLCAKPj4gcmVwcmVzZW50aW5nCj4+IHRoZSBjb250ZXh0IHlv
dSBpbnRlcnJ1cHRlZC4gWW91IGNhbid0IGZha2UgdGhhdCB1cCwgc28gSSBjYW4ndCBzZWUgCj4+
IGhvdwo+PiB5b3UgdXNlIGl0IGluIGEgY2hhaW5lZCBjb250ZXh0Lgo+IAo+IG9rLiBXaGF0J3Mg
eW91ciByZWNvbW1lbmRhdGlvbiBmb3IgY2hhaW5lZCBjb250cm9sbGVyPyBKdXN0IGdvIHdpdGgK
PiBpcnFfZmluZF9tYXBwaW5nPwoKRm9yIG5vdywgeWVzLiBJIGhhdmUgKGRpc3RhbnQpIHBsYW5z
IHRvIGltcHJvdmUgdGhpcy4KCiAgICAgICAgIE0uCi0tIApKYXp6IGlzIG5vdCBkZWFkLiBJdCBq
dXN0IHNtZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
