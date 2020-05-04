Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D101C433A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 19:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFItBzOOnuvY55qs6XKAjqoTaR9A1R9kRuivDXnurtU=; b=uEFE4qapR+SKCm
	4Nk8gEEuXG5G5K+43wuGM1MhlhW2OPYDef4xIc/Zw1teMaCX//GR+0XYW2TQnu6d2CycPHZtYfN7V
	N+tFC8QvJWBHgXWfvYDCSRSXvHvWR+QJNN54uU2zVekrhxH4i/PrOKrOlgsmOMOKMbqDCQhxO67O8
	cRXX9egLvKvBRKlkIkzKdm3/jQoPucLyhi0NIuvZk8W142yfbPnwKk5+3d2iTbHOdQG/77Z/kfMOQ
	o8sD8TzvzG30yNnFc3tl80mb9NVyrd0ep0nNqkPCfbs0TG3wOZArnq8PjJFp9bZ1yVnyWfOjU2ws9
	l3WU42v92525I39r7CiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfCR-0001QW-Ax; Mon, 04 May 2020 17:48:15 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfC4-0001F5-5T
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 17:47:53 +0000
Received: by mail-ej1-x642.google.com with SMTP id b20so2978281ejg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 10:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hQpvk8vgp1YbyFllbBW8xqqGLWMt1EgunqBmk7p9TlQ=;
 b=kjhU7qwuLUl0tgR1+ZMtPX0gXNz5aUz/F88ZhiEUnMhCOiWuh8hJ4xwCoE3QiM1C4n
 M3DzFk5zkOAz+jwzdAFblAhyYtMvNzM94V+VxmXFm9XyRdE58Aa5LQt/wDR804AsrwW6
 Gl0AFFTX0mrDpCguqaReT2ETbj+lzXW/0WsupNJCzFs99F8kQVWs+c9cXg8kvkryihl8
 lFhk009uQr70yHCuCRiE3Fiw06qQSWfKls9EoZeZtSmS89io1+oDDCu5YxgDY7dsYh8e
 0xEZkItYS7PyyjOCIrjmriI81HVc4ntiwcrBXe568He/68RB9mE1jIGumTBrIR276y4S
 Vz1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hQpvk8vgp1YbyFllbBW8xqqGLWMt1EgunqBmk7p9TlQ=;
 b=roIPryIMV5WJJP6uZ+OpBTVN2x+IK2P040d1Gb+kAeb3cGT0uSvc3hX3FTbDLsQf9w
 3vP4Cj88yKi0q7txrHCMTUsoyaUbA2baN9zNx1EObgIx1lDCV9bFoEGLs1sfuzs22DZ5
 bOU2ZD2aZXhfuVWxzkAZSJSiqYRN7qDQeQXs62LVxWjtUFvQUhWoENBPZVHo83WAuuCs
 MNFJT6FcMi1wMWh8A9BCoMr6zy9ze8wtzjGRUFwUNfO4bgHj0WG41FLMPm0AkRn+aqkD
 2heaiKE81hGYNX6VDtFr6NJPLkTgbnJ6HBmzDZ+BCM2aZRAtPzv3Lm7efPZGP8Y7T+o7
 EUMA==
X-Gm-Message-State: AGi0PuZKURHIvV0Crrv8ASKbBkjPWOTx2MpCI7up2wOMJoHaxzDHCnmx
 PVjV0uWxbh+TdRoqYSWORXfp5E3X/7f3Z3EKL+w=
X-Google-Smtp-Source: APiQypIB+DjJDEbl3B8ocaghRBc++ZzEvZ0KpOa2gaX14qS/UjOBQn89425mtvYHu8jWZhwETphKyX3pbNyfgGl3Sms=
X-Received: by 2002:a17:906:78c:: with SMTP id
 l12mr14971947ejc.189.1588614470560; 
 Mon, 04 May 2020 10:47:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200504165228.12787-1-michael@walle.cc>
In-Reply-To: <20200504165228.12787-1-michael@walle.cc>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Mon, 4 May 2020 20:47:39 +0300
Message-ID: <CA+h21hpGT8qzeOVUZKU2CJDRmjSyRO-Z2oy_PvPeN88jTPsYuw@mail.gmail.com>
Subject: Re: [PATCH RESEND net-next] net: dsa: felix: allow the device to be
 disabled
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_104752_206315_3075EF79 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev <netdev@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 May 2020 at 19:55, Michael Walle <michael@walle.cc> wrote:
>
> If there is no specific configuration of the felix switch in the device
> tree, but only the default configuration (ie. given by the SoCs dtsi
> file), the probe fails because no CPU port has been set. On the other
> hand you cannot set a default CPU port because that depends on the
> actual board using the switch.
>
> [    2.701300] DSA: tree 0 has no CPU port
> [    2.705167] mscc_felix 0000:00:00.5: Failed to register DSA switch: -22
> [    2.711844] mscc_felix: probe of 0000:00:00.5 failed with error -22
>
> Thus let the device tree disable this device entirely, like it is also
> done with the enetc driver of the same SoC.
>
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

> This was part of a two patch series. The second patch is already merged.
> This patch was never picked up, although it was Acked-by: David Miller,
> see:
> https://lore.kernel.org/netdev/20200314.205335.907987569817755804.davem@davemloft.net/
>
> Since there is no more dependency, this patch could go through the
> net-next queue.
>
>  drivers/net/dsa/ocelot/felix.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/net/dsa/ocelot/felix.c b/drivers/net/dsa/ocelot/felix.c
> index 69546383a382..531c7710063f 100644
> --- a/drivers/net/dsa/ocelot/felix.c
> +++ b/drivers/net/dsa/ocelot/felix.c
> @@ -699,6 +699,11 @@ static int felix_pci_probe(struct pci_dev *pdev,
>         struct felix *felix;
>         int err;
>
> +       if (pdev->dev.of_node && !of_device_is_available(pdev->dev.of_node)) {
> +               dev_info(&pdev->dev, "device is disabled, skipping\n");
> +               return -ENODEV;
> +       }
> +
>         err = pci_enable_device(pdev);
>         if (err) {
>                 dev_err(&pdev->dev, "device enable failed\n");
> --
> 2.20.1
>

Thanks, Michael!
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
