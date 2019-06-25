Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8B652932
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 12:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mztEQTZvbIjYIYPhAdafjytI7GJbitRe6nAzTMO38VY=; b=TIbRLAB3MZWPbzGOyj/4ldGix
	OvHC68JjHsSPAlttpXkewD+nlVTVR/o0KFAhb/MMQQxCXGVzfZjcaFuAFJ9KZ1AihwNgFF4Z3SuYt
	1BaXnF947taA6CPGaXc5PhMgi+AkUZH6xt48onicSYeBX48rAjsIBqGBhEYKtU5flZnECCF7v5OHW
	6BPw+CL67tlYqfW2Jq3aC097eL3+iTIUQS5qn3bBJsteu2R4zFB2kxyC8DMGPT5Ljq7mKvqZQ6nCp
	qZzdYWpfYDva07nqABH6UluGKT6FPgYVCXuon+RN5O8AFIcm4kbAKtAu11Fog9DroNSyhjtkOQFRV
	kXlxcczzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiTQ-0006Ms-Fz; Tue, 25 Jun 2019 10:14:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiTA-0006MU-DE
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 10:14:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 5E67D266AD9
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH 0/2] Associate ddc adapters with connectors
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <cover.1561452052.git.andrzej.p@collabora.com>
 <20190625100351.52ddptvb2gizaepi@shell.armlinux.org.uk>
Message-ID: <817ccfba-754c-6a28-8d75-63f70605fd43@collabora.com>
Date: Tue, 25 Jun 2019 12:14:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190625100351.52ddptvb2gizaepi@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_031432_576009_836B2DC3 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbCwKClcgZG5pdSAyNS4wNi4yMDE5IG/CoDEyOjAzLCBSdXNzZWxsIEtpbmcgLSBB
Uk0gTGludXggYWRtaW4gcGlzemU6Cj4gT24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgMTE6NDY6MzRB
TSArMDIwMCwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+PiBJdCBpcyBkaWZmaWN1bHQg
Zm9yIGEgdXNlciB0byBrbm93IHdoaWNoIG9mIHRoZSBpMmMgYWRhcHRlcnMgaXMgZm9yIHdoaWNo
Cj4+IGRybSBjb25uZWN0b3IuIFRoaXMgc2VyaWVzIGFkZHJlc3NlcyB0aGlzIHByb2JsZW0uCj4+
Cj4+IFRoZSBpZGVhIGlzIHRvIGhhdmUgYSBzeW1ib2xpYyBsaW5rIGluIGNvbm5lY3RvcidzIHN5
c2ZzIGRpcmVjdG9yeSwgZS5nLjoKPj4KPj4gbHMgLWwgL3N5cy9jbGFzcy9kcm0vY2FyZDAtSERN
SS1BLTEvaTJjLTIKPj4gbHJ3eHJ3eHJ3eCAxIHJvb3Qgcm9vdCAwIEp1biAyNCAxMDo0MiAvc3lz
L2NsYXNzL2RybS9jYXJkMC1IRE1JLUEtMS9pMmMtMiBcCj4+IAktPiAuLi8uLi8uLi8uLi9zb2Mv
MTM4ODAwMDAuaTJjL2kyYy0yCj4gCj4gRG9uJ3QgeW91IHdhbnQgdGhlIHN5bWxpbmsgbmFtZSB0
byBiZSAiaTJjIiBvciBzb21ldGhpbmcgZml4ZWQsIHJhdGhlcgo+IHRoYW4gdGhlIG5hbWUgb2Yg
dGhlIGkyYyBhZGFwdGVyPyAgT3RoZXJ3aXNlLCB5b3Ugc2VlbSB0byBiZSBlbmN1bWJlcmluZwo+
IHVzZXJzcGFjZSB3aXRoIHNlYXJjaGluZyB0aGUgZGlyZWN0b3J5IHRvIHRyeSBhbmQgZmluZCB0
aGUgc3ltbGluay4KPiAKClRoYW5rIHlvdSBmb3IgeW91ciBjb21tZW50LiBTbyB5b3UgaW1hZ2lu
ZSBzb21ldGhpbmcgb24gdGhlIGxpbmVzIG9mOgoKbHJ3eHJ3eHJ3eCAxIHJvb3Qgcm9vdCAwIEp1
biAyNCAxMDo0MiAvc3lzL2NsYXNzL2RybS9jYXJkMC1IRE1JLUEtMS9kZGMgXAogIAktPiAuLi8u
Li8uLi8uLi9zb2MvMTM4ODAwMDAuaTJjL2kyYy0yCgo/CgpUaGlzIG1ha2VzIHNlbnNlIHRvIG1l
LCBJIHdpbGwgc2VuZCBhIHYyLgoKQW5kcnplagoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
