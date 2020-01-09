Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9294B1353E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 08:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FYSkPtlpEBjDXcb8E/jrw1mE0S79UFfKuDB8RF9DWo=; b=gaNa/VFTUsuID+
	oPatJuxmSVS6ABq9xv3UKBmqEH6fOczJyGkOQa++FfkoW18QtVOE5LGR2JrhFC7LVgza+w5sjHIZO
	TqUH/nZosqtc8OwigVQGKgh28rzt9VhP7hp6oOVvNAsUYOAvD3nWTZ6bQAGgfEaa9O7BOm7pz9rP0
	VA7VR4maKUAqHc1h/k0at7z+6f3DZHcbAhATg21iFDoDteLS/yL4w/vO2TVMkYOwVAx0nL2BUmamm
	WKLvN9Ulc85Oy3GR5TdeXcn/ymSS9MFKkP7LqbUvKoKeR/3rw2pSE+mbSxozq1LX4GPKJBLOYvm4z
	aGDl61cs9XiylsmVG8nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSci-0001VC-Kv; Thu, 09 Jan 2020 07:52:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipScb-0001QM-JC
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 07:52:50 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DC84206ED;
 Thu,  9 Jan 2020 07:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578556369;
 bh=qJ73lHGBY5+mUbmxJ+Wm95EZIzgEZEVAiXIja75jIB4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fDTK/dBKA/QpBD/ga1bHfAPUl2jLxcrVaTb6p8PaWV2k3UbsX4k1r46Mt9Jm+dqLg
 3k6It8V8wT0Hoj0XTpLYVbATPJkeClLK3422ZzjrqbIMCxUYCnslGekLIOsltEm6wy
 VCBYT67PfGHqlUB/k220CL6XqHY0Zn6utWFpikPw=
Date: Thu, 9 Jan 2020 15:52:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] soc: imx: Add i.MX8MP SoC driver support
Message-ID: <20200109075239.GF4456@T480>
References: <1577342402-12329-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577342402-12329-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_235249_654864_F9B80A89 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: abel.vesa@nxp.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 02:40:02PM +0800, Anson Huang wrote:
> Add i.MX8MP SoC driver support:
> 
> root@imx8mpevk:~# cat /sys/devices/soc0/family
> Freescale i.MX
> 
> root@imx8mpevk:~# cat /sys/devices/soc0/machine
> FSL i.MX8MP EVK
> 
> root@imx8mpevk:~# cat /sys/devices/soc0/soc_id
> i.MX8MP
> 
> root@imx8mpevk:~# cat /sys/devices/soc0/revision
> 1.0
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
