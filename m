Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4692615F505
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:33:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dct+C9Po+Ys65TN2zJ5efiuVJnHkUoLnPhTqF0uu4QU=; b=taFxf6gihAxaWK
	iWEdxnSFAc6oMbMLA6HO+UdYKLzJG2rEbYhXl3/Ntr1CQWt9lwkXoFfmxf+pOlRNAYEc0ZTk4ejZ7
	+06ht0FTX/+K4hFyInbMh1mr/FUbXdPP9iVJv3Jq8JVo81r0N3NjBN8qItBQjlPUENTH2VGtsxPiF
	UhcaOxvlCzVS4Bwjx3AXU7TYs2D8+85bAgqHcXtQF2c306SlEYn+GB3BW0A9JS5rkweDQ6ZS0T3IV
	f4kg1n58s7tmLFhzVtPweZXVnQuEOI5vewGUovB+rVZTdcAFSVIeMEWxMEsll0Sp0gYz5HS0ple9j
	SzaKRGM4w2j/DxNeqfSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2fmE-0002qA-9e; Fri, 14 Feb 2020 18:33:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2fls-0002ZN-3d
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 18:33:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D83D101E;
 Fri, 14 Feb 2020 10:32:59 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D9BB3F68E;
 Fri, 14 Feb 2020 10:32:58 -0800 (PST)
From: James Morse <james.morse@arm.com>
Subject: Re: [V2 2/3] firmware: arm_sdei: Removed multiple white lines.
To: luanshi <zhangliguang@linux.alibaba.com>
References: <1579145331-78633-1-git-send-email-zhangliguang@linux.alibaba.com>
 <1579145331-78633-2-git-send-email-zhangliguang@linux.alibaba.com>
Message-ID: <bebb759e-ff1f-e11e-be6f-589c96a338c0@arm.com>
Date: Fri, 14 Feb 2020 18:32:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1579145331-78633-2-git-send-email-zhangliguang@linux.alibaba.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_103300_224047_C845A7F3 
X-CRM114-Status: GOOD (  14.53  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luanshi,

On 16/01/2020 03:28, luanshi wrote:
> Remove one unnecessary white line.
> 
> Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
> ---
>  drivers/firmware/arm_sdei.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
> index 37e9bf0..f81c09e 100644
> --- a/drivers/firmware/arm_sdei.c
> +++ b/drivers/firmware/arm_sdei.c
> @@ -599,7 +599,6 @@ static int _sdei_event_register(struct sdei_event *event)
>  					       event->registered,
>  					       SDEI_EVENT_REGISTER_RM_ANY, 0);
>  
> -
>  	err = sdei_do_cross_call(_local_event_register, event);
>  	if (err) {
>  		spin_lock(&event->sdei_event_lock);

I'm afraid these whitespace-only patches aren't worth sending. If its not caught at
review, it gets to annoy the reader until someone can do a drive-by fix when they are
changing adjacent code.

I've merged this with the first patch in the eventual series.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
