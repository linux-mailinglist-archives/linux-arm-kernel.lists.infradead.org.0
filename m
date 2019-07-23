Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C245711A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 08:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/sj2Eunh0lC6Y9z7x8zifGWDqK6oBq88OtCyGVBP5A=; b=pFUrM9D0zhNAWk
	mDQD9P4i5xQNVR9edCpbv30Bc9RUTvCsZvPKvaZomNqJ6K4bVH5dvRzCqepZrJYMoSuD/85dva5zy
	UjoaJTTC2i6tSuguMkp/a/q11i7msHtdicxprjp0HBqkacTRfkRVdoJ1hoig6hjWZln9pvw5KpkGG
	vkhTCPHEujgPgTemMugucOzrAibulyVdwnqSkkix18x5M5xMPkdjlazs+OKby6EQ9wH6SFPU+19Gw
	N6YONv3Mxg1pQZLi9cN6WElv7PQBATcqe0t4W6vl5NZna4f1nyuvHSR8kMWWgMkvHqAHfboRInc0n
	fbFwv55R0rMcXwNQCFHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpo39-0003AM-8K; Tue, 23 Jul 2019 06:13:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpo2u-00034J-7e
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 06:13:09 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F16620578;
 Tue, 23 Jul 2019 06:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563862387;
 bh=8XekEYHKRjCAVENJ7sXo1/NlmCjnzPdrtAfqgobMUGA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MU+Xaa1O4DpjeSDm6f+vYQRDPPqUe5eJEOm/oZQeejHL6KsDlnIfrJWCHQSiJO4XZ
 +nqZDN7XdxLB+pSlh6p5CVb47osDoqiQUml3QbnroXtOBJiSO2mCEuG9xEJyPZbvYp
 OdU3S6s3upj1OuB0XUThg/JUS1H4Wb+wjr2aeSVg=
Date: Tue, 23 Jul 2019 14:12:38 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: rdu3: add UCS1002 charge controller node
Message-ID: <20190723061237.GB15632@dragon>
References: <20190712135948.28080-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712135948.28080-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_231308_300258_E4D9E932 
X-CRM114-Status: UNSURE (   9.20  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 03:59:48PM +0200, Lucas Stach wrote:
> Add the charge controller node. With the controller driver loaded
> the VBUS of the user USB socket is controlled exclusively via i2c
> with the GPIO controls ignored, so vbus-supply for the user USB
> port must be linked to the charge controller.
> 
> Hog the previously used GPIO control to unconditionally enable
> VBUS until the driver is loaded.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
