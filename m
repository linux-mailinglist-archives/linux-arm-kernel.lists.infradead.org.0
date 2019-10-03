Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A42C97EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 07:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MeOhPTkdPhDM7NW28JPtjs5bI21yy7vmy/9zZuFonFc=; b=LP87vVtrmG3ivJ
	xrUkA9GbYDOIOiO2z5GkVH+NsahZtGGxMIhRj/XZ9c5ZuxJcOcpZdyI3ftFKdh0WHt/Hle9cEuYJ5
	yhwKtFiyjP1h21tUPX6r6svs/OUjHcHaoMEeYzNI23LRtYj3fLp2iKXIdijnveGlyApbh2pOqjH87
	q+zKpZXNK9gXqKeHNTJdqOyMfQYkhKxMeSVgaWiFLBQBV/uhS++xRBCoynTIVNEpAE8DAnCNuNjp8
	e0i0x37nXaT0PpbIYxmK23nrArigLdDw9q9AWsbOn+M8C/PwROcWSB1PBuwDN3Cw6couCnAwIgUPF
	X7BxjPHQT4g6oruEVw3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtYb-0001US-WA; Thu, 03 Oct 2019 05:21:42 +0000
Received: from mailoutvs30.siol.net ([185.57.226.221] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtYT-0001Td-Nb
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 05:21:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id B0B825212B8;
 Thu,  3 Oct 2019 07:21:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id fiKaRxyZbaY9; Thu,  3 Oct 2019 07:21:30 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 57E7852128A;
 Thu,  3 Oct 2019 07:21:30 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id EA2655212B8;
 Thu,  3 Oct 2019 07:21:29 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 0/3] media: cedrus: improvements
Date: Thu, 03 Oct 2019 07:21:29 +0200
Message-ID: <8173759.PpYHodOKdy@jernej-laptop>
In-Reply-To: <20191002222307.GD24151@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <20191002222307.GD24151@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_222133_925257_ECEC2781 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAwMy4gb2t0b2JlciAyMDE5IG9iIDAwOjIzOjA3IENFU1QgamUgUGF1bCBL
b2NpYWxrb3dza2kgCm5hcGlzYWwoYSk6Cj4gSGksCj4gCj4gT24gV2VkIDAyIE9jdCAxOSwgMjE6
MzUsIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+ID4gVGhpcyBpcyBjb250aW51YXRpb24gb2YgaHR0
cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNS8zMC8xNDU5IHdpdGggc2V2ZXJhbAo+ID4gcGF0Y2hl
cyByZW1vdmVkICgyIG1lcmdlZCwgb3RoZXJzIG5lZWRzIHJlZGVzaWduKSBhbmQgb25lIGFkZGVk
Lgo+IAo+IFRoYW5rcyBmb3IgdGhlIGNvbnRpbnVlZCBlZmZvcnQgb24gdGhpcywgdGhlc2UgZml4
ZXMgYXJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQKPiAoYW5kIG1vcmUgZ2VuZXJhbGx5LCBhbGwgdGhl
IHdvcmsgeW91IGFyZSBwdXR0aW5nIGludG8gY2VkcnVzKSEKPiAKPiBBbHRob3VnaCBJJ3ZlIGJl
ZW4gb3V0IG9mIHRoZSBsb29wIG9uIGNlZHJ1cywgaXQgaXMgdmVyeSBuaWNlIHRvIHNlZQo+IGRl
dmVsb3BtZW50IGhhcHBlbmluZy4gS2VlcCB1cCB0aGUgZ29vZCB3b3JrIQoKVGhhbmtzISBUaG9z
ZSBmaXhlcyBhcmUganVzdCBjbGVhbmVkIHVwIHZlcnNpb24gb2YgcGF0Y2hlcyBJJ20gdXNpbmcg
aW4gCkxpYnJlRUxFQyBmb3Igc29tZSB0aW1lIG5vdy4gSSBoYXRlIG1haW50YWluaW5nIG91dC1v
Zi10cmVlIHBhdGNoZXMgb3ZlciBhIApsb25nIHBlcmlvZCwgc28gcHVzaGluZyB0aGVtIHVwc3Ry
ZWFtIGlzIGJlbmVmaWNpYWwgZm9yIGFsbCA6KQoKSSdsbCBzZW5kIG1vcmUgaW1wcm92ZW1lbnRz
IG9uY2UgeW91ciBIRVZDIHBhdGNoZXMgYXJlIG1lcmdlZC4KCkJlc3QgcmVnYXJkcywKSmVybmVq
Cgo+IAo+IENoZWVycywKPiAKPiBQYXVsCj4gCj4gPiBQYXRjaCAxIGZpeGVzIGgyNjQgcGxheWJh
Y2sgaXNzdWUgd2hpY2ggaGFwcGVucyBpbiByYXJlIGNhc2VzLgo+ID4gCj4gPiBQYXRjaCAyIHNl
dHMgUFBTIGRlZmF1bHQgcmVmZXJlbmNlIGluZGV4IGNvdW50IGluIHJlZ2lzdGVyIGZyb20gUFBT
Cj4gPiBjb250cm9sLiBDdXJyZW50bHkgaXQgd2FzIHNldCB0byB2YWx1ZXMgZnJvbSBzbGljZSBj
b250cm9sLgo+ID4gCj4gPiBQYXRjaCAzIHJlcGxhY2VzIGRpcmVjdCBhY2Nlc3NlcyB0byBjYXB0
dXJlIHF1ZXVlIGZyb20gbTJtIGNvbnRleCB3aXRoCj4gPiBoZWxwZXJzIHdoaWNoIHdhcyBkZXNp
Z25lZCBleGFjdGx5IGZvciB0aGF0LiBJdCdzIGFsc28gc2FmZXIgc2luY2UKPiA+IGhlbHBlcnMg
ZG8gc29tZSBjaGVja3MuCj4gPiAKPiA+IEJlc3QgcmVnYXJkcywKPiA+IEplcm5lago+ID4gCj4g
PiBKZXJuZWogU2tyYWJlYyAoMyk6Cj4gPiAgIG1lZGlhOiBjZWRydXM6IEZpeCBkZWNvZGluZyBm
b3Igc29tZSBIMjY0IHZpZGVvcwo+ID4gICBtZWRpYTogY2VkcnVzOiBGaXggSDI2NCBkZWZhdWx0
IHJlZmVyZW5jZSBpbmRleCBjb3VudAo+ID4gICBtZWRpYTogY2VkcnVzOiBVc2UgaGVscGVycyB0
byBhY2Nlc3MgY2FwdHVyZSBxdWV1ZQo+ID4gIAo+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzLmggICB8ICA4ICsrKy0KPiA+ICAuLi4vc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyAgfCA0NiArKysrKysrKysrKysrKy0tLS0tCj4gPiAg
Li4uL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19yZWdzLmggIHwgIDMgKysKPiA+
ICAzIGZpbGVzIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
