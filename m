Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 197B411F28
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 17:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=66bQAKap6zR9OMHam14Z6vB275ElMbLj7N6YHVJlczY=; b=txvka+ey3rga6/e6QNjAHtNqSQ
	FrNCDHFOmDCRbx0fGEC9E8axezD5ASQwMZ+yb/zmoxNreu3sLuPIH4We5NW0FUWKbMjkfhL0Zk003
	Qa/YNBMbuRZQKeSDYvaruWY0vtFjlKO4vhvjTyscbHCGADhEyOkVRmuj5QaG0x6ujxLtXn+UOAux6
	EH0ubqzbhV+yejLfezfSpYCNapAgH6yAMukW0Uin18pcGrB28xVl2IhQ1iysb2yd3rA7Keudb/jGm
	fFK5CTHcpsiW4EoXFcBEfj2PYPie22xnORnB7aex28JlvETSIkk89PnCcIgr252zVtrf0yBtar6QK
	9wo9AdDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMDxV-0004sl-AX; Thu, 02 May 2019 15:49:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDxO-0004sQ-Qs
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 15:49:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id p16so3263482wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 08:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=lmseT/oV4g4JyfQBt+kOYi8IdFsjCpNyJUcir6N564A=;
 b=h0Hvchdem+ldCKqn3c+OxwkVgp0lVMhxjrUO5N0FknvtRfbjKZExQdOUhKk3uxzcrY
 A2VbqSX7IbpEChSRb1xj13luAXv7BhbxK1XvxUU7gHyrsP11YqIg6+5g6gYPVEhSU9VJ
 4QEzFK6cDmGRA5ymrnBIOGej31q4qKffk8klBJv9Ss2r8U4gCAkAyfJKh+3ktexGtv9u
 QC5QqfCCFpNwKTX6iiJBJzXvTjTFXw896NvffhIsJRq/Wh0eb9HZGS+WcNPJ0cJ1YTim
 LxOR1Fpf3axYkbM4Ls39KYeyP0MyICPi6xYjObb7iGI9p+pqtZ46asxoA6A8KtBOkCxj
 nayQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=lmseT/oV4g4JyfQBt+kOYi8IdFsjCpNyJUcir6N564A=;
 b=mzvbbySHDdWDbKjqwzFcAnmBdB9tGl+SszZMBkrnrLvAaxY57/b3DUaqPYh4w05VWA
 kM4qNnAuFzj4cTJVmKdHeQJIE5YCPMPyLvyY0+fIXj1axjlhaO9LmsVRFOr8ftNf9qYt
 yGCoe+YK4phklpzkEbM+UAqvcnlTmSgfsoZiJbC3luQ/8ZLnjmUCHuvCelxmPDw7XELq
 dMjB0J2RzWUbtpuYjoSkEW5N+GfCCyArIIRxfnnZ9vpknrLzRKqrNOMTmzfXEjUTSP6J
 Ez1XLgcdti5L3PUooouBxnWQh9YyJp/V0xm9MHXOx1gA9idjwGWwTzKV+tOLLMT3QZqL
 v7Qw==
X-Gm-Message-State: APjAAAXV0bKiJ1qNFhhr+xuUO6Oxz0/OdMxdvufPRAeaDndwo0mEJRVp
 R7A8b23/LX9rXuKUxvSXi0hfmw==
X-Google-Smtp-Source: APXvYqz5aYD2MjdtQ+TVC9p61KAANcm8pIxtBYpGCsO2J0+xh8h9y8M8Om6WZVW02vGoKu16S0pP7A==
X-Received: by 2002:a1c:cc10:: with SMTP id h16mr2973571wmb.39.1556812148787; 
 Thu, 02 May 2019 08:49:08 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id t126sm986135wma.1.2019.05.02.08.49.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 08:49:08 -0700 (PDT)
