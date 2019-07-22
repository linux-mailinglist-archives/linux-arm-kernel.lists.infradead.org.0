Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5FB70B67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rFKFhSXiVtUtiTYbcBx3u7WiX8D0R5UGTrbrVIV9UY=; b=F/zRIOVlAHxMk6
	P8OHrV1eLakVExYTwoZM1SdYfnqelWrhYPUPjWekbTvPBt4S2ICgwMTT/U7wCIWQuoOG+O8sMAgF8
	jDyS5yan5krYhQ8YuFeyzd6G5k9PCgKC/airGgQQKn9qnktHX8OIttZ+W09tnK4PbzEaApDZuVo0e
	PiRkV8gSGFCvmhOx8iLNolgvKmP1VJqpCjzXYGiVsxMcuobNqSoBIe11BKn9MSW9VV0NlKDPK+Um3
	H8YOXE7JT+WuN4VTjlWCAR3gsedufN1M3tH03Eyt91Eoz9TrmmEyxTu6w0/70swJta60nwSV8DR4r
	jr/e/wPArmQ6LuXmgCyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpfu1-0004k4-Fp; Mon, 22 Jul 2019 21:31:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpfte-0004iZ-44
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 21:31:03 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADF8821900;
 Mon, 22 Jul 2019 21:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563831061;
 bh=xJwOs8eh6wnbncGoeTw21vj4R8KhLdFsORfmYU7Lf3I=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=kpTa1yt4tICwzZeizjpF+rNU5ZHlEd3hIlkvTx1ZNFktON55CgJqXfZNpayZordNk
 0f0ThtuDVcxi9Q1qoh6BQ/PakL8QUg2aHzgwfmgP1Fe9jvEYYyOFf4RImt37Rh5/fJ
 XRrUy30G71WYl4dtSBHyIQuswTqvNUcSuskK3NbU=
MIME-Version: 1.0
In-Reply-To: <20190705045612.27665-5-Anson.Huang@nxp.com>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
To: Anson.Huang@nxp.com, abel.vesa@nxp.com, agx@sigxcpu.org,
 andrew.smirnov@gmail.com, angus@akkea.ca, ccaione@baylibre.com,
 daniel.lezcano@linaro.org, devicetree@vger.kernel.org, edubezval@gmail.com,
 festevam@gmail.com, kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, rui.zhang@intel.com, s.hauer@pengutronix.de,
 shawnguo@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 14:31:00 -0700
Message-Id: <20190722213101.ADF8821900@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_143102_186730_69565310 
X-CRM114-Status: UNSURE (   6.37  )
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson.Huang@nxp.com (2019-07-04 21:56:11)
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> IMX8MQ_CLK_TMU_ROOT is ONLY used for thermal module, the driver
> should manage this clock, so no need to have CLK_IS_CRITICAL flag
> set.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
