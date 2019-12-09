Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0A71167B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 08:56:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilETaSJ3Wb4D2oi6Ua6986dWaIEtt4kiirFYTWcNb8Y=; b=uhAo2JnIhxFf4C
	CI4kpS30x0lC2CNfYiRoMf8UvHFYRHBij5fsQkYUksNgnxVDgqQhftVeD8xBEDQLSwpUrLB2XAUzV
	eiB3FsdNGWGmU/lOV71OJQVA0e+TbgbblgkZ/jTUCSnF0hIWXCI0LrX042qw4W7R9JlQjKy7P4cJc
	gb9puhz+uoldpBpJmUYAwgCZaVWHddvqKBx43b1rZ0Vml2eNx3T4tWcpITScrQWh8PxnBPP7GXTp/
	w2iFs8XFEEyeCzy9aB8VdP0jWUkqMWLCE6Y89vLJfSZwXjP5KYNtu5xrDiBGf+SehMur55cRCA2BK
	YclKVX4fJpWeyQDwmhUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieDu4-0000mP-8o; Mon, 09 Dec 2019 07:56:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieDtx-0000ly-B3
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 07:56:19 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B1C76206D3;
 Mon,  9 Dec 2019 07:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575878177;
 bh=u7OY9N0yxUaizCfCj1lqOxG5tJ8buexZ4yffTAFjVWU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HGFk0s25dcSidAcwwgFWi0uvzyTsPos355Gz1GyDv3xMoxSjj9JaM7tuMGnqYKiOm
 gFgRWR1VFNt1bt7cHW/O5g8EMoI0+NNrUSO7zPWlRQEmA0HIJdF4QWz84bIAFZdgeg
 o4wYPGAjG4puxmoHdVHDFVBAuG4DfefPV6NmNkJw=
Date: Mon, 9 Dec 2019 15:55:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mq: add missing SAI nodes
Message-ID: <20191209074952.GI3365@dragon>
References: <20191127182127.1204-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127182127.1204-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_235617_923823_F1DD5A16 
X-CRM114-Status: UNSURE (   8.46  )
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
Cc: devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 07:21:26PM +0100, Lucas Stach wrote:
> Currently only SAI2 is present in the DT. Add all the other SAI
> instances present on the SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied this one, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
