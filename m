Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391A910C66C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 11:08:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZ/FU5XO8t0uha742Si2lV0dSKHULHHCNAxdifJjxzw=; b=t9p6F7lu6ng12W
	LiRSDDNnWb7fDZk70iGkmOMsTKeCxgZ0omblxsQEUbh+w1lW1uWXafQLk/FzWYqGe5s1Sh5ijhRTL
	tr5eW08fdwNAe3pilchOvkIQxpxgxzBEz7yS/d5mDjndZe6cdES/a70AFw8/oZK4usf/zgGluN4gX
	cKmjeK2Vn2qFVntjljlGnOeTEPY1nOOM67kL9pSoaHHe0M5UvER1fSYTMHb5qHZFmEz7jJOM4M9za
	+mq8MwF/x5KmTJeFsdVwRdtiPJdVuGSrjBxSyZ7oAJ3b8EcNqq4hwcWm6dg8clTv+u0QpAelbgOYr
	y3UdXR+R96RreICy7L+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaGib-0007ZY-K5; Thu, 28 Nov 2019 10:08:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaGiT-0007Z6-9u
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 10:08:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so27209725wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 02:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sBweRuGJtvgRkqwIjHTRPe4AWescaq91ikYBaT7oIDE=;
 b=FxjmPUgdZHc6G19zBTqwi/aNTnSbVGQd+n95chLwo3aSb2Rpz+l8bNkYg6//O5q0qU
 1WFpImjfh/fiGgufX21oXLCp28ZG5ABfqj+3F6vrO9jMwSRXwkXhw1sKrhG6hC6k+oZs
 MdxObPRB629OUVimBsnOxgskdWb5cNOu6GtVK69KDedkDmkauxgyR8MTcd6Rp85+dt93
 ny8wCJ4YkxTrQmiEYwRl6B4uIzG1v4ds1Fr5YLEqGuOtbANkJmneB7U29IsfibUZI6Za
 HeXuC/vMpVKW0hDPhs1nZdp1nTK7LaQ8Vp1fE6B3iknim/CqLc5EGfaVWD3779oAkU2d
 bmhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sBweRuGJtvgRkqwIjHTRPe4AWescaq91ikYBaT7oIDE=;
 b=aFdNqhR1CkKJgTk+gO2xbDWy5iCfPsO91HoTbXRigmgqhqLoAodvFfQigXT0bhpusR
 0qZlM5DIHf/SOccuYUBtruNTd7aZvrfGHPWwa+JTSm8zFhfxYgPc8kMRd115+aNSg0jy
 zIlOwkBIjOEjGk2Dm96sJZPC2VfN1nZCfgsKC/0COkqZ917uqBvEkpbv0thaMJ52JT+E
 OKOkvgLQzZv+cx9eJN1gEC5sUQPsI42eShtC+6x4ks4l5csXYv1bzakVsGXLfdajNWWF
 da6WngfEY2KpZXYTvjIQfVxB4aU4e5BoyPnmTg4WNHMw9hjG8Y1VzWveKcGkaK+2Z+YK
 O2jw==
X-Gm-Message-State: APjAAAWSM1NibUkEfFg6yXLvkLf4M4UMGQ5UCy7QnMYchRndQNh5VdL5
 bS6zHJORU18tdwTiqfP0gNs=
X-Google-Smtp-Source: APXvYqycIyyGtRUB6blhWyP+JJrU0YUn1EpIdN/Sd4tZfKWd1HGV3hHIUgqcSsJryIGRtThO+rNAww==
X-Received: by 2002:adf:f803:: with SMTP id s3mr25400176wrp.7.1574935683685;
 Thu, 28 Nov 2019 02:08:03 -0800 (PST)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id d186sm10445718wmf.7.2019.11.28.02.08.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 28 Nov 2019 02:08:02 -0800 (PST)
Date: Thu, 28 Nov 2019 11:06:57 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Change CONFIG_AT803X_PHY from m to y
Message-ID: <20191128100657.GB2460@optiplex>
References: <e39c043d-d098-283d-97b0-2a44aefec2f1@free.fr>
 <20191127124638.GC5108@optiplex>
 <CAOMZO5AeMgUjH4pxC4B1OFqHZDgtXs3dAiFazKEa9_txd81v6A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5AeMgUjH4pxC4B1OFqHZDgtXs3dAiFazKEa9_txd81v6A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_020805_344256_442471BD 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [193.47.161.132 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Peng Fan <peng.fan@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Anson Huang <anson.huang@nxp.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 dl-linux-imx <linux-imx@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/11/19, Fabio Estevam wrote:
> Hi Oliver,
> 
> On Wed, Nov 27, 2019 at 9:47 AM Oliver Graute <oliver.graute@gmail.com> wrote:
> 
> > I'am using this DTS which I'am currently working on:
> >
> > https://lists.infradead.org/pipermail/linux-arm-kernel/2019-October/689501.html
> > >
> > > I bet one dollar that 6d4cd041f0af triggered a latent bug in the DTS.
> >
> > So what should I fix in my device tree?
> 
> Some suggestions you could try:
> 
> - Try to use phy-mode = "rgmii-id"; instead,
> - The PHY address 0 does not match the reg value of 4, so you need to
> double check the PHY address and make the @ and reg values to match.

ok I fix that in my dts.

> - If you have a GPIO connected to the Ethernet PHY reset pin, then you
> should describe it in the dts and also provide a delay as per the
> AR803X datasheet.

it seems that currently no ethernet phy reset gpio is connected on that
advantech eval board. The vendor says there is a optional resistor which can
be mounted.

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
