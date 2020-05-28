Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DF41E604E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 14:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3lhfjJgvrEVzo5+mtYZ/tXSJBrSV9Y9NTN6KyJ85/9U=; b=BHGO7oO3eFL7t4LUogvGUZYMa
	lWz6+uCUxNORK0Cvh08ObPOX122FyBKLqFLZLS2SsjY/wH8HTxkAHxzjUNgA8ixHZ6y+yeuONkiP4
	88PBHy0Zm1vR13MK8wTWVC4h4jHTEGT/YwOLqN4tljRSUy8EAudKQZOjOPTNO4yqyYjTYlkhWa/sT
	YdT6LN+Y0KeNGXz25cY9Yab54EPFPh/sUNvC73wFVLIClfECXU9lkt/SslyIyfNyh99qIm19sYARG
	8mrwDbP2tQuFlP4yVxlXFHEcz1YLGS2lMOnwVA1Kh1Os3C1d4idKPcoTfOPUIFdLIcTeSewL6FMHg
	UDLrxr2Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHN3-0006hx-Ob; Thu, 28 May 2020 12:10:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHMf-0006dm-TD
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 12:10:27 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A250C2063A;
 Thu, 28 May 2020 12:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590667824;
 bh=d+BX6Yu8bblCkc+YNytpyy6IyNc3spMni5yB2tDpCBo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ht9aeBKOOs2qT1O/Jvk9zPAOcwXArR2X6BqtFlTRNkhygdQL6r7LWzmyaWb1t3W8h
 UqL6mOfc0/m5+zw2y/OBxfwIasqR7K5PEpKjOHGYp4+m2sY25Oc9jSCCDK8KjpZOvF
 ib1gW6SFhgUu7PfBzWBFDbczaL8jB4B44mtPq0fU=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jeHMd-00Fyr7-3o; Thu, 28 May 2020 13:10:23 +0100
MIME-Version: 1.0
Date: Thu, 28 May 2020 13:10:23 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 1/3] KVM: arm64: Stop writing aarch32's CSSELR into ACTLR
In-Reply-To: <09dca8e9-c548-43fd-a95b-747a77f19e02@arm.com>
References: <20200526161834.29165-1-james.morse@arm.com>
 <20200526161834.29165-2-james.morse@arm.com>
 <4be0c0b654f7d7c1efe9f52efb856bd8@kernel.org>
 <09dca8e9-c548-43fd-a95b-747a77f19e02@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <705687e37c5d5339a6baafa9e31675cb@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_051025_995352_BB30C5A0 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: stable@vger.kernel.org, Julien Thierry <julien.thierry.kdev@gmail.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0yOCAxMjo1OSwgSmFtZXMgTW9yc2Ugd3JvdGU6Cj4gSGkgTWFyYywKPiAKPiBP
