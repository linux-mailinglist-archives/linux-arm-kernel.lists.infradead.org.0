Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED791D1D5A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 20:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkD9Q42GDtRc06fslCFwZNv0fec5gLtZRYOHOoN1R6o=; b=GSeXy8AvUPDLaV
	gwPiRBUk+L62PX8kxZiDYvG1VYkVtOKMcj2QnFx6kiL4bxYjV1V8AGIS3jJT+Ok2RuGryp5JnDkHZ
	pWuPhgUr7iTkZg+Ci5+T89Yz0zKFPzAW7vTt/VZpo4hSYjrW9CD8KfHNw4FNsvpa6q08z0XgeGxvr
	1YCU9FUsLMvKmIWU6kd8czxPHPPO/ADOzQfVFtB+Cb83btqQNMjZwqz0TUCxBRkJZqR0yBAEDvW6H
	cT01/psUx57ztCa5DTfSMV4ZAbfhgIbcjG7cGEHwxZVDuCOVh3063MNG8ehjLo09a/FEWdgbmHn00
	GCkrQ+SdXS2tX4vhereA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYw12-00013u-9X; Wed, 13 May 2020 18:22:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYw0t-00013W-2L
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 18:21:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 035D830E;
 Wed, 13 May 2020 11:21:49 -0700 (PDT)
Received: from bogus (unknown [10.37.12.13])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 45A413F305;
 Wed, 13 May 2020 11:21:47 -0700 (PDT)
Date: Wed, 13 May 2020 19:21:44 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 08/20] arm64: dts: arm: model: Fix GIC compatible names
Message-ID: <20200513182144.GD27686@bogus>
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-9-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513103016.130417-9-andre.przywara@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_112151_173363_498B863D 
X-CRM114-Status: GOOD (  14.69  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 11:30:04AM +0100, Andre Przywara wrote:
> The GIC DT binding only allows certain combinations of DT compatible
> strings. The somewhat awkward "arm,cortex-a15-gic", "arm,cortex-a9-gic"
> is not among those.
> 
> Drop that combination of different "cortex" based strings used for the
> models, and replace it with the more useful combination including
> "arm,gic-400".
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi | 2 +-
>  arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts       | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
> index 15fe81738e94..f17e744163a5 100644
> --- a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
> +++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
> @@ -6,7 +6,7 @@
>  
>  / {
>  	gic: interrupt-controller@2c001000 {
> -		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
> +		compatible = "arm,gic-400", "arm,cortex-a15-gic";

Do we need to still retain "arm,cortex-a15-gic" ? 

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
