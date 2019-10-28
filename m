Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB2EE7265
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 14:08:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgfZe+lFt5c1Dug6j8qPGKwjGR3BN2WvABUqBDe4vl8=; b=N/Sr1qwbmjNeg0
	1jn8VfRHM7QimrvUTiZG2d/VWwPG/o0/W/qp76Zm+QnCS5Q1L1YKC5QNWnLcjOCZ+hO3CvlTzwCyK
	fonWDnPsSf7yqBvP5U2jsyeolC1jFrNCpV4u3bD2q4nQQi0BVzq80/JKZbW7QvYiZH56sv02GqAFH
	rgDQz0SyAR5nUYQ4col/PB3tgYjY83qTdmWWInFZSngJ+hL9DeZj2M6M/cMMEaoXTXomvsBpD2jxx
	iPP0H/19RjpGO/yu7hNyoEVm7Kjf10rkr30bdUK31wiC5pwxB0Ha0HEG2ADMEeCO2bmntU1X4O80C
	rUkGkXvkEEywQwatpxtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP4kp-0004ay-J6; Mon, 28 Oct 2019 13:08:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP4kg-0004Zk-Fl
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 13:08:07 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C3B320717;
 Mon, 28 Oct 2019 13:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572268085;
 bh=eN/t8vEWe/l66u2wjNSnil60tzYkWczNbhhncntG/Qs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZfkGtUdc9OP38mduRSaP02AMOobq0kjRV6BLT/zrP1C7FrZmLgeZHvo0m0ie71UHm
 LWJ8gu0J128Zy0RjjMH5ewZpCMqpsTw1ComTsNYRxfdXotnteA5mSV60+6r4u5RIog
 pvgl+7uUOKkBe4ZV31SnYN/7z2viBWJcmeuR2JJY=
Date: Mon, 28 Oct 2019 21:07:36 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Subject: Re: [PATCH] ARM64: imx8mn: Change compatible string for sdma
Message-ID: <20191028130734.GK16985@dragon>
References: <1571992807-31378-1-git-send-email-shengjiu.wang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571992807-31378-1-git-send-email-shengjiu.wang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_060806_546561_51BC75FC 
X-CRM114-Status: UNSURE (   8.50  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ping.bai@nxp.com,
 Anson.Huang@nxp.com, daniel.baluta@nxp.com, s.hauer@pengutronix.de,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 04:40:07PM +0800, Shengjiu Wang wrote:
> SDMA in i.MX8MN should use same configuration as i.MX8MQ
> So need to change compatible string to be "fsl,imx8mq-sdma".
> 
> Fixes: 6c3debcbae47 ("arm64: dts: freescale: Add i.MX8MN dtsi support")
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>

Updated subject like below, and applied the patch.

  arm64: dts: imx8mn: fix compatible string for sdma

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
