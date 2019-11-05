Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE30FEFE0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:13:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lml1YnFkTTTqWLz7toM5evH/8m3XFNCLjdgoR5B736g=; b=KgetVM8BdR0u8c
	xTEE9gQoOSqpfmwpVTNADsvSgLhPN21KIqNb+sC2W0fgZHHj29QXLh7BiDUBbw30GeCbT8zr30wSq
	jZ7nyroWcdMIvy0OXDLbgaqx/L9aRRHRY0Fkjw7vNnyy41q/ik81WGMDfh3zcOfk/2to2x6QA3rBh
	kRiFasXDM1fxaCRdnPXK1eZPqedGDMdkJrnWJ4RtcO1q0bJQVMbXZlCCSGTRwYKBI3QZJeK1VegnM
	oAbd+U17UKTU0p15JFQrO4+iCxZUNPdO46jWAB1syZweabOBqURUUbgHtl7c5xFl6WRQojUomqPsy
	MsFE082LzoLzueQNxfaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyds-0000oy-KN; Tue, 05 Nov 2019 13:13:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRydk-0000oR-JA
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:12:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id 6so16509063wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WY5PPYyjzIlUYWaKVbWNYoxpIbMZhVbt6dhhymdAGQs=;
 b=JSgUoECtGQgZQE15kpj0PnVdtZrhVVAx6CL/ehB8tTbNWqAAjZQtey2yhpBC8OFKaZ
 BN7k3RUbG0+9fVwYTbbj3DjS/SbWWuJY0jaTSj7NzwE5yzcIoQ+26JF9xOBAis6hyq/+
 4m/QQcZQFfbgilnVQILx6sj61ZfOQdV7fCcUmwBtA6L4uftfEhzOx5MyCvXOFmOt5pro
 TrrNRNzzSVP+rFr0zlZdqmRiFgqJSjSYyQKWgs0cim2GkJeb3JyjJ9yb1oikHQ9iyYes
 u9WapIV9c6AO7vOo+qLPG/GthhY/4r83kXPRr0c7CgfH4RkjET5vaYoTBsYs+h6WbL3S
 Fpsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WY5PPYyjzIlUYWaKVbWNYoxpIbMZhVbt6dhhymdAGQs=;
 b=Y1teR14LhppfTWaIAacMu7ZkK7yFzT55FeiXmRybP0PJTxNwgPDaylOlHFtF468dOw
 mRO4hA4IF+ytVWjz14GcuYDTn9xjLXkvvLM0FYOkCrPVWO/dusxjVOOe1xgXn8cdozgs
 p1ZNR2CzWAmOUeIP/pFV5I44H1B+FLv61Q5ptufpk2Wx9wtnXH20FvEAU0otGKHsJYAe
 Fai9QXE/AgJ0F0IkCrapOr6Jh5fH+TPI8hQDzn4pkCWIDBVxs7NoDxFttOCGuaBRgSp4
 /Ho9oA+xb/GKaFHO9beI0Q1/iz5Msm8/UaV2sDxKIHIv2zFzrUyZ57eDXttz0JQpp+p5
 Sh9g==
X-Gm-Message-State: APjAAAVjXWlp+2MjX5vVErvHcgCnoK5M0PcnvsO7LVI3VIc9sUvJpGq1
 f+gGf0zMcZdd+/6kTVEohJ/ViP6I3r7DLtjv0k0=
X-Google-Smtp-Source: APXvYqz0FjNaPSBkkPJUaXt5lsctHnGENyGPSKY+qp5n9UrOj98xqWnHUC5P4uICW8dlH84YVkgQxXT618iSmay4Ygc=
X-Received: by 2002:a05:600c:228e:: with SMTP id
 14mr3968298wmf.119.1572959575130; 
 Tue, 05 Nov 2019 05:12:55 -0800 (PST)
MIME-Version: 1.0
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-5-peron.clem@gmail.com>
 <20191104083835.m2pd4fvhn2ze6bjt@pengutronix.de>
 <CAJiuCccjgtMcJa-pZCB_DGN6L8m9bDTgQRoV6WUKPSjv8kn8vA@mail.gmail.com>
 <20191105072922.rku2of3cfphpfirq@pengutronix.de>
 <CAJiuCcdxvhra7L927UXMHHt3JZmWf8BCoWH4Jijyam2aEHfTPg@mail.gmail.com>
 <20191105131203.z4u35op7f6wm3pg2@pengutronix.de>
In-Reply-To: <20191105131203.z4u35op7f6wm3pg2@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 5 Nov 2019 14:12:43 +0100
Message-ID: <CAJiuCceLPDP6WUR0z4VLNqHaXXeWtHbfFPNDFaKuzdmzeecQ8Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] pwm: sun4i: Add support to output source clock
 directly
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_051256_655679_8F562ACA 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCA1IE5vdiAyMDE5IGF0IDE0OjEyLCBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVpbmUt
a29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IEhlbGxvIENsw6ltZW50LAo+Cj4gT24g
VHVlLCBOb3YgMDUsIDIwMTkgYXQgMDE6NTg6MzFQTSArMDEwMCwgQ2zDqW1lbnQgUMOpcm9uIHdy
b3RlOgo+ID4gVGhpcyBzZXJpZXMganVzdCB3YW50IHRvIGFkZCBhIG5ldyBkZXZpY2UgYW5kIGEg
bmV3IGJ5cGFzcwo+ID4gZnVuY3Rpb25hbGl0eSBhbmQgSSBjYW4ndCBtZWFzdXJlIHRoZSBvdXRw
dXQgb2YgUFdNIGFuZCB0ZXN0aW5nIGl0Cj4gPiBwcm9wZXJseS4KPiA+IENhbiB0aGlzIGJlIGRv
bmUgaW4gYW5vdGhlciBwYXRjaC9zZXJpZXMgPwo+Cj4gSSdtIGZpbmUgaWYgeW91IGltcGxlbWVu
dCB0aGUgYnlwYXNzIHN0dWZmIHdpdGggdGhpcyBsb2dpYyBhbmQga2VlcCB0aGUKPiBvdGhlciBz
dHVmZiBhcyBpcy4KClRoYW5rcywKQ2zDqW1lbnQKCj4KPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPgo+
IC0tCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgVXdlIEts
ZWluZS1Lw7ZuaWcgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAg
ICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
