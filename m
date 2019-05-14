Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0021CCB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 18:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMk3Xaj3Iesy7k10VnWTd34dWp0ndxR9D91/RyEtKBM=; b=lS3om/FRGGMgSI
	kkjNtRlXGvxXxDjszFn2uEj2vG9DED0+mBX5r94TZYQff1MIb/HAdE4C88CPnkXFKyT/uiJAWM1zr
	DUrBKDj2tmvpvnUcHFAUOh2ekXdtzrLJKD7tygUNUlCVMwq7aGnCBZ4F3roseNJYKKXeCROd64Aie
	NfOtsKNbvWtLXuzSWIoW6llqgiTXz1uNuZG6UM62pmhUMb5DgJiPPZ4xFapAgAzZB3xEM8UwCYldo
	CqFUcLZVjC0VrGYbf5UitvWonJzglfQjUUpdYTKI07Rfer02YQRc4vgXFW6vaKgOedjLD2NBJfLNH
	5e0mbTVbmcUYa2gPGaiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQa4d-00063I-Jc; Tue, 14 May 2019 16:14:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQa4W-00062t-CV; Tue, 14 May 2019 16:14:33 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDA2B20863;
 Tue, 14 May 2019 16:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557850472;
 bh=jeKRXr0M9XXFqWmVjnjpDyGUpNBVkxLC/ans2pFYR2w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vDxrSC2Lnyi8cE34RZ63IW6xbzA/RS3z0FIfxWTNzEOquRd9xmxMQfmff6u+vFaSa
 nq0KreWUXK8VjnyPNbRFmiEXf75uZbIGC/q8ZaWCZy8uIOjSdRb61J5u0YitZbyOlw
 B9UyjFaSfEEm5NegC/LI/2btCOASzv4Aioy6lQKA=
Received: by mail-qt1-f170.google.com with SMTP id i26so2317711qtr.10;
 Tue, 14 May 2019 09:14:31 -0700 (PDT)
X-Gm-Message-State: APjAAAVJze+fv+iqflw26Tk9oAmBEjpYULsPi5W++jLgJHmcJ2VMxX7f
 dk56ILWYRFW8lkQ2ZXQYJEkyGoZ4YFADRXTHAQ==
X-Google-Smtp-Source: APXvYqzkPStG3BhXhS/DE7x7FQdm19fjYXKqLaaVHeqaJH60sMGfCRR/KG+4+ERIuURoEhyV/MKK079WsfWsQlzxXXM=
X-Received: by 2002:ac8:641:: with SMTP id e1mr30147087qth.76.1557850471187;
 Tue, 14 May 2019 09:14:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-4-frederic.chen@mediatek.com>
 <20190430011619.GA22170@bogus>
 <1557238579.11663.15.camel@mtksdccf07>
In-Reply-To: <1557238579.11663.15.camel@mtksdccf07>
From: Rob Herring <robh@kernel.org>
Date: Tue, 14 May 2019 11:14:19 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ7+qrBEi4fXx1qC-3g17UGDJQ-LmahU9YUHaqr7QZQtQ@mail.gmail.com>
Message-ID: <CAL_JsqJ7+qrBEi4fXx1qC-3g17UGDJQ-LmahU9YUHaqr7QZQtQ@mail.gmail.com>
Subject: Re: [RFC PATCH V1 3/6] dt-bindings: mt8183: Added DIP dt-bindings
To: Frederic Chen <frederic.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_091432_458832_65D61DF5 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn.Wu@mediatek.com, christie.yu@mediatek.com,
 srv_heupstream <srv_heupstream@mediatek.com>, holmes.chiou@mediatek.com,
 suleiman@chromium.org, Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 Tomasz Figa <tfiga@chromium.org>, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org,
 Hans Verkuil <hans.verkuil@cisco.com>, zwisler@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgNywgMjAxOSBhdCA5OjE2IEFNIEZyZWRlcmljIENoZW4gPGZyZWRlcmljLmNo
