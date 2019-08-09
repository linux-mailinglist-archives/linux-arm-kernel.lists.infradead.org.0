Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78338842C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 22:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ig4DWIS/P0zfwYQ2wyurcEuxc18gy8OKUc0+YZ2bxeY=; b=NswJajHJ97uqpi
	2O5yN2A+PfkdDUyhuFm1spNcTWQnPIi2HVgWucL6HI4WkxiYTWLNB1QCfHxP2z0O+rmLH5pZ5QNBg
	PqDH/ujvd/myVgPIMr4uPM6DakDyAAnSmrl+qB0gkVaRbDfL5A0dRAW+zPj+8geXC/+8Iw7Pt4cWx
	hWa3bAhkF5uTDdvXrgQF//M2qO7OcWYd8vFLt4s5CJ8T2cOxkxO4jihhVBxMLPUwIsSIdpbZPgSmU
	5MttF/tWhL/P53q7pRzq6kWlHLHNeSGHWakmkmH4M8tPqWRiYnNHsvTKQDATnZSEBaInkiRhRwoq0
	kYhS1SXal0Tbe3rF6oSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwBhW-0000KA-VI; Fri, 09 Aug 2019 20:41:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwBhN-0000Jj-9A
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 20:41:18 +0000
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20A3B21882
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  9 Aug 2019 20:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565383276;
 bh=jH76td/fjPbji37vUuoEOl0cAWi+FLQQq8X+Jvp5axk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NstuP3aD+IlthPjBC0yNZYVUqWRILTuyfQbSnLJJuj/pod7Veuf685tucddcbk4Sn
 6BR0ilf0Fu/absVLvAV5u/QXqD3uvA0p+xrFhMb2RzVZ7gcW2Si3AKjF+y6aCCn4e7
 Z6jnAOn+KKQIMq4nhDtS6Bs8XfO39zPwXJmJyf+4=
Received: by mail-qk1-f175.google.com with SMTP id w190so72691157qkc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 13:41:16 -0700 (PDT)
X-Gm-Message-State: APjAAAUpCXH46MTdYoYL0aoF7D1g7VE/WSE5Y4k9lnZNjLuOy3Ch3bxe
 gVlmCVuEMWEusz2RKk8er6/7+ahad7FFYY8Ezg==
X-Google-Smtp-Source: APXvYqw63vyKep4tpTwbJMpFL4gA+OkZ6rgw4CjtZ8844b0OPY8solEom0vl1eN7fJ5bsvWFGTAptgVku0GyIwjQ9nA=
X-Received: by 2002:a37:a010:: with SMTP id j16mr20480818qke.152.1565383275104; 
 Fri, 09 Aug 2019 13:41:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565367567.git.agx@sigxcpu.org>
 <9c906bb6592424acdb1a67447a482e010a113b49.1565367567.git.agx@sigxcpu.org>
