Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AF71353D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 08:46:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qRki+9auGJfN/Z9uWgz4N4wurcDHpHORWfaEvp/spI=; b=uMc/mLQpsehmHb
	ZgEGjtDr93EG8VFPKJwFuDb7XT6m/Kn90I6P30IStCMuVNC+R0vB+SEyJ+gOuCOb1GNxVw4S9yDG2
	nvGE4vMyIOxci+a8ffmeZEpw2UGurIpKtRS5JeCTkVySaxTsvUVBWKDjtEeyo2igfDVZHO3rDyprQ
	ExxC7e+J1ZOR3Prqun5WAWGZ+D5yjJn2bXp5LDeOBX0zaRrtle+wyIr1xOEh9MxgFcq1RVBdWpmAH
	b/bY6mHLdu2uyq8xwmrPHPYZPp5UweA0lCzTA6AYeIjFPsJgVVxO0LjkwoaUSPovaYDVPxYS1RbnH
	uTeb8Td/fZL6q8pMkg9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSWk-0006gN-CX; Thu, 09 Jan 2020 07:46:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSWc-0006fN-Om
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 07:46:40 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1253D2067D;
 Thu,  9 Jan 2020 07:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578555998;
 bh=5kEr0u1VL0RVCwXJ5D5DyrjSAR6ubRRHXNB3Tn2+kUk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=My95OLCIH3fNhtG/BT0QDkUNPENm7oe3ZmqkqBp1nwT+apxm9rLhSq720X9s5RyL5
 Ovh9k4XKwK5HCWjdTVYv85CnIVdM4XdEVjy1hHHF7q05AzdMjLZwCPLN7TLObkRX0C
 CNsws39nqA9qFIV5jEcOJOMcYtoAzyZP6gxfWZQQ=
Date: Thu, 9 Jan 2020 15:46:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: imx6q-icore-mipi: Use 1.5 version of
 i.Core MX6DL
Message-ID: <20200109074625.GE4456@T480>
References: <20191230120021.32630-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191230120021.32630-1-jagan@amarulasolutions.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_234638_827205_C1444147 
X-CRM114-Status: GOOD (  12.46  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>, linux-amarula@amarulasolutions.com,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 05:30:19PM +0530, Jagan Teki wrote:
> The EDIMM STARTER KIT i.Core 1.5 MIPI Evaluation is based on
> the 1.5 version of the i.Core MX6 cpu module. The 1.5 version
> differs from the original one for a few details, including the
> ethernet PHY interface clock provider.
> 
> With this commit, the ethernet interface works properly:
> SMSC LAN8710/LAN8720 2188000.ethernet-1:00: attached PHY driver
> 
> While before using the 1.5 version, ethernet failed to startup
> do to un-clocked PHY interface:
> fec 2188000.ethernet eth0: could not attach to PHY
> 
> Similar fix has merged for i.Core MX6Q but missed to update for DL.
> 
> Fixes: a8039f2dd089 ("ARM: dts: imx6dl: Add Engicam i.CoreM6 1.5 Quad/Dual MIPI starter kit support")
> Cc: Jacopo Mondi <jacopo@jmondi.org>
> Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Applied all 3, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
