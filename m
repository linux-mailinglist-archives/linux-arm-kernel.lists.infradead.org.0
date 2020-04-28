Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5358C1BC20E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55ofAqGSGsrn3jzQFV2lPUNaOboyNNGP6hCCtVH3BzA=; b=cbA/QdyniTbHLb
	naDjV0Uvg04FVlLJoKv0vOaYHGq551SnHUpqKIEP5LTiJzlDwFZbxszKgHDijVdbhR74RHkelAqxp
	IWAJbErnjYWECiNpvBbfUIUmq5dbIZz4O0FdE6H/tlTAYyeXNRPHL2zbTWw1c7yHxxFMAf1pFmarn
	WOeuGAd0UZvTzPTeJamqHGDYX7fzdiHjHOQiare/w1dMOXR1W35caYeSf9sOcgp6REzQetb4Ej2M8
	wDsh7t5/1Aw0P/1h+NfBGhFUn4SVV/oxoE49TLyDkG8Nq5Au67W6uQIlyvJPqd9B0vWRf51H18d65
	yqS9EPQ8jZ3D3C+zoKTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTReY-0000yv-It; Tue, 28 Apr 2020 14:56:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRdf-0007cv-95
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:55:14 +0000
Received: by mail-wm1-x341.google.com with SMTP id x25so3138420wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 07:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=6jFGKnF82v8suNis8fMuokycBjbhGzKZuUKxIPnz6aU=;
 b=BZjH9ieYve/gpLatbRDZvJ5mYMgq6YUzTeqo/oWKI+CvmthCFiA2MHvBErEm7R56zX
 yGznMbgkGKeZ+H/WGkmuaje2vBjRkQceSGF3pHEBbC5mX9V583N7EswiLWe5KsmKjLY1
 7ME8A6V8IBT7cX79iEnfogPbJkUN3SvScH9Gk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=6jFGKnF82v8suNis8fMuokycBjbhGzKZuUKxIPnz6aU=;
 b=LwG/q5530JxojSgXBIpLvr2hG2g4264btPxpqAgnWcDHFEME1iw3AStDtX/4eFaWa3
 2SXTlPzDI3mdt3F42gp7BxS4D6a+5i/8rK9mNEodW5J+ynPXo7qtgLtAtQV4R/AuMkdO
 9Je2Uv3lQaDD6VhugDMsr5AqZeKWeyMB4vS9COguCsxLeUgnf7V3emWX/i031Fu86FhA
 8GcLIA1XmI4Uzag8omOL9gKuHBs9rmE86FSTmLyHU0DjIlFrL64VExdIIVUC2aeRnaPJ
 42gmC7YMDzDuCUnFLaT+jFmVbyjB6NtweFL5g+7HhR32XTcJaheJmXsxkUy9pHdCInL1
 /6Uw==
X-Gm-Message-State: AGi0PuaS2WXjdTx4EM+pnb33zJ15AoA6hnNpkZLGS1zhU6mMT2JNiKaf
 nRI00QLJVB+Me2pP6g485sauwA==
X-Google-Smtp-Source: APiQypLVWUTBQ/2GQLWlB4vZEl5cImSOrQr/pNFn43Y9nr0LlTg+bI/kjjQbJ752mXJz4e4Gw8vG/Q==
X-Received: by 2002:a7b:c399:: with SMTP id s25mr4825208wmj.169.1588085709816; 
 Tue, 28 Apr 2020 07:55:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p190sm3680671wmp.38.2020.04.28.07.55.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 07:55:09 -0700 (PDT)
Date: Tue, 28 Apr 2020 16:55:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Subject: Re: [PATCH -next] drm/mediatek: Fix Kconfig warning
Message-ID: <20200428145507.GQ3456981@phenom.ffwll.local>
Mail-Followup-To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 CK Hu <ck.hu@mediatek.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>
References: <20200420135045.27984-1-yuehaibing@huawei.com>
 <CAAOTY__km=QZQACp8g-Qr+aWZ4r0Yp7O5j7u8ZTpDpTXXfUdNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAOTY__km=QZQACp8g-Qr+aWZ4r0Yp7O5j7u8ZTpDpTXXfUdNw@mail.gmail.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_075511_523471_7945B1AA 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 YueHaibing <yuehaibing@huawei.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgMDQ6MjA6MzlQTSArMDgwMCwgQ2h1bi1LdWFuZyBIdSB3
