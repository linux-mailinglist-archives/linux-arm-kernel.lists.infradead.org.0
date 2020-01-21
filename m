Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57917143687
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 06:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGt8IjvK9jx0JfW80akO2pHP1VZOauwN45PcAK3i/Uw=; b=DYqtrT2vdBaobc
	rIw2nX4/mkEquVl0VC2mrluHcFlTUwGU9Uxx2aebNvUYNfS3a3oICT71zp+lUhVJPiM6pv0dzEhue
	6DXf+Gl0/LW7yZ2aj+j8HavJkHyqBZxijxAnR7lEQvDi0hGIISoslCcnBlh88v6D+ctLqpejDc7iu
	5V3IQcMSpz+VhvOlfnLRo9jpH0n1swT8RiGdYh9/rKIZox33iSGLC/Mk4fipnychbIY6Lm/JzSM2s
	IKnvo38LdpzM3Md/Un94bt6pL4Yxr67hLKSbn+CMxldY/OJ5To5+37xgMPKEqeUszdJ40z9ZFYCm6
	zAnjZHm6jOdjFY5CoRpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itm08-0001Ep-TC; Tue, 21 Jan 2020 05:22:56 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itlzs-0001EC-Sk
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 05:22:42 +0000
Received: by mail-lj1-x242.google.com with SMTP id j1so1375811lja.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 21:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=10uCgcOh8GuCTdROrJG14zIlnNqN7+lyAEGCAJKzUfc=;
 b=dOQ57w7jyqlaZZnfUqU30rYP+QwDhn3BqXdBNi8JOs01giS1JtB6zi7cgcXOpIo/rp
 OiRnjC976CNRBC3SvehF0SmewOrluwhJ6CvKczX5MSpoDrxsUNbngcW/M+KMDKwk/XL6
 x001e3/AzYitXD56P4BdOfsJhW3CAqeJnEND3wgMdOAAqPRRirt/V+JJ1S2THPXviNVT
 xQyAkoR3/0sDfkJQeeTioyhXh31fhCXWz46MKLJVqRG056YxUlzxOPWkfaOBR8BNVxal
 LkP2WI1LKUe7VLvLede/ld8TBAYX/xB2upvusOp78qLCF4oWCRCxt/AxgLA7fS/MFjuE
 iRBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=10uCgcOh8GuCTdROrJG14zIlnNqN7+lyAEGCAJKzUfc=;
 b=BS16duYMSJQfZ4Eu5qJ4AwP8JCz8dERNR/KTyEn1eQlSy1CCuwMmmTmn+OeejuHbGb
 XWEL031jMdYkeqKwpmrbPmeQjFaqx5V0HrSJ2X2GBXsE1oT4N3DEftAitvk7n6/+tQ9V
 qGWWfr5ebik3g+MRi9lNch2bk+0sRO8Kiygyyot9dozAVDqnH/6lQ8kQOpKvsF+HrL+1
 D79aNFESDbLZSvON8xUUGJEfIZRgYkA+1oKnpXkUiR7Jn85jjGQ2ppFzn+fegsp5yUYt
 R2gtA1UzNQKM8LWzKNUEDGn8xfz2gRt56VZbAjY8nPP5blVTkkCWmapJ0g4zi/R/nrkA
 tKhA==
X-Gm-Message-State: APjAAAVi/+hDwXmOqLl5cseUeUCu4kj7vxa3VUUAfJvX6IaINCOWKqXB
 2VrFcPYW2UxMLxscaAR5jAW+X7iGUoQEamz6igXnfQ==
X-Google-Smtp-Source: APXvYqy8XKTOi45XgTiwsd3r7Km7sRCJLEdT9n2xrYyCwIS+rCJCk4nzsYegcyvKX6J9fRND5avEPUy9QCaCWYw2jcM=
X-Received: by 2002:a2e:3504:: with SMTP id z4mr15624527ljz.273.1579584156292; 
 Mon, 20 Jan 2020 21:22:36 -0800 (PST)
MIME-Version: 1.0
References: <20191230120021.32630-1-jagan@amarulasolutions.com>
 <20200109074625.GE4456@T480>
In-Reply-To: <20200109074625.GE4456@T480>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 21 Jan 2020 10:52:25 +0530
Message-ID: <CA+G9fYvKw7ijk-vxA58SR_d0_-3_in28uFG5H6pikypgDpAHPQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: imx6q-icore-mipi: Use 1.5 version of
 i.Core MX6DL
To: Shawn Guo <shawnguo@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Sasha Levin <sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_212240_937265_F133C4F8 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jacopo Mondi <jacopo@jmondi.org>,
 linux-amarula@amarulasolutions.com, Sascha Hauer <s.hauer@pengutronix.de>,
 lkft-triage@lists.linaro.org, open list <linux-kernel@vger.kernel.org>,
 linux- stable <stable@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following dtbs build error noticed for arm build on stable rc 4.19 branch.

# make -sk KBUILD_BUILD_USER=KernelCI -C/linux ARCH=arm
CROSS_COMPILE=arm-linux-gnueabihf- HOSTCC=gcc O=build dtbs
 #
 ../arch/arm/boot/dts/imx6dl-icore-mipi.dts:11:10: fatal error:
imx6qdl-icore-1.5.dtsi: No such file or directory
    11 | #include "imx6qdl-icore-1.5.dtsi"
       |          ^~~~~~~~~~~~~~~~~~~~~~~~
 compilation terminated.
 make[2]: *** [scripts/Makefile.lib:294:
arch/arm/boot/dts/imx6dl-icore-mipi.dtb] Error 1


On Thu, 9 Jan 2020 at 13:16, Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, Dec 30, 2019 at 05:30:19PM +0530, Jagan Teki wrote:
> > The EDIMM STARTER KIT i.Core 1.5 MIPI Evaluation is based on
> > the 1.5 version of the i.Core MX6 cpu module. The 1.5 version
> > differs from the original one for a few details, including the
> > ethernet PHY interface clock provider.
> >
> > With this commit, the ethernet interface works properly:
> > SMSC LAN8710/LAN8720 2188000.ethernet-1:00: attached PHY driver
> >
> > While before using the 1.5 version, ethernet failed to startup
> > do to un-clocked PHY interface:
> > fec 2188000.ethernet eth0: could not attach to PHY
> >
> > Similar fix has merged for i.Core MX6Q but missed to update for DL.
> >
> > Fixes: a8039f2dd089 ("ARM: dts: imx6dl: Add Engicam i.CoreM6 1.5 Quad/Dual MIPI starter kit support")
> > Cc: Jacopo Mondi <jacopo@jmondi.org>
> > Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Applied all 3, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
