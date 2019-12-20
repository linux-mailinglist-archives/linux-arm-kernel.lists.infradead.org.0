Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D8D1278A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:58:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YnQHUaCXnIesLN41d1+RAKwmE6QMmYP/hDWIFUlIDQU=; b=XBHPCDJr2QJLOW
	uzDBNu93EkxRvkdHsNHf/Mz3K7GhIcCk6/hcz2da0S4iR2x1Mik4alF5JMsAW8HHjAc+yaX/uwRbs
	6fvuabpax04tgs1TQIFfPYns2cXUTR7Z6wfLpp1u+P2kxSIoRaUqthsj6mqJgF5qNN7MrMAkuK70V
	rkztgczmR5u9OWzXVvnFUgrLbk4ca+ZNk0mcn2B5rUKGDlM3Xcou2CxTsBL1UV5C0IU33Xktsgd9Z
	9KFJEvcjHmkp2COXawPTDwO5Yjiyp3P2XKU/bX8ncoDX0pS2XSUEybbYCryzPwQ3VAz5rngh42TLT
	iAlJRL4UbpfamQbZZPpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiF2w-0002Qz-U0; Fri, 20 Dec 2019 09:58:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiF2l-0002QX-Ss
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:58:01 +0000
Received: from localhost (unknown [106.201.107.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B3375206EC;
 Fri, 20 Dec 2019 09:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576835879;
 bh=GmxrDdeOg4cCheaZlgE6D51yTf+SUe1HRp8l+b4QsCg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sVCj5Lr63v5zXDgurOvuFgpKc3hYSbcFTPJuJVlgenwasTnIGAkZ3oebH8v4nHT6E
 Rb8qynWq1Far66Y2GlG00m1a6kcayL4jf+YdB3deHtKUEetjvQPuSNFAmStdmNWf8m
 mN7j2DGGxHgk8C9xSSb0i/voEWp4ExsVWy7Vg2cE=
Date: Fri, 20 Dec 2019 15:27:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v7 05/12] dmaengine: Add support for reporting DMA cached
 data amount
Message-ID: <20191220095755.GN2536@vkoul-mobl>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-6-peter.ujfalusi@ti.com>
 <20191220083713.GL2536@vkoul-mobl>
 <f28301f7-4624-b4f8-d781-7ebfa4ae7856@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f28301f7-4624-b4f8-d781-7ebfa4ae7856@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_015759_955940_70D79106 
X-CRM114-Status: GOOD (  11.42  )
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

On 20-12-19, 10:49, Peter Ujfalusi wrote:

> >> +static inline void dma_set_in_flight_bytes(struct dma_tx_state *state,
> >> +					   u32 in_flight_bytes)
> >> +{
> >> +	if (state)
> >> +		state->in_flight_bytes = in_flight_bytes;
> >> +}
> > 
> > This would be used by dmaengine drivers right, so lets move it to drivers/dma/dmaengine.h
> > 
> > lets not expose this to users :)
> 
> I have put it where the dma_set_residue() was.
> I can add a patch first to move dma_set_residue() then add

not sure I follow, but dma_set_residue() in already in drivers/dma/dmaengine.h

> dma_set_in_flight_bytes() there as well?

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
