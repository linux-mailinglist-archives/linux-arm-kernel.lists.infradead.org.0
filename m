Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF29B166CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 17:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFa0rZj4ol46sD6cGxXzVjBZSLTke30aWtPddb1gFc8=; b=rREEpBPwJkhK+q
	EP1nRHDaK7FRD0tP6u8gixffMUYqk++m4kpx9Guti29oxSIHPxdQGX8rWfNko+NON2WjyhpKpP+P3
	IbEjx6eX5xpzxragE3zf+FH9o56UFnTdyfhz/zogKdEoCmAOEk1MtFB3G6v2pqaLvY5Wjr6RCmSp3
	swCdc5gVLpwux9WDZQs0wsY2RP8qwU0F29um8AHv1oewU0Foc1zZZBBFGN0nJBcvPCB0t+1EzSpiH
	fq3dj1JcR7BxOQ7rv6Oj1ba7QRTKbJYal7EAG0plrbCtZFONP6T0jvTSfX8NFaPZA6DpY61puWTgV
	/IR1ZVb7YVkrJMAfjN4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO26B-0007Vi-Ks; Tue, 07 May 2019 15:33:43 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO264-0007VJ-Ow
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 15:33:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id k18so12170054lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 08:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WQisPNfHOfBJIalj0+j26baB7DA29UKmypJYO0pbRkw=;
 b=p/Ae+FE2KJJFwABwsALHLaFGmLRrrZwfw6c20iqhoqGxxvYFHcl4Mbl0rgeHBsHgPd
 OWKfLJJPdkXbaBXWmTfG2b+0VB+VBwspEXLsxCtj7qabY+QR3AuBBRrFxF4qAWHRzYvs
 zYS5wXWXvLvn+A3xfxJzBuUlOnPihB7fWAzS1N/DW/RHkNGXlNuoaXHhBErG5LjCU/59
 2JX3nb3qPqK1wEs4pVqoZhR/R+PhflOPKM25QrzQs3w8tRqi4ZRRttnaw5JIbVdOwDzG
 8IfTMUwpsgVHh+VXKBiQwX9yY3LofCi+aLAV1TjzFzet2eZgw12JYXQ9t0IZA51CzxJg
 7IvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WQisPNfHOfBJIalj0+j26baB7DA29UKmypJYO0pbRkw=;
 b=Bvff8mwvkbEKz+c+0lKfzgnvt6oXa+qMYXtG4sCNIIZb1y4EFHNMNYTHZ/MMrUIUE8
 q9QOTcWMLCu1LhGSHdOqCkFp41vUcMBJwjq5KZEV8ZJ8aQ9AEBj884Fxl2HRtpISZ+0A
 OeqV5bydPBm9K9U6NW0I0DapYLZh23IrxjQl7JXhG4YKIvUWK1tRaFjziFtCm0OvlzFc
 ahPkyIV/bXUG7Cu6H7DIzK75Ij/nkCkQs6p4OdIRA+9ofGSdT+fanwLPFib8J/phmBbv
 PWS5lT7WUibxlimpnvXi71918gXG/S7gVepGL8FAGjIHJp+8MgY9jv0uKRL5eJJBvpPV
 4UBA==
X-Gm-Message-State: APjAAAUc6N0CyXzkCHCQ3EJwdZW1nsr8T10CezmGHDyvA+Jgjykg+uId
 mY/l8EpSOhEwBaKqQggUzOoVNgJGQYKSDbVXmnc=
X-Google-Smtp-Source: APXvYqyy1KmutZbnqJrWqU9nAQFKvt+pfus9NE6eVAUy299obZzU9NfS85opZFbrS+ROq8Sw9zfcEjMSxrm8MGvA9oM=
X-Received: by 2002:ac2:54a1:: with SMTP id w1mr18136772lfk.46.1557243214820; 
 Tue, 07 May 2019 08:33:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190507152713.27494-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190507152713.27494-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 7 May 2019 12:33:39 -0300
Message-ID: <CAOMZO5B2nMsVNO6O_D+YTSjux=-DjNPGxhkEi3AQquOZVODumA@mail.gmail.com>
Subject: Re: [PATCH RE-RESEND 1/2] drm/panel: Add support for Armadeus ST0700
 Adapt
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>, 
 Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_083336_857050_7D9C9FB6 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 stable <stable@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

