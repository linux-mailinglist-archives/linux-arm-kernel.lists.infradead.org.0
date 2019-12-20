Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB422127890
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfpMHPDsH0llzs4dhwmdzSYvk+4skCQBhpVBvFRltNA=; b=Eg7IxOD2p8903h
	owPdIbQB5o3zQiAOg0+MHb9AgJBo8QLhWvg1kT91+QZCb059Z8CkbihHlG5Zi+9+DlF4kw2Kwu4Mr
	XxHQy624yqqFi8j8JZvbq40uR8DV/eGpyrWFWr4L8WmRvohH+X51lGnDTmzP5Y8gG0u/rZqd0CJtF
	HkicNsIwlgTHTsxEayK+zYbuuBs5F5xYEuDfi1PwieYRj55Xkw56pwvdee2kTsScIvUM1eA5SU17m
	TGxmSo33V5E0z2aFAvcllWAWu9gvr3b6GDmoFog2s5OSGYnn/+LexSE0UvcKTr9zZrs+fshu7dGnA
	2JhsfZEHa8An6Ez4KI1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiF08-0000un-G3; Fri, 20 Dec 2019 09:55:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiEzs-0000in-4I
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:55:01 +0000
Received: from localhost (unknown [106.201.107.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97E35206EC;
 Fri, 20 Dec 2019 09:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576835699;
 bh=ZvFZkSWKpFjRd2JXVMxEnSX/W0KkXIR4qevF9Q/DSjA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dGZ3PO/0HmLtt2laAvR9GI41mPKMF8qQXO3Bh25YGGwsdIG9D7V2w6UQ7cn7e9kMF
 o6E6mRXPYtow/dMGdGptgtUr3ZEcITFVOqfUj7RRH1R0xqhF2dOkLc3Kp/+PrkA05w
 pWkvuE+7hMV5IovIWAPjxsg+B3KzLR55tiAqM8e4=
Date: Fri, 20 Dec 2019 15:24:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v7 06/12] dmaengine: ti: Add cppi5 header for K3 NAVSS/UDMA
Message-ID: <20191220095455.GM2536@vkoul-mobl>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-7-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209094332.4047-7-peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_015500_194143_740F7038 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-12-19, 11:43, Peter Ujfalusi wrote:

> +#define CPPI5_INFO2_DESC_RETPUSHPOLICY		BIT(16)
> +#define CPPI5_INFO2_DESC_RETP_MASK		GENMASK(18, 16)
> +
> +#define CPPI5_INFO2_DESC_RETQ_SHIFT		(0)
> +#define CPPI5_INFO2_DESC_RETQ_MASK		GENMASK(15, 0)
> +
> +#define CPPI5_INFO3_DESC_SRCTAG_SHIFT		(16U)
> +#define CPPI5_INFO3_DESC_SRCTAG_MASK		GENMASK(31, 16)
> +#define CPPI5_INFO3_DESC_DSTTAG_SHIFT		(0)
> +#define CPPI5_INFO3_DESC_DSTTAG_MASK		GENMASK(15, 0)
> +
> +#define CPPI5_BUFINFO1_HDESC_DATA_LEN_SHIFT	(0)
> +#define CPPI5_BUFINFO1_HDESC_DATA_LEN_MASK	GENMASK(27, 0)
> +
> +#define CPPI5_OBUFINFO0_HDESC_BUF_LEN_SHIFT	(0)
> +#define CPPI5_OBUFINFO0_HDESC_BUF_LEN_MASK	GENMASK(27, 0)

I think you can remove the SHIFT defines and use ffs() to get the bit
position for shift

> +static inline u32 cppi5_hdesc_calc_size(bool epib, u32 psdata_size,
> +					u32 sw_data_size)
> +{
> +	u32 desc_size;
> +
> +	if (psdata_size > CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE)
> +		return 0;
> +
> +	desc_size = sizeof(struct cppi5_host_desc_t) + psdata_size +
> +		    sw_data_size;

I think there was an API for this kind of mem allocation of struct and
buffer attached...

> +static inline void cppi5_hdesc_reset_hbdesc(struct cppi5_host_desc_t *desc)
> +{
> +	desc->hdr = (struct cppi5_desc_hdr_t) { 0 };
> +	desc->next_desc = 0;

would this not be superfluous? Or if you want a memset call?

> +static inline u32 *cppi5_hdesc_get_psdata32(struct cppi5_host_desc_t *desc)
> +{
> +	return (u32 *)cppi5_hdesc_get_psdata(desc);

you dont need casts away from void *

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
