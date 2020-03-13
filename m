Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8991184DED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1spNdDWY/niUwhdf+2dBGe+Uflnb+axgtVXvgzF3fw=; b=eziCaxyxGe4j00
	NLaeKndAIyk4Ihl4j/Tu562z1jKQ6VdyNPfxbN83L5L7E9ndTXcy+Y1e7jfF0PVihujT2SwTmC4mS
	zB+xIaiOuLLCMBzcn7EniNTCkEmqsMwk1igCyfoODHtIBg+gdFELOaxd8jbQB/G9MWK2LHZq6tAiM
	EZd0AUQNTaskqAAh2IZAHkw4ftAE3+JTikbbhE6WoSLd2wEZrOVNsQFq3Iau1V7yDhJbvur0XGVVj
	MamOIIDJ8zbB6gbYEvOAqo7CikOd2fK24eFToWYlebycizElnMtOJL8IHmFEAYekOmfSaJTBYIz25
	RfNwKJ7ULzfXBU0AwzGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCoRF-0004fR-6p; Fri, 13 Mar 2020 17:49:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCoR8-0004f6-E0
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 17:49:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4BADC31B;
 Fri, 13 Mar 2020 10:49:29 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B64713F534;
 Fri, 13 Mar 2020 10:49:28 -0700 (PDT)
Date: Fri, 13 Mar 2020 17:49:23 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH] perf: arm-ccn: Use scnprintf() for avoiding potential
 buffer overflow
Message-ID: <20200313174922.GA54224@lakrids.cambridge.arm.com>
References: <20200311090555.20232-1-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311090555.20232-1-tiwai@suse.de>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_104930_512455_B3FF751C 
X-CRM114-Status: GOOD (  18.32  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 10:05:55AM +0100, Takashi Iwai wrote:
> Since snprintf() returns the would-be-output size instead of the
> actual output size, the succeeding calls may go beyond the given
> buffer limit.  Fix it by replacing with scnprintf().

The buffer limit is PAGE_SIZE bytes here, so I don't think that we can
practically go beyond the buffer limit in this code where we only print
tens of chacters into the buffer. On any system this runs on, PAGE_SIZE
is at least 4096.

I'm happy to make this change as it's generally the right thing to do,
but I do want the commit message to be very clear that this is a
cleanup, and not a fix for a bug in practice.

Can you please either reword the commit message to that effect, or if
this can occur in practice, explain how?

Thanks,
Mark.

> 
> Signed-off-by: Takashi Iwai <tiwai@suse.de>
> ---
>  drivers/perf/arm-ccn.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/perf/arm-ccn.c b/drivers/perf/arm-ccn.c
> index fea354d6fb29..cee579d428e7 100644
> --- a/drivers/perf/arm-ccn.c
> +++ b/drivers/perf/arm-ccn.c
> @@ -330,13 +330,13 @@ static ssize_t arm_ccn_pmu_event_show(struct device *dev,
>  
>  	res = snprintf(buf, PAGE_SIZE, "type=0x%x", event->type);
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
