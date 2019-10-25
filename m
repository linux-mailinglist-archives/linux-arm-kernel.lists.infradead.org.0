Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C531E4449
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 09:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tEi+XAL2Zxfhrw86YOX5RsQITC68yrjJfz9sCogDOg=; b=QKkkbWxtNMJJ8+
	Jm48ZwQvO7M3KOiOq6d3YCPiaEAMH35PIeGIDeMc2LldDYwPfCENe2QR0bjneo8tDlwnNjLDwrUwi
	VFIGbCW5I6ufhdL9wzCnVycf/eFrcyevZrxHdtXmRHuO2ECp6Xtm/9Zbo+LnUxXQYKRc4Q9bUdmp5
	WwPtD552vrCfDN93ORTxxoxwZMHTDQziW3ZbEvUZBBXh+Ba9NmJxFdPXN6hEFnaouie8IFbQIXRzM
	exmtQ9hyDRVOjLD49sc0JPh484cH0zfQa7MrsvOo4jIKbgBz9c6uo0PesemP0tsM61U21u91zYujj
	MhGLz3QKgwIXCPcNkdTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNtsy-0001Vp-QY; Fri, 25 Oct 2019 07:19:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNtso-0001Ui-Kh
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 07:19:40 +0000
Received: by mail-pf1-x442.google.com with SMTP id b25so948856pfi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 00:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=q/L5barERqVFMTFfN0b6H579EvN6zcwOea9h6lqu9TU=;
 b=jA+RztwlIRbtjSU68kRpA2ZIbp7Z82H7Ep+NCRgSH/XbwFrjiFSWj1sx9tsPmGMg1X
 d2heW0dH4SRFFmnbtO2Z305mH6zxY0MXPE+vCl5Evrv27b1xQpk0EpteXUb0PcQZ1nq9
 TJjCnkyoTVpcoJ/HCPPP/rj1w0DVo0z0i1tDp3oEZkcRKx+o/bWn8JxvU4qk6J5C3UGQ
 Rs4HDa/ok1nDwrD678/T10v5+lfpftkP7glX7J327ie3U67YzwyqDypLc8vapRc0ukQC
 8CqzOiCS5ZsEGGtmaoPKVrCrOgXWzlklX8xqMgA/zORW289Vu1HrGy2VUImfUCrlNG3E
 xqZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=q/L5barERqVFMTFfN0b6H579EvN6zcwOea9h6lqu9TU=;
 b=K2bH4IgTb/xvdK2fehMzug4FFgjw1KQzmhCYvf/Z7qqKFQrKb/y4AuZtz5sIYVdTLW
 HaRv70dhart1IVVLy5iRqD2ZaScVq0eBohsbbtAH1vSrvRzQv6AKAR/jcmwg5mMyyeHg
 7KGRTFAOh7x5PezQ6Q1py0cHSp/950o67Xp9J+E+lRZO4enCj6jwRHfXlSqpN517e0vM
 GU9KMhXiTdKxcXpOBzAC32W44tQWYfqRICO93iP6HaECH6LWoYtLpxomwIptnGunk4ym
 uyhE8QGiCyUpFhGM5RMLgRh8oofkjEuWF8RiYkJqgTzQEVs3LZ47fzIIe6OUogWhoR1X
 fQvw==
X-Gm-Message-State: APjAAAW4tL60Okz82JGJO7y6mDDcCEado7xUdxIH+VeyY9uLP6F+gBAR
 fiNK+oNYCc+uuShGcPbOR/1u
X-Google-Smtp-Source: APXvYqwBRuQAriZLBverj4YOcg0fgwlqULitrorhrbCBVXEZUU2FIFFh8gs5pGu3UcQZ1+URygxT7w==
X-Received: by 2002:a63:e145:: with SMTP id h5mr2507155pgk.447.1571987976406; 
 Fri, 25 Oct 2019 00:19:36 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id n72sm1438916pjc.4.2019.10.25.00.19.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 25 Oct 2019 00:19:35 -0700 (PDT)
Date: Fri, 25 Oct 2019 12:49:27 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 1/3] dt-bindings: arm: Add devicetree binding for Thor96
 Board
Message-ID: <20191025071927.GA19873@mani>
References: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
 <20191024144235.3182-2-manivannan.sadhasivam@linaro.org>
 <20191025062659.fyze6zt4jg6uzqxz@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025062659.fyze6zt4jg6uzqxz@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_001938_679581_C00182C7 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Marco,

On Fri, Oct 25, 2019 at 08:26:59AM +0200, Marco Felsch wrote:
> Hi Manivannan,
> 
> On 19-10-24 20:12, Manivannan Sadhasivam wrote:
> > Add devicetree binding for Thor96 Board from Einfochips. This board is
> > one of the 96Boards Consumer Edition platform powered by NXP i.MX8MQ SoC.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 1b4b4e6573b5..8016174d5e49 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -239,6 +239,7 @@ properties:
> >          items:
> >            - enum:
> >                - boundary,imx8mq-nitrogen8m # i.MX8MQ NITROGEN Board
> > +              - einfochips,imx8mq-thor96  # i.MX8MQ Thor96 Board
> 
> Do we need to add a vendor patch too?
> 

Do you mean a patch for adding vendor prefix? If yes, then I have added it
already for AI_ML board and it is in mainline now!

https://elixir.bootlin.com/linux/v5.4-rc2/source/Documentation/devicetree/bindings/vendor-prefixes.yaml#L276

Thanks,
Mani

> Regards,
>   Marco
> 
> >                - fsl,imx8mq-evk            # i.MX8MQ EVK Board
> >                - purism,librem5-devkit     # Purism Librem5 devkit
> >                - solidrun,hummingboard-pulse # SolidRun Hummingboard Pulse
> > -- 
> > 2.17.1
> > 
> > 
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
