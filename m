Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF70070C58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 00:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GP7XRShPF128EeNKi2j6Rxtg7vrRf5PM6lw+ePmp72E=; b=EDXCPGFhXQ8lNA
	W0yMTPHiGTrPS6fjDMSdj0mYEXYYSVA4musi5EqnGu1SuAqvn5eb2Ku8pbXfbBOTWj6gttd/XrGkL
	BzJI2TuWCJ1x2KTXd6p9Ou04nanvjYxap/VXBQxkdOpz1KbWkxDhB60O89SgbbAktNdmDmi/hHlqC
	e3AA0sUzAElBlGT49soTpBCwVdy1Ug9kSv9nt7sFxXGBLEnCNz1YAYVsimf8xpBnAg1rJePJxUbjq
	lkQjUmtD/8SMhZKnJKUhRTwFBDtpVCuF19pthDJVYQ2D1BqVgNmexX2Fsrf1eBdsjQDkSfU4elxNG
	LP6zZ1TK/Hq0FpBj1t5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgTI-0003R8-TR; Mon, 22 Jul 2019 22:07:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgSE-0003AL-DX
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 22:06:47 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C51BC219BE;
 Mon, 22 Jul 2019 22:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563833205;
 bh=ct5XMG5jd8SEOqNhHTmwrTDKIvFXpl4CC8wJlVMQuow=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=fKJ9hUVSZGiz0iODpcVGiw9VIVgyz32eLhKWS1N6bvVUOlzFe/rwEXimamHEaj+oa
 QcADkjMe1jckx3IojJzEvbO8DlBeeGNb52J/HWfS85IDmIHL2wDiILqtx/Ue8xGDmg
 +on2k8vM9n7KJOkBKk2nm7d2iEVtLyUL6I0NnylQ=
MIME-Version: 1.0
In-Reply-To: <1563157783-31846-1-git-send-email-peng.fan@nxp.com>
References: <1563157783-31846-1-git-send-email-peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx: imx8mm: fix audio pll setting
To: "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 15:06:44 -0700
Message-Id: <20190722220645.C51BC219BE@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_150646_629349_F9B69E21 
X-CRM114-Status: UNSURE (   8.23  )
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Peng Fan (2019-07-14 19:55:43)
> From: Peng Fan <peng.fan@nxp.com>
> 
> The AUDIO PLL max support 650M, so the original clk settings violate
> spec. This patch makes the output 786432000 -> 393216000,
> and 722534400 -> 361267200 to aligned with NXP vendor kernel without any
> impact on audio functionality and go within 650MHz PLL limit.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Is this a problem right now, i.e. should I apply this to clk-fixes? Or
can this wait until next merge window?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
