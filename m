Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 273CB9A5F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 05:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKPQ72x9d+xPxlVvShaQ0ZBkxFUJd6CyQ5LqHWXhXss=; b=Hrz69b3gz9/uiy
	iQG7M5V4G9qmxssHd1pnAXDTlSReZzd6YeLbNQ1glHBlaY7bAgSuMviy+mxJp1iG1OJ4NUQ3NcVcG
	XP3mp4fr4MZ05RglfhE3OfsMSYIXG6seslIyECz+8OaGdnDD16UyYb4BqgMreZyHhpaaBaM9+GjmE
	Q327k0mFBt43oBOwXdtsEkG2xW0LRgwzPjqePLAYWBQc1cCQX66zgmSJKDeqA4ItpQSnkmO6/c1VQ
	I6GgFXmi7UEnr1PWJhozo+jWZT/k7P71eRmmZ+vILhwvu11tBXx2Ou65alX/TI+MX/EKVpBaceTJY
	08XeEZJNv2fBF7nAXU0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i104L-0000uT-QO; Fri, 23 Aug 2019 03:16:53 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1048-0000oS-7C
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 03:16:42 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7N3GKR6031340;
 Thu, 22 Aug 2019 22:16:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566530180;
 bh=0vXXB2vfv4EeXktOPvNHO5kgA/nhKAh1TIl6WLWMqWc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=shhbBThuY2/XmIQaLCVJxobQw6lQlVmyIREHiOdPN3Nk6h0Czj+fYniyArEgoE5Y+
 kwz3Ma7pqaXPhz2ieJwZQgdqJdov7slF8ywjrXOtSdWR8l//fXYxngbyK/E7R8S/ve
 sSzuj/YeLpax5gRH660ssaBL9Ef2p4/+MkVIckoo=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7N3GKxc079842
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 22 Aug 2019 22:16:20 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 22
 Aug 2019 22:16:20 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 22 Aug 2019 22:16:20 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7N3GF4L006160;
 Thu, 22 Aug 2019 22:16:16 -0500
Subject: Re: [PATCH v3 00/19] Enhance CP110 COMPHY support
To: Miquel Raynal <miquel.raynal@bootlin.com>, Gregory Clement
 <gregory.clement@bootlin.com>, Jason Cooper <jason@lakedaemon.net>, Andrew
 Lunn <andrew@lunn.ch>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <4e1c4d27-3676-5efa-1126-8149a8635eb5@ti.com>
