Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A63C1B032F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PKcmAI4jBsDt2h4L7E8Iq3I3rXmVPxRyW3Ifr+Ts9Q=; b=Tmy+NkC/yu58yc
	jdxHppLJ56KKkLfnY7GH6KicvNVkGmbPum06TLm+Phvi5FC8bFsH3YcY3pNGKYjueFFKV8ZQV/ltr
	stFhmkamOtJsxpdZp17NZzfVNTdCz6w8c8+uyL+OxwYuU7q54kdTlhUH5rwnsEel47PqXDihO0WR8
	85vC2CIBawSxTjbkjWxfjdrYXWGONRBy9/qqgkANQRw4oANve8z/knx8x1QYzvxMCDoXyGhfoQKgh
	YAvPl9mFB5J5q22tQKAXPyRcEysfMg6lSp0ugiu/eAnzUYXu8N70JtShl3BCDYre6dZvuxkdO+0OR
	JUCkLlLZ3y28a6YmmdPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQzC-0007OS-32; Mon, 20 Apr 2020 07:36:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQyy-0007MD-76
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:36:45 +0000
Received: by mail-wm1-x343.google.com with SMTP id u16so1514836wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 00:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Mb0X0VbhAnhVtMeOXLuQ8HsuJ6uYYtL6iIOac3n0PJU=;
 b=st0iZapP+zDcsQ4UrQb7rcM/hsGHFlairhxjzCU+eWwjjuseXuqjJPI+WXPiBeW+Ul
 493WUgOLbd3mEM16Cz06eaR8/6bMoVqw5mTtKi8z4TMnE1oxQVpLJVVt+gfkQ+awZtBz
 Llr3jJX2BwEJq6rwnMOXeZHh0HD0SCgTsSVh4nnX6ZlTuAdVem4zbngqA18U1cPELUZ/
 sp8zegHh6y8ehz3646WCK8B67qgzanSNH1hLnjoluhIns84gS4L6UP74qr+2o2ZskG3I
 UFiPAJ0w6uzb0ZGGR3YkpjjQ3s73dRbet54XvXOraKAVsFDH372JkVtKLsg+g+bV0NQf
 x8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Mb0X0VbhAnhVtMeOXLuQ8HsuJ6uYYtL6iIOac3n0PJU=;
 b=NXOVbwQHVFGLRsHBeZzpQw2Jvs2FtR9s9gUDTPkT8m+Fc2Tl6RbF7HgdVNSFh54Jzd
 vF/hn4tZtMzjCLLTe5fjqrpiCwaLKIcL5tn2VW5Lq0QTYj/ZYhGi/DFMbPiY71EBkRbT
 SwwOwBWaPPKPGV7p1vCjP4771NPl0V+Joqr+09YfjAYJAmydAaLtcNBCp6U7l3B8KboT
 W/ARrcMKrXTWQQHIxK6j62JSQW27Vm65k5Ot5sbDdhVk2lQPZ2Gh3XvNqlK308bpjSqq
 UzMtUl7kChfyOG4PpytIEdVbeyBr74IZvf/YPrFhst6dfx6VX4Y72JUkvn+I/aMgP5OB
 lE9Q==
X-Gm-Message-State: AGi0Puaf3ihPSd1+M0GTCNKeP7GqTUVFO6XAg4cCiYVuinDRtKxmITy5
 5VNj0P4H8ctCcgihvw5j22JR/A==
X-Google-Smtp-Source: APiQypJ25Kjm3y9Zgopg3qXJE7CUHbyrlxsvNzWf6js5QWhmpv4/KdDycmxZJtwyZTMEA2yfKfjtHw==
X-Received: by 2002:a1c:40c4:: with SMTP id n187mr15810229wma.28.1587368201801; 
 Mon, 20 Apr 2020 00:36:41 -0700 (PDT)
Received: from dell ([95.149.164.107])
 by smtp.gmail.com with ESMTPSA id w18sm19085wrn.55.2020.04.20.00.36.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 00:36:41 -0700 (PDT)
Date: Mon, 20 Apr 2020 08:36:39 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Ran Bi <ran.bi@mediatek.com>
Subject: Re: [PATCH v12 5/6] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
Message-ID: <20200420073639.GL3737@dell>
References: <1586333531-21641-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1586333531-21641-6-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20200416091438.GA2167633@dell>
 <1587112169.12875.2.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587112169.12875.2.camel@mhfsdcap03>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_003644_424879_5C1C4B5A 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, Frank Wunderlich <frank-w@public-files.de>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>, srv_heupstream@mediatek.com,
 Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxNyBBcHIgMjAyMCwgUmFuIEJpIHdyb3RlOgoKPiBPbiBUaHUsIDIwMjAtMDQtMTYg
