Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9AF11D08D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:09:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uF5OltpCIa0IIR5tvsI6QaMbbmtMilOit8f4U+7Ub+0=; b=AaiZai8hSUd931
	PI33qZ6Ob5/A3In57PPwZYPk95xrlE1fVHS49mOD6H+GrnMg2avfSFNV1IlT3hJTeT5nJ/AaaX+z1
	9AoVDo8qsLFt/WOlvFaVFXLc1FllK8/jaHgtLKsFYEHlauGGwVdyDMLsV5swHQSKAHPxs/UxyBr39
	zWwNBySSezlWn25I2bBBEWKSijeK7ggzv14FpcVdF7oXNI+3Qx/jWEX2sBe3flxodTguU4cqGSVSq
	6DMA4FOQiRM5TLWSE5lfy96wRA/6toM4dc2N5aC+o4mbm4jWRzmKNFu1X82ZuvNE7pgTLWn8xFSzf
	EKBZeQ4tAQvlmVP9P7Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQ5S-0002aY-Te; Thu, 12 Dec 2019 15:09:06 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQ5J-0002Zt-Ib
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:08:58 +0000
Received: by mail-ua1-x943.google.com with SMTP id k33so1030478uag.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 07:08:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BBZPqQLjRrXMYmR1TRaqMyhH4qY4XtbQYO8hjLWbaCQ=;
 b=m4/Wr2qvLIWwO/nnv/MWFlzrVTYqwIuP//VHOprM0TS4aqnouLBYYbuKXDfZOW4zy6
 WwGNt6wKboMPLkZ2E8/NZCbgzjnehCPCJew6MkeU98jvV4zfh3C9C65H7kzchE6IfEc3
 cPsLn0wlOvRbdjWraOtHB9YHqPNxincix8AEtn1vTYqcZFNx++w0YhKkj22b+wEn8D58
 KihdxGOOV7uAKzwjHIWmulnscOi9cX+DuB+DkH8CWtEvucWc13p3AmI36VLn7BCMFG22
 2TmNAFLJ76Xm9ie4xkbBYzaNembFUKkM0K5MrWfnOhPIfPCMMWLF/Aei/G4b6ruqQ5om
 6DNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BBZPqQLjRrXMYmR1TRaqMyhH4qY4XtbQYO8hjLWbaCQ=;
 b=P6w+2ujzP2SuQWTYV0pCKoI55XJMZu+7oBGgx64fw2VvNlsTk7pxoa303sUZtOuGPL
 g1O2/oJAfkk4gtNKcVEdNSNLuy0CHpdSayf4IArI4658nIxzcVya9w3HyN259dE20KJd
 UODLANflcGyTf088NMsxtWZpo1+TYvza9VezkAn6wHVxlGpZJXPyQcUbt9z0IKg0Bvd6
 iR1uyJm0i6ELwKNn+sPRbbNfG9brShjJsf9G1SpQbPVTsllXp9WclY3I0RtrfMfAK0le
 LuTYNsdfPDs4meFhUJL04hgox7rptzkGUXsEWmWRKyO7vSHQ0QX6SFTKNao/62cAU93w
 IWOw==
X-Gm-Message-State: APjAAAU1hWsiyU5HjeTzBKllruL91lQJ48EH1zeZO1jKHjaHS85lLJIM
 GzVrs8GqflvMA5XNpIsGyfpvk3IcUTLCg2gbUqr+wA==
X-Google-Smtp-Source: APXvYqylzTcuVtIdKTe2ptVzi2MZfkuPeOlp+Ab7T3CJfNA/27r7rEWO5mUtRTY83LtjQy3Do512L/IYNuh6OowCLas=
X-Received: by 2002:ab0:2716:: with SMTP id s22mr8672177uao.20.1576163336218; 
 Thu, 12 Dec 2019 07:08:56 -0800 (PST)
MIME-Version: 1.0
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
 <20191129172537.31410-4-m.felsch@pengutronix.de>
 <20191204134631.GT1998@sirena.org.uk>
 <20191210094144.mxximpuouchy3fqu@pengutronix.de>
 <AM5PR1001MB099497419E4DCA69D424EC35805A0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
In-Reply-To: <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Dec 2019 16:08:44 +0100
Message-ID: <CACRpkda4PFA=99u33xsXzQND1FaP=8GXGRQULngcd5a=zFepXg@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_070857_616032_39AA3BBF 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Support Opensource <Support.Opensource@diasemi.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 Mark Brown <broonie@kernel.org>, "joel@jms.id.au" <joel@jms.id.au>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 6:09 PM Marco Felsch <m.felsch@pengutronix.de> wrote:

> I discussed it with a colleague again and he mentioned that pinctrl
> should be named pinctrl instead it should be named padctrl.

Quoting Documentation/driver-api/pinctl.rst:

(...)
Definition of PIN:

- PINS are equal to pads, fingers, balls or whatever packaging input or
  output line you want to control and these are denoted by unsigned integers
  in the range 0..maxpin.
(...)

> We don't
> reconfigure the pad to a other function it is still a device general
> purpose input pad. The hw-signal flow goes always trough the gpio block
> so one argument more for my solution. Also we don't configure the "pad"
> to be a vsel/ena-pin. The hw-pad can only be a gpio or has an alternate
> function (WDKICK for GPIO0, Seq. SYS_EN for GPIO2, Seq. PWR_EN for GPIO4).
> Instead we tell the regulator to use _this_ GPIO e.g. for voltage
> selection so we go the other way around. My last argument why pinctrl
> isn't the correct place is that the GPIO1 can be used for
> regulator-0:vsel-in and for regulator-1:enable-in. So this pad would
> have different states which is invalid IMHO.

Yeah it is just one of these cases where the silicon designer pulled
a line of polysilicone over to the regulator enable signal and put a
switch on it and say "so you can also enable the regulator
with a signal from here", it can be used in parallel with anything
else, which is especially messy.

Special cases require special handling, since the electronic design
of this thing is a bit Rube Goldberg.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
