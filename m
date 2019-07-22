Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AEE6F7CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 05:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzkvyHGoQL2s3xNFkU0FCSAdLtcp7jDBre155m8gFtU=; b=DO8iuL2SSL4FH1
	IsmfncJpPBNtXt9ZuR2guM2e9I4fxC0UqBfEu4RdHS4GD9VVy3QhXpyeG/8HA6/5ewlxzVzO4BEEm
	vHo7uZIVod50l/XYXvDA1f4A5H+bzGL8/4+O7chT1Kadr+DQUqTynCj09uDrJLDoe7XXcawGY3vbj
	8VU6FPeZ4n2+upfbQB7ZPSz1AUpCweBg1k2sbpfPvdHDygsZjbVIXQkaBZ3l2utrXeKcMa4nHztoi
	CGnsDHUN1Q8j3x32nP3Qo11TRLndePXzdC3gyeag/Zu3N06mOqmlfci5p+KB88nM0oDeRDjlwUgu1
	7uw7v0TyHuZXatpluE3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpOlb-0008PV-0o; Mon, 22 Jul 2019 03:13:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpOkz-0008DT-RH
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 03:12:59 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0538521926;
 Mon, 22 Jul 2019 03:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563765175;
 bh=4J1ZS8KDxWC9kU9QNz5EVAz+X7JyqG51qQGWo6AiJVo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XJQ+rBDExWiTZ5ZHlB0Guc4sYnJvfjBrQd30L7GHEgRWlhvmM8iGOWPhvdAy3SUCG
 zzJ7Bd64+zMSU5PfmqSyZp0/qXNZw2n5j4UHBWlRq0g8AdnSaEemdWdv7PRiUcPF/+
 HxDIr8IF/F12DaxO6wQonc9qB8KdMq51Hpr8yb38=
Date: Mon, 22 Jul 2019 11:12:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V5 2/5] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC
 platforms
Message-ID: <20190722031224.GS3738@dragon>
References: <20190710063056.35689-1-Anson.Huang@nxp.com>
 <20190710063056.35689-2-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710063056.35689-2-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_201257_966370_A1E8D517 
X-CRM114-Status: UNSURE (   8.21  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, ping.bai@nxp.com, ccaione@baylibre.com,
 catalin.marinas@arm.com, agx@sigxcpu.org, angus@akkea.ca,
 leonard.crestez@nxp.com, festevam@gmail.com, abel.vesa@nxp.com,
 andrew.smirnov@gmail.com, will@kernel.org, daniel.lezcano@linaro.org,
 linux-imx@nxp.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 robh+dt@kernel.org, tglx@linutronix.de, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 02:30:53PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> ARCH_MXC platforms needs system counter as broadcast timer
> to support cpuidle, enable it by default.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

This one is identical to what I just picked up from v4 series, right?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
