Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA6B1D9AEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BUzRB8GXeu/zqSf0m3khwHxHvJ1WbWZAxElsPPAXOA=; b=cdzK/zYmhUGPYy
	KjCI++T1rCSW6GoPMpjgUuqJfkh7FDNK7hOIrb+LXul5VGUnJZqnpYGTUEsCQGP57D8PaUj6xTr6W
	CBHYYV1i3JnsP+lOLpvH0686HOvxOslyaVSoLzRduwxisZPBfKZccTviyV6H68OsnxUN8KqLtkb+N
	Sw+XRpQp/ZtA9BDSMOojPvCZiKzhnhrnFZK1MPw0mbOxWKa3SWddOfELdqRV3BkY6m0Qf5/Esg+ZS
	IckYqWMkal/zw/EaOTY+5TSkKns7wxKSWu+ip5zaoRCc75M9P3O2JqYuGdJlQBGyTLv9ynfciyVCw
	WgwQwjg49IWMg8YeO8Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3we-0001E8-5L; Tue, 19 May 2020 15:14:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3wV-0001Dj-3V; Tue, 19 May 2020 15:14:08 +0000
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 811A82083E;
 Tue, 19 May 2020 15:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589901246;
 bh=ScSGe8jrv3hfKhjCdizhN+Uxf0LNOAIcifPOI6l0k1Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FKp/kLhhACiUYxTanjepKan9en1fyjUm9fL4lkrMfnS6meFg+txGACCaV1MW6ciFs
 TL1A1kdD/qDFJVvRZ6lUs05xiyHRTPYkNV0tJF1kY254vAZTmeSO4gXHNE5rqSRxEw
 8CSoX0Mcj/zyPbInqAEjbZ8AzqM89Sc2bISgLGNY=
Received: by mail-ej1-f54.google.com with SMTP id s21so12248764ejd.2;
 Tue, 19 May 2020 08:14:06 -0700 (PDT)
X-Gm-Message-State: AOAM531ED7aWFcJYe/wXYn2QiHjPfftj8QBKOiZgmTPfVR6K6f2FOTxh
 MAZ+7uIKPjj32mEi7sFS5/ikdE2f0U6+Tg72mA==
X-Google-Smtp-Source: ABdhPJyGEMfHqwCecpXfV9Hb2nOIzkFqW5hk23VzHWZF6LNSHpvLL5cECCEgClHrkDVgI7tUHYITO+v3cLGXVoWSYp8=
X-Received: by 2002:a17:906:3041:: with SMTP id
 d1mr13973435ejd.7.1589901244908; 
 Tue, 19 May 2020 08:14:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200519094115.2448092-1-enric.balletbo@collabora.com>
