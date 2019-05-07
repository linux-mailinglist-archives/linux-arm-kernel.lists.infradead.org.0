Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229A416847
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 18:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5chVdU/olKWmsUgvGCc9EY8jACEmRAdo58dgHXjhdeA=; b=i4WCuYjNkq8tBx
	XhpVEezVdB4rKRU1n40zRWVv5B6WUsN8InI0GYVHrAgkoC9YSuWX8/HdwgdZhX1sQdJB8mSVlFbrV
	HtV0ZkM6R/tpMogVWTLJmug/aMDDPbZDYrddSSIAGtr0yOQiKLFSexJspkDNOMSZwD4AEQ4f1/JO+
	6n/cmQ8ILZQr+pXrAJN+fd8gxqY1oz9Mr8sVVmS+MIxmeXfodWMds0bLr/0UB03g8/I4chx0DoXSQ
	RRSueJXvm6OLvhj85CgnuZHLc7/RzAQl1zQPp/1aIm3lZgfZzy4BgRJTDsB7SMydQwiYKnPeDI58+
	qpbcsDLPDLRL7bVVsnIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3DR-0002aN-Jk; Tue, 07 May 2019 16:45:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3DK-0002Zr-9O; Tue, 07 May 2019 16:45:11 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 919FA20989;
 Tue,  7 May 2019 16:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557247509;
 bh=iM8J/j10jYr+vXCxXzUjgCYgZk17YUkoK9VE/2fhJ1I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=INXumkFeyNf58pU/qjd3huFH5ZfaxLIpyMXHCnZHxbXpsPJF6T1W6Vkh88hhOGvrJ
 GIheX5UtWz5QwB5Diw5nYE1jqJSPYf2nUHSJh66NP2uXzpdCBhwXjr4Np+l7L8hUOv
 mxoIiNV+EIzMpgJ0Ex/W0XZsuvBDRvLXKk1WcejY=
Received: by mail-qt1-f169.google.com with SMTP id t1so1754114qtc.12;
 Tue, 07 May 2019 09:45:09 -0700 (PDT)
X-Gm-Message-State: APjAAAXrKM+uUBisPh09olxZSH9DoLxwTbYDolbLMpXdtNP8TZcl3TXW
 69u6Uqoxk2zrtZx+6M3y8VRBuip2tOKjeFxjtg==
X-Google-Smtp-Source: APXvYqy7rk1sMMIHbSD/9OOZe8P3NIAyg7u8OPXuXWtwWi2WaDv6h/Xnf9ZSQ+8dUBlM+SULUoG2eW9wkEEg+3BdjGk=
X-Received: by 2002:ac8:641:: with SMTP id e1mr27644859qth.76.1557247508777;
 Tue, 07 May 2019 09:45:08 -0700 (PDT)
MIME-Version: 1.0
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
 <1556893635-18549-3-git-send-email-ynezz@true.cz>
In-Reply-To: <1556893635-18549-3-git-send-email-ynezz@true.cz>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 7 May 2019 11:44:57 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLt6UFU_6bmh3Pc0taXUgMtAEV7kL7eZU13cLOjoakf=Q@mail.gmail.com>
Message-ID: <CAL_JsqLt6UFU_6bmh3Pc0taXUgMtAEV7kL7eZU13cLOjoakf=Q@mail.gmail.com>
Subject: Re: [PATCH v4 02/10] dt-bindings: doc: reflect new NVMEM
 of_get_mac_address behaviour
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_094510_367813_22787529 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, devicetree@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Salil Mehta <salil.mehta@huawei.com>,
 netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMywgMjAxOSBhdCA5OjI3IEFNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+IHdyb3RlOgo+Cj4gQXMgb2ZfZ2V0X21hY19hZGRyZXNzIG5vdyBzdXBwb3J0cyBOVk1FTSB1
