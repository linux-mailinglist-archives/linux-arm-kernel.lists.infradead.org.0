Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD32F18A855
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 23:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGpqYLmx6nM8V9aUTkwcVBquehXgJ8sA99OcSZXUl7c=; b=VxFJXForOOkNyV
	RFid0M1OFqIWrIVgx6wXMi0RDxc/uHK2R6TxKPHsL0ndCAUwm3C4Z2BIkeHKRqxwB0p1UEcRRqWCk
	bs6uKSHy8WIOizda9BWDFVlf1jOcl8mVdaiUvvQhT65kA1nCOmx5sGI0w7qeEkarnI4IHjvltijgC
	N2+C1C8vCzaOVDDRhDt1x9jlOFz93c9WIe572OqN0nl0tZCbpXf9CUm0kSDLUOGT8CrKGtSCWbUkv
	6gcB48PDI6C/K6TUJuDEqKXalC1WTmxBz1I2DC90bf7QtgdokR1MMAJRHQD+Js/NamDXLFAnibsT7
	xWZEgHDR7lwg0Y9/jSPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhKP-0004pb-0s; Wed, 18 Mar 2020 22:38:21 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhKE-0004pC-Vu
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 22:38:12 +0000
Received: by mail-ot1-x344.google.com with SMTP id r2so385643otn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 15:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OEbb45cGPFZm8qmmQB3oPZ+2/N+3osCrsUq9riyORzM=;
 b=PsUlFx+EpgrcwOaqknrsFqpYwVWuwwev8sFr4FUn9wBNgafRsum7+is+Jdjs/1e9SA
 xTt+RNNSUP8M/ypsUaWm5BAbDqRbmLNrnPCvfpkchubePG8n2S9Pac5fRF+BPLDdqZfA
 JwMMxaQYOy1gbmYrnuK/8T5Cw+L/pwew14vhbixQGdOOL9284sb0hGl8IvNKVPHsgfu5
 LkkeA18Zw8wqFUtY/lBa0koAgl0zxPkJTo5uM3AEvxATxvO8o6dITmUIzCwuIQteGsdF
 gHL1CXZ6f6w7MCwZ5/j88CO8QyvtWJhwsJTXYo8Ngee36RIBI4SW9YRESBeBbfobwX7g
 qf/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OEbb45cGPFZm8qmmQB3oPZ+2/N+3osCrsUq9riyORzM=;
 b=hCgA0XA3VFfy9yQp8khBaLIJ3lyuwKoYMYeUIbkDoY/uC7yiELZUrphSIsaToL8NxD
 P4YD7fcc5Tcwn+WKxlLAl+FS8FsRkCwcHxTN14lyWw0sM/d0bm40ByTGDjg24EL4eX+0
 cfmpDsJpX49PSo+puNMU82W6zkH0W7k5sdFU7A+O9aLVJ3MkcpDNxYpZoMgHXjrk5aS7
 lX5sFTrYDUNbVqwTVZ06LgQI/pp3UXz/AhRQBS9aanFLGCbkgeWA7Ee7QoqErzSFY3g8
 nG0Lb2W7u0oUfVHizlIqK2cxeJmJC7LL23eBQoAsZapNWSO42pyoUkihkbIIjxYrkq1W
 V3Gw==
X-Gm-Message-State: ANhLgQ1Kgm8WUOls51aTNbb1U6eTOnc0fc29mMN9Gr0cKvMnF9pL6zJ+
 nMYzwvBUHCrObSLT22N7ltGf8SvSRpmNqdXpAAQ=
X-Google-Smtp-Source: ADFU+vsGjSRTwN0zvpiH0XKK8o/xfFABGdDrIZJqfgKbP/+BTkeCH7RyeEQaJfxXTomJkxqErvu7d/IlyGNsJEijbF0=
X-Received: by 2002:a9d:64ca:: with SMTP id n10mr6023292otl.325.1584571089403; 
 Wed, 18 Mar 2020 15:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200313212012.GL4751@pendragon.ideasonboard.com>
 <OSBPR01MB35905D6D72DCBF154FCF7C88AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
 <20200313212717.GO4751@pendragon.ideasonboard.com>
 <CA+V-a8veXbwMrda8UEu2mN6gGgrBJA8Mp7gdN7Q3-iXNw9c4pg@mail.gmail.com>
 <20200318223311.GH24538@pendragon.ideasonboard.com>
