Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47176E538
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 13:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXpFto2ra7aK6mgrZ8zajLYKF0HHfxjsVDBe/Gdt2Mg=; b=NKaQAbeDxOG6eI
	38NrSE+DqevKp1Ulh8ZxCIUnVG1nQ7/vxAlcIAiiz5mOMks/6/BDcF+4Ii9Sfs2tHgrpeUIgjIfEl
	o1cBZAZn2gNiYKj9lIBbtaMPupjPiks2oSDRoddAP+EOptGKn2Fn9kiLup9jqltxlx0HsC9Q/4Bcc
	1LVsQwkBgeDaTegbygdIXl2oN+0HnbLXB5KedNJRVOI09mChbv776M7t0spu+XRszyqPNZd85uo2V
	G6RlOxIv2CYmvqlnoH+1IxH76Ih0BvNULUxvjQlI9ZOBmvF+6BGmhPC+pmBGD6RVg2nCmGwYu5C3A
	AVTdTw51ehNA3Hd8Fw9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoRP3-0001XR-51; Fri, 19 Jul 2019 11:50:21 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoROq-0000yq-1i
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 11:50:09 +0000
Received: by mail-oi1-x241.google.com with SMTP id 65so24019985oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 04:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sqpTcP76z8L1qAX6ZIXz8oQ1xDJvx6eMGKj4s5NJ4n4=;
 b=bd4qes53GBobFCQjiSauq8kko/7lDoscPritfqpd7h/NfzroV52tvn57Qt4nLg/MDZ
 gnNOw0YQmSxdV2YLiKfb7LLmgz8iHznTxZAACh/IPiIdIMsqfN28Z3RO3tGYlR9ob+Sr
 XlnAux65a7xlSAaPyepAcJCfmIcS/uc7Ix3qoSzepLhj4qXywdHrTVU1TVWvs0C5GUQG
 If3PkDVd/xE/RzS2AExYFWIW7+Kyhx3MEk2Xhu6E1HMJWcwnomQukWTaiepmlvFnOS/u
 A3DeCZIuf4Yg4Oqjy1pDtWwASCaznZkERw4FqyY8AZMYCJUACciqXfHr2rV4cw1U6aWE
 1tmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sqpTcP76z8L1qAX6ZIXz8oQ1xDJvx6eMGKj4s5NJ4n4=;
 b=ZE0FQEW7F8J5EHeAeq1Mfctd9FrWoWhNMt3KvJH87PPG/aCEeBsJuTKLv9SltOm9AX
 8AhkHGcVV07dRJr7tQDCnEm78rujrfxwnNux1cQa+jAHklMgawL4C+W0d3EKwhXDhDsF
 O/NBcaHs96hLctt+pkl/dwJzsDwmB97BGznoql9HAVeAnkA/Al0p/KacTsAmY4eiTQ+E
 OvZaXyCbmKzg8LiMRedjV52NEXsZ7sEkgrptoRcYUv10zfzASnrOkvSctVlNbqH2ShWD
 asspUjhm5SCuZYL2g5UYUr91LdgKc6c3InK7/j+SN99w25amyelOLoIYRMbyBAA5z82g
 QMWQ==
X-Gm-Message-State: APjAAAXFaMQnB9hvH17fMY3NHTcbHtnG6l3HeG3GADQrLLeRkzBncibh
 7TqZSDLm8JWK8eisQ5OblcXScLHDJTn5HQoVwJc=
X-Google-Smtp-Source: APXvYqzTzot0TaouNF6K1z/L7Hs8zJ+9SFAcylB1aJuoJDSPAmqyWlbMSaqn+piwy+TqxrQfg7WIaGyMlSocp0wU8CM=
X-Received: by 2002:aca:2303:: with SMTP id e3mr23263015oie.112.1563537004914; 
 Fri, 19 Jul 2019 04:50:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190719104802.18070-1-andradanciu1997@gmail.com>
 <20190719104802.18070-2-andradanciu1997@gmail.com>
 <CAOMZO5Btu1Shou=dGRrG74e5UjHnh7NtR4+4ETK0t_1Zt48Crw@mail.gmail.com>
