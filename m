Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385251C5F57
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nFDgnZVlgF09/lk8esX2W905YWLtjn2HOBfFu5KGaQc=; b=bVdasKItweh7qpURX4fzYR9Bh
	komKs3Sh7rATdizDgP2PYDKaK27080MPv14IqYgYzHr1Ey0WZwdg3pZ1cQMDrucAL3GixVmeWAc3A
	2MNGfdVsfPA3SrgwPUoLXhxfYVpyEFeOdwEVfD9fKFQGe3Cbnei0K4ItCBFL8Y0PZKPulDV0TdHe8
	D/znWV0osGgkmrV/QdXN6yOA69jFKFntIxFVd8PQas1MHJ8GPqmroT+ZEmmFQ8drQaiVp6N3lPFVQ
	G7HYcpDAOznbYzggaRXg2xBbcdkatKPD2JTaoP9ZaCljo6yWQg3Q6Q8Tt8yVV5MsDMayU7CK6DVJZ
	qxdx850eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1jm-0002Yn-TO; Tue, 05 May 2020 17:52:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1jf-0002Xq-I4
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:52:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F08A91FB;
 Tue,  5 May 2020 10:52:02 -0700 (PDT)
Received: from [10.57.39.240] (unknown [10.57.39.240])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E3E373F305;
 Tue,  5 May 2020 10:52:00 -0700 (PDT)
Subject: Re: [PATCH 00/16] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
To: Andre Przywara <andre.przywara@arm.com>, Rob Herring <robh@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200505165212.76466-1-andre.przywara@arm.com>
 <20200505165212.76466-4-andre.przywara@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <eee99db5-4100-5064-97c0-abf54d2eec15@arm.com>
Date: Tue, 5 May 2020 18:51:58 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505165212.76466-4-andre.przywara@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_105203_649748_CBFB9857 
X-CRM114-Status: GOOD (  16.07  )
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
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-05 5:51 pm, Andre Przywara wrote:
> Date: Mon, 4 May 2020 12:43:18 +0100
> Subject: [PATCH 03/16] dt-bindings: ehci/ohci: Allow iommus property
> 
> A OHCI/EHCI controller could be behind an IOMMU, in which case an iommus
> property assigns the stream ID for this device.

Hmm, pretty much any DMA master device could be behind an IOMMU, and in 
a way that's basically entirely irrelevant to the device itself (and 
thus the consumer of its binding). Is there a better way we can handle 
this than repeating such "semi-standard" properties in individual 
bindings for ever more?

Robin.

> Allow that property in the DT bindings to fix a complaint about the Arm Juno
> board's DTS file.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>   Documentation/devicetree/bindings/usb/generic-ehci.yaml | 3 +++
>   Documentation/devicetree/bindings/usb/generic-ohci.yaml | 3 +++
>   2 files changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> index 10edd05872ea..20664c28bfb2 100644
> --- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> +++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> @@ -74,6 +74,9 @@ properties:
>     phy-names:
>       const: usb
>   
> +  iommus:
> +    maxItems: 1
> +
>   required:
>     - compatible
>     - reg
> diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
> index bcffec1f1341..ff6c04cde695 100644
> --- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
> +++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
> @@ -73,6 +73,9 @@ properties:
>     phy-names:
>       const: usb
>   
> +  iommus:
> +    maxItems: 1
> +
>   required:
>     - compatible
>     - reg
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
