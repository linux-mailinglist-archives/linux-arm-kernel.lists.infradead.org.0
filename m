Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98D2C9F4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 15:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/sXV0rzuDc/iV2fDGLT4fNlo/fSTMa8LK3o5c12Ogs=; b=Hjeo71AUeblj1h
	M/1VR5rne2nhObMP13bY1+6Gr/PUZ/wJbi0wcWQhtt9yioaZ81pebvr+yAZm/4LKUJMKv3wzFWxXq
	4iVQqF5ZfGwWepqrCkppr2L/BaIokZ8qS0djJerKTZB9T1uIwbiF8fgyEzcrMU5SBuWh7S+ImN7Hj
	WInDM46FnZzHWVKxe7cZWndQ1kzzTaXGLbVT+z/lpVpKMR6T1Gn9++9FR/PfYDsSzAQEPx1CLj6vX
	3vKdzZ9UHlfE6qC5jnDELFmdyabl+hqHTMcQR21durcWPf9+RCORG6HcuPpAkSuo7BYxp8pAhDATg
	QgpUHdAf1VCd00MLNUcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG13M-0000ii-4b; Thu, 03 Oct 2019 13:21:56 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG13E-0000iG-Dr
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 13:21:49 +0000
Received: from [199.195.250.187] (port=36669 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iG135-0007HQ-KE; Thu, 03 Oct 2019 14:21:44 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 321258236F;
 Thu,  3 Oct 2019 13:21:35 +0000 (UTC)
Date: Thu, 03 Oct 2019 21:21:30 +0800
In-Reply-To: <20191003131916.4bm22krapo5tz6oz@gilmour>
References: <20191001080253.6135-1-icenowy@aosc.io>
 <20191001080253.6135-2-icenowy@aosc.io>
 <CAMty3ZCjrM4MajJLyLwt-31mNnfVWghwatogtwVOvCt4gY0LZA@mail.gmail.com>
 <20191003131916.4bm22krapo5tz6oz@gilmour>
MIME-Version: 1.0
Subject: Re: [linux-sunxi] [PATCH 1/3] Revert "drm/sun4i: dsi: Change the
 start delay calculation"
To: linux-arm-kernel@lists.infradead.org, Maxime Ripard <mripard@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <E0DBDA94-FA7C-4ED6-AE84-BE1FC5463C0E@aosc.io>
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_062148_466283_95254E5A 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
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
Cc: David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDEw5pyIM+aXpSBHTVQrMDg6MDAg5LiL5Y2IOToxOToxNiwgTWF4aW1lIFJp
cGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPiDlhpnliLA6Cj5PbiBUaHUsIE9jdCAwMywgMjAxOSBh
dCAxMjozODo0M1BNICswNTMwLCBKYWdhbiBUZWtpIHdyb3RlOgo+PiBPbiBUdWUsIE9jdCAxLCAy
MDE5IGF0IDE6MzMgUE0gSWNlbm93eSBaaGVuZyA8aWNlbm93eUBhb3NjLmlvPiB3cm90ZToKPj4g
Pgo+PiA+IFRoaXMgcmV2ZXJ0cyBjb21taXQgZGE2NzZjNmFhNjQxM2Q1OWFiMGE4MGM5N2JiYzI3
MzAyNWU2NDBiMi4KPj4gPgo+PiA+IFRoZSBvcmlnaW5hbCBjb21taXQgYWRkcyBhIHN0YXJ0IHBh
cmFtZXRlciB0byB0aGUgY2FsY3VsYXRpb24gb2YKPnRoZQo+PiA+IHN0YXJ0IGRlbGF5IGFjY29y
ZGluZyB0byBzb21lIG9sZCBCU1AgdmVyc2lvbnMgZnJvbSBBbGx3aW5uZXIuCj5Ib3dldmVyLAo+
PiA+IHRoZXJlJ3JlIHR3byB3YXlzIHRvIGFkZCB0aGlzIGRlbGF5IC0tIGFkZCBpdCBpbiBEU0kg
Y29udHJvbGxlciBvcgo+YWRkCj4+ID4gaXQgaW4gdGhlIFRDT04uIEFkZCBpdCBpbiBib3RoIGNv
bnRyb2xsZXJzIHdvbid0IHdvcmsuCj4+ID4KPj4gPiBUaGUgY29kZSBiZWZvcmUgdGhpcyBjb21t
aXQgaXMgcGlja2VkIGZyb20gbmV3IHZlcnNpb25zIG9mIEJTUAo+a2VybmVsLAo+PiA+IHdoaWNo
IGhhcyBhIGNvbW1lbnQgZm9yIHRoZSAxIHRoYXQgc2F5cyAicHV0IHN0YXJ0X2RlbGF5IHRvIHRj
b24iLgo+QnkKPj4gPiBjaGVja2luZyB0aGUgc3VuNGlfdGNvbjBfbW9kZV9zZXRfY3B1KCkgaW4g
c3VuNGlfdGNvbiBkcml2ZXIsIGl0Cj5oYXMKPj4gPiBhbHJlYWR5IGFkZGVkIHRoaXMgZGVsYXks
IHNvIHdlIHNob3VsZG4ndCByZXBlYXQgdG8gYWRkIHRoZSBkZWxheQo+aW4gRFNJCj4+ID4gY29u
dHJvbGxlciwgb3RoZXJ3aXNlIHRoZSB0aW1pbmcgd29uJ3QgbWF0Y2guCj4+Cj4+IFRoYW5rcyBm
b3IgdGhpcyBjaGFuZ2UuIGxvb2sgbGlrZSB0aGlzIGlzIHByb3BlciByZWFzb24gZm9yIGFkZGlu
ZyArCj4+IDEuIGFsc28gYWRkaW5nIGJzcCBjb2RlIGxpbmtzIGhlcmUgbWlnaHQgaGVscCBmb3Ig
ZnV0dXJlIHJlZmVyZW5jZS4KPj4KPj4gT3RoZXJ3aXNlLAo+Pgo+PiBSZXZpZXdlZC1ieTogSmFn
YW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4KPlRoZSBjb21taXQgbG9nIHdh
cyBiZXR0ZXIgaW4gdGhpcyBvbmUuIEkgZW5kZWQgdXAgbWVyZ2luZyB0aGlzIG9uZSwKPndpdGgg
eW91ciBSLWIuCgpQbGVhc2Ugbm90ZSB0aGF0IEphZ2FuJ3MgdjExIDMvNyBpcyBzdGlsbCBuZWVk
ZWQuCgo+Cj5NYXhpbWUKCi0tIArkvb/nlKggSy05IE1haWwg5Y+R6YCB6Ieq5oiR55qEQW5kcm9p
ZOiuvuWkh+OAggoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
