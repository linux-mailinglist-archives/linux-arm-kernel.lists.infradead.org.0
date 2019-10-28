Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC05E6ABA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 03:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrLc3gm9yEZbqE/jBSGF8OnBHIrwuAYSxYG/j9dDoS4=; b=jAeCbxEGza2I2i
	TbbMS3wqhSnD46ai6rZcfoGgIKZShrK4xemo4bdlqN13/H/zXCgDFwi6BvHmve9LqyX1RnGqsWRJc
	JfUm5jL4R8iZFZGNcMkQLpL/OI96UaoiNcxB9VbXLdkB4sB83JnqUuCHG2rM5rm+8+ipNSyItchoU
	8LCMGdK+f435WqVr2OEZWh4f5SJ7HcarUFKGpseKA6UxfgASfo1aqdCue56b6gBI7t5FO63ETImcB
	iy8gNvhyz5tATzV9MWt3c/AyNUxwCcLGbiTnUxSnKIw8JlM2aGumcccUF7Uu/PgeNL9o921Bns7Yp
	+Y0FjTcPCmUueO4fshNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOud1-0007Lf-Bf; Mon, 28 Oct 2019 02:19:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOuco-0007LI-QH
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 02:19:19 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 789E72070B;
 Mon, 28 Oct 2019 02:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572229158;
 bh=Ooys5L+8V//Sns55VinsxJARaA6m2QRYb6IyFJTCdtU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gQhwRQ/3nHp908TPJ7774bqZ+4AEL3R/14X8ZNES9se557S/0mCQ4vgqRJY9s1+qn
 GrmOiL3ABss+CsCqocabdwqyH03xkBBn53P6WRu4m87lVWpEHPkjSznSdmxIE7RB0K
 etl4cZfFKHP48RL8OYm4mdSzBCOAWyY7TBVJY9sY=
Date: Mon, 28 Oct 2019 10:18:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6-logicpd: Re-enable SNVS power key
Message-ID: <20191028021858.GE16985@dragon>
References: <20191016144005.9863-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016144005.9863-1-aford173@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_191918_872814_C1C02509 
X-CRM114-Status: GOOD (  12.57  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Anson Huang <Anson.Huang@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 stable <stable@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, adam.ford@logicpd.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 09:40:05AM -0500, Adam Ford wrote:
> The baseboard of the Logic PD i.MX6 development kit has a power
> button routed which can both power down and power up the board.
> It can also wake the board from sleep.  This functionality was
> marked as disabled by default in imx6qdl.dtsi, so it needs to
> be explicitly enabled for each board.
> 
> This patch enables the snvs power key again.
> Fixes: 770856f0da5d ("ARM: dts: imx6qdl: Enable SNVS power key according to board design")

So this is fixing powerkey, while the previous fix on som was actually
about poweroff.  I was confused.

> 
> Cc: stable <stable@vger.kernel.org> #5.3+
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
