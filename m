Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591D7187DDF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qczU+JZtyhNTyIq4xFXCphhXYzd7WP7I8R3PV8ex25o=; b=POlBJ7+98FNiWM
	3Y3eKV8ashztXKpuvn0tVZ74o3skBBwXkE2EYyTSxlG9wUnlrXgKdxeCuoSHajPRsOFGqHr+2poFd
	szhazcGVqV769ADGytKNfzXy7z+OB3jT/D9NYco7YosB+7q51/fqpBN2PF7iWrcQI9i/SC8q7a7FI
	19Uv2Zxe21MQfH1nu2hh3wdnWIkLVYiXWcbZE2O/kltas7eoJa8Vu03uaVUZi/MwHDZAp5BU9o83z
	rH8XHn5FBcuIveni4+TPkhfNhCVVyvlTjEazQvRP8csEJZhUisfaWpfNoBgSlF4j+NmV013GSVDs5
	iLAmBY3p7vcqSETVapag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9Cw-00018j-0j; Tue, 17 Mar 2020 10:12:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9Cn-00017a-3j
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:12:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 730D41FB;
 Tue, 17 Mar 2020 03:12:10 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC2223F52E;
 Tue, 17 Mar 2020 03:12:09 -0700 (PDT)
Date: Tue, 17 Mar 2020 10:12:07 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Takashi Iwai <tiwai@suse.de>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] perf: arm-ccn: Use scnprintf() for avoiding potential
 buffer overflow
Message-ID: <20200317101207.GB8831@lakrids.cambridge.arm.com>
References: <20200315093715.8715-1-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200315093715.8715-1-tiwai@suse.de>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_031213_244620_761CA017 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 15, 2020 at 10:37:15AM +0100, Takashi Iwai wrote:
> snprintf() is a hard-to-use function, it's especially difficult to use
> it for concatenating substrings in a buffer with a limited size.
> Since snprintf() returns the would-be-output size, not the actual
> size, the subsequent use of snprintf() may point to the incorrect
> position easily.  Although the current code doesn't actually overflow
> the buffer, it's an incorrect usage.
> 
> This patch replaces such snprintf() calls with a safer version,
> scnprintf().

Thanks for clarifying the commit message. For completeness I think we
should drop the final part of the commit title and say:

	perf: arm-ccn: use scnprintf() for robustness

... or something like that.

FWIW, either way:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Will, I assume you'll pick this up, if you're happy with that.

Thanks,
Mark.

> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Takashi Iwai <tiwai@suse.de>
> ---
> v1->v2: Rephrasing the patch description.
>         Replace the starting snprintf(), too
> 
>  drivers/perf/arm-ccn.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/perf/arm-ccn.c b/drivers/perf/arm-ccn.c
> index fea354d6fb29..d50edef91f59 100644
> --- a/drivers/perf/arm-ccn.c
> +++ b/drivers/perf/arm-ccn.c
> @@ -328,15 +328,15 @@ static ssize_t arm_ccn_pmu_event_show(struct device *dev,
>  			struct arm_ccn_pmu_event, attr);
>  	ssize_t res;
>  
> -	res = snprintf(buf, PAGE_SIZE, "type=0x%x", event->type);
> +	res = scnprintf(buf, PAGE_SIZE, "type=0x%x", event->type);
>  	if (event->event)
> -		res += snprintf(buf + res, PAGE_SIZE - res, ",event=0x%x",
> +		res += scnprintf(buf + res, PAGE_SIZE - res, ",event=0x%x",
>  				event->event);
>  	if (event->def)
> -		res += snprintf(buf + res, PAGE_SIZE - res, ",%s",
> +		res += scnprintf(buf + res, PAGE_SIZE - res, ",%s",
>  				event->def);
>  	if (event->mask)
> -		res += snprintf(buf + res, PAGE_SIZE - res, ",mask=0x%x",
> +		res += scnprintf(buf + res, PAGE_SIZE - res, ",mask=0x%x",
>  				event->mask);
>  
>  	/* Arguments required by an event */
> @@ -344,25 +344,25 @@ static ssize_t arm_ccn_pmu_event_show(struct device *dev,
>  	case CCN_TYPE_CYCLES:
>  		break;
>  	case CCN_TYPE_XP:
> -		res += snprintf(buf + res, PAGE_SIZE - res,
> +		res += scnprintf(buf + res, PAGE_SIZE - res,
>  				",xp=?,vc=?");
>  		if (event->event == CCN_EVENT_WATCHPOINT)
> -			res += snprintf(buf + res, PAGE_SIZE - res,
> +			res += scnprintf(buf + res, PAGE_SIZE - res,
>  					",port=?,dir=?,cmp_l=?,cmp_h=?,mask=?");
>  		else
> -			res += snprintf(buf + res, PAGE_SIZE - res,
> +			res += scnprintf(buf + res, PAGE_SIZE - res,
>  					",bus=?");
>  
>  		break;
>  	case CCN_TYPE_MN:
> -		res += snprintf(buf + res, PAGE_SIZE - res, ",node=%d", ccn->mn_id);
> +		res += scnprintf(buf + res, PAGE_SIZE - res, ",node=%d", ccn->mn_id);
>  		break;
>  	default:
> -		res += snprintf(buf + res, PAGE_SIZE - res, ",node=?");
> +		res += scnprintf(buf + res, PAGE_SIZE - res, ",node=?");
>  		break;
>  	}
>  
> -	res += snprintf(buf + res, PAGE_SIZE - res, "\n");
> +	res += scnprintf(buf + res, PAGE_SIZE - res, "\n");
>  
>  	return res;
>  }
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
