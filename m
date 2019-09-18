Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F3DB5BA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 08:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cd9GNpVmDLVnCXwkDFmmMHI9H/OZqXWbUuGILcrXass=; b=JnuCfdd1PxjfAy
	ejX8fVStOQzr4oBf/hw4P6XgFKpOxdulUAm58/fn3Bg4sO9luR0F15LmqSpPCmWaosn1q7RmSn/+8
	oW8K89vS5kzzKHpm3VQknbEoPpmKuadgYTZwMb/LaC9bxOBvaBbV5MQNJ6fKTG7N3I6ubtU/6KCAT
	I6Jt0xn2Hr+LOHGAuMvsLPQGEVPMMu7ARR2rMQDud1ftjUYgfII70sEMCbINiGzapZKivaxPHlfpo
	XpgdPw4j1csCzO9qRdazjbiTCZV8zD2333OZD6BsUyVE7fDTD8er7MOOn7mVVpzpTtbKBqdKtZ0ZV
	yeQ6QPiZ1+K5dTqt4hTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAT92-0008Rz-En; Wed, 18 Sep 2019 06:08:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAT8m-0008QY-4m
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 06:08:37 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B93D420856;
 Wed, 18 Sep 2019 06:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568786915;
 bh=eDSFDoUxeXRaSqOmvn/sIqFQjBEcgKvtFO2Fe0pC0PY=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=0inT2mFqrjg0Z+0iF75CCLI6U4LWBotLPUwj0ewQgZ5bmIxGlSBgBsvCQnxZEtjLc
 QL65e/CcwHGClfEbcH13g2exVbmZOvH3KHVkE/UPU5na/6s3qrJKZDHKVulQTIIFXd
 lw46ISiXfhW2UMx1KA41GAzpJRxS3uB0a3gKJTS4=
MIME-Version: 1.0
In-Reply-To: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
References: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V5 00/11] clk: imx8: add new clock binding for better pm
 support
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 23:08:34 -0700
Message-Id: <20190918060835.B93D420856@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_230836_249606_34773144 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, mturquette@baylibre.com,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2019-09-09 19:09:57)
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

I had some more comments on v4. I'm going to wait for those to be
addressed before reviewing this series.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
