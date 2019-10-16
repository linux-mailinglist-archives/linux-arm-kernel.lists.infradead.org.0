Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C31D8F0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sH+IsHyMsD8E+0xNvZtoJTVh6wJvKrI333LLOYSz3dY=; b=Bu4Zelj1GJh6y4
	cM/WLsWLtth3CFMWpVccblK8oArd0zMSs2Ti4lPfgjgc2oGFD9Ei9h4J+qx5TiEJrujkECWGOwUUl
	mG2wnWwasIg2EwSH7CkROQBTdGWzEoX1OKABC3GwyqVJWu+E4Gh38hRezksJBHtV7dYaGPmTyJbkv
	5zFFjajyh/9Xz5vp1SoTWKzSrFGFX217w++d8vPuh/yvkNfwUqQf622nwFn9YArH3Isad0hOa0Mqz
	qRzow7lrJO6lqvkcyvCwrQRceBq82h1jhtqKpy3QsnrlZRNwIW0uqy2baq5rRpw9qFZSqF7Q7cDPL
	zGWc4djuHzvgS9EgbDzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKhEx-0007yZ-FE; Wed, 16 Oct 2019 11:13:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKhEg-0007t2-QC
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 11:13:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 432C328;
 Wed, 16 Oct 2019 04:12:55 -0700 (PDT)
Received: from stinger.cambridge.arm.com (stinger.cambridge.arm.com
 [10.1.137.189])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60A183F6C4;
 Wed, 16 Oct 2019 04:12:54 -0700 (PDT)
Message-ID: <23034ba3a6abfdf89d9ac6a7d623d9e05b929a5a.camel@arm.com>
Subject: Re: [PATCHv2 1/2] bus: arm-ccn: Enable stats for CCN-512 interconnect
From: Pawel Moll <pawel.moll@arm.com>
To: Marek Bykowski <marek.bykowski@gmail.com>, 
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Date: Wed, 16 Oct 2019 12:12:52 +0100
In-Reply-To: <20191016110612.17381ad6@gmail.com>
References: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
 <20191016110612.17381ad6@gmail.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_041258_955851_A9CB9E88 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-10-16 at 10:06 +0100, Marek Bykowski wrote:
> Add compatible string for the ARM CCN-502 interconnect
> 
> Signed-off-by: Marek Bykowski <marek.bykowski@gmail.com>
> Signed-off-by: Boleslaw Malecki <boleslaw.malecki@tieto.com>
> ---
> Changelog v1->v2:
> - Change the subject to reflect where the driver got moved to (drivers/perf) from
>   (drivers/bus).
> - Add credit to my work mate that helped me validate the counts from
>   the interconnect.
> ---
>  drivers/perf/arm-ccn.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/perf/arm-ccn.c b/drivers/perf/arm-ccn.c
> index 7dd850e02f19..b6e00f35a448 100644
> --- a/drivers/perf/arm-ccn.c
> +++ b/drivers/perf/arm-ccn.c
> @@ -1545,6 +1545,7 @@ static int arm_ccn_remove(struct platform_device *pdev)
>  static const struct of_device_id arm_ccn_match[] = {
>         { .compatible = "arm,ccn-502", },
>         { .compatible = "arm,ccn-504", },
> +       { .compatible = "arm,ccn-512", },
>         {},
>  };
>  MODULE_DEVICE_TABLE(of, arm_ccn_match);

Acked-by: Pawel Moll <pawel.moll@arm.com>

Thanks!

Pawel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