bmRlciB0aGUgaG9vZCwgd2UgbmVlZCB0byB1cGRhdGUKPiB0aGUgYmluZGluZ3MgZG9jdW1lbnRh
dGlvbiB3aXRoIHRoZSBuZXcgbnZtZW0tY2VsbCogcHJvcGVydGllcywgd2hpY2ggd291bGQKPiBt
ZWFuIGNvcHkmcGFzdGluZyBhIGxvdCBvZiByZWR1bmRhbnQgaW5mb3JtYXRpb24gdG8gZXZlcnkg
YmluZGluZwo+IGRvY3VtZW50YXRpb24gY3VycmVudGx5IHJlZmVyZW5jaW5nIHNvbWUgb2YgdGhl
IE1BQyBhZGRyZXNzIHByb3BlcnRpZXMuCj4KPiBTbyBJJ3ZlIGp1c3QgcmVtb3ZlZCBhbGwgdGhl
IHJlZmVyZW5jZXMgdG8gdGhlIG9wdGlvbmFsIE1BQyBhZGRyZXNzCj4gcHJvcGVydGllcyBhbmQg
cmVwbGFjZWQgdGhlbSB3aXRoIHRoZSBzbWFsbCBub3RlIHJlZmVyZW5jaW5nCj4gbmV0L2V0aGVy
bmV0LnR4dCBmaWxlLgo+Cj4gU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4KPiAtLS0KPgo+ICBDaGFuZ2VzIHNpbmNlIHYyOgo+Cj4gICogcmVwbGFjZWQgb25seSBN
QUMgYWRkcmVzcyByZWxhdGVkIG9wdGlvbmFsIHByb3BlcnRpZXMgd2l0aCBhIHRleHQKPiAgICBy
ZWZlcmVuY2luZyBldGhlcm5ldC50eHQKPgo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbmV0L2FsdGVyYV90c2UudHh0ICAgICAgICAgICB8ICA1ICsrLS0tCj4gIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYW1kLXhnYmUudHh0ICAgICAgICAgICAgIHwg
IDUgKysrLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9icmNtLGFt
YWMudHh0ICAgICAgICAgICAgfCAgNCArKy0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvY3Bzdy50eHQgICAgICAgICAgICAgICAgIHwgIDQgKysrLQo+ICBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RhdmluY2lfZW1hYy50eHQgICAgICAgICB8
ICA1ICsrKy0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNhL2Rz
YS50eHQgICAgICAgICAgICAgIHwgIDUgKystLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL25ldC9ldGhlcm5ldC50eHQgICAgICAgICAgICAgfCAgNiArKysrLS0KPiAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9oaXNpbGljb24tZmVtYWMudHh0ICAg
ICAgfCAgNCArKystCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9oaXNpbGljb24taGl4
NWhkMi1nbWFjLnR4dCAgICAgICAgIHwgIDQgKysrLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbmV0L2tleXN0b25lLW5ldGNwLnR4dCAgICAgICB8IDEwICsrKysrLS0tLS0K
PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9tYWNiLnR4dCAgICAgICAg
ICAgICAgICAgfCAgNSArKy0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L21hcnZlbGwtcHhhMTY4LnR4dCAgICAgICB8ICA0ICsrKy0KPiAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9taWNyb2NoaXAsZW5jMjhqNjAudHh0ICAgfCAgMyArKy0K
PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9taWNyb2NoaXAsbGFuNzh4
eC50eHQgICAgfCAgNSArKy0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L3FjYSxxY2E3MDAwLnR4dCAgICAgICAgICB8ICA0ICsrKy0KPiAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9zYW1zdW5nLXN4Z2JlLnR4dCAgICAgICAgfCAgNCArKyst
Cj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9zbnBzLGR3Yy1xb3MtZXRoZXJuZXQudHh0
ICAgICAgICAgIHwgIDUgKysrLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3NvY2lv
bmV4dCx1bmlwaGllci1hdmU0LnR4dCAgICAgICAgfCAgNCArKy0tCj4gIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvc29jaW9uZXh0LW5ldHNlYy50eHQgICAgIHwgIDUgKysr
LS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL21lZGlhdGVrLG10NzYu
dHh0ICAgICAgICAgfCAgNSArKystLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L3dpcmVsZXNzL3FjYSxhdGg5ay50eHQgICB8ICA0ICsrLS0KPiAgMjEgZmlsZXMgY2hh
bmdlZCwgNTggaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCgpbLi4uXQoKPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9rZXlzdG9uZS1uZXRj
cC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2tleXN0b25lLW5l
dGNwLnR4dAo+IGluZGV4IDA0YmExZGMuLjNhNjVhYWIgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9rZXlzdG9uZS1uZXRjcC50eHQKPiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2tleXN0b25lLW5ldGNwLnR4dAo+
IEBAIC0xMzUsMTQgKzEzNSwxNCBAQCBPcHRpb25hbCBwcm9wZXJ0aWVzOgo+ICAgICAgICAgICAg
ICAgICBhcmUgc3dhcHBlZC4gIFRoZSBuZXRjcCBkcml2ZXIgd2lsbCBzd2FwIHRoZSB0d28gRFdP
UkRzCj4gICAgICAgICAgICAgICAgIGJhY2sgdG8gdGhlIHByb3BlciBvcmRlciB3aGVuIHRoaXMg
cHJvcGVydHkgaXMgc2V0IHRvIDIKPiAgICAgICAgICAgICAgICAgd2hlbiBpdCBvYnRhaW5zIHRo
ZSBtYWMgYWRkcmVzcyBmcm9tIGVmdXNlLgo+IC0tIGxvY2FsLW1hYy1hZGRyZXNzOiAgIHRoZSBk
cml2ZXIgaXMgZGVzaWduZWQgdG8gdXNlIHRoZSBvZl9nZXRfbWFjX2FkZHJlc3MgYXBpCj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgb25seSBpZiBlZnVzZS1tYWMgaXMgMC4gV2hlbiBlZnVzZS1t
YWMgaXMgMCwgdGhlIE1BQwo+IC0gICAgICAgICAgICAgICAgICAgICAgIGFkZHJlc3MgaXMgb2J0
YWluZWQgZnJvbSBsb2NhbC1tYWMtYWRkcmVzcy4gSWYgdGhpcwo+IC0gICAgICAgICAgICAgICAg
ICAgICAgIGF0dHJpYnV0ZSBpcyBub3QgcHJlc2VudCwgdGhlbiB0aGUgZHJpdmVyIHdpbGwgdXNl
IGEKPiAtICAgICAgICAgICAgICAgICAgICAgICByYW5kb20gTUFDIGFkZHJlc3MuCj4gIC0gIm5l
dGNwLWRldmljZSBsYWJlbCI6ICAgICAgICBwaGFuZGxlIHRvIHRoZSBkZXZpY2Ugc3BlY2lmaWNh
dGlvbiBmb3IgZWFjaCBvZiBOZXRDUAo+ICAgICAgICAgICAgICAgICAgICAgICAgIHN1Yi1tb2R1
bGUgYXR0YWNoZWQgdG8gdGhpcyBpbnRlcmZhY2UuCj4KPiArVGhlIE1BQyBhZGRyZXNzIHdpbGwg
YmUgZGV0ZXJtaW5lZCB1c2luZyB0aGUgb3B0aW9uYWwgcHJvcGVydGllcyBkZWZpbmVkIGluCj4g
K2V0aGVybmV0LnR4dCwgYXMgcHJvdmlkZWQgYnkgdGhlIG9mX2dldF9tYWNfYWRkcmVzcyBBUEkg
YW5kIG9ubHkgaWYgZWZ1c2UtbWFjCgpEb24ndCBtYWtlIHJlZmVyZW5jZXMgdG8gTGludXggaW4g
YmluZGluZ3MuIFlvdSBjYW4gdGFsayBhYm91dApleHBlY3RhdGlvbnMgb2YgY2xpZW50IHByb2dy
YW1zIChlLmcgTGludXgsIHUtYm9vdCwgQlNELCBldGMuKSB0aG91Z2guCgpSb2IKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