In-Reply-To: <9c906bb6592424acdb1a67447a482e010a113b49.1565367567.git.agx@sigxcpu.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 9 Aug 2019 14:41:03 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK-5=WMZgNuJDTJ3Dm3YOJNw_9QCrPOOSe7MQzMV26pHw@mail.gmail.com>
Message-ID: <CAL_JsqK-5=WMZgNuJDTJ3Dm3YOJNw_9QCrPOOSe7MQzMV26pHw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: display/bridge: Add binding for NWL
 mipi dsi host controller
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_134117_370304_404338FB 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgOSwgMjAxOSBhdCAxMDoyNCBBTSBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hj
cHUub3JnPiB3cm90ZToKPgo+IFRoZSBOb3J0aHdlc3QgTG9naWMgTUlQSSBEU0kgSVAgY29yZSBj
YW4gYmUgZm91bmQgaW4gTlhQcyBpLk1YOCBTb0NzLgo+Cj4gU2lnbmVkLW9mZi1ieTogR3VpZG8g
R8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KPiAtLS0KPiAgLi4uL2JpbmRpbmdzL2Rpc3BsYXkv
YnJpZGdlL253bC1kc2kueWFtbCAgICAgIHwgMTU1ICsrKysrKysrKysrKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMTU1IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwK
Pgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9icmlkZ2UvbndsLWRzaS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5k
ZXggMDAwMDAwMDAwMDAwLi41ZWQ4YmM0YTRkMTgKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFt
bAo+IEBAIC0wLDAgKzEsMTU1IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjAKPiArJVlBTUwgMS4yCj4gKy0tLQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hl
bWFzL2Rpc3BsYXkvYnJpZGdlL2lteC1ud2wtZHNpLnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IE5vcnRo
d2VzdCBMb2dpYyBNSVBJLURTSSBvbiBpbXggU29Dcwo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAg
LSBHdWlkbyBHw7pudGhlciA8YWd4QHNpZ3hjcHUub3JnPgo+ICsgIC0gUm9iZXJ0IENoaXJhcyA8
cm9iZXJ0LmNoaXJhc0BueHAuY29tPgo+ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBOV0wgTUlQ
SS1EU0kgaG9zdCBjb250cm9sbGVyIGZvdW5kIG9uIGkuTVg4IHBsYXRmb3Jtcy4gVGhpcyBpcyBh
IGRzaSBicmlkZ2UgZm9yCj4gKyAgdGhlIFNPQ3MgTldMIE1JUEktRFNJIGhvc3QgY29udHJvbGxl
ci4KPiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIG9uZU9mOgo+ICsg
ICAgICAtIGl0ZW1zOgo+ICsgICAgICAgIC0gY29uc3Q6IGZzbCxpbXg4bXEtbndsLWRzaQoKRG9u
J3QgbmVlZCBvbmVPZiBub3IgaXRlbXMgaGVyZSBmb3IgYSBzaW5nbGUgcG9zc2libGUgdmFsdWU6
Cgpjb21wYXRpYmxlOgogIGNvbnN0OiBmc2wsaW14OG1xLW53bC1kc2kKCk9yIGdvIGFoZWFkIGFu
ZCBhZGQgb3RoZXIgY29tcGF0aWJsZXMgYmVjYXVzZSB0aGUgJ2lmJyBiZWxvdyBzZWVtcyB0bwpp
bmRpY2F0ZSB5b3UnbGwgaGF2ZSBtb3JlLgoKPiArCj4gKyAgcmVnOgo+ICsgICAgbWF4SXRlbXM6
IDEKPiArCj4gKyAgaW50ZXJydXB0czoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIGNsb2Nr
czoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBEU0kgY29yZSBjbG9jawo+
ICsgICAgICAtIGRlc2NyaXB0aW9uOiBSWF9FU0MgY2xvY2sgKHVzZWQgaW4gZXNjYXBlIG1vZGUp
Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFRYX0VTQyBjbG9jayAodXNlZCBpbiBlc2NhcGUgbW9k
ZSkKPiArICAgICAgLSBkZXNjcmlwdGlvbjogUEhZX1JFRiBjbG9jawo+ICsKPiArICBjbG9jay1u
YW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBjb3JlCj4gKyAgICAgIC0gY29u
c3Q6IHJ4X2VzYwo+ICsgICAgICAtIGNvbnN0OiB0eF9lc2MKPiArICAgICAgLSBjb25zdDogcGh5
X3JlZgo+ICsKPiArICBwaHlzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArICAgIGRlc2NyaXB0aW9u
Ogo+ICsgICAgICBBIHBoYW5kbGUgdG8gdGhlIHBoeSBtb2R1bGUgcmVwcmVzZW50aW5nIHRoZSBE
UEhZCj4gKwo+ICsgIHBoeS1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBk
cGh5Cj4gKwo+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsgICAgZGVz
Y3JpcHRpb246Cj4gKyAgICAgIEEgcGhhbmRsZSB0byB0aGUgcG93ZXIgZG9tYWluCj4gKwo+ICsg
IHJlc2V0czoKPiArICAgIG1heEl0ZW1zOiA0Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAg
QSBwaGFuZGxlIHRvIHRoZSByZXNldCBjb250cm9sbGVyCgpTb3VuZHMgbGlrZSA0IHBoYW5kbGVz
Li4uIFRoaXMgc2hvdWxkIGxvb2sgc2ltaWxhciB0byAnY2xvY2tzJy4KCj4gKwo+ICsgIHJlc2V0
LW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IGJ5dGUKPiArICAgICAgLSBj
b25zdDogZHBpCj4gKyAgICAgIC0gY29uc3Q6IGVzYwo+ICsgICAgICAtIGNvbnN0OiBwY2xrCj4g
Kwo+ICsgIG11eC1zZWw6CgpOZWVkcyBhIHZlbmRvciBwcmVmaXggYW5kIHdpbGwgbmVlZCBhICRy
ZWYgdG8gdGhlIHR5cGUuCgo+ICsgICAgbWF4SXRlbXM6IDEKPiArICAgIGRlc2NyaXB0aW9uOgo+
ICsgICAgICBBIHBoYW5kbGUgdG8gdGhlIE1VWCByZWdpc3RlciBzZXQKPiArCj4gKyAgcG9ydDoK
PiArICAgIHR5cGU6IG9iamVjdAo+ICsgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIEEgaW5wdXQg
cHV0IG9yIG91dHB1dCBwb3J0IG5vZGUuCj4gKwo+ICsgIHBvcnRzOgo+ICsgICAgdHlwZTogb2Jq
ZWN0Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgQSBub2RlIGNvbnRhaW5pbmcgRFNJIGlu
cHV0ICYgb3V0cHV0IHBvcnQgbm9kZXMgd2l0aCBlbmRwb2ludAo+ICsgICAgICBkZWZpbml0aW9u
cyBhcyBkb2N1bWVudGVkIGluCj4gKyAgICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9ncmFwaC50eHQuCgpZb3UgbmVlZCB0byBkZWZpbmUgd2hhdCBwb3J0QDAgYW5kIHBvcnRA
MSBhcmUuCgo+ICsKPiArcGF0dGVyblByb3BlcnRpZXM6Cj4gKyAgIl5wYW5lbEBbMC05XSskIjog
dHJ1ZQo+ICsKPiArYWxsT2Y6Cj4gKyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAg
ICAgICBjb21wYXRpYmxlOgo+ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGVu
dW06Cj4gKyAgICAgICAgICAgICAgLSBmc2wsaW14OG1xLW53bC1kc2kKClRoaXMgY29uZGl0aW9u
YWwgaXNuJ3QgbmVlZGVkIHVudGlsIHlvdSBoYXZlIG1vcmUgdGhhbiBvbmUgY29tcGF0aWJsZS4K
Cj4gKyAgICAgIHJlcXVpcmVkOgo+ICsgICAgICAgIC0gcmVzZXRzCj4gKyAgICAgICAgLSByZXNl
dC1uYW1lcwo+ICsgICAgICAgIC0gbXV4LXNlbAo+ICsKPiArcmVxdWlyZWQ6Cj4gKyAgLSBjb21w
YXRpYmxlCj4gKyAgLSByZWcKPiArICAtIGludGVycnVwdHMKPiArICAtIGNsb2Nrcwo+ICsgIC0g
Y2xvY2stbmFtZXMKPiArICAtIHBoeXMKPiArICAtIHBoeS1uYW1lcwoKcG9ydHMgc2hvdWxkIGJl
IHJlcXVpcmVkLgoKPiArCj4gK2V4YW1wbGVzOgo+ICsgLSB8Cj4gKwo+ICsgICBtaXBpX2RzaTog
bWlwaV9kc2lAMzBhMDAwMDAgewo+ICsgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+
Owo+ICsgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ICsgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAiZnNsLGlteDhtcS1ud2wtZHNpIjsKPiArICAgICAgICAgICAgICByZWcgPSA8
MHgzMEEwMDAwMCAweDMwMD47Cj4gKyAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbGsgMTYzPiwg
PCZjbGsgMjQ0PiwgPCZjbGsgMjQ1PiwgPCZjbGsgMTY0PjsKPiArICAgICAgICAgICAgICBjbG9j
ay1uYW1lcyA9ICJjb3JlIiwgInJ4X2VzYyIsICJ0eF9lc2MiLCAicGh5X3JlZiI7Cj4gKyAgICAg
ICAgICAgICAgaW50ZXJydXB0cyA9IDwwIDM0IDQ+Owo+ICsgICAgICAgICAgICAgIHBvd2VyLWRv
bWFpbnMgPSA8JnBnY19taXBpPjsKPiArICAgICAgICAgICAgICByZXNldHMgPSA8JnNyYyAwPiwg
PCZzcmMgMT4sIDwmc3JjIDI+LCA8JnNyYyAzPjsKPiArICAgICAgICAgICAgICByZXNldC1uYW1l
cyA9ICJieXRlIiwgImRwaSIsICJlc2MiLCAicGNsayI7Cj4gKyAgICAgICAgICAgICAgbXV4LXNl
bCA9IDwmaW9tdXhjX2dwcj47Cj4gKyAgICAgICAgICAgICAgcGh5cyA9IDwmZHBoeT47Cj4gKyAg
ICAgICAgICAgICAgcGh5LW5hbWVzID0gImRwaHkiOwo+ICsKPiArICAgICAgICAgICAgICBwYW5l
bEAwIHsKPiArICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiLi4uIjsKCk5lZWRz
IHRvIGJlIGEgdmFsaWQgY29tcGF0aWJsZS4gQWxzbyBuZWVkICdyZWcnIGhlcmUgb3IgZHJvcCB0
aGUgdW5pdC1hZGRyZXNzLgoKCj4gKyAgICAgICAgICAgICAgICAgICAgICBwb3J0QDAgewo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICBwYW5lbF9pbjogZW5kcG9pbnQgewo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZtaXBpX2Rz
aV9vdXQ+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgICAgICAg
ICAgICAgICAgfTsKPiArICAgICAgICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICBwb3J0
cyB7Cj4gKyAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKyAgICAg
ICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4gKwo+ICsgICAgICAgICAgICAgICAg
ICAgIHBvcnRAMCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgbWlwaV9kc2lfaW46IGVuZHBvaW50IHsKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwm
bGNkaWZfbWlwaV9kc2k+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ICsgICAg
ICAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICAgICAgICAgICAgICAgcG9ydEAxIHsKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDE+Owo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICBtaXBpX2RzaV9vdXQ6IGVuZHBvaW50IHsKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnBhbmVsX2luPjsKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICB9Owo+ICsg
ICAgICAgICAgICAgIH07Cj4gKyAgICAgIH07Cj4gLS0KPiAyLjIwLjEKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
