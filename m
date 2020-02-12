Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF72715A262
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 08:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dm/n0Wyhp7UUgSmKFx6nS43+1ZdP6dyL9eJFulpc4iE=; b=Qxi8PQ0GnTnBr5
	bnuJVZcKvvrotoTp8j36n2johXenafkrL6sQNGDhXxpqbneco3S8P6vCg3viW6Qbmp73g8yhMtZBK
	bynwUIVrM8OVEptCNa/TTgZzW8oINSDiWfiJi2pHU85WnKERxVqxOqELqw5C8Ad16myxgOKhaGO9h
	MUQUPGURl2+WIIww/2rvf7avZqstk5T7XzrvF5E0/0IRL+8Qmhes9VwNx9HvXKwzXgrkQYNd9Hf+B
	1QK/TRm2rMTB5eOAZxv4XLqYLNtW9kLPeziGxet6i99lQrYKI0wTDWOuYKeZ3S6OW0pTcrfk34TYO
	/jPnzZAnIP5ARBL3kZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1mkL-0001zD-5f; Wed, 12 Feb 2020 07:47:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mkD-0001yr-NL
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 07:47:38 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9499E206DB;
 Wed, 12 Feb 2020 07:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581493657;
 bh=khRNRuCZwxnKABFVYe1snupsbWNrsELF2kP13DYwuWQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z/XcnxHy23iM4GNy0ATaZ9fXD01JkDVv2jFLkWtBH1hr5bIaQRG2L5y3SZntbR+4w
 ui4xuR/WJ9uh3d6CPKUWk8Zc8gyBCc/IIQpmDb+0dmzDSK07ZPd9YY0lnR5qgA3AHT
 uT//b0xogwwtTzSr597rYSqWVx9ahQIK3PW/PtOI=
Date: Wed, 12 Feb 2020 15:47:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V9 3/3] arm64: defconfig: Select CONFIG_PINCTRL_IMX8MP by
 default
Message-ID: <20200212074724.GE11096@dragon>
References: <1579052348-32167-1-git-send-email-Anson.Huang@nxp.com>
 <1579052348-32167-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579052348-32167-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_234737_780839_B21CFFB7 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linus.walleij@linaro.org,
 stefan@agner.ch, bjorn.andersson@linaro.org, leonard.crestez@nxp.com,
 will@kernel.org, abel.vesa@nxp.com, festevam@gmail.com,
 marcin.juszkiewicz@linaro.org, Linux-imx@nxp.com, devicetree@vger.kernel.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 maxime@cerno.tech, linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, kernel@pengutronix.de,
 olof@lixom.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 09:39:08AM +0800, Anson Huang wrote:
> Enable CONFIG_PINCTRL_IMX8MP by default to support i.MX8MP
> pinctrl driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