Date: Fri, 23 Aug 2019 08:46:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_201640_347018_B706F070 
X-CRM114-Status: GOOD (  25.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAzMS8wNy8xOSA1OjUxIFBNLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+IEFybWFkYSBDUDEx
MCBoYXZlIGEgQ09NUEhZIElQIHdoaWNoIHN1cHBvcnRzIGNvbmZpZ3VyaW5nIFNFUkRFUyBsYW5l
cwo+IGluIG9uZSBtb2RlLCBlaXRoZXI6Cj4gLSBTQVRBCj4gLSBVU0IzIGhvc3QKPiAtIFBDSWUg
KHNldmVyYWwgd2lkdGgpCj4gLSBFdGhlcm5ldCAoc2V2ZXJhbCBtb2RlcykKPiAKPiBBcyBvZiB0
b2RheSwgb25seSBhIGZldyBFdGhlcm5ldCBtb2RlcyBhcmUgc3VwcG9ydGVkIGFuZCB0aGUgY29k
ZSBpcwo+IGVtYmVkZGVkIGluIHRoZSBMaW51eCBkcml2ZXIuIEEgbW9yZSBjb21wbGV0ZSBDT01Q
SFkgZHJpdmVyIHRoYXQgY2FuCj4gYmUgdXNlZCBieSBib3RoIExpbnV4IGFuZCBVLUJvb3QgaXMg
ZW1iZWRkZWQgaW4gdGhlIGZpcm13YXJlIGFuZCBjYW4KPiBiZSBydW4gdGhyb3VnaCBTTUMgY2Fs
bHMuCj4gCj4gRmlyc3QgdGhlIGN1cnJlbnQgQ09NUEhZIGRyaXZlciBpcyB1cGRhdGVkIHRvIHVz
ZSBTTUMgY2FsbHMgYnV0Cj4gZmFsbGJhY2tzIHRvIHRoZSBhbHJlYWR5IGV4aXN0aW5nIGZ1bmN0
aW9ucyBpZiB0aGUgZmlybXdhcmUgaXMgbm90Cj4gdXAtdG8tZGF0ZS4gVGhlbiwgbW9yZSBFdGhl
cm5ldCBtb2RlcyBhcmUgYWRkZWQgKHRocm91Z2ggU01DIGNhbGxzCj4gb25seSkuIFNBVEEsIFVT
QjNIIGFuZCBQQ0llIG1vZGVzIGFyZSBhbHNvIHN1cHBvcnRlZCBvbmUgYnkgb25lLgo+IAo+IFRo
ZXJlIGlzIG9uZSBzdWJ0bGUgZGlmZmVyZW5jZSB3aXRoIHRoZSBQQ0llIGZ1bmN0aW9uczogd2Ug
bXVzdCB0ZWxsCj4gdGhlIGZpcm13YXJlIHRoZSBudW1iZXIgb2YgbGFuZXMgdG8gY29uZmlndXJl
ICh4MSwgeDIgb3IgeDQpLiBUaGlzCj4gcGFyYW1ldGVyIGRlcGVuZHMgb24gdGhlIG51bWJlciBv
ZiBlbnRyaWVzIGluIHRoZSAncGh5cycgcHJvcGVydHkKPiBkZXNjcmliaW5nIHRoZSBQQ0llIFBI
WS4gV2UgdXNlIHRoZSAic3VibW9kZSIgcGFyYW1ldGVyIG9mIHRoZSBnZW5lcmljCj4gUEhZIEFQ
SSB0byBjYXJyeSB0aGlzIHZhbHVlLiBUaGUgQXJtYWRhLThrIFBDSWUgZHJpdmVyIGhhcyBiZWVu
Cj4gdXBkYXRlZCB0byBmb2xsb3cgdGhpcyBpZGVhIGFuZCB0aGlzIGNoYW5nZSBoYXMgYmVlbiBt
ZXJnZWQgYWxyZWFkeToKPiBodHRwOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTA3Mjc2
My8KClNvbWUgb2YgdGhlIHBhdGNoZXMgYXJlIG5vdCBhcHBseWluZyBjbGVhbmx5LiBDYXJlIHRv
IHJlc2VuZCB0aGUgc2VyaWVzIGFmdGVyCnJlYmFzaW5nIHRvIHBoeSAtbmV4dD8KClRoYW5rcwpL
aXNob24KCj4gCj4gVGhhbmtzLAo+IE1pcXXDqGwKPiAKPiAKPiBDaGFuZ2VzIHNpbmNlIHYyOgo+
IC0tLS0tLS0tLS0tLS0tLS0tCj4gKiBJbnZlcnRlZCB0d28gYXJndW1lbnRzIGluIGEgdHJhY2Uu
Cj4gKiBBdm9pZCB3YXJuaW5nIHRoZSB1c2VyIHdoZW4gRVBST0JFX0RFRkVSIGlzIHJldHVybmVk
IChjbG9ja3MgY2FzZSkuCj4gKiBBZGRlZCBNYXhpbWUgQy4gYW5kIEdyemVnb3J6IEouICdzIFRl
c3RlZC1ieSB0YWdzIChvbmx5IG9uIHRoZQo+ICAgImludHJvZHVjaW5nIFNNQyBjYWxscyIgcGF0
Y2gsIGJ1dCB0aGV5IHRlc3RlZCB0aGUgd2hvbGUgc2VyaWVzKS4KPiAqIEFkZGVkIFJvYidzIFJl
dmlld2VkLWJ5IG9uIHRoZSBiaW5kaW5ncy4KPiAqIEFsc28gdXBkYXRlZCB0aGUgYmluZGluZ3Mg
YXMgc3VnZ2VzdGVkIGJ5IFJvYiB0byByZWZsZWN0IHRoYXQgdGhlcmUKPiAgIGNhbiBiZSBmcm9t
IG9uZSB0byBmb3VyIFBIWXMgaW4gdGhlIFBDSWUgbm9kZXMgKGhlbmNlLCB0aGUgbmVlZCBmb3IK
PiAgIHRoZSBwaHktbmFtZXMgcHJvcGVydHkpLgo+IAo+IENoYW5nZXMgc2luY2UgdjE6Cj4gLS0t
LS0tLS0tLS0tLS0tLS0KPiAqIEFsbCBtb2RlcyByZXBvcnQgdGhlaXIgZXJyb3JzIHRvIHRoZSB1
c2VyLgo+ICogSWYgdGhlIGZpcm13YXJlIGlzIHRvbyBvbGQsIGFkdmlzZSB0aGUgdXNlciB0byB1
cGRhdGUgaXQuCj4gKiBDcmVkaXQgR3J6ZWdvcnogZm9yIGhpcyB3b3JrLgo+ICogRml4IHdyb25n
IHNwZWVkIGluIEV0aGVybmV0IG1vZGVzLgo+ICogQWRkIENPTVBIWSBuZWNlc3NhcnkgY2xvY2tz
Lgo+ICogVXBkYXRlIGJpbmRpbmdzLgo+ICogVGhlIHNlY3VyaXR5IGZsYXcgcmVsYXRlZCB0byB0
aGUgZmFjdCB0aGF0IHdlIG11c3QgZ2l2ZSB0aGUgQ1AKPiAgIGFkZHJlc3MgdG8gdGhlIGZpcm13
YXJlIGhhcyBiZWVuIG1pdGlnYXRlZCBieSB0aGUgYWRkaXRpb24gb2YgZXh0cmEKPiAgIGNoZWNr
cyBpbiBBVEYgcmVjZW50bHkuCj4gCj4gCj4gR3J6ZWdvcnogSmFzemN6eWsgKDUpOgo+ICAgcGh5
OiBtdmVidS1jcDExMC1jb21waHk6IEFkZCBTTUMgY2FsbCBzdXBwb3J0Cj4gICBwaHk6IG12ZWJ1
LWNwMTEwLWNvbXBoeTogQWRkIFJYQVVJIHN1cHBvcnQKPiAgIHBoeTogbXZlYnUtY3AxMTAtY29t
cGh5OiBBZGQgVVNCMyBob3N0L2RldmljZSBzdXBwb3J0Cj4gICBwaHk6IG12ZWJ1LWNwMTEwLWNv
bXBoeTogQWRkIFNBVEEgc3VwcG9ydAo+ICAgcGh5OiBtdmVidS1jcDExMC1jb21waHk6IEFkZCBQ
Q0llIHN1cHBvcnQKPiAKPiBNaXF1ZWwgUmF5bmFsICgxNCk6Cj4gICBwaHk6IG12ZWJ1LWNwMTEw
LWNvbXBoeTogQWRkIGNsb2NrcyBzdXBwb3J0Cj4gICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBoeTog
RXhwbGljaXRseSBpbml0aWFsaXplIHRoZSBsYW5lIHN1Ym1vZGUKPiAgIHBoeTogbXZlYnUtY3Ax
MTAtY29tcGh5OiBMaXN0IGFscmVhZHkgc3VwcG9ydGVkIEV0aGVybmV0IG1vZGVzCj4gICBwaHk6
IG12ZWJ1LWNwMTEwLWNvbXBoeTogUmVuYW1lIHRoZSBtYWNybyBoYW5kbGluZyBvbmx5IEV0aGVy
bmV0IG1vZGVzCj4gICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBoeTogQWxsb3cgbm9uLUV0aGVybmV0
IG1vZGVzIHRvIGJlIGNvbmZpZ3VyZWQKPiAgIHBoeTogbXZlYnUtY3AxMTAtY29tcGh5OiBDb3Nt
ZXRpYyBjaGFuZ2UgaW4gYSBoZWxwZXIKPiAgIHBoeTogbXZlYnUtY3AxMTAtY29tcGh5OiBVcGRh
dGUgY29tbWVudCBhYm91dCBwb3dlcmluZyBvZmYgYWxsIGxhbmVzCj4gICAgIGF0IGJvb3QKPiAg
IGR0LWJpbmRpbmdzOiBwaHk6IEFkZCBNYXJ2ZWxsIENPTVBIWSBjbG9ja3MKPiAgIGR0LWJpbmRp
bmdzOiBwY2k6IGFkZCBQSFkgcHJvcGVydGllcyB0byBBcm1hZGEgN0svOEsgY29udHJvbGxlcgo+
ICAgICBiaW5kaW5ncwo+ICAgYXJtNjQ6IGR0czogbWFydmVsbDogQWRkIENQMTEwIENPTVBIWSBj
bG9ja3MKPiAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCA3ay84ayBwZXItcG9ydCBQSFlzIGlu
IFNBVEEgbm9kZXMKPiAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCA3ay84ayBQSFlzIGluIFVT
QjMgbm9kZXMKPiAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCA3ay84ayBQSFlzIGluIFBDSWUg
bm9kZXMKPiAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IENvbnZlcnQgN2svOGsgdXNiLXBoeSBwcm9w
ZXJ0aWVzIHRvIHBoeS1zdXBwbHkKPiAKPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Bj
aS1hcm1hZGE4ay50eHQgIHwgICA2ICsKPiAgLi4uL2JpbmRpbmdzL3BoeS9waHktbXZlYnUtY29t
cGh5LnR4dCAgICAgICAgIHwgIDEwICsKPiAgLi4uL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJt
YWRhLTcwNDAtZGIuZHRzIHwgIDM3ICstCj4gIC4uLi9tYXJ2ZWxsL2FybWFkYS04MDQwLWNsZWFy
Zm9nLWd0LThrLmR0cyAgICB8ICAyMiArLQo+ICAuLi4vYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9h
cm1hZGEtODA0MC1kYi5kdHMgfCAgNDMgKy0KPiAgLi4uL2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRh
LTgwNDAtbWNiaW4uZHRzaSAgIHwgIDM4ICstCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVs
bC9hcm1hZGEtY3AxMTAuZHRzaSB8ICAxMyArCj4gIGRyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12
ZWJ1LWNwMTEwLWNvbXBoeS5jICB8IDQxMiArKysrKysrKysrKysrKystLS0KPiAgOCBmaWxlcyBj
aGFuZ2VkLCA0OTkgaW5zZXJ0aW9ucygrKSwgODIgZGVsZXRpb25zKC0pCj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
