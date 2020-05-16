Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE1B1D5FE7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 11:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dznk3R+534oCY7/GUTDRJ6fyUOdcuRgbVCPjSVKnSkw=; b=W45lMfVF3d7zKO
	F/Ac0oVUH93Y9sB4NlgvgSeUmDNCjWPbb+mbDvMnBZUYUaPmtawju4CmrDMYWll1/KKQ0Vb1Hz/gT
	vVN708GDnYXjxPkJ0py0NdBaciUzzuVoSqQqV5jaLo/1ExzqelYnZb/2c2SWtUbYZNtXsm/PEmezB
	LYj/72rntSwzUXoA5bV8H3gtAgQq/Bg+8GaFxzHUCVMstjxrLHL899iDCe8z6jVVYyGvKlVA52+fq
	5jzgPe30UWdserWV1e4erReixeCQusecDgPiMHMcvOd3hoJOURfwJez3IQoBgJxdQ7u4jQvTda9hz
	65YPHt6bz4CHUdoZVxsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZssV-0000Rv-G2; Sat, 16 May 2020 09:13:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZssK-0000Qw-LX; Sat, 16 May 2020 09:12:58 +0000
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A9D822075F;
 Sat, 16 May 2020 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589620373;
 bh=nImC5Lqhf3m2EzWrtneElBAhRDJ15TlDvFtmSiX6f7A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RGWW1cJr2LvrfH09qMjVWsx8mNmCA5lXbW0QSHs1KdZsbmeH4TE50jQOM+gAkWV9A
 omL750r+TYwA39nB7PeG4t838ZbdCw4GuAR8wLBh7xGMDjeXgFrngjACBhvInxNe5w
 2WduJotZ51M1UhTHYAAxHdj6qip3Ebv5VGdGgpv8=
Received: by mail-ej1-f51.google.com with SMTP id l21so4345793eji.4;
 Sat, 16 May 2020 02:12:53 -0700 (PDT)
X-Gm-Message-State: AOAM531NQH7cs90bKeoxHDotlv6LOn16sqYTn/bR5LsBeLqhMQDQNRSe
 PkuBknfUqP9tRY5gNqLgrXZPyt8c+aoFAlKXOw==
X-Google-Smtp-Source: ABdhPJxqXiBmi+YOlaHROm44eIZV54f3axqEuGxo7+ttRmcSCa8fZsoluwuiSKiAlI4IsRpaXMHAB1+wPGTuO+pbJpk=
X-Received: by 2002:a17:906:924a:: with SMTP id
 c10mr2519194ejx.360.1589620372129; 
 Sat, 16 May 2020 02:12:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200504141408.60877-1-enric.balletbo@collabora.com>
 <CAAOTY_8vMG1k86V+qBhs0YH5QHELmgtJ0PNOAzWTHoTy2j=R2Q@mail.gmail.com>
In-Reply-To: <CAAOTY_8vMG1k86V+qBhs0YH5QHELmgtJ0PNOAzWTHoTy2j=R2Q@mail.gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 16 May 2020 17:12:40 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9PdpKTwN46ZwpnRyOw-Ky758oxX11mLer6EksZgfsXSw@mail.gmail.com>
Message-ID: <CAAOTY_9PdpKTwN46ZwpnRyOw-Ky758oxX11mLer6EksZgfsXSw@mail.gmail.com>
Subject: Re: [PATCH 0/3] Convert mtk-dpi to drm_bridge API
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_021256_747840_B3961D68 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+IOaWvCAy
MDIw5bm0NeaciDEw5pelIOmAseaXpSDkuIrljYg5OjI05a+r6YGT77yaCj4KPiBIaSwgRW5yaWM6
Cj4KPiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29t
PiDmlrwgMjAyMOW5tDXmnIg05pelIOmAseS4gCDkuIvljYgxMDoxNOWvq+mBk++8mgo+ID4KPiA+
IFRoZSBtdGstZHBpIGRyaXZlciBzdGlsbCB1c2VzIHRoZSBkcm1fZW5jb2RlciBBUEkgd2hpY2gg
aXMgbm93IHNvbWVob3cKPiA+IGRlcHJlY2F0ZWQuIFdlIHN0YXJ0ZWQgdG8gbW92ZSBhbGwgdGhl
IE1lZGlhdGVrIGRyaXZlcnMgdG8gdGhlIGRybV9icmlkZ2UgQVBJLAo+ID4gbGlrZSB3ZSBkaWQg
Zm9yIHRoZSBtdGstZHNpIGRyaXZlciBbMV0sIHRoaXMgaXMgYW5vdGhlciBzbWFsbCBzdGVwIHRv
IGJlIGFibGUgdG8KPiA+IGZ1bGx5IGNvbnZlcnQgdGhlIERSTSBNZWRpYXRlayBkcml2ZXJzIHRv
IHRoZSBkcm1fYnJpZGdlIEFQSS4gQSBkdW1teQo+ID4gZHJtX2VuY29kZXIgaXMgbWFpbnRhaW5l
ZCBpbiB0aGUgbXRrLWRwaSBkcml2ZXIgYnV0IHRoZSBlbmQgZ29hbCBpcyBtb3ZlIGFsbCB0aGUK
PiA+IGR1bW15IGRybV9lbmNvZGVyIChtdGstZHNpLCBtdGstZHBpLCBldGMpIHRvIHRoZSBtYWlu
IG10a19kcm1fZHJ2IGRyaXZlci4KPgo+IEZvciB0aGlzIHNlcmllcywgYXBwbGllZCB0byBtZWRp
YXRlay1kcm0tbmV4dCBbMV0sIHRoYW5rcy4KPgo+IFsxXSBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9jaHVua3VhbmcuaHUvbGludXguZ2l0L2xvZy8/aD1t
ZWRpYXRlay1kcm0tbmV4dAo+CgpJIHJlbW92ZSB0aGlzIHNlcmllcyBmcm9tIG1lZGlhdGVrLWRy
bS1uZXh0IGJlY2F1c2UgZHJtIGJyaWRnZSBkcml2ZXIKbmVlZCBhY2sgb2YgZHJtIGJyaWRnZSBt
YWludGFpbmVyLgoKUmVnYXJkcywKQ2h1bi1LdWFuZy4KCj4gUmVnYXJkcywKPiBDaHVuLUt1YW5n
Lgo+Cj4gPgo+ID4gQmVzdCByZWdhcmRzLAo+ID4gIEVucmljCj4gPgo+ID4gWzFdIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wcm9qZWN0L2xrbWwvbGlzdC8/c2VyaWVzPTQ0MTU1
OQo+ID4KPiA+IEVucmljIEJhbGxldGJvIGkgU2VycmEgKDMpOgo+ID4gICBkcm0vbWVkaWF0ZWs6
IG10a19kcGk6IFJlbmFtZSBicmlkZ2UgdG8gbmV4dF9icmlkZ2UKPiA+ICAgZHJtL21lZGlhdGVr
OiBtdGtfZHBpOiBDb252ZXJ0IHRvIGJyaWRnZSBkcml2ZXIKPiA+ICAgZHJtL21lZGlhdGVrOiBt
dGtfZHBpOiBVc2Ugc2ltcGxlIGVuY29kZXIKPiA+Cj4gPiAgZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kcGkuYyB8IDg0ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCA0NSBkZWxldGlvbnMoLSkKPiA+Cj4gPiAt
LQo+ID4gMi4yNi4yCj4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
