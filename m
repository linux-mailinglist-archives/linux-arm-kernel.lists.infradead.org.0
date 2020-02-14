Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE1D15D028
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:44:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhQb1I464UAC0hynzxgdi8Ee8gWFXZN9QTisRYVpZh4=; b=R0N0WLhJTlBQdw
	VLS5uLDe9JPXspSUFsyyR23vDAAOMDkrSQY6LbMkItczXa+d6tHE8he/j/EWKA+iSEZZWcoB+FZ88
	tyBbCLNfAO3F4MZ+MKP+JWwKRXzlIVr3DF9o8lpxeH7wJvfPMnw3QWs/D2sc5uyooorBbTvej3LQn
	NZkcWKC+lhYfaMXnX3a8xO6BKmNb+T7Vra8ADTN0lwsVVblmVmMdVWt6fY6vqDbiyUcNo+joKhmSd
	98vE9CJ477LXEOTMNCR2ViIvA+BUhmufl/XPfXw1n3gHJh7l8q/kNAIQlsTTCaaV8+7GW4GGMDxeh
	Thl2dLcne6qgsR2ONdxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Qy2-00048a-3v; Fri, 14 Feb 2020 02:44:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Qxp-000454-Ki
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:44:22 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9797D20848;
 Fri, 14 Feb 2020 02:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581648261;
 bh=0UJhuKGAYdnYJjJ52HOZ9X/15LDeFbdp2hBicgTmaVE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k9J+IaR2ZlqMSergpAtvMx5N239+ofHV43GulsZx6GkYLH58wONeBrn2WtpLmxnGo
 YT2d0Uhg+ybB5lw8BDm97R9eOObCY/SRGTZmyaPbxYyS1hAsubEWAF6ecKzy2W8g7B
 0/Doij3rIBlo+cVimA5CvdOLqb1jz59M5EGwRx3A=
Date: Fri, 14 Feb 2020 10:44:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V3 2/2] soc: imx: increase build coverage for imx8m soc
 driver
Message-ID: <20200214024414.GG22842@dragon>
References: <1580191098-5886-1-git-send-email-peng.fan@nxp.com>
 <1580191098-5886-3-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580191098-5886-3-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_184421_748961_BF862CB5 
X-CRM114-Status: UNSURE (   9.96  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 06:03:17AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The soc-imx8.c driver is actually for i.MX8M family, so rename it
> to soc-imx8m.c.
> 
> Use CONFIG_SOC_IMX8M as build gate, not CONFIG_ARCH_MXC, to control
> whether build this driver, also make it possible for compile test.
> 
> Default set it to y for ARCH_MXC && ARM64
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
