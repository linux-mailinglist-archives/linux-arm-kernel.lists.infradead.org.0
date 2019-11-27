Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7777610B46A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 18:27:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKOAJs8D1fAqctkvEXMqLI6zgh0Uk3B+rfGDgrfw3PI=; b=NWjHN9vS3S39El
	EUwCrV/MA/gcDV1lCG0y1hC6QvdEBC5MEWhebD3d5tPKvojMFyeuQw1sp3nIF5ZKKsQ7yuHEt4G0H
	w9Jy+cygpojfGPmBb5g5SK8CCoe/1fDnCLYgklnBMCl+xQUTKNm4R0S8gu1JNPFOnloBStrI/mPMM
	UYWzoYD+BgkRDp8T4MG0R6aNNMFOSq1DtXD3UjCa2fvTLaP8Sz/4ySgRs230CdM1qPnlhFILspNmn
	oabLcAI0JqLnJyHRHGPTEivNKjFB1mWS63C/R0Xc5Urs20+mDBpSKlE6pssy7dTM8+glqHRVMHMYU
	4wBDpbAbS5KwM+UZm+oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia16P-0002sh-O9; Wed, 27 Nov 2019 17:27:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia16G-0002s5-FF
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 17:27:37 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0690E20684;
 Wed, 27 Nov 2019 17:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574875655;
 bh=ByMqMjORvr1UlWAYYDkMyxfvBy+o3EuQgE3OMZXqSEQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2AIH2IH/uPxLpJz3SDjwC/o0aCYNhuQfHG5cvFiEgalqTLyWXggWEwYIgLXxB+9BM
 A2TIRW1oN8Rag6Xq/2OVFN4vMk/Vuq6zj3BU94NY+NccQpJWbVrb1oza+Q3zTSb7p7
 vgOfKS83SpKTZ10fMN6mdV2l5TZjWsOZL2etF+3Q=
Date: Wed, 27 Nov 2019 18:27:31 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v6 1/7] thermal: sun8i: add thermal driver for
 H6/H5/H3/A64/A83T/R40
Message-ID: <20191127172731.mwmo3zctn7pi6mmp@gilmour.lan>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-2-anarsoul@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127052935.1719897-2-anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_092736_542224_2E689975 
X-CRM114-Status: GOOD (  11.36  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for sending a new version of this!

On Tue, Nov 26, 2019 at 09:29:29PM -0800, Vasily Khoruzhick wrote:
> From: Yangtao Li <tiny.windzz@gmail.com>
>
> This patch adds the support for allwinner thermal sensor, within
> allwinner SoC. It will register sensors for thermal framework
> and use device tree to bind cooling device.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
