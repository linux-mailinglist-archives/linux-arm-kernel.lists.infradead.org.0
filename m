Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700A04358F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:35:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTkfbEYUz7nwY5XycYIMld6ZDYfvBTBJsV7V+jddxeo=; b=Vp5yU6SBk1VI3T
	Ja7oEtI2PX+czifVF+TVWl8MeMIaV17zFThXb4y9cRJmgtVm3f6McIwTjth/DL8yTs9ymeh7Mup1c
	3kcPhrI9Z2OKucIq4+gs9goxiLJGpJgRtza0FSJz2KzZQAB3x7O47EEnDJTRsP/+w/sObjuzsvKiR
	BloVUe/n/DOT6DjEUNS/cgmTIcujS55xNruyJ1SR/Zt3tJFTwJmp7WLczxNTEngyBpnI5+0KRCEyl
	MOYr1RjO/dk1TNxYZJqPv7VS5xboq4KRzOAiigxGJWLMozVgbTaqj8KzBRTbtSOofRjvxe9Hhi4EL
	VBizhl6ica2FkOsSdlEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbO0V-00050y-Jj; Thu, 13 Jun 2019 11:35:03 +0000
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbO0E-00050L-W6
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 11:34:48 +0000
Received: from player728.ha.ovh.net (unknown [10.108.54.94])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 9D84F19F3BC
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 13:34:43 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player728.ha.ovh.net (Postfix) with ESMTPSA id 7FFDA6B6DE10;
 Thu, 13 Jun 2019 11:34:32 +0000 (UTC)
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: Add PXP node
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20190606164642.11539-1-sebastien.szymanski@armadeus.com>
 <20190612172103.gat3yrub2iyurai5@pengutronix.de>
From: =?UTF-8?Q?S=c3=a9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
Openpgp: preference=signencrypt
Message-ID: <6802e25d-f12b-28e3-d975-7f21fe002a35@armadeus.com>
Date: Thu, 13 Jun 2019 13:34:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612172103.gat3yrub2iyurai5@pengutronix.de>
Content-Language: en-US
X-Ovh-Tracer-Id: 3806386112924832978
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudehledggedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_043447_178587_273BCAAF 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [87.98.181.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyY28sCgpPbiA2LzEyLzE5IDc6MjEgUE0sIE1hcmNvIEZlbHNjaCB3cm90ZToKPiBIaSBT
w6liYXN0aWVuLAo+IAo+IE9uIDE5LTA2LTA2IDE4OjQ2LCBTw6liYXN0aWVuIFN6eW1hbnNraSB3
cm90ZToKPj4gQWRkIFBYUCBub2RlIGZvciBpLk1YNlVML0wgU29DLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5j
b20+Cj4+IC0tLQo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kgIHwgOSArKysrKysr
KysKPj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwuZHRzaSB8IDYgKysrKysrCj4+ICAyIGZp
bGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2Jvb3QvZHRzL2lteDZ1bC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kKPj4g
aW5kZXggZjEwMDEyZGU1ZWI2Li5hM2MwMDUzNzNhZTEgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL2lteDZ1bC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC5k
dHNpCj4+IEBAIC05NzEsNiArOTcxLDE1IEBACj4+ICAJCQkJc3RhdHVzID0gImRpc2FibGVkIjsK
Pj4gIAkJCX07Cj4+ICAKPj4gKwkJCXB4cDogcHhwQDIxY2MwMDAgewo+PiArCQkJCWNvbXBhdGli
bGUgPSAiZnNsLGlteDZ1bC1weHAiOwo+PiArCQkJCXJlZyA9IDwweDAyMWNjMDAwIDB4NDAwMD47
Cj4+ICsJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDggSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+
ICsJCQkJY2xvY2tzID0gPCZjbGtzIElNWDZVTF9DTEtfUFhQPjsKPj4gKwkJCQljbG9jay1uYW1l
cyA9ICJheGkiOwo+PiArCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gCj4gQ2FuIHlvdSBkcm9w
IHRoZSBzdGF0dXMgbGluZSBiZWNhdXNlIGl0cyBhIHBsYXRmb3JtIGRldmljZSBhbmQgaXNuJ3QK
PiByZW1vdmVhYmxlLgoKT2ssIGRvbmUuIHRoYW5rcyEKClJlZ2FyZHMsCgo+IAo+PiArCQkJfTsK
Pj4gKwo+PiAgCQkJcXNwaTogc3BpQDIxZTAwMDAgewo+PiAgCQkJCSNhZGRyZXNzLWNlbGxzID0g
PDE+Owo+PiAgCQkJCSNzaXplLWNlbGxzID0gPDA+Owo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
Ym9vdC9kdHMvaW14NnVsbC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsbC5kdHNpCj4+
IGluZGV4IDIyZTRhMzA3ZmE1OS4uYjAxN2U5MjViZDg3IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2Fy
bS9ib290L2R0cy9pbXg2dWxsLmR0c2kKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVs
bC5kdHNpCj4+IEBAIC0zNCw2ICszNCwxMiBAQAo+PiAgCWNvbXBhdGlibGUgPSAiZnNsLGlteDZ1
bGwtb2NvdHAiLCAic3lzY29uIjsKPj4gIH07Cj4+ICAKPj4gKyZweHAgewo+PiArCWNvbXBhdGli
bGUgPSAiZnNsLGlteDZ1bGwtcHhwIjsKPj4gKwlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgOCBJUlFf
VFlQRV9MRVZFTF9ISUdIPiwKPj4gKwkJICAgICA8R0lDX1NQSSAxOCBJUlFfVFlQRV9MRVZFTF9I
SUdIPjsKPj4gK307Cj4+ICsKPj4gICZ1c2RoYzEgewo+PiAgCWNvbXBhdGlibGUgPSAiZnNsLGlt
eDZ1bGwtdXNkaGMiLCAiZnNsLGlteDZzeC11c2RoYyI7Cj4+ICB9Owo+PiAtLSAKPj4gMi4xOS4y
Cj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4+IGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPiAKCgotLSAKU8OpYmFzdGllbiBTenltYW5za2kKU29m
dHdhcmUgZW5naW5lZXIsIEFybWFkZXVzIFN5c3RlbXMKVGVsOiArMzMgKDApOSA3MiAyOSA0MSA0
NApGYXg6ICszMyAoMCk5IDcyIDI4IDc5IDI2CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
