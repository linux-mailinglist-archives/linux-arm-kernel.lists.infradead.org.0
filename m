Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391991005C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 13:43:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHsHQYpsCAJyQqd3KWXwKbCuxru5T/UheRM104/wmwI=; b=kamtfm6GKkK++O
	NyBRlbkLgFNQ2o+0o4n9lYFC1Hpi3hHXIP15xDX6PXDO2/dcfnFgrAdxXqhfVJbVCNdro/rhfCkow
	jJlRFFITjCYqTV1E0zuYy3fVhEBusrA694bJ0k/B8o+921uJpkjBS5eyRsN04ZipbiUMnlAsTtYbt
	LG6RUaM1ADO4j+Ql8zfo/2BTXWuBgzWR2DMgyHNd4HpMBrEXh1PobzXYldSG0ytmLiUZYmKuphTI+
	XvrPb+RIcXFcmtZOTxrzh8PH9lo9Xr6EErsoMIPYsYUGYWP/PZq9t4s7mu6qg6XNEPvNueWZhErFw
	UyDSQ8syHgTHy4ZPuewg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWgN3-0006uK-Iv; Mon, 18 Nov 2019 12:43:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgMv-0006tm-Ek
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 12:43:02 +0000
Received: by mail-wm1-x341.google.com with SMTP id j18so15862412wmk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 04:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pcFlFVkkMbFljmj2ZrTgP1JMEa4NOdAyJ98aVnMQW90=;
 b=Ius+cbqdRUrpMslhWt5VXcDQyV8qVk+4Q8qQxv7hMKczJGpyf5AodDdZRU1khdJnZe
 Q4+6tbCPCebPkg+5A0jb/EoLTs1WmxuQidwUlRbSSb/ffaZ7C+nEtTVg6FXABkwxbras
 x4A4ihtg4YiqSM61NxV/75lb3wrmL6k+9j9m+cfg0b6huKP3jNwQU3WsukP3z+B9pTDU
 dUyq78+U7spZw6ZTkeehtnN/BbHHbc8uT6zvlhJUWJyf6/GVjKxJeObS6ExLDyuqAkms
 enBH+zA7zk/kcDqaR9SAYY7RwmyZ9cHJ8zMeuaZceL+Eya/l1Hba/Jaesd78fPxf/duP
 pRzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pcFlFVkkMbFljmj2ZrTgP1JMEa4NOdAyJ98aVnMQW90=;
 b=T2j0s0Dbs0YWzLT7bqZ7lXIJ0etHn4IheKKTeht9GBGwfY8TIknOvRhMMa6z3h3roP
 JWCC+57wvMINRx6HvtpmTfXLmQQzIQVuJNK5eS5q3Offassa+ObyAqMpA+LM9QcyX102
 N+q4+1TUp3KzMAUNjmyXhajXb/Lv1REYOaKzMZztgCezuYj75p6tDNRo+2FJagtr5Gl6
 v3pE+b+3p/L78SR7Oq4AUIuxQZLCq/B6CAJmQMHbX1w/FHZkBAgpyGEQGnXkpexCdwL6
 nFaC2E4IB/QYPZTyrDhUNPImjT/3ptopKGULBUKIKglhg+UHQQzyLw8B3SQDy5hY5+4+
 jS6g==
X-Gm-Message-State: APjAAAXOUYE9goM7EC44zKrOotWsxii9TQxC1EJ5a88BrXbKBZWiuhhF
 ZIsLbsLRNMhyO2janUMPjVZ25OYg0WaEHRD5RK4=
X-Google-Smtp-Source: APXvYqxxJYds+5SWA8ug7X01HWT+V/7ibyn0gASw4Jf8VDRK4pON3wae0WJKMIz2zs2OISG78EzX3OjYwfu9ndtgm88=
X-Received: by 2002:a1c:a512:: with SMTP id o18mr27252635wme.4.1574080979808; 
 Mon, 18 Nov 2019 04:42:59 -0800 (PST)
MIME-Version: 1.0
References: <20191118110034.19444-1-peron.clem@gmail.com>
 <20191118110034.19444-2-peron.clem@gmail.com>
 <20191118110640.GE4345@gilmour.lan>
