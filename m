Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA8410AFD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 13:56:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVUmdOjwoHGiWi3Ly8SH6KvUJTbk/URN6gxp2tyIXeg=; b=Zf6TE/YITGoX+1
	v+29mu0RjtAdrMnqj7IwYhqkdh8W/HlJa0U4e6LASBUJLZMtYeak/vyD+snrdaAY7adAwuZU88gEk
	4afTkQW3h24BospAPNC+YrtQqAhlbEwkz5cJwZN+7UEAUGDfeavbJcnnmf0GM+1ZNTIa7Z2UhYhoc
	bqI8e2TGgW2eh0MLLkRHsTxfQqsLjKn+xSbAMFGfiUsaadBbQEiVilO19JoFUT45hcV8zSgsh48B1
	rpNZ8xV74OS4nHz9qpAJFOBh4YUFvNf/+XNywWlTAad/+enEZ6yMc3bXjraGSxi5qlyFBJN9oTr5Q
	7JL9sraZENOROL3PFPkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZws5-0000vs-NF; Wed, 27 Nov 2019 12:56:41 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZwrw-0000vb-QG
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 12:56:34 +0000
Received: by mail-lj1-x242.google.com with SMTP id g3so24327489ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 04:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ESDNcX2j2wV3RRHvi0m7qOVxbKl8Gg1XKDDLUvrXiIM=;
 b=HuJxa/Tq0QGb5+BagvPzC2PTLPDPNNwk2IYcF247JKl7/vVSCcT9VAUlb6Ag8TikPd
 N7ELBvol/fGhVmrxs+2g11IAXRbC1xn4IG7PcZnMnM0IaGTX/4Wxb832LWuopQRAbXvN
 aNEDNpEWLLsmQoPePfXGA72ZlD+fHPAD+P6pyL9oRGEoEi5Ppfk0PFGdfZzFsv3Ab4yE
 /TGxNDVg3Gz/f9H/ofoApS/+ColNP9imUOt2LpQWkSJu5hsY+7bU/b5f8kpzUy7SAmeW
 cSs42ybbVb1SGDhKariqBQTqiVPJjc9WWOiFBQHlsdaEuryVnCkIope/AzJsScfarzxm
 QEKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ESDNcX2j2wV3RRHvi0m7qOVxbKl8Gg1XKDDLUvrXiIM=;
 b=Lp+xtAEBeMhYpNrrTyyLzBn+dAcZTX5soKICiymob9QrqFQuSGxvCeQGU5haMSvG+D
 PL8CnDtX54CfIMWkS5FHNJ6PjS7RMLnUP259mE7yLlZlVFnv//u35xLIrYI1s7xKePLr
 f4QxRYLapPQtQHl4CWO4iRl5oQ9mjwfc7PotTT1V/ChzsiGcEgQBsvTfagzmDMH3hqpw
 sWPQYuYttuBdkvKInYwKQBoWuc13+wPOYnu2MdjvqKYVHRx7xKTrvyEx5iImaCxh3cVo
 q4bnlPH+OVhjqROLpFGBncDpUcD+U56Dz8MB7uaEfbh37zmlo1pH7ODPmRntsP4aI01P
 YDlA==
X-Gm-Message-State: APjAAAXwYJr5eWRStz65f+2k/vVvcr+tDCBUsQAWDcoFY4z2BnjOv9/W
 pcr7aApAZTzeM3Wfr9KKOZMioaZJZsK7yKYCLTE=
X-Google-Smtp-Source: APXvYqzA+dgKYhQrhd9TT6pP/+G+Ktsp8HQvcijdWb9/lJcRbmVA0un8HyJU2yNu8Ii1CPwfrqnCBQOz9DHP77VBqhw=
X-Received: by 2002:a2e:844e:: with SMTP id u14mr17373155ljh.17.1574859390206; 
 Wed, 27 Nov 2019 04:56:30 -0800 (PST)
MIME-Version: 1.0
References: <e39c043d-d098-283d-97b0-2a44aefec2f1@free.fr>
 <20191127124638.GC5108@optiplex>
In-Reply-To: <20191127124638.GC5108@optiplex>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 27 Nov 2019 09:56:36 -0300
Message-ID: <CAOMZO5AeMgUjH4pxC4B1OFqHZDgtXs3dAiFazKEa9_txd81v6A@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Change CONFIG_AT803X_PHY from m to y
To: Oliver Graute <oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_045632_874586_23A9C9E4 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Peng Fan <peng.fan@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Anson Huang <anson.huang@nxp.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <git@andred.net>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 dl-linux-imx <linux-imx@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oliver,

On Wed, Nov 27, 2019 at 9:47 AM Oliver Graute <oliver.graute@gmail.com> wrote:

> I'am using this DTS which I'am currently working on:
>
> https://lists.infradead.org/pipermail/linux-arm-kernel/2019-October/689501.html
> >
> > I bet one dollar that 6d4cd041f0af triggered a latent bug in the DTS.
>
> So what should I fix in my device tree?

Some suggestions you could try:

- Try to use phy-mode = "rgmii-id"; instead,
- The PHY address 0 does not match the reg value of 4, so you need to
double check the PHY address and make the @ and reg values to match.
- If you have a GPIO connected to the Ethernet PHY reset pin, then you
should describe it in the dts and also provide a delay as per the
AR803X datasheet.

Regards,

Fabio Estevam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