References: <20190430074730.8236-1-sebastien.szymanski@armadeus.com>
 <CAOMZO5D=BHWgOieLfz4bxL8v4bDmNOutUUnYSzW89KNtYn=Z9g@mail.gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rui.silva@linaro.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6ul: Add csi node
In-reply-to: <CAOMZO5D=BHWgOieLfz4bxL8v4bDmNOutUUnYSzW89KNtYn=Z9g@mail.gmail.com>
Date: Thu, 02 May 2019 16:49:06 +0100
Message-ID: <m3ftpw6eml.fsf@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_084910_872638_154B8EBA 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T2kgRmFiaW8sCk9uIFRodSAwMiBNYXkgMjAxOSBhdCAxNjoyOCwgRmFiaW8gRXN0ZXZhbSB3cm90
ZToKPiBbQWRkaW5nIFJ1aV0KPgo+IE9uIFR1ZSwgQXByIDMwLCAyMDE5IGF0IDQ6NDcgQU0gU8Op
YmFzdGllbiBTenltYW5za2kKPiA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+IHdy
b3RlOgo+Pgo+PiBBZGQgY3NpIG5vZGUgZm9yIGkuTVg2VUwgU29DLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5j
b20+Cj4+IC0tLQo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kgfCAxMSArKysrKysr
KysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14
NnVsLmR0c2kKPj4gaW5kZXggNjJlZDMwYzc4MWVkLi5hZjMyMmJjNTgzMzMgMTAwNjQ0Cj4+IC0t
LSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDZ1bC5kdHNpCj4+IEBAIC05NTEsNiArOTUxLDE3IEBACj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfTsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgfTsKPj4KPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgY3NpOiBjc2lAMjFjNDAwMCB7Cj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsaW14NnVsLWNzaSIsICJmc2ws
aW14Ny1jc2kiOwo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDAy
MWM0MDAwIDB4NDAwMD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDcgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbGtzIElNWDZVTF9DTEtfRFVNTVk+LAo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY2xrcyBJTVg2VUxfQ0xL
X0NTST4sCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjbGtz
IElNWDZVTF9DTEtfRFVNTVk+Owo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNs
b2NrLW5hbWVzID0gImF4aSIsICJtY2xrIiwgImRjaWMiOwo+Cj4gQWxzbywgSSB1bmRlcnN0YW5k
IHlvdSBmb2xsb3dlZAo+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9p
bXg3LWNzaS50eHQgYW5kIHBhc3NlZCB0aGVzZQo+IHRocmVlIGNsb2NrcywgYnV0IGxvb2tpbmcg
YXQgdGhlIGkuTVg3RCBhbmQgaS5NWDZVTC9VTEwgUmVmZXJlbmNlCj4gTWFudWFscywgSSBkb24n
dCBmaW5kIHRoZSAgdGhlIGRlc2NyaXB0aW9ucyBmb3IgdGhlICJheGkiIGFuZCAiZGNpYyIKPiBD
U0kgY2xvY2tzLgo+Cj4gSXQgbG9va3MgbGlrZSB0aGF0IG9ubHkgIm1jbGsiIGlzIHdoYXQgd2Ug
cmVhbGx5IG5lZWQgaGVyZS4KClllYWgsIHlvdSBhcmUgcmlnaHQuCgo+Cj4gU2hvdWxkIHdlIGNo
YW5nZSB0aGUgYmluZGluZ3MgYW5kIHRoZSBpbXg3LWNzaSBkcml2ZXIgdG8gbm90IHJlcXVlc3QK
PiAiYXhpIiBhbmQgImRjaWMiIGNsb2Nrcz8KPgo+IFJ1aSwgd2hhdCBkbyB5b3UgdGhpbms/IElm
IHlvdSBhZ3JlZSBJIGNhbiBzZW5kIGEgZml4IGZvciB0aGlzLgoKSWYgeW91IHBsZWFzZSwgdGhh
dCB3b3VsZCBiZSBncmVhdC4gdGhhbmtzLgoKLS0tCkNoZWVycywKCVJ1aQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
