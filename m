Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823922F7DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 09:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMVE7f/HjX1ungET3zMjANQBMaPyfOsAw7BxFkkrZKY=; b=FVkXKhCXEBkyQs
	sEAHcJDomBBiIySN2FYBXyBxm+iC7n+PXg2E4GvPZiYMMUCe5XJdRgH8r9j9Nrc+kEmN/Ch/jkPdM
	J6BWtkqhO/TjsLlG0xYohlvAEyWLZwoN3dcCM5raisxt9b1ng3n6dUNpkxM4USplKSYQbY4izhwnC
	ENZ9gUQ9NiwVBTCFplZCx58roSfaZVKMENVZ1KjXGgZXejrUUhqT2+Pj0JzxFowidEhiCq5UE2ZaW
	VSQFxzZoegLbUOL+OiQ1WkE7MNx2iDtTWI3GpSBc/gZ50VPPqureir8NxAWXv9MSGveog6sGLwpBd
	bAmED0WH2jjDlB0RpxDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWFPg-0005ON-Do; Thu, 30 May 2019 07:23:48 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWFPY-0005Nd-UP
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 07:23:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 4B4156074CC1;
 Thu, 30 May 2019 09:23:38 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 7gYQFNzHwAQ9; Thu, 30 May 2019 09:23:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 7DEF36074CC0;
 Thu, 30 May 2019 09:23:36 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id SYWKd5C5gmcb; Thu, 30 May 2019 09:23:36 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 397BB6074CC1;
 Thu, 30 May 2019 09:23:36 +0200 (CEST)
Date: Thu, 30 May 2019 09:23:36 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Herbert Xu <herbert@gondor.apana.org.au>
Message-ID: <2084969721.73871.1559201016164.JavaMail.zimbra@nod.at>
In-Reply-To: <20190530023357.2mrjtslnka4i6dbl@gondor.apana.org.au>
References: <20190529224844.25203-1-richard@nod.at>
 <20190530023357.2mrjtslnka4i6dbl@gondor.apana.org.au>
Subject: Re: [RFC PATCH 1/2] crypto: Allow working with key references
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.8_GA_3025 (ZimbraWebClient - FF60 (Linux)/8.8.8_GA_1703)
Thread-Topic: crypto: Allow working with key references
Thread-Index: 6TFlo+ksej+abko/FbMI4LB7xy79pA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_002341_129052_2B5ED605 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: david <david@sigma-star.at>, shawnguo@kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-imx@nxp.com,
 kernel <kernel@pengutronix.de>, festevam@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkhlcmJlcnQgWHUiIDxoZXJi