W0FkZGluZyBTYW0sIHdobyBpcyBoZWxwaW5nIHRvIHJldmlldy9jb2xsZWN0IHBhbmVsLXNpbXBs
ZSBwYXRjaGVzXQoKT24gVHVlLCBNYXkgNywgMjAxOSBhdCAxMjoyNyBQTSBTw6liYXN0aWVuIFN6
eW1hbnNraQo8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+IHdyb3RlOgo+Cj4gVGhp
cyBwYXRjaCBhZGRzIHN1cHBvcnQgZm9yIHRoZSBBcm1hZGV1cyBTVDA3MDAgQWRhcHQuIEl0IGNv
bWVzIHdpdGggYQo+IFNhbnRlayBTVDA3MDBJNVktUkJTTFcgNy4wIiBXVkdBICg4MDB4NDgwKSBU
RlQgYW5kIGFuIGFkYXB0ZXIgYm9hcmQgc28KPiB0aGF0IGl0IGNhbiBiZSBjb25uZWN0ZWQgb24g
dGhlIFRGVCBoZWFkZXIgb2YgQXJtYWRldXMgRGV2IGJvYXJkcy4KPgo+IENjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnICMgdjQuMTkKPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2Vy
bmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVu
LnN6eW1hbnNraUBhcm1hZGV1cy5jb20+Cj4gLS0tCj4gIC4uLi9kaXNwbGF5L3BhbmVsL2FybWFk
ZXVzLHN0MDcwMC1hZGFwdC50eHQgICB8ICA5ICsrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vcGFu
ZWwvcGFuZWwtc2ltcGxlLmMgICAgICAgICAgfCAyOSArKysrKysrKysrKysrKysrKysrCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvYXJtYWRldXMsc3Qw
NzAwLWFkYXB0LnR4dAo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9kaXNwbGF5L3BhbmVsL2FybWFkZXVzLHN0MDcwMC1hZGFwdC50eHQgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9wYW5lbC9hcm1hZGV1cyxzdDA3MDAt
YWRhcHQudHh0Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLmEz
MGQ2M2RiM2M4Zgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9wYW5lbC9hcm1hZGV1cyxzdDA3MDAtYWRhcHQudHh0Cj4gQEAg
LTAsMCArMSw5IEBACj4gK0FybWFkZXVzIFNUMDcwMCBBZGFwdC4gQSBTYW50ZWsgU1QwNzAwSTVZ
LVJCU0xXIDcuMCIgV1ZHQSAoODAweDQ4MCkgVEZUIHdpdGgKPiArYW4gYWRhcHRlciBib2FyZC4K
PiArCj4gK1JlcXVpcmVkIHByb3BlcnRpZXM6Cj4gKy0gY29tcGF0aWJsZTogImFybWFkZXVzLHN0
MDcwMC1hZGFwdCIKPiArLSBwb3dlci1zdXBwbHk6IHNlZSBwYW5lbC1jb21tb24udHh0Cj4gKwo+
ICtPcHRpb25hbCBwcm9wZXJ0aWVzOgo+ICstIGJhY2tsaWdodDogc2VlIHBhbmVsLWNvbW1vbi50
eHQKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXNpbXBsZS5jIGIv
ZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXNpbXBsZS5jCj4gaW5kZXggOWU4MjE4ZjZhM2Yy
Li40NWNhOGQxMGI2NmYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVs
LXNpbXBsZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXNpbXBsZS5jCj4g
QEAgLTQ0Niw2ICs0NDYsMzIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwYW5lbF9kZXNjIGFtcGly
ZV9hbTgwMDQ4MHIzdG1xd2ExaCA9IHsKPiAgICAgICAgIC5idXNfZm9ybWF0ID0gTUVESUFfQlVT
X0ZNVF9SR0I2NjZfMVgxOCwKPiAgfTsKPgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRpc3BsYXlf
dGltaW5nIHNhbnRla19zdDA3MDBpNXlfcmJzbHdfZl90aW1pbmcgPSB7Cj4gKyAgICAgICAucGl4
ZWxjbG9jayA9IHsgMjY0MDAwMDAsIDMzMzAwMDAwLCA0NjgwMDAwMCB9LAo+ICsgICAgICAgLmhh
Y3RpdmUgPSB7IDgwMCwgODAwLCA4MDAgfSwKPiArICAgICAgIC5oZnJvbnRfcG9yY2ggPSB7IDE2
LCAyMTAsIDM1NCB9LAo+ICsgICAgICAgLmhiYWNrX3BvcmNoID0geyA0NSwgMzYsIDYgfSwKPiAr
ICAgICAgIC5oc3luY19sZW4gPSB7IDEsIDEwLCA0MCB9LAo+ICsgICAgICAgLnZhY3RpdmUgPSB7
IDQ4MCwgNDgwLCA0ODAgfSwKPiArICAgICAgIC52ZnJvbnRfcG9yY2ggPSB7IDcsIDIyLCAxNDcg
fSwKPiArICAgICAgIC52YmFja19wb3JjaCA9IHsgMjIsIDEzLCAzIH0sCj4gKyAgICAgICAudnN5
bmNfbGVuID0geyAxLCAxMCwgMjAgfSwKPiArICAgICAgIC5mbGFncyA9IERJU1BMQVlfRkxBR1Nf
SFNZTkNfTE9XIHwgRElTUExBWV9GTEFHU19WU1lOQ19MT1cgfAo+ICsgICAgICAgICAgICAgICBE
SVNQTEFZX0ZMQUdTX0RFX0hJR0ggfCBESVNQTEFZX0ZMQUdTX1BJWERBVEFfUE9TRURHRQo+ICt9
Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBwYW5lbF9kZXNjIGFybWFkZXVzX3N0MDcwMF9h
ZGFwdCA9IHsKPiArICAgICAgIC50aW1pbmdzID0gJnNhbnRla19zdDA3MDBpNXlfcmJzbHdfZl90
aW1pbmcsCj4gKyAgICAgICAubnVtX3RpbWluZ3MgPSAxLAo+ICsgICAgICAgLmJwYyA9IDYsCj4g
KyAgICAgICAuc2l6ZSA9IHsKPiArICAgICAgICAgICAgICAgLndpZHRoID0gMTU0LAo+ICsgICAg
ICAgICAgICAgICAuaGVpZ2h0ID0gODYsCj4gKyAgICAgICB9LAo+ICsgICAgICAgLmJ1c19mb3Jt
YXQgPSBNRURJQV9CVVNfRk1UX1JHQjY2Nl8xWDE4LAo+ICsgICAgICAgLmJ1c19mbGFncyA9IERS
TV9CVVNfRkxBR19ERV9ISUdIIHwgRFJNX0JVU19GTEFHX1BJWERBVEFfUE9TRURHRSwKPiArfTsK
PiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSBhdW9fYjEwMWF3MDNf
bW9kZSA9IHsKPiAgICAgICAgIC5jbG9jayA9IDUxNDUwLAo+ICAgICAgICAgLmhkaXNwbGF5ID0g
MTAyNCwKPiBAQCAtMjU0NCw2ICsyNTcwLDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZp
Y2VfaWQgcGxhdGZvcm1fb2ZfbWF0Y2hbXSA9IHsKPiAgICAgICAgIH0sIHsKPiAgICAgICAgICAg
ICAgICAgLmNvbXBhdGlibGUgPSAiYXJtLHJ0c20tZGlzcGxheSIsCj4gICAgICAgICAgICAgICAg
IC5kYXRhID0gJmFybV9ydHNtLAo+ICsgICAgICAgfSwgewo+ICsgICAgICAgICAgICAgICAuY29t
cGF0aWJsZSA9ICJhcm1hZGV1cyxzdDA3MDAtYWRhcHQiLAo+ICsgICAgICAgICAgICAgICAuZGF0
YSA9ICZhcm1hZGV1c19zdDA3MDBfYWRhcHQsCj4gICAgICAgICB9LCB7Cj4gICAgICAgICAgICAg
ICAgIC5jb21wYXRpYmxlID0gImF1byxiMTAxYXcwMyIsCj4gICAgICAgICAgICAgICAgIC5kYXRh
ID0gJmF1b19iMTAxYXcwMywKPiAtLQo+IDIuMTkuMgo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