YXQgMTA6MTQgKzAxMDAsIExlZSBKb25lcyB3cm90ZToKPiA+IE9uIFdlZCwgMDggQXByIDIwMjAs
IEhzaW4tSHNpdW5nIFdhbmcgd3JvdGU6Cj4gPiAKPiA+ID4gRnJvbTogUmFuIEJpIDxyYW4uYmlA
bWVkaWF0ZWsuY29tPgo+ID4gPiAKPiA+ID4gVGhpcyBhZGQgc3VwcG9ydCBmb3IgdGhlIE1lZGlh
VGVrIE1UNjM1OCBSVEMuIERyaXZlciB1c2luZwo+ID4gPiBjb21wYXRpYmxlIGRhdGEgdG8gc3Rv
cmUgZGlmZmVyZW50IFJUQ19XUlRHUiBhZGRyZXNzIG9mZnNldC4KPiA+ID4gVGhpcyByZXBsYWNl
IFJUQ19XUlRHUiB0byBSVENfV1JUR1JfTVQ2MzIzIGluIG10NjMyMy1wb3dlcm9mZgo+ID4gPiBk
cml2ZXIgd2hpY2ggb25seSBuZWVkZWQgYnkgYXJtdjcgQ1BVIHdpdGhvdXQgQVRGLgo+ID4gPiAK
PiA+ID4gUmV2aWV3ZWQtYnk6IE5pY29sYXMgQm9pY2hhdCA8ZHJpbmtjYXRAY2hyb21pdW0ub3Jn
Pgo+ID4gPiBSZXZpZXdlZC1ieTogWWluZ2pvZSBDaGVuIDx5aW5nam9lLmNoZW5AbWVkaWF0ZWsu
Y29tPgo+ID4gPiBBY2tlZC1ieTogQWxleGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25p
QGJvb3RsaW4uY29tPgo+ID4gPiBBY2tlZC1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNyZUBrZXJu
ZWwub3JnPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSYW4gQmkgPHJhbi5iaUBtZWRpYXRlay5jb20+
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEhzaW4tSHNpdW5nIFdhbmcgPGhzaW4taHNpdW5nLndhbmdA
bWVkaWF0ZWsuY29tPgo+ID4gCj4gPiBQbGVhc2UgcGxhY2UgdGhlc2UgaW4gY2hyb25vbG9naWNh
bCBvcmRlci4gIFRoZXkgc2hvdWxkIHByb3ZpZGUgc29tZQo+ID4gaGlzdG9yeSwgcmF0aGVyIHRo
YW4gYSB1bm9yZGVyZWQgc2xhYiBsaXN0IG9mIHJhbmRvbSBzaWduLW9mZnMuCj4gPiAKPiAKPiBJ
IHN1cHBvc2UgdGhhdCB5b3UgbWVhbiB0aGUgb3JkZXIgc2hvdWxkIGJlIGxpa2UgYmVsb3csIHJp
Z2h0Pwo+IFJldmlld2VkLWJ5OiBZaW5nam9lIENoZW4gPHlpbmdqb2UuY2hlbkBtZWRpYXRlay5j
b20+Cj4gQWNrZWQtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzcmVAa2VybmVsLm9yZz4KPiBBY2tl
ZC1ieTogQWxleGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29tPgo+
IFJldmlld2VkLWJ5OiBOaWNvbGFzIEJvaWNoYXQgPGRyaW5rY2F0QGNocm9taXVtLm9yZz4KPiBT
aWduZWQtb2ZmLWJ5OiBIc2luLUhzaXVuZyBXYW5nIDxoc2luLWhzaXVuZy53YW5nQG1lZGlhdGVr
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBSYW4gQmkgPHJhbi5iaUBtZWRpYXRlay5jb20+CgpUaGlz
IHdvdWxkIGltcGx5IHRoYXQgaXQgd2FzIHJldmlld2VkIGJlZm9yZSBpdCB3YXMgd3JpdHRlbiwg
d2hpY2gKd291bGQgc3Vic2VxdWVudGx5IGltcGx5IHRpbWUtdHJhdmVsLCBzbyBJIHN1Z2dlc3Qg
bm90LgoKQXV0aG9yKHMpClJldmlldyhzKS9BY2tzKHMpL1Rlc3RlZChzKSAvKiBpZGVhbGx5IGlu
IHRoZSBvcmRlciB0aGV5IHdlcmUgcmVjZWl2ZWQgKi8KU3ViLW1haW50YWluZXIgc2lnbi1vZmYg
ICAgIC8qIGlmIGFwcGxpY2FibGUgKi8KTWFpbnRhaW5lciBzaWduLW9mZgoKPiA+ID4gLS0tCj4g
PiA+ICBkcml2ZXJzL3Bvd2VyL3Jlc2V0L210NjMyMy1wb3dlcm9mZi5jIHwgIDIgKy0KPiA+ID4g
IGRyaXZlcnMvcnRjL3J0Yy1tdDYzOTcuYyAgICAgICAgICAgICAgfCAxOCArKysrKysrKysrKysr
KystLS0KPiA+ID4gIGluY2x1ZGUvbGludXgvbWZkL210NjM5Ny9ydGMuaCAgICAgICAgfCAgOSAr
KysrKysrKy0KPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgNSBkZWxl
dGlvbnMoLSkKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2hu
aWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29D
cwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
