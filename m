Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B04C196E16
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 17:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92WijUPvi/ucpQ133maWIELyyx44yLaMKYkveqvaj6o=; b=FbmRC0VAuw6WQe
	7e1cMdT18qgrM1Hhm7DEi87TpTCnH1Aqna+uHmL3bvQSXfZbMjVUjadSKpuNj9OfyKvlgBzsrgysA
	92+imNA1JwUo+B5FZU7uEyILRBI0ZTuon8uzcfr8ywf1h3Qvh7LU5UmS57qZwtvmGTRLyIcdLcXp/
	hIKNXXMPgjZ50dXF217PW1CI+FbmAgNRK3kAxnstEY0BChF/o6eHcg4+geMbO/lpWy7paQRbYptCr
	9tuivRZliidmHQY5bSAtD3SesuKHXOa9KNC3eoBr6YIFqw945Quae8z3D2u0LkznHdMTTkQ4P9Lnu
	ZlL+u7OkZpDA7xK/tXdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIZYj-0005Gu-11; Sun, 29 Mar 2020 15:09:09 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIZYb-0005GM-6X
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 15:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5k91iJvz4PccPOFEwloR/4H/cQNQeGa+coxrPB2qksw=; b=Zv03jrAbvyZvIP06Bvblmgrp7j
 rFjCPmTRKfXrIKGuFAPmy1CBKTUn/TAswsiP440JH+ZU1JmygnPjq4BHg/yR2/8td0//lNdJ/sxXV
 BXB2Gu78RT3E4lAWACrxXJx2zIlf7fkR4BpcVOMirmZkaC/JPwkKIzpwso3WZH4vSrGw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jIZYU-0004NO-DC; Sun, 29 Mar 2020 17:08:54 +0200
Date: Sun, 29 Mar 2020 17:08:54 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Message-ID: <20200329150854.GA31812@lunn.ch>
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329110457.4113-1-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_080901_241079_87775CFC 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 David Jander <david@protonic.nl>, Russell King <linux@armlinux.org.uk>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 01:04:57PM +0200, Oleksij Rempel wrote:

Hi Oleksij

> +config DEPRECATED_PHY_FIXUPS
> +	bool "Enable deprecated PHY fixups"
> +	default y
> +	---help---
> +	  In the early days it was common practice to configure PHYs by adding a
> +	  phy_register_fixup*() in the machine code. This practice turned out to
> +	  be potentially dangerous, because:
> +	  - it affects all PHYs in the system
> +	  - these register changes are usually not preserved during PHY reset
> +	    or suspend/resume cycle.
> +	  - it complicates debugging, since these configuration changes were not
> +	    done by the actual PHY driver.
> +	  This option allows to disable all fixups which are identified as
> +	  potentially harmful and give the developers a chance to implement the
> +	  proper configuration via the device tree (e.g.: phy-mode) and/or the
> +	  related PHY drivers.

This appears to be an IMX only problem. Everybody else seems to of got
this right. There is no need to bother everybody with this new
option. Please put this in arch/arm/mach-mxs/Kconfig and have IMX in
the name.

Having said that, i'm not sure this is the best solution. You cannot
build one kernel which runs on all machines. Did you consider some
sort of DT property to disable these fixup? What other ideas did you
have before deciding on this solution?

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
