Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD8C1CC09B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 13:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ocU5dZ5aV55eQIK1k8YftaB+4/b8SYSr81+kazfl/Q=; b=P4LiksOg8Yav9t
	dLM9c8TsIppvzf5w+jZNqjHeS7d395f7rnaBIvVC6FZK0OsvKWrlHdVhTmg4zdXFsomxxfzkt20xF
	IVEY5FklKf0NHr8k8FtMnAK7M6tW/vI8Bn9rp5FRmOv62Y0dMDDTUd9K5PrJbdpdzsoDVfNkgMj9K
	mjBBS4DKWOSzup6oOo4A4xgY2sZY3HGSYwiAmYRnSID/g3ck05oZozY9XHe3GaHRubm/x0rti1VLb
	+z7ZP+4K861Z2ZahPk66F8zbguB2nFlhfNxKMcz6Me6GpNBpJthRQgA57ynP6gresSYawga06xXa1
	VF255EI3XOUXrXF2fulA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXNKh-0002ed-Q1; Sat, 09 May 2020 11:07:51 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXNKb-0002e2-0V
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 11:07:46 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7E79D43D6C2C56BBBD76;
 Sat,  9 May 2020 19:07:38 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.154) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0;
 Sat, 9 May 2020 19:07:35 +0800
Subject: Re: [PATCH -next] soc: fsl: dpio: remove set but not used variable
 'addr_cena'
To: <Roy.Pledge@nxp.com>, <leoyang.li@nxp.com>, <youri.querry_1@nxp.com>
References: <20200508141028.38124-1-yuehaibing@huawei.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <bd4e87d7-3dc3-bef2-6eba-6599087604f1@huawei.com>
Date: Sat, 9 May 2020 19:07:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20200508141028.38124-1-yuehaibing@huawei.com>
X-Originating-IP: [10.166.215.154]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_040745_217969_A4DA0139 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pls ignore this duplicate.

On 2020/5/8 22:10, YueHaibing wrote:
> drivers/soc/fsl/dpio//qbman-portal.c:650:11: warning: variable 'addr_cena' set but not used [-Wunused-but-set-variable]
>   uint64_t addr_cena;
>            ^~~~~~~~~
> 
> It is never used, so remove it.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/soc/fsl/dpio/qbman-portal.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/soc/fsl/dpio/qbman-portal.c b/drivers/soc/fsl/dpio/qbman-portal.c
> index e2e9fbb58a72..0ce859b60888 100644
> --- a/drivers/soc/fsl/dpio/qbman-portal.c
> +++ b/drivers/soc/fsl/dpio/qbman-portal.c
> @@ -647,7 +647,6 @@ int qbman_swp_enqueue_multiple_direct(struct qbman_swp *s,
>  	const uint32_t *cl = (uint32_t *)d;
>  	uint32_t eqcr_ci, eqcr_pi, half_mask, full_mask;
>  	int i, num_enqueued = 0;
> -	uint64_t addr_cena;
>  
>  	spin_lock(&s->access_spinlock);
>  	half_mask = (s->eqcr.pi_ci_mask>>1);
> @@ -700,7 +699,6 @@ int qbman_swp_enqueue_multiple_direct(struct qbman_swp *s,
>  
>  	/* Flush all the cacheline without load/store in between */
>  	eqcr_pi = s->eqcr.pi;
> -	addr_cena = (size_t)s->addr_cena;
>  	for (i = 0; i < num_enqueued; i++)
>  		eqcr_pi++;
>  	s->eqcr.pi = eqcr_pi & full_mask;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
