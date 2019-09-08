Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 151F9ACF4F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 16:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxVe0mkjwiSQq8QOJ6pLAFqWd5xZ/WMN9LafHqwhtoE=; b=EjTAG94ECxr/RX
	wuFOXhnqFbXaq5RgMxxQEDFJPg0zzIKSXfx4DB42S7Z6/yXG5606f3s1aTby37EZLiwot9MQ/bjsP
	FQyyM838lYIE/krFBuX1Ce2QJ1E6gy0ElsqUyiAl2mvL051wx0qnBQ2qEj1evg8lppulD5qJp0e0u
	0ra4H6+tE3rOmUB9AO53Hg+q9c6NcOCFm4Xwlw0vGQDszFxSX/l16gDif01EtIfzEfnN2FNx5GFym
	T7VGlEXJoOmFdbWw7u7Fv+k2vjGSWLntD007o+iVkIUyPatVqWhNm/R2gumEqBnGoxsFtbq5DCX05
	SMkfsi9JA2wbO+NtbaXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6y9V-0004MC-86; Sun, 08 Sep 2019 14:26:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6y9N-0004Lh-JW
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 14:26:46 +0000
Received: from localhost (unknown [122.182.221.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 334872082C;
 Sun,  8 Sep 2019 14:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567952805;
 bh=5OC7Bh5uXfbtr4JcrcU69cVhYn1EgLlh/jbSfCSkHnE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DupPeUreh77vAnNFkRHcvZkC5JEoXcFKq61YC4s2Sz1Xk2CDD3ymTVWmey73R7Iry
 j38HOr3x1SWw/XhxnU24p4fio+G3bqtEUX6juOJIXpWL0EHNI2mGqM5MNI5JXamb11
 +ihuCLC9yGbSxoa98lha+itpNuTROB8kw0w2KKk8=
Date: Sun, 8 Sep 2019 19:55:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v2 06/14] dmaengine: ti: Add cppi5 header for UDMA
Message-ID: <20190908142528.GP2672@vkoul-mobl>
References: <20190730093450.12664-1-peter.ujfalusi@ti.com>
 <20190730093450.12664-7-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730093450.12664-7-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_072645_667327_5BD63E5C 
X-CRM114-Status: UNSURE (   9.82  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30-07-19, 12:34, Peter Ujfalusi wrote:

> +/**
> + * Descriptor header, present in all types of descriptors
> + */
> +struct cppi5_desc_hdr_t {
> +	u32 pkt_info0;	/* Packet info word 0 (n/a in Buffer desc) */
> +	u32 pkt_info1;	/* Packet info word 1 (n/a in Buffer desc) */
> +	u32 pkt_info2;	/* Packet info word 2 Buffer reclamation info */
> +	u32 src_dst_tag; /* Packet info word 3 (n/a in Buffer desc) */

Can we move these comments to kernel-doc style please

> +/**
> + * cppi5_desc_get_type - get descriptor type
> + * @desc_hdr: packet descriptor/TR header
> + *
> + * Returns descriptor type:
> + * CPPI5_INFO0_DESC_TYPE_VAL_HOST
> + * CPPI5_INFO0_DESC_TYPE_VAL_MONO
> + * CPPI5_INFO0_DESC_TYPE_VAL_TR
> + */
> +static inline u32 cppi5_desc_get_type(struct cppi5_desc_hdr_t *desc_hdr)
> +{
> +	WARN_ON(!desc_hdr);

why WARN_ON and not return error!

> +/**
> + * cppi5_hdesc_calc_size - Calculate Host Packet Descriptor size
> + * @epib: is EPIB present
> + * @psdata_size: PSDATA size
> + * @sw_data_size: SWDATA size
> + *
> + * Returns required Host Packet Descriptor size
> + * 0 - if PSDATA > CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE
> + */
> +static inline u32 cppi5_hdesc_calc_size(bool epib, u32 psdata_size,
> +					u32 sw_data_size)
> +{
> +	u32 desc_size;
> +
> +	if (psdata_size > CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE)
> +		return 0;
> +	//TODO_GS: align

:)

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
