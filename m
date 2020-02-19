Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B2516449E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:48:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9So0jFda1Er5e9WgHFcJLWPuSBq8/vO38Vjx6Z+7Uw=; b=ZOZDMGoAsZMcDC
	n2Welma/wEHVNT/jcGl02kBe8BIrw7iwnol5WrxtOmaqNwB5RIWIn1G5YQnd1ZpUdox+L8nTkjfdV
	50T/j0OS07AlFlqumrkSSMsBGQKrxWONwo2y3qFLFG55f0brQ0q8mE/ZnXM4Bu9magUny3QDYtibF
	fTHmDd6kD4V7UQHOIXQ1/WnDMmYRPqa3Ef+0IURkK8zpTCSLbrMaEGE9Ey87/aDO8kR+m7mLkB99H
	12P6tWw9Mo97rS+HtNCDM45PUCYQdFcDYeXxZzgbw5zedQBMytAY540j5g+AG7YZlCWGvPcjmZ9gF
	rV/i+jNiXkqcVXds2i2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ome-0004ZM-QL; Wed, 19 Feb 2020 12:48:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OmX-0004Ym-D7
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 12:48:50 +0000
Received: by mail-lj1-x243.google.com with SMTP id q8so250196ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 04:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dN5iCO8jDe/PtPLCP5+bsEVRnjfPHVQSbpy1yzeXeh8=;
 b=j0CCmFUqCF0GipD0Gv123st5aD6tmNEimD2gqn5eu8O/YOpGEnsNoyT2C6cNcmEhgm
 uFXj6wa9r6zJGDLJN/crPXOqyxipo5mvUWE583IfRlQS2skqxJnAs7QjMFXRIwmAEtjX
 fs4UNS1T2AxJRUKRtOXNYCYeqp/v0QMRGmQaYsvZMUE+diO3XiT0lYiWPqr4+yKI9nrg
 FE1YVcKcrJ9bTQtwCxWxaeZp95QGmytOs93FJ3qefk4q0OkWca2vRskIoZjdI0Que/bS
 dM66EzF4nd93Lj0t6SqbdwwBcnjOvVW9yMQEsUbHk8rsXfPAkSctNxokZ3BRCsmqKl09
 /GaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dN5iCO8jDe/PtPLCP5+bsEVRnjfPHVQSbpy1yzeXeh8=;
 b=jfFrbGxHxfrG4lSGRGWlZWvpnZJP9DJ8RuuuTmrURFDIAv3+vvTh2PGD895uYTurn9
 rQHT/8GsOVMGFBfbiBgI+fml5ByAEw513B01Ut0DuzQd0fh8g3nQgrq6/Qo3woBSmK/D
 ei7pWfhSdau0ZvBmywMd0fGZ8UAZcZevNuL02H9Pu10umUdWosqhaZcJd8u1wBCTzCzE
 d8sS+DdcJY1Qadwqi262NqzaPoJnxV2pThuB8J9XztIQZ+9to9vhG3pLiIEm1IMiIxf9
 rv9VWaufFEFSrsILomUcyRs/U5sJqqBFArPxRoHsGtt0tk6XUk+dBF3qXbcTODit3zyb
 EN1Q==
X-Gm-Message-State: APjAAAUNGbxKns26eBpAfX76pL+f64QxLCfcZ1yIYKPD7lkopg+hOtU9
 5GaHzs6M8wwjrxRmTpn2lgV2/oLzW5bmCN4Z/HQ=
X-Google-Smtp-Source: APXvYqzHuSu+LmGKJcSnlYrT9QzvlCV+tLoHT5TpvGPcZeuRUnkxPmYQkKQ8fvmpb9gqs+zG7gLMzaZPLnlmuq9FBqI=
X-Received: by 2002:a2e:5056:: with SMTP id v22mr15838180ljd.164.1582116527150; 
 Wed, 19 Feb 2020 04:48:47 -0800 (PST)
MIME-Version: 1.0
References: <20200219115709.3473072-1-oleksandr.suvorov@toradex.com>
In-Reply-To: <20200219115709.3473072-1-oleksandr.suvorov@toradex.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 19 Feb 2020 09:48:35 -0300
Message-ID: <CAOMZO5AZrQmYmEZVC9kpbaPe+Kg71SnCsfkMj0-f+adW3dLnBg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx7-colibri: Fix frequency for sd/mmc
To: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_044849_477303_055BF281 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oleksandr,

On Wed, Feb 19, 2020 at 8:57 AM Oleksandr Suvorov
<oleksandr.suvorov@toradex.com> wrote:
>
> SD/MMC on Colibri iMX7S/D modules successfully support
> 200Mhz frequency in HS200 mode.

s/Mhz/MHz

>
> Removing the unnecessary max-frequency limit significantly
> increases the performance:
>
> == before fix ====
> root@colibri-imx7-emmc:~# hdparm -t /dev/mmcblk0
> /dev/mmcblk0:
>  Timing buffered disk reads: 252 MB in  3.02 seconds =  83.54 MB/sec
> ==================
>
> === after fix ====
> root@colibri-imx7-emmc:~# hdparm -t /dev/mmcblk0
> /dev/mmcblk0:
>  Timing buffered disk reads: 408 MB in  3.00 seconds = 135.94 MB/sec
> ==================

Nice improvement :-)

>
> Fixes: f928a4a377e4 ("ARM: dts: imx7: add Toradex Colibri iMX7D
>                       1GB (eMMC) support")

Please keep the Fixes tag in a single line.

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
