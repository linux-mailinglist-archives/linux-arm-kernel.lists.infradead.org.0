Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B93DB195
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 17:54:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CapTQs/zaUN06zQqc8OZuSUiN8hlNPHwlE+xp733XUY=; b=JQUtP5O9rel+7y4wXXdeqWgBH
	oiwFNLL2iDr9dar9FGCGlcildr0MD+x+d7nZFlxjK991PKexu2teX4cmA1cnEcw/Arz5fSjaqE0Yf
	J08+FjoRj99WbZAkouL1YasoOecMe7Zunk57gIYr8s7Ew0QJ49ET1sjADwop+Tt9R5Wkw65jPxnnQ
	2UhtMWedxwq0s6FK93imqUOcA3UO/xCty+oU4ZkmS79TgrD8N7KCsb8O72mKXLR9NUbPtxBkLmRSz
	GMPZ+tWNZWs+PiSa8MvR2Oscvfh2NjrRgklZWPEtjqlxUdQ/ws3l2SecCm9CTKebqHbfpREQbKbC2
	2M8IoWJ0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL868-0002aa-D8; Thu, 17 Oct 2019 15:53:56 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL85y-0002Zp-QM
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 15:53:48 +0000
Received: from [167.98.27.226] (helo=[10.35.5.173])
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iL85w-0003LR-NM; Thu, 17 Oct 2019 16:53:44 +0100
Subject: Re: [PATCH] soc: actions: owl-sps: include
 <linux/soc/actions/owl-sps.h> for owl_sps_set_pg
To: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
References: <20191017123007.26335-1-ben.dooks@codethink.co.uk>
 <acdc7d0ac2f3cb35b43867ef77ef53b7a1dd998c.camel@suse.de>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <36bce179-e722-d548-2c50-e0a7d13c06e9@codethink.co.uk>
Date: Thu, 17 Oct 2019 16:53:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <acdc7d0ac2f3cb35b43867ef77ef53b7a1dd998c.camel@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_085347_373909_3B5E5276 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, linux-arm-kernel@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTcvMTAvMjAxOSAxNTo0MywgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+IEhlbGxvIEJlbiwK
PiAKPiBBbSBEb25uZXJzdGFnLCBkZW4gMTcuMTAuMjAxOSwgMTM6MzAgKzAxMDAgc2NocmllYiBC
ZW4gRG9va3MKPiAoQ29kZXRoaW5rKToKPj4gSW5jbHVkZSA8bGludXgvc29jL2FjdGlvbnMvb3ds
LXNwcy5oPiBmb3Igb3dsX3Nwc19zZXRfcGcKPj4gZGVjbGFyYXRpb24gdG8gZml4IHRoZSBmb2xs
b3dpbmcgc3BhcnNlIHdhcm5pbmc6Cj4+Cj4+IGRyaXZlcnMvc29jL2FjdGlvbnMvb3dsLXNwcy1o
ZWxwZXIuYzoxNjo1OiB3YXJuaW5nOiBzeW1ib2wKPj4gJ293bF9zcHNfc2V0X3BnJyB3YXMgbm90
IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW4g
RG9va3MgPGJlbi5kb29rc0Bjb2RldGhpbmsuY28udWs+Cj4+IC0tLQo+PiBDYzogIkFuZHJlYXMg
RsOkcmJlciIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4+IENjOiBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
PG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+PiBDYzogbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IC0tLQo+PiAgIGRyaXZlcnMvc29jL2FjdGlvbnMvb3ds
LXNwcy1oZWxwZXIuYyB8IDIgKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9hY3Rpb25zL293bC1zcHMtaGVscGVyLmMK
Pj4gYi9kcml2ZXJzL3NvYy9hY3Rpb25zL293bC1zcHMtaGVscGVyLmMKPj4gaW5kZXggMjkxYTIw
NmQ2ZjA0Li5mMzVjZjNjNmQyM2MgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvc29jL2FjdGlvbnMv
b3dsLXNwcy1oZWxwZXIuYwo+PiArKysgYi9kcml2ZXJzL3NvYy9hY3Rpb25zL293bC1zcHMtaGVs
cGVyLmMKPj4gQEAgLTExLDYgKzExLDggQEAKPj4gICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4K
Pj4gICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPj4gICAKPj4gKyNpbmNsdWRlIDxsaW51eC9zb2Mv
YWN0aW9ucy9vd2wtc3BzLmg+Cj4gCj4gQW55IHJlYXNvbiBmb3IgdGhlIHdoaXRlIGxpbmUgYmVm
b3JlPwoKSSBhZGRlZCBpdCBhcyBzb21lIHBlb3BsZSB0ZW5kIHRvIHdoZW4gbW92aW5nIG9udG8K
YSBuZXcgZ3JvdXAgb2YgaW5jbHVkZXMgaW4gYSBkaWZmZXJlbnQgZGlyZWN0b3J5LgoKPiBBbHNv
LCBjb3VsZCB5b3UgZXhwbGFpbiB3aHkgd2UgZGlkIG5vdCBnZXQgdGhhdCB3YXJuaW5nIGR1cmlu
ZyBlYXJsaWVyCj4gYnVpbGRzPyBTaG91bGQgdGhlcmUgYmUgYSBGaXhlcz8KSXQgaXMgYSB3YXJu
aW5nIGZyb20gc3BhcnNlLCBzbyBub3QgcnVuIGFzIHN0YW5kYXJkIHdoZW4gYnVpbGRpbmcuCgpJ
J3ZlIG5vdCBiZWVuIHB1dHRpbmcgZml4ZXMgb24gYXMgaXQgaXNuJ3QgcmVhbGx5IGEgYnVnLgoK
PiBUaGFua3MsCj4gQW5kcmVhcwo+IAo+PiArCj4+ICAgI2RlZmluZSBPV0xfU1BTX1BHX0NUTAkw
eDAKPj4gICAKPj4gICBpbnQgb3dsX3Nwc19zZXRfcGcodm9pZCBfX2lvbWVtICpiYXNlLCB1MzIg
cHdyX21hc2ssIHUzMiBhY2tfbWFzaywKPj4gYm9vbCBlbmFibGUpCgoKLS0gCkJlbiBEb29rcwkJ
CQlodHRwOi8vd3d3LmNvZGV0aGluay5jby51ay8KU2VuaW9yIEVuZ2luZWVyCQkJCUNvZGV0aGlu
ayAtIFByb3ZpZGluZyBHZW5pdXMKCmh0dHBzOi8vd3d3LmNvZGV0aGluay5jby51ay9wcml2YWN5
Lmh0bWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
