Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49376DE0AF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 23:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsInAzf4Oy1zSklO8LOkhX1apL60qJZVdf/ErXqONlc=; b=Dsfjr+8f8EUfkr
	/S1l5jDU3LcsXmPzK1njOMI7r36M/3zkdcXgtDv2GawGYD5HmH5gc9R7fMjz6G8pJx0MGh6b3Snch
	eolHEMVymfm1wedGS8YYzrDZkax46HQvkm+KghvcK4AtSwspH7gyOoFgJ2hwKNleNXTR9QODuR/U5
	NwJ6/8bkzPHPVv9ok7O1+WPvwSYdGP2Bd+JqAJY3igwgryvpqsFQ6+ysicZH5nSSMnfVFcT/yuAsd
	hBw+QjUALbvNPY40Q/iQv46svcq2RUKcbmEb1rNinAXFeBxkCxveXnPy/2vA1xwK516E2P4xAe90L
	tjcLKchkAxXkfepRNbvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMIfk-0002wh-Ds; Sun, 20 Oct 2019 21:23:32 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMIfQ-0002ZK-HI
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 21:23:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571606587;
 bh=roIbpENmIxP4w7WU842plrcJ0VYVDHDaJFUQvtEjZVw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=E2QX/o3OIwUWQlrduflDRBwyFiuHf3Vm6LUmhDl/GRn9pA8HUTOci/ZjyZE0PWg8k
 HBjtfbaPR/sdbUkCwmcwqM+XDlokBhxPyI1pEeTsrttMHkKKpX3vhhdenF3esiDkKq
 dVRSbsAq5PiSWiWghqBmFNvmUckLKKI2RyyBAcKQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MN5eR-1id05A17DB-00J1N0; Sun, 20
 Oct 2019 23:17:33 +0200
Subject: Re: [PATCH V4 01/10] bluetooth: hci_bcm: Fix RTS handling during
 startup
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
 <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <61789264-a4c2-ac85-9d74-d186213ec70a@gmx.net>
Date: Sun, 20 Oct 2019 23:17:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:vAXNLeW3B5iKlKv7LnAYxXpah2Ujax35yKaou7peYeveOh8Bfl3
 GTIPS1NaeC1cJMdYa36LsyR2STBODHsoycgoEwP+G8542RYkQdxAElrhEXuxdsnUAi7liOa
 wS4SGlI/65Cfkj4tunClj/0XRjXDjXgbch8NLBUgrVl6ju/3d7+odcsqVyjjlzKviPYagej
 T90QqRJzev5JXtZ2v7BrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l0Db7FcBGjg=:hmFyfv8GJVBu2/f7ZYVktW
 +w0zVc66B4C+HVAS7xaHvknZQLMrFqjMpdYkpeGI6K04XCKsehHsd2qbcegFsbgAzWaLQb7/I
 s97Cn+q7A9zXVoEAr0PcgrMbtk4P/MtNLJCwVQhswCJTeAME2J3pOPUyYaB5VyVVwrJzTNMDl
 ErdUyAB94ss8MhvXSpnPn6k5fDldXBw/rwa5LcwCko6LG9BgZzzHbdYxxti9Qav7595QV5jH7
 7BFzzD2guwuQq015jZ+7/Rh/0PR9HC+O9r2ghnqeci8VFuV1os7987Y5e9At1w8Rgx8M2wpQL
 rAIkNvXNqb1ydhSwnF+GaDRk3MMXO6H06wFdsn5xe9zlVSxivqCcovCyV1zu32pajQ6bGPdFY
 y1mH362ZOmQlvz9KJKo2XCuwWoEHEebGTBjcoTlAdnGKCluFN1/ZV7o42NNA4rdGLdbozyJT1
 1K7f1lh9ozWeITqvE/94z3OlPwU981hf9VefeiaqZrveTyDJDUnZx7AFq6ZtXPPVoGpZn9EtM
 oIN8OWvtkxdWCBNx42W9QccbpAN5dTWJQskTtouWHprsPKzSV4gt5aIHNaX1EHlecRilymf1X
 JA6jc9wFZei14X5c2MRLplkqusAtMsfsRTa0/OjAEDxhXuBXM8246Huu8tKOrPPG69UuheGWd
 P0+s0nBt5scqkvt4cJufHbDt55mTisBcn0t+f4rsxudJFgAhV7N1mtZEYQ/LPR6SQEAcP/ZOu
 OjkO1XsXVh9fD0i83NFO/COJ9aYSgk+GgczG9ZTvWe0+BHg/DtN45oVOG7q/ZG8N32BOXziCL
 3ADOdOCC85JLkwyPdrLAQfXyLR00d4XkRaVVmMPYq4xTw28su8UPL1oVsjNGE5GTik2/A/fN8
 sB1ikho0gVcRPGECVX/YDrA/2gfyxYOKrgRXGyfyBO31PGepRk8c/NUFrcLvhE+2RU0jIhLnr
 FvEpE1v6UuDr2pMTREBg9JUQGUUY5Am9nzqVC3mso1gxwrELwwCdjiT0g3fQ19S9dM5EKVYJ8
 03o/n+I0B2QTNj1AWtTtpZ0hCMyJN6PmtzQph6eHND9FwzDprXFEukwbw26aRbce92xmD5v2A
 aluqXeVDGrduL93uJjNvOLVkOq/CG+bP3GUPEbNYPFgQeN0BEMW5vPrSYK4hjh3MeLL2+yuF6
 W4lvWPuGx6B2WhD1qZJDHZ6WoneErPBb9ZsYh5dhGai4p/RAsMzcXXncc5oSqexRtNz5EF1D0
 JlG0n5UaTnvPLiIeV7WQmDVTCMcuJN+2EoPkHWVT6Mvxf6HrK4kZfmJzewkY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_142312_884263_3A73AC85 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marcel,
hi Johan,

Am 06.10.19 um 17:28 schrieb Stefan Wahren:
> The RPi 4 uses the hardware handshake lines for CYW43455, but the chip
> doesn't react to HCI requests during DT probe. The reason is the inproper
> handling of the RTS line during startup. According to the startup
> signaling sequence in the CYW43455 datasheet, the hosts RTS line must
> be driven after BT_REG_ON and BT_HOST_WAKE.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  drivers/bluetooth/hci_bcm.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/bluetooth/hci_bcm.c b/drivers/bluetooth/hci_bcm.c
> index 7646636..0f73f6a 100644
> --- a/drivers/bluetooth/hci_bcm.c
> +++ b/drivers/bluetooth/hci_bcm.c
> @@ -445,9 +445,11 @@ static int bcm_open(struct hci_uart *hu)
>
>  out:
>  	if (bcm->dev) {
> +		hci_uart_set_flow_control(hu, true);
>  		hu->init_speed = bcm->dev->init_speed;
>  		hu->oper_speed = bcm->dev->oper_speed;
>  		err = bcm_gpio_set_power(bcm->dev, true);
> +		hci_uart_set_flow_control(hu, false);
>  		if (err)
>  			goto err_unset_hu;
>  	}
> --
> 2.7.4

would be nice to get some feedback about this.

Regards
Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
