Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6796109FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 17:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXUj9f+KqdBnuqIyJWCpr62FQtbnuntEvj2jHb45nzw=; b=Hyfw3bI0bf8chq
	xzKoZvxFC4HB/NC7vtmh9BBRdUQa4LlDF4BaW6Azoe2i9NJwPYfCdZvSf/3m5L+6M18j3yU4esMXP
	1tyTQNY3oQndYAvCU7uK5MLh6dbRUzddJtiA6Z5TkTylRD7xboHHb1QM0ktY1Ak6NJtF6N84uiose
	lErweOfQ1Uc9WIb2rQLJKItAXhKzeZzoSIGCZ+AD017mJlm9ArXiTTOUAVZU/mJK6biy3b/FxLyew
	GMGf+oqIT6Gx7eiDt6NTLYFBIRfMWqcpNvMffwiFnvX5/JnvdLu/XsxsE0WkqN4uWtEKT2xrUpfGd
	NkjDa58Jk1DmqVN0zw6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLr6K-0001MT-2U; Wed, 01 May 2019 15:24:52 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLr6D-0001M7-C0
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 15:24:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47FAFA78;
 Wed,  1 May 2019 08:24:44 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED31A3F719;
 Wed,  1 May 2019 08:24:41 -0700 (PDT)
Date: Wed, 1 May 2019 16:24:37 +0100
From: Will Deacon <will.deacon@arm.com>
To: Frank Li <frank.li@nxp.com>
Subject: Re: [PATCH V11 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Message-ID: <20190501152437.GA28109@fuggles.cambridge.arm.com>
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
 <1556724043-3961-2-git-send-email-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556724043-3961-2-git-send-email-Frank.Li@nxp.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_082445_417607_0449B8BC 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 03:21:00PM +0000, Frank Li wrote:
> +static int ddr_perf_probe(struct platform_device *pdev)
> +{
> +	struct ddr_pmu *pmu;
> +	struct device_node *np;
> +	void __iomem *base;
> +	char *name;
> +	int num;
> +	int ret;
> +	int irq;
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	np = pdev->dev.of_node;
> +
> +	pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> +	if (!pmu)
> +		return -ENOMEM;
> +
> +	num = ddr_perf_init(pmu, base, &pdev->dev);
> +
> +	platform_set_drvdata(pdev, pmu);
> +
> +	name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "imx_ddr%d", num);

Still not happy with this.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
