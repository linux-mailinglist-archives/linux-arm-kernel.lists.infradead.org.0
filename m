Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0A537977
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pgRBr+w/5JkPbvPy1RNTwOb5anv3b87LI9yMi1tj49E=; b=L8hzIFtyJrUPDd
	6pVzRmtsuORkLUVO4syXpwliIpabPhXLOt3lDaBMGjCyl+EM00VXpM8yf5BzcZujJvcC/C4A2wibr
	X45bhLxSA3oaZR0trhKEbhhdsXCGuLgecPcq2N5R0++I6S/04MU89xffg4YIMP6x82vD0Rz2l5Qd+
	u9K2DnC3ebWeTuia7CXyILa9FvqjbdG2aODbJFVorfb4Z/iWx4npXkfks/GrmKnAlYkh9skwYR8Qm
	ts6+cenl4+/zJMxfPvdH5PMWheMJfxjUFXSIijtohPvODjDb5+gWWn275vcfj/Fha6Uho/VgTjLt0
	ykzUmjxQfQ0RqMs3bjBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvD6-00046j-D6; Thu, 06 Jun 2019 16:25:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvCy-00046D-Sh
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:25:46 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFFB820645;
 Thu,  6 Jun 2019 16:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559838344;
 bh=qyHzBivnLPb/+lw9r58rXcindZmclzeck6Tk1ntbfR8=;
 h=In-Reply-To:References:To:Subject:From:Cc:Date:From;
 b=deawRK9bcY7UvS2ygyKhywdOffS+3brvmGlW2SlvDOHttQaf7wnof7uHccsjyeatp
 Gk+k7lIjZO8FcpKii4zkyaj9wtgTtS0DEFR6HxkE0Sl0EEtPsCFgBCE3fKFcuFywAc
 6D0cV/u/qkgXNd/su348kRgsPNygN/kkrBCFUkhE=
MIME-Version: 1.0
In-Reply-To: <20190604015928.23157-3-Anson.Huang@nxp.com>
References: <20190604015928.23157-1-Anson.Huang@nxp.com>
 <20190604015928.23157-3-Anson.Huang@nxp.com>
To: Anson.Huang@nxp.com, abel.vesa@nxp.com, aisheng.dong@nxp.com,
 bjorn.andersson@linaro.org, catalin.marinas@arm.com,
 devicetree@vger.kernel.org, dinguyen@kernel.org, enric.balletbo@collabora.com,
 festevam@gmail.com, horms+renesas@verge.net.au, jagan@amarulasolutions.com,
 kernel@pengutronix.de, l.stach@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 mturquette@baylibre.com, olof@lixom.net, ping.bai@nxp.com, robh+dt@kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org, will.deacon@arm.com
Subject: Re: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 09:25:43 -0700
Message-Id: <20190606162543.EFFB820645@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_092544_941605_2B773C81 
X-CRM114-Status: UNSURE (   6.33  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Quoting Anson.Huang@nxp.com (2019-06-03 18:59:27)
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> This patch adds i.MX8MN clock driver support.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
>         - use platform driver model for this clock driver;

Can you also use platform device APIs like platform_*(),
devm_ioremap_resource() and devmified clk registration?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
