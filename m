Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B3018A390
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 21:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gp0rhpEp5M5nV0D0ThBB3qbveBhlUy9lEZ5bWIqS9g=; b=c8A4y82r8uI7k8
	Nd5KGqX/50iyjh6cka9PuN1TqYkqz/lTSaP19FL89g3AeQSG4chML5JuJV0wNAhZnQGK2rA0SMUUJ
	sSwzJU81VydW/bppEKDpe85WnVz1oQ9gciVaQ88bPEHdbsO0acBTWUVDHQwHUIMyg30/796agXJmt
	grsVFmzbvtUS9KRDPk5h8dJw1Q7vbS5d8ZOtHYwVhY5abEQUebRn0h6AoOulSK4dlqiThdmTv/PTG
	T3rd4ippktwz0+3+2Jd+QFnSHOZif2c+Q5S8yWrdtw8zbewE7MUcJfvOvJilO5leZd05qTlCNK2y9
	m/0jtsEIXffNrRfRS9hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEf4O-0006X1-He; Wed, 18 Mar 2020 20:13:40 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEf4C-0006Vp-Fj
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 20:13:30 +0000
Received: by mail-oi1-x244.google.com with SMTP id r7so224888oij.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 13:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TTrA+tMwfg5GaaL0pTTB4SX2vmA9Q9FMRW/WsoCZ0JE=;
 b=EdyaXSK/9dSzcuY7KwTimocBCtQucM4yN4ilyd0nhsZPKf/UZPVgHsa27qIqIEWXnQ
 cPh0Eqo1ASE1ekQGfsFtJNbZhhy1L/klvGKLYsRpvUQhWP06l5H7cwN0ynA4d7cnjgB9
 +mSQIHNkMZW8leB3bfjIIfD9iUaGIpkiVUeiZ526JEb9RorazGGJUyLQGtYJ1Rp9Vngi
 XiuI7qVILh/vxu/878w2zvYPf99V8I/i1Fon1swKN8rVHN1BILMMtig7NlQzyC2xR3Vl
 90HSAqD4+MRRWe0jOLDzen4quH5t9LZP3htJmM24EpiC7E4DvRe4sti7AhcEdUghPqIK
 ZVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TTrA+tMwfg5GaaL0pTTB4SX2vmA9Q9FMRW/WsoCZ0JE=;
 b=U6ZuGQCWMjU3aP1mdlxbxnAe0hf0dIIvj7Bvzm2bmJ5WhD3mv/rtVnFYkhzITTKE+m
 BxpoZxcPudUckB7s+oImTqq2PI6DRxjjrop80nf/q/QYOrPybs+7moeAoXEJjiL914c2
 j735rN/KQSZUmj7wNeaKRYPWq/RtaY/E0gZ+lKLosbGvBm2oisRK5G/Nn+EGWfSdht93
 4dvkLHlzjpmzHkabZ4OzsGZyoy9CPaWbNQU0FW/IKiymBhwxij4mdPWeFgT6z5+9bNcq
 h9y5xLfWqDuWmb0MulCLjL6l/PQr6bXn2m3DdCndc96k/1S0B6oY5IzpOhMqsAqjOBSb
 GMLA==
X-Gm-Message-State: ANhLgQ1mkyv9KbgCLHBjcg1VYvBd/rtJqQRxlS2/ygWefX8AqLpdvDu9
 uEGv281Co5ip3hVgrZodHQ5019h/AiJJSHj/l0Q=
X-Google-Smtp-Source: ADFU+vufu0AMNL2diBAQJHFss43B9g2oEZMBku7DzmuqAqCY+mQmcA2SGVTBSVyu9mf3O/z+lZkGA1kzO8O/MIO5lqs=
X-Received: by 2002:aca:7512:: with SMTP id q18mr4630250oic.71.1584562407110; 
 Wed, 18 Mar 2020 13:13:27 -0700 (PDT)
MIME-Version: 1.0
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200313212012.GL4751@pendragon.ideasonboard.com>
 <OSBPR01MB35905D6D72DCBF154FCF7C88AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
 <20200313212717.GO4751@pendragon.ideasonboard.com>
In-Reply-To: <20200313212717.GO4751@pendragon.ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 18 Mar 2020 20:13:00 +0000
Message-ID: <CA+V-a8veXbwMrda8UEu2mN6gGgrBJA8Mp7gdN7Q3-iXNw9c4pg@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_131328_555990_D3B7C8FF 
X-CRM114-Status: GOOD (  25.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Fri, Mar 13, 2020 at 9:27 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Prabhakar,
>
> On Fri, Mar 13, 2020 at 09:25:01PM +0000, Prabhakar Mahadev Lad wrote:
> > On Sent: 13 March 2020 21:20, Laurent Pinchart wrote:
> > > On Fri, Mar 13, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> > > > Use assigned-clock-rates to specify the clock rate. Also mark
> > > > clock-frequency property as deprecated.
> > >
> > > I would phrase it the other way around, this patch mainly deprecates clock-
> > > frequency, and as a side effect recommends usage of assigned-clock-rates.
> > >
> > > "Deprecate usage of the clock-frequency propertly. The preferred method
> > > to set clock rates is to use assigned-clock-rates."
> >
> > Agreed will do that.
> >
> > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 5 +++--
> > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > index 72ad992..e62fe82 100644
> > > > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > @@ -8,7 +8,7 @@ Required Properties:
> > > >  - compatible: Value should be "ovti,ov5645".
> > > >  - clocks: Reference to the xclk clock.
> > > >  - clock-names: Should be "xclk".
> > > > -- clock-frequency: Frequency of the xclk clock.
> > > > +- clock-frequency (deprecated): Frequency of the xclk clock.
> > >
> > > I would drop this completely. Drivers need to ensure backward compatibility,
> > > but DT bindings should only document the latest version, the history is
> > > available in git.
> > >
> > Sure will drop it.
> >
> > > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > >
> > > While at it, can I enlist you to convert these bindings to yaml ? :-)
> > >
> > Sure will do the honours , will make sure yaml patch is ontop of this patch too.
>
Shall I enlist you as the maintainer  in the json-schema ?
dt_binding_check says  'maintainers' is a required property.

Cheers,
--Prabhakar Lad

> Thank you :-)
>
> > > >  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> > > >    to the hardware pin PWDNB which is physically active low.
> > > >  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > > > @@ -37,7 +37,8 @@ Example:
> > > >
> > > >  clocks = <&clks 200>;
> > > >  clock-names = "xclk";
> > > > -clock-frequency = <24000000>;
> > > > +assigned-clocks = <&clks 200>;
> > > > +assigned-clock-rates = <24000000>;
> > > >
> > > >  vdddo-supply = <&camera_dovdd_1v8>;
> > > >  vdda-supply = <&camera_avdd_2v8>;
>
> --
> Regards,
>
> Laurent Pinchart
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
