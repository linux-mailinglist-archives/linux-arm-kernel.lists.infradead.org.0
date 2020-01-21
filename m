Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B10F143C21
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IbySf7+H4iSXfeIwt8SvMkD99t+1d6Dbg2akKc9N6p0=; b=aseWIoUNZJWhSNKYuTeXlzH2+
	C17e5qDAqgeL7uKpkTJYxWyTI9/QomjKte8nsMo7eOLatCAAuUvVXAJLEJ0tx4E9a9ivXpcT5TD3H
	ny87HJJ2qwmDfvmBVi0cPxPQQDVTOw5Q8fy+Tsv7gXn1+1SevZq0pnOmY0nGpf5aLqK+OKBaES9wD
	5VUfxw8yNewqeC9PtZC+3jDTgnFyIgOphCxfx150umrmDLsjQ6w25z51weuE+2sgRfvevli6WbBdE
	HlYvKpYLdQAChQE8fvjGmDIcXDUq52RLkBhAsnLR3YXbo3ruvDnhLsVlqpRxFgoe1QIbTWoy9ICLx
	jIc3FfSXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itrqY-0000wu-Tp; Tue, 21 Jan 2020 11:37:26 +0000
Received: from olimex.com ([2001:470:0:1f2::b869:4820])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrqP-0000w6-Oe
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 11:37:18 +0000
Received: from 94.155.250.134 ([94.155.250.134]) by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 21 Jan 2020 03:37:12 -0800
Subject: Re: [PATCH 1/2] dmaengine: sun4i: Add support for cyclic requests
 with dedicated DMA
To: Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>
References: <20200110141140.28527-1-stefan@olimex.com>
 <20200110141140.28527-2-stefan@olimex.com> <20200115123137.GJ2818@vkoul-mobl>
 <20200115170731.vt6twfhvuwjrbbup@gilmour.lan>
 <20200121083514.GE2841@vkoul-mobl>
From: Stefan Mavrodiev <stefan@olimex.com>
Message-ID: <54b1a38f-3903-49b7-d20b-f97824a528ba@olimex.com>
Date: Tue, 21 Jan 2020 13:37:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200121083514.GE2841@vkoul-mobl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_033717_799054_8679E9A4 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Stefan Mavrodiev <stefan@olimex.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/21/20 10:35 AM, Vinod Koul wrote:
> On 15-01-20, 18:07, Maxime Ripard wrote:
>> On Wed, Jan 15, 2020 at 06:01:37PM +0530, Vinod Koul wrote:
>>> On 10-01-20, 16:11, Stefan Mavrodiev wrote:
>>>> Currently the cyclic transfers can be used only with normal DMAs. They
>>>> can be used by pcm_dmaengine module, which is required for implementing
>>>> sound with sun4i-hdmi encoder. This is so because the controller can
>>>> accept audio only from a dedicated DMA.
>>>>
>>>> This patch enables them, following the existing style for the
>>>> scatter/gather type transfers.
>>> I presume you want this to go with drm tree (if not let me know) so:
>>>
>>> Acked-by: Vinod Koul <vkoul@kernel.org>
>> There's no need for it to go through DRM, it can go through your tree :)
> okay in that case I have applied now :), thanks
>
Hi,

Should I keep this patch in the future series or drop it?

Best regards,
Stefan Mavrodiev


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