cm90ZToKPiBIaSwgWXVlSGFpYmluZzoKPiAKPiBZdWVIYWliaW5nIDx5dWVoYWliaW5nQGh1YXdl
aS5jb20+IOaWvCAyMDIw5bm0NOaciDIw5pelIOmAseS4gCDkuIvljYgxMDowNOWvq+mBk++8mgo+
ID4KPiA+IFdBUk5JTkc6IHVubWV0IGRpcmVjdCBkZXBlbmRlbmNpZXMgZGV0ZWN0ZWQgZm9yIE1U
S19NTVNZUwo+ID4gICBEZXBlbmRzIG9uIFtuXTogKEFSQ0hfTUVESUFURUsgWz15XSB8fCBDT01Q
SUxFX1RFU1QgWz1uXSkgJiYgQ09NTU9OX0NMS19NVDgxNzNfTU1TWVMgWz1uXQo+ID4gICBTZWxl
Y3RlZCBieSBbeV06Cj4gPiAgIC0gRFJNX01FRElBVEVLIFs9eV0gJiYgSEFTX0lPTUVNIFs9eV0g
JiYgRFJNIFs9eV0gJiYgKEFSQ0hfTUVESUFURUsgWz15XSB8fCBBUk0gJiYgQ09NUElMRV9URVNU
IFs9bl0pICYmIENPTU1PTl9DTEsgWz15XSAmJiBIQVZFX0FSTV9TTUNDQyBbPXldICYmIE9GIFs9
eV0KPiA+Cj4gPiBBZGQgbWlzc2luZyBkZXBlbmRjeSBDT01NT05fQ0xLX01UODE3M19NTVNZUyB0
byBmaXggdGhpcy4KPiAKPiBGcm9tIHRoZSBjb2RlIHJlbGF0aW9uc2hpcCwgbWVkaWF0ZWsgZHJt
IGhhcyByZWxhdGlvbiB3aXRoIG1lZGlhdGVrCj4gbW1zeXMsIGFuZCBtZWRpYXRlayBtbXN5cyBo
YXMgcmVsYXRpb24gd2l0aCBtZWRhaXRlayBjbG9jay4KPiBTbyBJIHRoaW5rIGl0J3MgYmV0dGVy
IHRoYXQgQ09ORklHX01US19NTVNZUyBzZWxlY3QKPiBDT05GSUdfQ09NTU9OX0NMS19NVDgxNzNf
TU1TWVMuCgpzZWxlY3QgaXMgdmVyeSBzdHJvbmdseSBkaXNjb3VyYWdlZCBhbmQgc2hvdWxkIG9u
bHkgYmUgdXNlZCBmb3IgS2NvbmZpZwpzeW1ib2xzIG5vdCB2aXNpYmxlIHRvIHVzZXJzLgotRGFu
aWVsCgo+IAo+IFJlZ2FyZHMsCj4gQ2h1bi1LdWFuZy4KPiAKPiA+Cj4gPiBGaXhlczogMmM3NThl
MzAxZWQ5ICgic29jIC8gZHJtOiBtZWRpYXRlazogTW92ZSByb3V0aW5nIGNvbnRyb2wgdG8gbW1z
eXMgZGV2aWNlIikKPiA+IFNpZ25lZC1vZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVh
d2VpLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9LY29uZmlnIHwg
MSArCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPgo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL21l
ZGlhdGVrL0tjb25maWcKPiA+IGluZGV4IGM0MjBmNWEzZDMzYi4uNGQ5YjU1NDBkZTY4IDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL0tjb25maWcKPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9LY29uZmlnCj4gPiBAQCAtNiw2ICs2LDcgQEAgY29uZmln
IERSTV9NRURJQVRFSwo+ID4gICAgICAgICBkZXBlbmRzIG9uIENPTU1PTl9DTEsKPiA+ICAgICAg
ICAgZGVwZW5kcyBvbiBIQVZFX0FSTV9TTUNDQwo+ID4gICAgICAgICBkZXBlbmRzIG9uIE9GCj4g
PiArICAgICAgIGRlcGVuZHMgb24gQ09NTU9OX0NMS19NVDgxNzNfTU1TWVMKPiA+ICAgICAgICAg
c2VsZWN0IERSTV9HRU1fQ01BX0hFTFBFUgo+ID4gICAgICAgICBzZWxlY3QgRFJNX0tNU19IRUxQ
RVIKPiA+ICAgICAgICAgc2VsZWN0IERSTV9NSVBJX0RTSQo+ID4gLS0KPiA+IDIuMTcuMQo+ID4K
PiA+CgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRp
b24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
