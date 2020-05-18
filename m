Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0E41D87BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvDA6T4z/ZAVSUdLv9GeXxids59rp6v3KKfqGg3wEmY=; b=rkoEZucm1+bQbV
	7oONiW7xddgBxqOMt6VCLg3PsIxQ+HwzelGeyheq3sVKHFondE7NlR3vluw2G64M4g6rzjczUlD0I
	51LGiB4C/E0nh46QpEvWDRBdN8AyxuAcYEnFqBNSVpGdk8lCPwNyBmBhij0tRpkqpE5TiAVJW3yqn
	L6Asw9s8FcGvbBLCAXIdB6QLM8MP2Hh2AKLSYoJ1rpwrGk8kP4s3hYIdBXTDragSSYPtvA6NQGNMa
	ghwKw9LrfWJl8Dtm/gJSdk0yWUwj+u4SW0MOEywNMXkjgUk8KueIVapQ4CC4XnoDwYWPG67ln7BYj
	Mq/5Cg8JJ0OKDlVKnqMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakz5-0004Vv-MU; Mon, 18 May 2020 18:59:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jakyx-0004VU-DV
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:59:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D75DB101E;
 Mon, 18 May 2020 11:59:20 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A5953F305;
 Mon, 18 May 2020 11:59:20 -0700 (PDT)
Subject: Re: [PATCH] firmware: arm_sdei: Put the SDEI table after using it
To: Hanjun Guo <guohanjun@huawei.com>
References: <1589021566-46373-1-git-send-email-guohanjun@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <946c9fe8-b32c-2926-911c-886169d1f842@arm.com>
Date: Mon, 18 May 2020 19:59:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1589021566-46373-1-git-send-email-guohanjun@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_115923_525976_E394D6EC 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjun,

On 09/05/2020 11:52, Hanjun Guo wrote:
> The acpi_get_table() should be coupled with acpi_put_table() if
> the mapped table is not used for runtime after the initialization
> to release the table mapping, put the SDEI table after using it.

I thought this didn't really matter once ACPI had switched to its global mapping of the
tables...


> diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
> index 334c8be..5c42757 100644
> --- a/drivers/firmware/arm_sdei.c
> +++ b/drivers/firmware/arm_sdei.c
> @@ -1113,6 +1113,7 @@ static bool __init sdei_present_acpi(void)
>  	if (ACPI_FAILURE(status))
>  		return false;
>  
> +	acpi_put_table(sdei_table_header);
>  	pdev = platform_device_register_simple(sdei_driver.driver.name, 0, NULL,
>  					       0);
>  	if (IS_ERR(pdev))
> 


This conflicts with Sudeep's patch that moved all this code. I'll rebase and repost it.


Thanks!

James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
