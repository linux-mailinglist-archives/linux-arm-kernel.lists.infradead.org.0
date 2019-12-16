Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A9C1203B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTACstvekBy2OdPxN17cFM599Yk9Tk5EH2VGCLAARxI=; b=uTmnyuNIlPAAlx
	++zi5aDKNkDAcx8mGXddaGHlqUQDPL2L2j7LvmT5kf6Zku+ShFAsOSy/fDDJAkKL3OOINk8RKFna8
	iv0dXErXmp9TzwSD/uZ4zLSqLBedy1HuDXBdOiidVFQ4UDVL9PeTslTv6t58oi2F4tYo4AQFkVV36
	yzqZ2r93F5wacjQXzNif3jMFQtjDojuwpcM2LltILeC8BdnPz9oYVSo2SMnPAH1LyO+tYnKQMxVOI
	kaSXuYt2G879yaX9ulZIFfhPocho/O+HAQtUuxP7A+vm6tEyzgBi4zN94N0mvh/5pGw/oStmRX5a8
	PkW/9LonhcCNBcp+KgLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoS0-0006go-8M; Mon, 16 Dec 2019 11:22:08 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoR4-00062B-CE
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:21:12 +0000
Received: from 79.184.253.1.ipv4.supernova.orange.pl (79.184.253.1) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.320)
 id e45c4e508fae84d8; Mon, 16 Dec 2019 12:21:07 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 1/2] cpuidle: kirkwood: convert to
 devm_platform_ioremap_resource
Date: Mon, 16 Dec 2019 12:21:07 +0100
Message-ID: <6350875.0eM1BVzdex@kreacher>
In-Reply-To: <20191215130206.30265-2-tiny.windzz@gmail.com>
References: <20191215130206.30265-1-tiny.windzz@gmail.com>
 <20191215130206.30265-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_032110_621125_C8AC6AE2 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, daniel.lezcano@linaro.org,
 linux-arm-kernel@lists.infradead.org, shc_work@mail.ru,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sunday, December 15, 2019 2:02:06 PM CET Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/cpuidle/cpuidle-kirkwood.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/cpuidle/cpuidle-kirkwood.c b/drivers/cpuidle/cpuidle-kirkwood.c
> index d23d8f468c12..511c4f46027a 100644
> --- a/drivers/cpuidle/cpuidle-kirkwood.c
> +++ b/drivers/cpuidle/cpuidle-kirkwood.c
> @@ -55,10 +55,7 @@ static struct cpuidle_driver kirkwood_idle_driver = {
>  /* Initialize CPU idle by registering the idle states */
>  static int kirkwood_cpuidle_probe(struct platform_device *pdev)
>  {
> -	struct resource *res;
> -
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	ddr_operation_base = devm_ioremap_resource(&pdev->dev, res);
> +	ddr_operation_base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(ddr_operation_base))
>  		return PTR_ERR(ddr_operation_base);
>  
> 

Daniel, any concerns here?




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