In-Reply-To: <20191118110640.GE4345@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 18 Nov 2019 13:42:48 +0100
Message-ID: <CAJiuCceVyjSTGymOiXTZvyQXyXScGZuGS6gW+2=0gdxDFzg3dA@mail.gmail.com>
Subject: Re: [PATCH v6 1/8] dt-bindings: pwm: allwinner: Add H6 PWM description
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_044301_499999_1D4795CA 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lCgpPbiBNb24sIDE4IE5vdiAyMDE5IGF0IDEyOjA2LCBNYXhpbWUgUmlwYXJkIDxt
cmlwYXJkQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBNb24sIE5vdiAxOCwgMjAx
OSBhdCAxMjowMDoyN1BNICswMTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBGcm9tOiBK
ZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPgo+ID4gSDYgUFdNIGJs
b2NrIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBhcyBBMjAgUFdNLCBleGNlcHQgdGhhdCBpdCBhbHNv
IGhhcwo+ID4gYnVzIGNsb2NrIGFuZCByZXNldCBsaW5lIHdoaWNoIG5lZWRzIHRvIGJlIGhhbmRs
ZWQgYWNjb3JkaW5nbHkuCj4gPgo+ID4gRXhwYW5kIEFsbHdpbm5lciBQV00gYmluZGluZyB3aXRo
IEg2IFBXTSBzcGVjaWZpY3MuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMg
PGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxy
b2JoQGtlcm5lbC5vcmc+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIs
c3VuNGktYTEwLXB3bS55YW1sIHwgNDggKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA0OCBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWEx
MC1wd20ueWFtbAo+ID4gaW5kZXggMGFjNTJmODNhNThjLi4xYmFlNDQ2ZmViYmIgMTAwNjQ0Cj4g
PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL2FsbHdpbm5lcixz
dW40aS1hMTAtcHdtLnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbAo+ID4gQEAgLTMwLDEzICszMCw1
MSBAQCBwcm9wZXJ0aWVzOgo+ID4gICAgICAgIC0gaXRlbXM6Cj4gPiAgICAgICAgICAgIC0gY29u
c3Q6IGFsbHdpbm5lcixzdW41MGktaDUtcHdtCj4gPiAgICAgICAgICAgIC0gY29uc3Q6IGFsbHdp
bm5lcixzdW41aS1hMTMtcHdtCj4gPiArICAgICAgLSBjb25zdDogYWxsd2lubmVyLHN1bjUwaS1o
Ni1wd20KPiA+Cj4gPiAgICByZWc6Cj4gPiAgICAgIG1heEl0ZW1zOiAxCj4gPgo+ID4gICAgY2xv
Y2tzOgo+ID4gKyAgICBtaW5JdGVtczogMQo+ID4gKyAgICBtYXhJdGVtczogMgo+ID4gKyAgICBp
dGVtczoKPiA+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBNb2R1bGUgQ2xvY2sKPiA+ICsgICAgICAt
IGRlc2NyaXB0aW9uOiBCdXMgQ2xvY2sKPiA+ICsKPiA+ICsgICMgRXZlbiB0aG91Z2ggaXQgb25s
eSBhcHBsaWVzIHRvIHN1YnNjaGVtYXMgdW5kZXIgdGhlIGNvbmRpdGlvbmFscywKPiA+ICsgICMg
bm90IGxpc3RpbmcgdGhlbSBoZXJlIHdpbGwgdHJpZ2dlciBhIHdhcm5pbmcgYmVjYXVzZSBvZiB0
aGUKPiA+ICsgICMgYWRkaXRpb25hbHNQcm9wZXJ0aWVzIHNldCB0byBmYWxzZS4KPiA+ICsgIGNs
b2NrLW5hbWVzOiB0cnVlCj4gPiArCj4gPiArICByZXNldHM6Cj4gPiAgICAgIG1heEl0ZW1zOiAx
Cj4gPgo+ID4gKyAgaWY6Cj4gPiArICAgIHByb3BlcnRpZXM6Cj4gPiArICAgICAgY29tcGF0aWJs
ZToKPiA+ICsgICAgICAgIGNvbnRhaW5zOgo+ID4gKyAgICAgICAgICBjb25zdDogYWxsd2lubmVy
LHN1bjUwaS1oNi1wd20KPiA+ICsKPiA+ICsgIHRoZW46Cj4gPiArICAgIHByb3BlcnRpZXM6Cj4g
PiArICAgICAgY2xvY2tzOgo+ID4gKyAgICAgICAgbWF4SXRlbXM6IDIKPiA+ICsKPiA+ICsgICAg
ICBjbG9jay1uYW1lczoKPiA+ICsgICAgICAgIGl0ZW1zOgo+ID4gKyAgICAgICAgICAtIGNvbnN0
OiBtb2QKPiA+ICsgICAgICAgICAgLSBjb25zdDogYnVzCj4gPiArCj4gPiArICAgIHJlcXVpcmVk
Ogo+ID4gKyAgICAgIC0gY2xvY2stbmFtZXMKPiA+ICsgICAgICAtIHJlc2V0cwo+ID4gKwo+ID4g
KyAgZWxzZToKPiA+ICsgICAgcHJvcGVydGllczoKPiA+ICsgICAgICBjbG9ja3M6Cj4gPiArICAg
ICAgICBtYXhJdGVtczogMQo+ID4gKwo+Cj4gU29ycnkgZm9yIG5vdCBub3RpY2luZyB0aGlzIGVh
cmxpZXIsIGJ1dCB0aGlzIHNob3VsZCBiZSBhdCB0aGUgdG9wbW9zdAo+IGxldmVsCgpObyBwcm9i
bGVtLCBidXQgSSBkb24ndCBnZXQgd2hhdCB5b3Ugd2FudCwgKHlhbWwgZm9ybWF0IGlzIG5ldyBm
b3IgbWUpLgpEbyB5b3UgbWVhbiBJIHNob3VsZCBwdXQgdGhlIGlmIGNvbmRpdGlvbiBiZWZvcmUg
dGhlICJyZXNldHMiID8KClJlZ2FyZHMsCkNsw6ltZW50Cgo+Cj4gTWF4aW1lCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