ZW5AbWVkaWF0ZWsuY29tPiB3cm90ZToKPgo+IERlYXIgUm9iLAo+Cj4gSSBhcHByZWNpYXRlIHlv
dXIgY29tbWVudHMuCj4KPiBPbiBNb24sIDIwMTktMDQtMjkgYXQgMjA6MTYgLTA1MDAsIFJvYiBI
ZXJyaW5nIHdyb3RlOgo+ID4gT24gV2VkLCBBcHIgMTcsIDIwMTkgYXQgMDY6NDU6MDhQTSArMDgw
MCwgRnJlZGVyaWMgQ2hlbiB3cm90ZToKPiA+ID4gVGhpcyBwYXRjaCBhZGRzIERUIGJpbmRpbmcg
ZG9jdW1lbnRhdGlvbiBmb3IgdGhlIERpZ2l0YWwgSW1hZ2UKPiA+ID4gUHJvY2Vzc2luZyAoRElQ
KSB1bml0IG9mIGNhbWVyYSBJU1Agc3lzdGVtIG9uIE1lZGlhdGVrJ3MgU29Dcy4KPiA+ID4KPiA+
ID4gU2lnbmVkLW9mZi1ieTogRnJlZGVyaWMgQ2hlbiA8ZnJlZGVyaWMuY2hlbkBtZWRpYXRlay5j
b20+Cj4gPiA+IC0tLQo+ID4gPiAgLi4uL2JpbmRpbmdzL21lZGlhL21lZGlhdGVrLG10ODE4My1k
aXAudHh0ICAgIHwgMzUgKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQs
IDM1IGluc2VydGlvbnMoKykKPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvbWVkaWF0ZWssbXQ4MTgzLWRpcC50eHQKPiA+ID4K
PiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9tZWRpYXRlayxtdDgxODMtZGlwLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9tZWRpYS9tZWRpYXRlayxtdDgxODMtZGlwLnR4dAo+ID4gPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjBlMTk5NGJmODJmMAo+ID4gPiAtLS0gL2Rl
di9udWxsCj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9tZWRpYXRlayxtdDgxODMtZGlwLnR4dAo+ID4gPiBAQCAtMCwwICsxLDM1IEBACj4gPiA+ICsq
IE1lZGlhdGVrIERpZ2l0YWwgSW1hZ2UgUHJvY2Vzc29yIChESVApCj4gPiA+ICsKPiA+ID4gK0Rp
Z2l0YWwgSW1hZ2UgUHJvY2Vzc29yIChESVApIHVuaXQgaW4gTWVkaWF0ZWsgSVNQIHN5c3RlbSBp
cyByZXNwb25zaWJsZSBmb3IKPiA+ID4gK2ltYWdlIGNvbnRlbnQgYWRqdXN0bWVudCBhY2NvcmRp
bmcgdG8gdGhlIHR1bmluZyBwYXJhbWV0ZXJzLiBESVAgY2FuIHByb2Nlc3MKPiA+ID4gK3RoZSBp
bWFnZSBmb3JtIG1lbW9yeSBidWZmZXIgYW5kIG91dHB1dCB0aGUgcHJvY2Vzc2VkIGltYWdlIHRv
IG11bHRpcGxlIG91dHB1dAo+ID4gPiArYnVmZmVycy4gRnVydGhlcm1vcmUsIGl0IGNhbiBzdXBw
b3J0IGRlbW9zYWljaW5nIGFuZCBub2lzZSByZWR1Y3Rpb24gb24gdGhlCj4gPiA+ICtpbWFnZXMu
Cj4gPiA+ICsKPiA+ID4gK1JlcXVpcmVkIHByb3BlcnRpZXM6Cj4gPiA+ICstIGNvbXBhdGlibGU6
ICJtZWRpYXRlayxtdDgxODMtZGlwIgo+ID4gPiArLSByZWc6IFBoeXNpY2FsIGJhc2UgYWRkcmVz
cyBhbmQgbGVuZ3RoIG9mIHRoZSBmdW5jdGlvbiBibG9jayByZWdpc3RlciBzcGFjZQo+ID4gPiAr
LSBpbnRlcnJ1cHRzOiBpbnRlcnJ1cHQgbnVtYmVyIHRvIHRoZSBjcHUKPiA+ID4gKy0gaW9tbXVz
OiBzaG91bGQgcG9pbnQgdG8gdGhlIHJlc3BlY3RpdmUgSU9NTVUgYmxvY2sgd2l0aCBtYXN0ZXIg
cG9ydCBhcwo+ID4gPiArICBhcmd1bWVudCwgc2VlIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9pb21tdS9tZWRpYXRlayxpb21tdS50eHQKPiA+ID4gKyAgZm9yIGRldGFpbHMuCj4g
PiA+ICstIG1lZGlhdGVrLGxhcmI6IG11c3QgY29udGFpbiB0aGUgbG9jYWwgYXJiaXRlcnMgaW4g
dGhlIGN1cnJlbnQgU29jcywgc2VlCj4gPiA+ICsgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tZW1vcnktY29udHJvbGxlcnMvbWVkaWF0ZWssc21pLWxhcmIudHh0Cj4gPiA+ICsg
IGZvciBkZXRhaWxzLgo+ID4gPiArLSBjbG9ja3M6IG11c3QgY29udGFpbiB0aGUgbG9jYWwgYXJi
aXRlcnMgNSAoTEFSQjUpIGFuZCBESVAgY2xvY2sKPiA+ID4gKy0gY2xvY2stbmFtZXM6IG11c3Qg
Y29udGFpbiBESVBfQ0dfSU1HX0xBUkI1IGFuZCBESVBfQ0dfSU1HX0RJUAo+ID4gPiArCj4gPiA+
ICtFeGFtcGxlOgo+ID4gPiArICAgZGlwOiBkaXBAMTUwMjIwMDAgewo+ID4gPiArICAgICAgICAg
ICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE4My1kaXAiOwo+ID4gPiArICAgICAgICAgICBt
ZWRpYXRlayxsYXJiID0gPCZsYXJiNT47Cj4gPgo+ID4gPiArICAgICAgICAgICBtZWRpYXRlayxt
ZHAzID0gPCZtZHBfcmRtYTA+Owo+ID4gPiArICAgICAgICAgICBtZWRpYXRlayx2cHUgPSA8JnZw
dT47Cj4gPgo+ID4gTm90IGRvY3VtZW50ZWQuCj4gPgo+Cj4g4oCcbWVkaWF0ZWssdnB14oCdIHdp
bGwgYmUgcmVwbGFjZWQgYnkg4oCcbWVkaWF0ZWssc2NwLuKAnSBJIHdvdWxkIGxpa2UgdG8KPiBh
ZGQgdGhlIGZvbGxvd2luZyBkZXNjcmlwdGlvbiBpbiBuZXh0IHZlcnNpb24gb2YgdGhlIHBhdGNo
Ogo+Cj4gLSBtZWRpYXRlayxzY3A6IG11c3QgcG9pbnQgdG8gdGhlIHNjcCBibG9jayBvZiB0aGUg
Y28tcHJvY2Vzc29yIHVzZWQKPiAgIHdpdGggRElQLiBQbGVhc2Ugc2VlCj4gICBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVtb3RlcHJvYy9tdGssc2NwLnR4dCBmb3IgdGhlCj4g
ICBkZXRhaWwuCj4KPiAtIG1lZGlhdGVrLG1kcDM6IG11c3QgcG9pbnQgdG8gdGhlIE1lZGlhIERh
dGEgUGF0aCAzIChNRFAzKSBibG9jay4KPiAgIFBsZWFzZSBzZWUKPiAgIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9tZWRpYXRlayxtdDgxODMtbWRwMy50eHQKPiAgIGZv
ciB0aGUgZGV0YWlsLgoKSWYgdGhlcmUncyBvbmx5IDEgb2YgZWFjaCBvZiB0aGVzZSBibG9ja3Ms
IHRoZXJlJ3Mgbm8gbmVlZCB0byBoYXZlCnBoYW5kbGUuIEp1c3QgZmluZCB0aGUgbWF0Y2hpbmcg
bm9kZSB1c2luZyB0aGUgY29tcGF0aWJsZSBzdHJpbmcocykuCgpSb2IKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