In-Reply-To: <CAOMZO5Btu1Shou=dGRrG74e5UjHnh7NtR4+4ETK0t_1Zt48Crw@mail.gmail.com>
From: Andra Danciu <andradanciu1997@gmail.com>
Date: Fri, 19 Jul 2019 14:49:54 +0300
Message-ID: <CAJNLGswXF8XtZKnFtzaK+7Xvs0Ygwwh4WP5PiO8Csc7pDG1vNA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm64: dts: fsl: pico-pi: Add a device tree for
 the PICO-PI-IMX8M
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_045008_115354_A149A8C2 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andradanciu1997[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (andradanciu1997[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ping Bai <ping.bai@nxp.com>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, sriram.dash@nxp.com,
 Richard Hu <richard.hu@technexion.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, pankaj.bansal@nxp.com,
 NXP Linux Team <linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <Michal.Vokac@ysoft.com>,
 Pramod Kumar <pramod.kumar_1@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Dong Aisheng <aisheng.dong@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmFiaW8sCgpJIGNvbXBpbGVkIHdpdGggVz0xIGFuZCB5b3UgYXJlIHJpZ2h0LCB0aGV5IGNh
dXNlIHdhcm5pbmcuIEkgd2lsbCByZW1vdmUgdGhlbS4KCsOObiB2aW4uLCAxOSBpdWwuIDIwMTkg
bGEgMTQ6MTksIEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4gYSBzY3JpczoKPgo+
IEhpIEFuZHJhLAo+Cj4gT24gRnJpLCBKdWwgMTksIDIwMTkgYXQgNzo0OCBBTSBhbmRyYWRhbmNp
dTE5OTcKPiA8YW5kcmFkYW5jaXUxOTk3QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiA+ICsgICAgICAg
cG1pYzogcG1pY0A0YiB7Cj4gPiArICAgICAgICAgICAgICAgcmVnID0gPDB4NGI+Owo+ID4gKyAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicm9obSxiZDcxODM3IjsKPiA+ICsgICAgICAgICAg
ICAgICAvKiBQTUlDIEJENzE4MzcgUE1JQ19uSU5UIEdQSU8xX0lPMTIgKi8KPiA+ICsgICAgICAg
ICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gKyAgICAgICAgICAgICAgIHBp
bmN0cmwtMCA9IDwmcGluY3RybF9wbWljPjsKPiA+ICsgICAgICAgICAgICAgICBjbG9ja3MgPSA8
JnBtaWNfb3NjPjsKPiA+ICsgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJvc2MiOwo+ID4g
KyAgICAgICAgICAgICAgIGNsb2NrLW91dHB1dC1uYW1lcyA9ICJwbWljX2NsayI7Cj4gPiArICAg
ICAgICAgICAgICAgaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzE+Owo+ID4gKyAgICAgICAgICAg
ICAgIGludGVycnVwdHMgPSA8MyBHUElPX0FDVElWRV9MT1c+Owo+ID4gKyAgICAgICAgICAgICAg
IGludGVycnVwdC1uYW1lcyA9ICJpcnEiOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgIHJlZ3Vs
YXRvcnMgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPgo+ICNhZGRy
ZXNzLWNlbGxzIGFuZCAgI3NpemUtY2VsbHMgYXJlIG5vdCBuZWVkZWQgYW5kIHRoZXkgY2F1c2Ug
d2FybmluZ3Mgd2l0aCBXPTE6Cj4KPiAgIERUQyAgICAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvaW14OG1xLXBpY28tcGkuZHRiCj4gYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OG1xLXBpY28tcGkuZHRzOjc3LjE0LTE5Ni41OiBXYXJuaW5nCj4gKGF2b2lkX3VubmVjZXNz
YXJ5X2FkZHJfc2l6ZSk6Cj4gL3NvY0AwL2J1c0AzMDgwMDAwMC9pMmNAMzBhMjAwMDAvcG1pY0A0
Yi9yZWd1bGF0b3JzOiB1bm5lY2Vzc2FyeQo+ICNhZGRyZXNzLWNlbGxzLyNzaXplLWNlbGxzIHdp
dGhvdXQgInJhbmdlcyIgb3IgY2hpbGQgInJlZyIgcHJvcGVydHkKPgo+IFBsZWFzZSByZW1vdmUg
dGhlbS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