In-Reply-To: <20200519094115.2448092-1-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 19 May 2020 23:13:53 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-uyJiBEDNDv8OvGD6MT6jx-jiH1hM4kc6d1v9f2a525g@mail.gmail.com>
Message-ID: <CAAOTY_-uyJiBEDNDv8OvGD6MT6jx-jiH1hM4kc6d1v9f2a525g@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: mtk_hdmi: Remove debug messages for
 function calls
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_081407_183153_05E602FE 
X-CRM114-Status: GOOD (  14.26  )
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQ15pyIMTnml6Ug6YCx5LqMIOS4i+WNiDU6NDHlr6vpgZPvvJoK
Pgo+IEVxdWl2YWxlbnQgaW5mb3JtYXRpb24gY2FuIGJlIG5vd2FkYXlzIG9idGFpbmVkIHVzaW5n
IGZ1bmN0aW9uIHRyYWNlcgo+CgpSZXZpZXdlZC1ieTogQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5n
Lmh1QGtlcm5lbC5vcmc+Cgo+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEg
PGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4KPiAgZHJpdmVycy9ncHUvZHJt
L21lZGlhdGVrL210a19oZG1pLmMgICAgICAgICAgICB8IDEyICstLS0tLS0tLS0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX210ODE3M19oZG1pX3BoeS5jIHwgIDQgLS0tLQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jCj4gaW5kZXggYjA1NTVhN2NiM2I0Li4xNzJkNjcyOTQ0
MzUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYwo+IEBAIC0xNjM0LDggKzE2
MzQsNiBAQCBzdGF0aWMgaW50IG10a19oZG1pX2F1ZGlvX3N0YXJ0dXAoc3RydWN0IGRldmljZSAq
ZGV2LCB2b2lkICpkYXRhKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgbXRrX2hkbWkgKmhkbWkgPSBk
ZXZfZ2V0X2RydmRhdGEoZGV2KTsKPgo+IC0gICAgICAgZGV2X2RiZyhkZXYsICIlc1xuIiwgX19m
dW5jX18pOwo+IC0KPiAgICAgICAgIG10a19oZG1pX2F1ZGlvX2VuYWJsZShoZG1pKTsKPgo+ICAg
ICAgICAgcmV0dXJuIDA7Cj4gQEAgLTE2NDUsOCArMTY0Myw2IEBAIHN0YXRpYyB2b2lkIG10a19o
ZG1pX2F1ZGlvX3NodXRkb3duKHN0cnVjdCBkZXZpY2UgKmRldiwgdm9pZCAqZGF0YSkKPiAgewo+
ICAgICAgICAgc3RydWN0IG10a19oZG1pICpoZG1pID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4K
PiAtICAgICAgIGRldl9kYmcoZGV2LCAiJXNcbiIsIF9fZnVuY19fKTsKPiAtCj4gICAgICAgICBt
dGtfaGRtaV9hdWRpb19kaXNhYmxlKGhkbWkpOwo+ICB9Cj4KPiBAQCAtMTY1NSw4ICsxNjUxLDYg
QEAgbXRrX2hkbWlfYXVkaW9fZGlnaXRhbF9tdXRlKHN0cnVjdCBkZXZpY2UgKmRldiwgdm9pZCAq
ZGF0YSwgYm9vbCBlbmFibGUpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBtdGtfaGRtaSAqaGRtaSA9
IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+Cj4gLSAgICAgICBkZXZfZGJnKGRldiwgIiVzKCVkKVxu
IiwgX19mdW5jX18sIGVuYWJsZSk7Cj4gLQo+ICAgICAgICAgaWYgKGVuYWJsZSkKPiAgICAgICAg
ICAgICAgICAgbXRrX2hkbWlfaHdfYXVkX211dGUoaGRtaSk7Cj4gICAgICAgICBlbHNlCj4gQEAg
LTE2NjksOCArMTY2Myw2IEBAIHN0YXRpYyBpbnQgbXRrX2hkbWlfYXVkaW9fZ2V0X2VsZChzdHJ1
Y3QgZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsIHVpbnQ4X3QgKmJ1ZiwKPiAgewo+ICAgICAgICAg
c3RydWN0IG10a19oZG1pICpoZG1pID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4KPiAtICAgICAg
IGRldl9kYmcoZGV2LCAiJXNcbiIsIF9fZnVuY19fKTsKPiAtCj4gICAgICAgICBtZW1jcHkoYnVm
LCBoZG1pLT5jb25uLmVsZCwgbWluKHNpemVvZihoZG1pLT5jb25uLmVsZCksIGxlbikpOwo+Cj4g
ICAgICAgICByZXR1cm4gMDsKPiBAQCAtMTc3MCw3ICsxNzYyLDYgQEAgc3RhdGljIGludCBtdGtf
ZHJtX2hkbWlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgICAg
ICAgICAgZ290byBlcnJfYnJpZGdlX3JlbW92ZTsKPiAgICAgICAgIH0KPgo+IC0gICAgICAgZGV2
X2RiZyhkZXYsICJtZWRpYXRlayBoZG1pIHByb2JlIHN1Y2Nlc3NcbiIpOwo+ICAgICAgICAgcmV0
dXJuIDA7Cj4KPiAgZXJyX2JyaWRnZV9yZW1vdmU6Cj4gQEAgLTE3OTMsNyArMTc4NCw3IEBAIHN0
YXRpYyBpbnQgbXRrX2hkbWlfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gICAgICAgICBz
dHJ1Y3QgbXRrX2hkbWkgKmhkbWkgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPgo+ICAgICAgICAg
bXRrX2hkbWlfY2xrX2Rpc2FibGVfYXVkaW8oaGRtaSk7Cj4gLSAgICAgICBkZXZfZGJnKGRldiwg
ImhkbWkgc3VzcGVuZCBzdWNjZXNzIVxuIik7Cj4gKwo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0K
Pgo+IEBAIC0xODA4LDcgKzE3OTksNiBAQCBzdGF0aWMgaW50IG10a19oZG1pX3Jlc3VtZShzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gICAgICAgICB9
Cj4KPiAtICAgICAgIGRldl9kYmcoZGV2LCAiaGRtaSByZXN1bWUgc3VjY2VzcyFcbiIpOwo+ICAg
ICAgICAgcmV0dXJuIDA7Cj4gIH0KPiAgI2VuZGlmCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9tZWRpYXRlay9tdGtfbXQ4MTczX2hkbWlfcGh5LmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVk
aWF0ZWsvbXRrX210ODE3M19oZG1pX3BoeS5jCj4gaW5kZXggYjU1ZjUxNjc1MjA1Li4xYzM1NzUz
NzIyMzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19tdDgxNzNf
aGRtaV9waHkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbXQ4MTczX2hk
bWlfcGh5LmMKPiBAQCAtMTU5LDggKzE1OSw2IEBAIHN0YXRpYyBpbnQgbXRrX2hkbWlfcGxsX3By
ZXBhcmUoc3RydWN0IGNsa19odyAqaHcpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBtdGtfaGRtaV9w
aHkgKmhkbWlfcGh5ID0gdG9fbXRrX2hkbWlfcGh5KGh3KTsKPgo+IC0gICAgICAgZGV2X2RiZyho
ZG1pX3BoeS0+ZGV2LCAiJXNcbiIsIF9fZnVuY19fKTsKPiAtCj4gICAgICAgICBtdGtfaGRtaV9w
aHlfc2V0X2JpdHMoaGRtaV9waHksIEhETUlfQ09OMSwgUkdfSERNSVRYX1BMTF9BVVRPS19FTik7
Cj4gICAgICAgICBtdGtfaGRtaV9waHlfc2V0X2JpdHMoaGRtaV9waHksIEhETUlfQ09OMCwgUkdf
SERNSVRYX1BMTF9QT1NESVYpOwo+ICAgICAgICAgbXRrX2hkbWlfcGh5X2NsZWFyX2JpdHMoaGRt
aV9waHksIEhETUlfQ09OMywgUkdfSERNSVRYX01ITENLX0VOKTsKPiBAQCAtMTc4LDggKzE3Niw2
IEBAIHN0YXRpYyB2b2lkIG10a19oZG1pX3BsbF91bnByZXBhcmUoc3RydWN0IGNsa19odyAqaHcp
Cj4gIHsKPiAgICAgICAgIHN0cnVjdCBtdGtfaGRtaV9waHkgKmhkbWlfcGh5ID0gdG9fbXRrX2hk
bWlfcGh5KGh3KTsKPgo+IC0gICAgICAgZGV2X2RiZyhoZG1pX3BoeS0+ZGV2LCAiJXNcbiIsIF9f
ZnVuY19fKTsKPiAtCj4gICAgICAgICBtdGtfaGRtaV9waHlfY2xlYXJfYml0cyhoZG1pX3BoeSwg
SERNSV9DT04xLCBSR19IRE1JVFhfUExMX1RYRElWX0VOKTsKPiAgICAgICAgIG10a19oZG1pX3Bo
eV9jbGVhcl9iaXRzKGhkbWlfcGh5LCBIRE1JX0NPTjEsIFJHX0hETUlUWF9QTExfQklBU19MUEZf
RU4pOwo+ICAgICAgICAgdXNsZWVwX3JhbmdlKDEwMCwgMTUwKTsKPiAtLQo+IDIuMjYuMgo+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
