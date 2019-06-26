Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F0E5629D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 08:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sq9zSpIfYYzSWIcFkPLhM0m6Nb/AG6GcPLVDyFFZUto=; b=Sf4wGvZqnhm7ljUME7VvPfv5w
	WY+ccFl+rFDkCt1DmjW7NwtGAlZ7Xz2OHdAW1XUzpDlJJGwiHLCJ+wOpTWk1qTBGvNPrSSja4oiTD
	jVc1xn3X9sTebz9OCuARx3ONz17HVSrffzXVIlofCKnWrJ1eJd4jxbYjQBW6pt/P5h5NWs5lifBJk
	mjI6GYa+u30ze3sRnuqoC9LQRKahsRYqkyVxYZic28ahVFIRf7PjYPSsXnzb2+Cz5sMblJFEkPSAg
	YyGu99Cv9G5oHId2qfjpoBjHbNvti6r6L+brZRlWKOCXttVf7acpU6VNwRha4hDpLV7OPqfPVE1SC
	yGGbCd3gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg1m1-00055E-LD; Wed, 26 Jun 2019 06:51:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg1lb-00054r-W2
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 06:50:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 2DC2D285638
Subject: Re: [PATCH 0/2] Associate ddc adapters with connectors
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Emil Velikov <emil.velikov@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Krzysztof Kozlowski
 <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 David Airlie <airlied@linux.ie>, Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, dri-devel@lists.freedesktop.org,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
References: <cover.1561452052.git.andrzej.p@collabora.com>
 <20190625100351.52ddptvb2gizaepi@shell.armlinux.org.uk>
 <817ccfba-754c-6a28-8d75-63f70605fd43@collabora.com>
 <20190625133639.GA16031@arch-x1c3>
 <20190625140755.GT12905@phenom.ffwll.local>
 <20190625141032.5jiy2oekb3olaejd@shell.armlinux.org.uk>
 <20190625142031.GV12905@phenom.ffwll.local>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
Date: Wed, 26 Jun 2019 08:50:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190625142031.GV12905@phenom.ffwll.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_235052_169023_DD38B2A9 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VyBkbml1IDI1LjA2LjIwMTkgb8KgMTY6MjAsIERhbmllbCBWZXR0ZXIgcGlzemU6Cj4gT24gVHVl
LCBKdW4gMjUsIDIwMTkgYXQgMDM6MTA6MzJQTSArMDEwMCwgUnVzc2VsbCBLaW5nIC0gQVJNIExp
bnV4IGFkbWluIHdyb3RlOgo+PiBPbiBUdWUsIEp1biAyNSwgMjAxOSBhdCAwNDowNzo1NVBNICsw
MjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+Pj4gT3RoZXJ3aXNlIEkgbGlrZSB0aGlzLiBCaWdn
ZXN0IHByb2JsZW0gSSdtIHNlZWluZyBoZXJlIGlzIHJvbGxpbmcgdGhpcyBvdXQKPj4+IGV2ZXJ5
d2hlcmUsIHRoaXMgaXMgYSBsb3Qgb2Ygd29yay4gQW5kIHdpdGhvdXQgd2lkZXNwcmVhZCBhZG9w
dGlvbnMgaXQncwo+Pj4gbm90IHRlcnJpYmx5IHVzZWZ1bCBmb3IgdXNlcnNwYWNlLgo+Pgo+PiBU
aGVyZSB3aWxsIGJlIGNhc2VzIHdoZXJlIGl0J3Mgbm90IHBvc3NpYmxlLCBiZWNhdXNlIHRoZSBJ
MkMgYnVzIGlzCj4+IGhpZGRlbiBiZWhpbmQgYSBjaGlwIHRoYXQgZG9lc24ndCBnaXZlIHlvdSBk
aXJlY3QgYWNjZXNzIHRvIHRoZSBEREMKPj4gYnVzLgo+IAo+IE9oIHN1cmUsIHBsdXMgbG90cyBv
ZiBjb25uZWN0b3JzIHdoZXJlIHRoZXJlJ3MganVzdCBub3QgZGRjIGJ1cyBhdCBhbGwuCj4gQnV0
IGlmIHdlIG9ubHkgcm9sbCB0aGlzIG91dCBmb3IgYSBoYW5kZnVsIG9mIGRyaXZlcnMgaXQncyBh
bHNvIG5vdCBncmVhdCwKPiB0aGF0J3Mgd2hhdCBJIG1lYW50LiBMb29raW5nIGF0Cj4gCj4gJCBn
aXQgZ3JlcCBkcm1fZG9fZ2V0X2VkaWQKPiAKPiB0aGVyZSdzIG9ubHkgdmVyeSBmZXcgZHJpdmVy
cyB3aGVyZSB0aGUgZGRjIGJ1cyBpcyBoaWRkZW4uIFRoZXJlJ3MgYSBsb3QKPiBtb3JlIHdoZXJl
IGl0J3Mgbm90LCBhbmQgSSB0aGluayBhIGJpZyBzZXJpZXMgdG8gdGFja2xlIHRob3NlIHdvdWxk
IHNlcnZlCj4gZXh0cmVtZWx5IHdlbGwgdG8gbWFrZSBhIGNhc2UgZm9yIHRoaXMgc3lzZnMgbGlu
ay4KPiAtRGFuaWVsCj4gCgpJIHdpbGwgcmVzcG9uZCB3aXRoIGEgdjMgdGhlbiwgaW5jbHVkaW5n
IGFzIG1hbnkgZHJpdmVycyBhcyBwb3NzaWJsZS4KVGhvc2Ugd2lsbCBiZSBjb21waWxlLXRlc3Rl
ZCBvbmx5LCB0aG91Z2guCgpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