ZXJ0QGdvbmRvci5hcGFuYS5vcmcuYXU+Cj4gQW46ICJyaWNoYXJkIiA8cmljaGFyZEBub2QuYXQ+
Cj4gQ0M6ICJMaW51eCBDcnlwdG8gTWFpbGluZyBMaXN0IiA8bGludXgtY3J5cHRvQHZnZXIua2Vy
bmVsLm9yZz4sIGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZywgImxpbnV4LWtl
cm5lbCIKPiA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4sIGxpbnV4LWlteEBueHAuY29t
LCBmZXN0ZXZhbUBnbWFpbC5jb20sICJrZXJuZWwiIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+LCAi
U2FzY2hhIEhhdWVyIgo+IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiwgc2hhd25ndW9Aa2VybmVs
Lm9yZywgZGF2ZW1AZGF2ZW1sb2Z0Lm5ldCwgImRhdmlkIiA8ZGF2aWRAc2lnbWEtc3Rhci5hdD4K
PiBHZXNlbmRldDogRG9ubmVyc3RhZywgMzAuIE1haSAyMDE5IDA0OjMzOjU3Cj4gQmV0cmVmZjog
UmU6IFtSRkMgUEFUQ0ggMS8yXSBjcnlwdG86IEFsbG93IHdvcmtpbmcgd2l0aCBrZXkgcmVmZXJl
bmNlcwoKPiBPbiBUaHUsIE1heSAzMCwgMjAxOSBhdCAxMjo0ODo0M0FNICswMjAwLCBSaWNoYXJk
IFdlaW5iZXJnZXIgd3JvdGU6Cj4+IFNvbWUgY3J5cHRvIGFjY2VsZXJhdG9ycyBhbGxvdyB3b3Jr
aW5nIHdpdGggc2VjdXJlIG9yIGhpZGRlbiBrZXlzLgo+PiBUaGlzIGtleXMgYXJlIG5vdCBleHBv
c2VkIHRvIExpbnV4IG5vciBtYWluIG1lbW9yeS4gVG8gdXNlIHRoZW0KPj4gZm9yIGEgY3J5cHRv
IG9wZXJhdGlvbiB0aGV5IGFyZSByZWZlcmVuY2VkIHdpdGggYSBkZXZpY2Ugc3BlY2lmaWMgaWQu
Cj4+IAo+PiBUaGlzIHBhdGNoIGFkZHMgYSBuZXcgZmxhZywgQ1JZUFRPX1RGTV9SRVFfUkVGX0tF
WS4KPj4gSWYgdGhpcyBmbGFnIGlzIHNldCwgY3J5cHRvIGRyaXZlcnMgc2hvdWxkIHRyZWFkIHRo
ZSBrZXkgYXMKPj4gc3BlY2lmaWVkIHZpYSBzZXRrZXkgYXMgcmVmZXJlbmNlIGFuZCBub3QgYXMg
cmVndWxhciBrZXkuCj4+IFNpbmNlIHdlIHJldXNlIHRoZSBrZXkgZGF0YSBzdHJ1Y3R1cmUgc3Vj
aCBhIHJlZmVyZW5jZSBpcyBsaW1pdGVkCj4+IGJ5IHRoZSBrZXkgc2l6ZSBvZiB0aGUgY2hpcGVy
IGFuZCBpcyBjaGlwIHNwZWNpZmljLgo+PiAKPj4gVE9ETzogSWYgdGhlIGNpcGhlciBpbXBsZW1l
bnRhdGlvbiBvciB0aGUgZHJpdmVyIGRvZXMgbm90Cj4+IHN1cHBvcnQgcmVmZXJlbmNlIGtleXMs
IHdlIG5lZWQgYSB3YXkgdG8gZGV0ZWN0IHRoaXMgYW4gZmFpbAo+PiB1cG9uIHNldGtleS4KPj4g
SG93IHNob3VsZCB0aGUgZHJpdmVyIGluZGljYXRlIHRoYXQgaXQgc3VwcG9ydHMgdGhpcyBmZWF0
dXJlPwo+PiAKPj4gU2lnbmVkLW9mZi1ieTogUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNoYXJkQG5v
ZC5hdD4KPiAKPiBXZSBhbHJlYWR5IGhhdmUgZXhpc3RpbmcgZHJpdmVycyBkb2luZyB0aGlzLiAg
UGxlYXNlIGhhdmUgYSBsb29rCj4gYXQgaG93IHRoZXkncmUgZG9pbmcgaXQgYW5kIHVzZSB0aGUg
c2FtZSBwYXJhZGlnbS4gIFlvdSBjYW4gZ3JlcAo+IGZvciBwYWVzIHVuZGVyIGRyaXZlcnMvY3J5
cHRvLgoKVGhhbmtzIGZvciB0aGUgcG9pbnRlci4KU28gdGhlIHByZWZlcnJlZCB3YXkgaXMgZGVm
aW5pbmcgYSBuZXcgY3J5cHRvIGFsZ29yaXRobSBwcmVmaXhlZCB3aXRoCiJwIiBhbmQgcmV1c2lu
ZyBzZXRrZXkgdG8gcHJvdmlkZSB0aGUga2V5IHJlZmVyZW5jZS4KClRoYW5rcywKLy9yaWNoYXJk
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
