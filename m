Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD35111A58E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 09:05:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSk8u8TpORk595HarjYJoV2nmTdTHrzK5zN4tT/ixeg=; b=dcMIagEP6AfLI8
	Q29WNI5kjxpzHq1m54WRpvfvwMHhHWGO0C4SSE0q1NN7X0jqG2m+2M6xPP1IvsaGoO0WS5wwzAqsu
	l3uZqMyORLs5iQBhGI6g7sjk1wraMqjgOPnVb0krm8MjA0XSQTTmF9c0Yrvs5zo1mbo35wCxwnmiY
	FNKFBwrOTmIJ7iWduJQixU6Q1/HQWWyl8MeBzhbLAo3BMTKV6cVxNKo4TnbmXyJf0N1V8H3F+Bzqe
	M3b5T7zSQheIjFtHJXD1L7nlTs4NTd2pQyAn1RfUek+fljNNuaKecVw0mAA14A43rZtlpFGwg2OfO
	rcIVCRPRtIISDlIKCxXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iex0F-00082A-Id; Wed, 11 Dec 2019 08:05:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iex06-00081j-SA
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 08:05:40 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 772762173E;
 Wed, 11 Dec 2019 08:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576051538;
 bh=lOgUt5y6/9L7MQb4eG6VNacAiDWxoo4lEdTGn+202fM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kKGpcDBhAqIccgus4FFXLt4MvUzoZW0PD5sFYKdYrreTHPlai14UxDSWNgPwR2nBi
 HlRy9l//1vZqEVYHnr+cfSyNqxplAvQVQn1SOKzbQ0IwXB2ZGXGQnmtBz8DDzACugm
 kcbrMhBb068Bmp1y9k5g7L0rni8KhwxFNUB3e/PU=
Date: Wed, 11 Dec 2019 16:05:26 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH RESEND V5 00/11] clk: imx8: add new clock binding for
 better pm support
Message-ID: <20191211080525.GS15858@dragon>
References: <1573993519-14308-1-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573993519-14308-1-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_000538_933900_AC59660E 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mturquette@baylibre.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 17, 2019 at 08:25:08PM +0800, Dong Aisheng wrote:
> This is a follow up of this patch series.
> https://patchwork.kernel.org/cover/10924029/
> [V2,0/2] clk: imx: scu: add parsing clocks from device tree support
> 
> This patch series is a preparation for the MX8 Architecture improvement.
> As for IMX SCU based platforms like MX8QM and MX8QXP, they are comprised
> of a couple of SS(Subsystems) while most of them within the same SS
> can be shared. e.g. Clocks, Devices and etc.
> 
> However, current clock binding is using SW IDs for device tree to use
> which can cause troubles in writing the common <soc>-ss-xx.dtsi file for
> different SoCs.
> 
> This patch series aims to introduce a new binding which is more close to
> hardware and platform independent and can makes us write a more general
> drivers for different SCU based SoCs.
> 
> Another important thing is that on MX8, each Clock resource is associated
> with a power domain. So we have to attach that clock device to the power
> domain in order to make it work properly. Further more, the clock state
> will be lost when its power domain is completely off during suspend/resume,
> so we also introduce the clock state save&restore mechanism.
> 
> ChangeLog:
> v4->v5:
>  * Address all comments from Stephen

Hi Stephen,

Are you fine with this version?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
