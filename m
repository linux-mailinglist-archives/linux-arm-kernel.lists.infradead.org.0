Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306EB13853F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 07:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bB5N+WRIYTtqqSVYRrJTOBmec7Hfl/X7cEF014NXfNM=; b=f90DEORzuD7IyM
	4S93vFT6OQJPcsuey2DlCQpj2sU69WuhCJj0LAdjkeWSBknxzbH9ob9cT1c0ZWN2cDdFHNWuZk0PQ
	ZcBlVBD32MDwjQPrU0FrvPWBvbgxKWqqrY34iqrcF7NtuvQB7uE+pA7Sa/BugiGCymutPUMlQbfmf
	J6DyWDu2QOHAFA4Xkp6Fx2V8V33D180gx8+Idc8HTC5FWBwvv7GcjWoSUNLSFlG9A0x5ar9g4B/9h
	OKdYM9SlT0rNereXXEGFD9xPFZe5Ki/dR7+SbEX/0k75SJAWs6KbF+VMPk4uTdhOF04r4vKyqnIPq
	kIkoKke6QJux5eeH2qew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqWR6-00081w-26; Sun, 12 Jan 2020 06:09:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqWR2-00081M-2b
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 06:09:17 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E69D72084D;
 Sun, 12 Jan 2020 06:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578809354;
 bh=Heu80LHCoPJcbS3RqgvNvmIR7Uh41kQ9EeMPtb6yrP0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JcubbLrL47hwtFgDulYq855+Bm5soO0vJ1tGx8/eBpAN5zNtpMbB0xuwVlFsCGSjw
 rnoj1JK4nZTheXAJ+O95le9bNr3zkuGNHvBL5C8fo5MBaJ0Hgsp8FiuG0BdB/1PJfl
 bTWeV151u59oNBiRdXhy2ke3SSdwRSTm+SWBest4=
Date: Sun, 12 Jan 2020 14:09:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 1/4] clk: imx: gate4: Switch imx_clk_gate4_flags() to
 clk_hw based API
Message-ID: <20200112060859.GA27570@T480>
References: <1578448417-17760-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578448417-17760-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_220916_142243_63490DCA 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, peng.fan@nxp.com, ping.bai@nxp.com,
 catalin.marinas@arm.com, mturquette@baylibre.com, nsekhar@ti.com,
 bjorn.andersson@linaro.org, leonard.crestez@nxp.com, will@kernel.org,
 linux-clk@vger.kernel.org, sfr@canb.auug.org.au, abel.vesa@nxp.com,
 festevam@gmail.com, yuehaibing@huawei.com, marcin.juszkiewicz@linaro.org,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 robh+dt@kernel.org, maxime@cerno.tech, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, sboyd@kernel.org, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, dinguyen@kernel.org, kernel@pengutronix.de, olof@lixom.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 09:53:34AM +0800, Anson Huang wrote:
> Switch the imx_clk_gate4_flags() function to clk_hw based API, rename
> accordingly and add a macro for clk based legacy. This allows us to
> move closer to a clear split between consumer and provider clk APIs.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
