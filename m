Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D18B91C5FB8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 20:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TilHKncflgV7WpTr7q2OK2zAczgi29YpvStE3XselWc=; b=QUfMT0y9ZqP1+jA3Lg+75XhX8
	PojKVfBBxu7V8EmaSqzsR8rE+XT5bpSDplDxY8y/j+memN1HDXMtZ/aPx3d9ZQqQlx/ycQzIp7QZ5
	AyT11bYthguv/dqvMjnW4k35Lv+0WIeZ7tZCtFkyqORk+kNLwhSzt8JtqJ/nFQ/plaDQEXmpZkVOf
	6LWi981g0nklhGnxeSgTwWtJ8kIoaMC99fmlULCZX8bZJBFkcxzR+4gBQ45HxL1rNEkokcVmoofXx
	Re2n/rAc7adHPMSZYAzofSEY4z3W1XF3tiGzzj1IUCZ/iGx/1dluSiQ/M8a9WnIe9q6cZuN/BWK5b
	Vq++NsnBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW21c-0008Qy-3D; Tue, 05 May 2020 18:10:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW21T-0008PX-R1
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 18:10:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 727811FB;
 Tue,  5 May 2020 11:10:26 -0700 (PDT)
Received: from [10.57.39.240] (unknown [10.57.39.240])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A450F3F305;
 Tue,  5 May 2020 11:10:24 -0700 (PDT)
Subject: Re: [PATCH 00/16] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
To: Andre Przywara <andre.przywara@arm.com>, Rob Herring <robh@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200505165212.76466-1-andre.przywara@arm.com>
 <20200505165212.76466-2-andre.przywara@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a96c83b3-dc58-e1da-de52-d36bdfc0533f@arm.com>
Date: Tue, 5 May 2020 19:10:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505165212.76466-2-andre.przywara@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_111027_923174_9B45000C 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-05 5:51 pm, Andre Przywara wrote:
> Date: Mon, 4 May 2020 12:41:55 +0100
> Subject: [PATCH 01/16] dt-bindings: mali-midgard: Allow dma-coherent
> 
> Add the boolean dma-coherent property to the list of allowed properties,
> since some boards (Arm Juno) integrate the GPU this way.

The same comment as for "iommus" applies to some degree here too. 
There's a bit more likelihood that the device itself does want to know 
whether it's integrated coherently, so that it can choose what memory 
attributes to use (as is the case here), but with protocols like 
ACE-lite it's possible to hard-wire any old dumb device to behave 
coherently without even realising. Thus this is another property that 
could legitimately turn up more or less anywhere.

Robin.

> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>   Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
> index 0407e45eb8c4..5d7165385e1f 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
> @@ -87,6 +87,8 @@ properties:
>     "#cooling-cells":
>       const: 2
>   
> +  dma-coherent: true
> +
>   required:
>     - compatible
>     - reg
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
