Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4731B1357CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:22:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PSFUngTVCJxs+DXi+as1khWFlkJIMSaQgXtGA5DiWs8=; b=bcB84ToOqGduVB
	QU7jSwrSSoFffK+yPLEAZLmoO4TIGcFqIwehSvhIeuzITPlKpwJpTm1edscCN0b9fO9WdVpcuNxk2
	imniC/GxeHa7clvsxK+TnHeoJbHorgxFspEIaE+ElSbS10/byr+ab0G8bdBTz/TDaZSx1BJML1W4m
	AuuIqhxAF8ZYzZcyq3F+mS9InZqSkge2MA8X58hqJ5U1Z7UXgg3UJXDhuOrah02/dJIBkUkVTDTUp
	tEiNdNTyCRr16drBkPefFjUSo+VVQqEt+bnALgz+QLdZYgcyej9lVHZz9HfUal5oc6ALwFSYhhAtm
	i++g/YJAXVJo+w8SPwyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVta-0001jQ-97; Thu, 09 Jan 2020 11:22:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVtO-0001hp-OP
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:22:23 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1546D2067D;
 Thu,  9 Jan 2020 11:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578568942;
 bh=W2gzVLodOj+BGgWG3Dmk2JiLTn4+m4I+y5h6d4W6bTM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rsi/kFebASjkNEXRn/s8u2hgtfbrJ/uO7gWaA4u4t69bKt0Sk+Nmh+hdTsZUDnHLq
 ZjkqUXoK2HRfIgKt5GFux+pLiRJlWl0G+DaG4wsdu0FGqjijoU+76L05tQ+ntLNUJu
 7aUrGhCB9AZKwELc66HN/B9+aAecq7+S+5KxotGs=
Date: Thu, 9 Jan 2020 19:22:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v1] ARM: dts: imx7: Fix Toradex Colibri iMX7S 256MB NAND
 flash support
Message-ID: <20200109112210.GV4456@T480>
References: <20200108161232.327424-1-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108161232.327424-1-marcel@ziswiler.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_032222_820905_381CCE67 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 05:12:31PM +0100, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Turns out when introducing the eMMC version the gpmi node required for
> NAND flash support got enabled exclusively on Colibri iMX7D 512MB.
> 
> Fixes: f928a4a377e4 ("ARM: dts: imx7: add Toradex Colibri iMX7D 1GB (eMMC) support")
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