In-Reply-To: <20200318223311.GH24538@pendragon.ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 18 Mar 2020 22:37:42 +0000
Message-ID: <CA+V-a8u5Tn+i22h-X5OMUjJfSuhjHqsfDX87o5X94r8M+N1e5w@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_153811_052589_B1FF2CB2 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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

On Wed, Mar 18, 2020 at 10:33 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Prabhakar,
>
> On Wed, Mar 18, 2020 at 08:13:00PM +0000, Lad, Prabhakar wrote:
> > On Fri, Mar 13, 2020 at 9:27 PM Laurent Pinchart wrote:
> > > On Fri, Mar 13, 2020 at 09:25:01PM +0000, Prabhakar Mahadev Lad wrote:
> > >> On Sent: 13 March 2020 21:20, Laurent Pinchart wrote:
> > >>> On Fri, Mar 13, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> > >>>> Use assigned-clock-rates to specify the clock rate. Also mark
> > >>>> clock-frequency property as deprecated.
> > >>>
> > >>> I would phrase it the other way around, this patch mainly deprecates clock-
> > >>> frequency, and as a side effect recommends usage of assigned-clock-rates.
> > >>>
> > >>> "Deprecate usage of the clock-frequency propertly. The preferred method
> > >>> to set clock rates is to use assigned-clock-rates."
> > >>
> > >> Agreed will do that.
> > >>
> > >>>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >>>> ---
> > >>>>  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 5 +++--
> > >>>>  1 file changed, 3 insertions(+), 2 deletions(-)
> > >>>>
> > >>>> diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > >>>> b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > >>>> index 72ad992..e62fe82 100644
> > >>>> --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > >>>> +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > >>>> @@ -8,7 +8,7 @@ Required Properties:
> > >>>>  - compatible: Value should be "ovti,ov5645".
> > >>>>  - clocks: Reference to the xclk clock.
> > >>>>  - clock-names: Should be "xclk".
> > >>>> -- clock-frequency: Frequency of the xclk clock.
> > >>>> +- clock-frequency (deprecated): Frequency of the xclk clock.
> > >>>
> > >>> I would drop this completely. Drivers need to ensure backward compatibility,
> > >>> but DT bindings should only document the latest version, the history is
> > >>> available in git.
> > >>
> > >> Sure will drop it.
> > >>
> > >>> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > >>>
> > >>> While at it, can I enlist you to convert these bindings to yaml ? :-)
> > >>>
> > >> Sure will do the honours , will make sure yaml patch is ontop of this patch too.
> >
> > Shall I enlist you as the maintainer  in the json-schema ?
> > dt_binding_check says  'maintainers' is a required property.
>
> Do you want to be the new maintainer ? :-) Sakari is maintaining sensor
> drivers (in his spare time though) so maybe he could be listed in the DT
> bindings too if he wants. Otherwise, I could do it.
>
OK I will add myself and Sakari for now and post a v4.

Cheers,
--Prabhakar

> > > Thank you :-)
> > >
> > >>>>  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> > >>>>    to the hardware pin PWDNB which is physically active low.
> > >>>>  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > >>>> @@ -37,7 +37,8 @@ Example:
> > >>>>
> > >>>>  clocks = <&clks 200>;
> > >>>>  clock-names = "xclk";
> > >>>> -clock-frequency = <24000000>;
> > >>>> +assigned-clocks = <&clks 200>;
> > >>>> +assigned-clock-rates = <24000000>;
> > >>>>
> > >>>>  vdddo-supply = <&camera_dovdd_1v8>;
> > >>>>  vdda-supply = <&camera_avdd_2v8>;
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
