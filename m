Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E8E1EB2E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 11:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vzKEJxj4iNYoErgWYBnB1SpJ33XbLDYlGwCGore+HX4=; b=RWFhvlLLIQxzE78TCNU7Thu4u
	tDU+8bIUWLszVrBS3J7WHAeZ7OapU/uK1nsVs0crS3I8di6c0g0aowZLd1sX3rVEKJkqCm5IkxJf9
	KaZiALuzeLc4NYxdA3Js7J6LuEaQS3UXNE/rpgR6Knf2c9KZlJGbmZM78qmknXOlDOyDjNj3QuEiV
	gS9R40NbeqHS+w7p8QRx2QSVE+b+5mjFn2pyMF7j+NqF9KrYMyeoHsUVgJaoxji/hXTOAUobO2oX3
	qjCHri8hygFhD1iGW0CFRnaJm2nOSfClmpHLNCnsCerUWxKJEsqNGwrKvQqHgfn2H+mGuA1T4fE6z
	XDKZSzshQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqTR-00027q-OW; Wed, 15 May 2019 09:45:21 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqTK-00027W-Md
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 09:45:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6972B80D;
 Wed, 15 May 2019 02:45:12 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DEBD53F703;
 Wed, 15 May 2019 02:45:10 -0700 (PDT)
Subject: Re: [PATCH V2 1/6] coresight: etb10: Properly set AUX buffer head in
 snapshot mode
To: mathieu.poirier@linaro.org, linux-arm-kernel@lists.infradead.org
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
 <20190514194018.23420-2-mathieu.poirier@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <657f1851-2a97-4efd-6532-fbcb1c927e88@arm.com>
Date: Wed, 15 May 2019 10:45:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514194018.23420-2-mathieu.poirier@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_024514_747767_20D380F2 
X-CRM114-Status: GOOD (  21.31  )
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
Cc: alexander.shishkin@linux.intel.com, coresight@lists.linaro.org,
 acme@kernel.org, peterz@infradead.org, mingo@redhat.com, leo.yan@linaro.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 14/05/2019 20:40, Mathieu Poirier wrote:
> Unify amongst sink drivers how the AUX ring buffer head is communicated
> to user space.  That way the same algorithm in cs_etm_find_snapshot()

I would leave the userspace tool's function name out of the commit description
and the comment below. We could instead say: "That way the same algorithm can be
used by the userspace tool to determine the position and the size of the latest
snapshot data."

> can be used to determine where the latest data is and how much of it
> to access.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>   drivers/hwtracing/coresight/coresight-etb10.c | 13 +++++++------
>   1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
> index 4ee4c80a4354..60e753b1768d 100644
> --- a/drivers/hwtracing/coresight/coresight-etb10.c
> +++ b/drivers/hwtracing/coresight/coresight-etb10.c
> @@ -548,13 +548,14 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
>   	writel_relaxed(0x0, drvdata->base + ETB_RAM_WRITE_POINTER);
>   
>   	/*
> -	 * In snapshot mode we have to update the handle->head to point
> -	 * to the new location.
> +	 * In snapshot mode we simply increment the head by the number of byte
> +	 * that were written.  User space function  cs_etm_find_snapshot() will
> +	 * figure out how many bytes to get from the AUX buffer based on the
> +	 * position of the head.
>   	 */
> -	if (buf->snapshot) {
> -		handle->head = (cur * PAGE_SIZE) + offset;
> -		to_read = buf->nr_pages << PAGE_SHIFT;
> -	}
> +	if (buf->snapshot)
> +		handle->head += to_read;
> +
>   	__etb_enable_hw(drvdata);
>   	CS_LOCK(drvdata->base);
>   out:

Otherwise:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
