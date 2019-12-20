Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 410FB1277D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:17:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vxby50PHG5dNG85wS1ywmLBkJDJofgNLwrFwpqkn2aA=; b=JcnD5jGUUEjHdF
	zAgOefzbNaTNs2RALbKZT0FQ9WqyUdXUS9C2ZRNVctcvECwUIm7kzr/7Ff8DjAWxyPeWWLiAzRqRT
	I8BHHHrXIaRFRM0jlc+4i1ws3MTlBwtlfJ22IHjU76666nRgiDmJywHmjWjfiOGPArJanEEUlV8yz
	rZCYSLLxBBio+9doIwh/5Xfrvx3+zsHm41jYUoh+pEIjyud3dD587TcbKnAuS9pWiTeB8V5xrjjR+
	UI0NSbyqCAzNpwmWrSwEGZy1CQKPBBHGn9qomjfOOL3ZwjK9VLeuN27/j/ktl+YuCvrx2XsJj/hto
	qLd9Y5rsp5/7DC7QN9TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiEPE-00026W-K5; Fri, 20 Dec 2019 09:17:08 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiEP1-0001zT-6y
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:16:57 +0000
Received: from 79.184.253.1.ipv4.supernova.orange.pl (79.184.253.1) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.320)
 id a47d2c5878ac3e11; Fri, 20 Dec 2019 10:16:47 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 1/2] cpuidle: kirkwood: convert to
 devm_platform_ioremap_resource
Date: Fri, 20 Dec 2019 10:16:47 +0100
Message-ID: <2099787.FWte1BHuKm@kreacher>
In-Reply-To: <20191215130206.30265-2-tiny.windzz@gmail.com>
References: <20191215130206.30265-1-tiny.windzz@gmail.com>
 <20191215130206.30265-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_011655_459480_5FFE66EF 
X-CRM114-Status: GOOD (  11.11  )
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

Applied as 5.6 material, thanks!





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