biAyOC8wNS8yMDIwIDA5OjU3LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+IE9uIDIwMjAtMDUtMjYg
MTc6MTgsIEphbWVzIE1vcnNlIHdyb3RlOgo+Pj4gYWNjZXNzX2Nzc2VscigpIHVzZXMgdGhlIDMy
Yml0IHItPnJlZyB2YWx1ZSB0byBhY2Nlc3MgdGhlIDY0Yml0IAo+Pj4gYXJyYXksCj4+PiBzbyBy
ZWFkcyBhbmQgd3JpdGUgdGhlIHdyb25nIHZhbHVlLiBzeXNfcmVnc1s0XSwgaXMgQUNUTFJfRUwx
LCB3aGljaAo+Pj4gaXMgc3Vic2VxdWVudGx5IHNhdmUvcmVzdG9yZWQgd2hlbiB3ZSBlbnRlciB0
aGUgZ3Vlc3QuCj4gCj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYyBi
L2FyY2gvYXJtNjQva3ZtL3N5c19yZWdzLmMKPj4+IGluZGV4IDUxZGI5MzQ3MDJiNi4uMmVkYTUz
OWYzMjgxIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYwo+Pj4gKysr
IGIvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYwo+Pj4gQEAgLTIwNjAsNyArMjA2MCw3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgc3lzX3JlZ19kZXNjIGNwMTVfcmVnc1tdID0gCj4+PiB7Cj4+PiAK
Pj4+IMKgwqDCoMKgIHsgT3AxKDEpLCBDUm4oIDApLCBDUm0oIDApLCBPcDIoMCksIGFjY2Vzc19j
Y3NpZHIgfSwKPj4+IMKgwqDCoMKgIHsgT3AxKDEpLCBDUm4oIDApLCBDUm0oIDApLCBPcDIoMSks
IGFjY2Vzc19jbGlkciB9LAo+Pj4gLcKgwqDCoCB7IE9wMSgyKSwgQ1JuKCAwKSwgQ1JtKCAwKSwg
T3AyKDApLCBhY2Nlc3NfY3NzZWxyLCBOVUxMLCAKPj4+IGMwX0NTU0VMUiB9LAo+Pj4gK8KgwqDC
oCB7IE9wMSgyKSwgQ1JuKCAwKSwgQ1JtKCAwKSwgT3AyKDApLCBhY2Nlc3NfY3NzZWxyX2VsMSwg
TlVMTCwgCj4+PiBDU1NFTFJfRUwxIH0sCj4+PiDCoH07Cj4gCj4+IFRoaXMgaXMgYSBkZXBhcnR1
cmUgZnJvbSB0aGUgd2F5IHdlIGRlYWwgd2l0aCAzMmJpdCBDUDE1IHJlZ2lzdGVycy4KPj4gV2Ug
ZGVhbCB3aXRoIHRoaXMgZXhhY3QgaXNzdWUgaW4gYSB2ZXJ5IGRpZmZlcmVudCB3YXkgZm9yIG90
aGVyCj4+IENQMTUgcmVncywgYnkgYWRqdXN0aW5nIHRoZSBpbmRleCBpbiB0aGUgc3lzX3JlZ3Mg
YXJyYXkgKHNlZSB0aGUKPj4gd2F5IHdlIGhhbmRsZSB0aGUgVk0gcmVncykuCj4+IAo+PiBIb3cg
YWJvdXQgc29tZXRoaW5nIGxpa2UgdGhpcyAodW50ZXN0ZWQpOgo+IAo+IFtsaWtlIGFjY2Vzc192
bV9yZWcoKSBkb2VzXQo+IAo+IFN1cmUsIEknbGwgZ2l2ZSB0aGF0IGEgdGVzdCBhbmQgcmUtcG9z
dCBpdC4KClRoYW5rcyEKCj4gCj4gCj4+IElkZWFsbHksIEknZCBsaWtlIHRoZSBjb3JlIHN5c19y
ZWcgY29kZSB0byBkZWFsIHdpdGggdGhpcyBzb3J0Cj4+IG9mIGZ1bm5pZXMsIGJ1dCBJJ20gdHJ5
aW5nIHRvIGtlZXAgdGhlIGNoYW5nZSBtaW5pbWFsLi4uCj4gCj4gUm9sbCB0aGlzICcvMicgYW5k
IHVwcGVyL2xvd2VyIGJpdHMgc3R1ZmYgaW50byBhIHZjcHVfd3JpdGVfY3AxNV9yZWcoKQo+IHRo
YXQgY2FsbHMKPiB2Y3B1X3dyaXRlX3N5c19yZWcoKT8gKC9tZSBodW50cyBvdXQgdGhlIHRvZG8g
bGlzdCkKCkkgd2FzIHRoaW5raW5nIG9mIGhpZGluZyBpdCBkaWZmZXJlbnRseTogaW4gZW11bGF0
ZV9jcCwgc3Vic3RpdHV0ZSB0aGUKc3lzX3JlZ19kZXNjIHN0cnVjdHVyZSBmb3IgYSB0ZW1wb3Jh
cnkgb25lIHRoYXQgcmVwcmVzZW50cyB0aGUgNjRiaXQKdmVyc2lvbiwgYW5kIG1ha2UgaXQgY29t
cGxldGVseSB0cmFuc3BhcmVudC4KCkknbSBzdXJlIHRoZXJlIGlzIGEgY291cGxlIG9mIG5pdHMg
YXJvdW5kIHRoYXQgdGhvdWdoLi4uCgogICAgICAgICBNLgotLSAKSmF6eiBpcyBub3QgZGVhZC4g
SXQganVzdCBzbWVsbHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
