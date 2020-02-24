Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 044FD169CB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 04:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkROrWNXKmpNABMgOAqgKX0epjg6uZjqygq567dafRk=; b=GIr4Darao3l8Re
	EFL4jSiqwScMBSWPfeJdMaqF7W94KRr31uwWTMEoC+6NHwyHZGF2hf3IEEm2M67lxSZkvcgXxxGNg
	Br1P8Uj4TfsMEl2ShQmn0G8eOP4o0UX0rEscDWaRBAMP3BkUqk8Fsd4gx6+fr9giA835DCFu9r8y+
	3+oZ1uk1Tb2YE0eMLAJbDW0CS4sALAG8Ar9FzWDP/cI4HNoNx42QMeAoYGK55iElGZ6wz0fDkw7VM
	8DAgYIroc7TOrnu3YLTCkGMs3bH9siPmNYq8UgkYt0XGAWg9FDVul8JH3rHLEg5bzn9fmuzeJGJs+
	ZMaJEU484FnJt47qzhfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j64do-0001p4-W5; Mon, 24 Feb 2020 03:42:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j64dh-0001oi-JR
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 03:42:38 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 662B920828;
 Mon, 24 Feb 2020 03:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582515757;
 bh=6d15W9/8t0f2BUQq/bxEpoTZNWBs5M53q2YcmBYzXJ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tCB4N1aZ8GuKSjK3dMk5vpqqBqZJhK5/4GGhIskjcnuh1zXQ2LzPeSgWo6Pz2++tY
 XImGD8Jn5K4j3PL2J+JijVyd5prlNfr8JMYCaFHx08hyD34BsyJpjlpbY/N1AptujL
 Fx8yybQuWlpbCOGp4PcOxP6s9O6mPH2IqXuYqeiY=
Date: Mon, 24 Feb 2020 11:42:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Subject: Re: [PATCH v2] ARM: dts: imx7-colibri: Fix frequency for sd/mmc
Message-ID: <20200224034228.GI27688@dragon>
References: <20200219131121.3565738-1-oleksandr.suvorov@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219131121.3565738-1-oleksandr.suvorov@toradex.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_194237_658618_B02C2B00 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 01:11:24PM +0000, Oleksandr Suvorov wrote:
> SD/MMC on Colibri iMX7S/D modules successfully support
> 200Mhz frequency in HS200 mode.
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
> 
> Fixes: f928a4a377e4 ("ARM: dts: imx7: add Toradex Colibri iMX7D 1GB (eMMC) support")
> Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
