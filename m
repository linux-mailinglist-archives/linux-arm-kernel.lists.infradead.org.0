Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6548A229FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 04:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLzAtAOdXLkMuk1+usjNXSTE96BfPOBUIgF3idAok2o=; b=I1cXsWuv6pkxPJ
	fi/xaBUBzS9DhzIwwOqmCIwhdCH1HuamHCMwv2wu9b90EOidb0HXbMy0YCoLXKu2VkjcqLtJpQAQh
	LfF/iVm2NpXLhri/6kwIPqj1aDrSVuWjOwwCzXFF99G8pWTP6QEbzI6TDbiggjsratN1GpJRfnAXL
	CboGTd2NSmIKp5JuvYXN6uatDf1kdhqnGUD+bA/tRIWjA08BplOz19adSD0F+hUhoVxOfNtiaBFHu
	HZQT9uCWRzg4kzi3SFWNn/jOO6bHPMx+453qX+UK2LyhpGMTlsC+xIrCUTHEOYj6wslFQFeQv1BWC
	LZFFP1v+ax7u6LITmF2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSY84-0005LO-AS; Mon, 20 May 2019 02:34:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSY7w-0005L0-HY
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 02:34:13 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA50020675;
 Mon, 20 May 2019 02:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558319651;
 bh=ju+3KOQugsflVCr4eHF7IRJuhvpcf8WSl+CMXgavYLk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jrxS4/h37zf79nS70kW2xHZzvBgXySi9WZikYoXk80RNIoziudZdyfx/IjHE5rdh8
 gPP8eToB0AJRjIWv8lMM11zSIudBpnl+JPymfn5JO0IPs4XYvm4T0bzuiHqnh/cupF
 gzLEMHOGoRvwpzposYs8pRBMqAppE1wBNQy49+Aw=
Date: Mon, 20 May 2019 10:33:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 02/11] ARM: dts: imx7s: Update coresight DT bindings
Message-ID: <20190520023315.GI15856@dragon>
References: <20190508021902.10358-1-leo.yan@linaro.org>
 <20190508021902.10358-3-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508021902.10358-3-leo.yan@linaro.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_193412_599307_E4C8BD08 
X-CRM114-Status: GOOD (  10.03  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 David Brown <david.brown@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Orson Zhai <orsonzhai@gmail.com>, Chris Healy <cphealy@gmail.com>,
 Mike Leach <mike.leach@linaro.org>, devicetree@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Baolin Wang <baolin.wang@linaro.org>, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 10:18:53AM +0800, Leo Yan wrote:
> CoreSight DT bindings have been updated, thus the old compatible strings
> are obsolete and the drivers will report warning if DTS uses these
> obsolete strings.
> 
> This patch switches to the new bindings for CoreSight dynamic funnel and
> static replicator, so can dismiss warning during initialisation.
> 
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
