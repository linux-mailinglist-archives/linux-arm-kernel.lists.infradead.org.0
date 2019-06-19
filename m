Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E604B456
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 10:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=inlZvR+nRSJFQ2P32xFSDKZiUBus0vDdOUEFvfvUYKY=; b=qcLRd/ujkCIDLmFBroJWqTc4Q
	fgLCt5xyw2p0cJiDN2nPzCDu42DOG0w3vGabu24qA5OxfOwgOB8eqfgEO1Ky50M7EN3gdFOopROpr
	tKxjb7sUxSmGL7FIMhVpaVKG3is8kkBvYerhKVNvhZtHMcbhktWchIIpUPsdT4S/i6yZGnPntFetj
	TzZBOlHtsqjBM5kb4kMF4/JE+1hNWaYOwxStQLjDiUulb0BQ2XeyzR0QdVuJ/TqSdVbJgKTa4t/KO
	xQyk7MTbxA30cfQUpXAzxA5i24l4ppmQbKJvvWeRxPcysUQit+OgO+DrRFsqpXmllzgZ5KR775S1i
	VE6aJxjfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdWHL-00046M-9X; Wed, 19 Jun 2019 08:49:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdWHC-00045X-Kg
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 08:49:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D821CFC;
 Wed, 19 Jun 2019 01:49:05 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7EFD43F246;
 Wed, 19 Jun 2019 01:49:04 -0700 (PDT)
Subject: Re: Coresight causes synchronous external abort on msm8916
To: stephan@gerhold.net, agross@kernel.org, david.brown@linaro.org,
 mathieu.poirier@linaro.org
References: <20190618202623.GA53651@gerhold.net>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
Date: Wed, 19 Jun 2019 09:49:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618202623.GA53651@gerhold.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_014906_733903_12B41AC1 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephan,

On 18/06/2019 21:26, Stephan Gerhold wrote:
> Hi,
> 
> I'm trying to run mainline Linux on a smartphone with MSM8916 SoC.
> It works surprisingly well, but the coresight devices seem to cause the
> following crash shortly after userspace starts:
> 
>      Internal error: synchronous external abort: 96000010 [#1] PREEMPT SMP

...


> 
> In this case I'm using a simple device tree similar to apq8016-sbc,
> but it also happens using something as simple as msm8916-mtp.dts
> on this particular device.
>    (Attached: dmesg log with msm8916-mtp.dts and arm64 defconfig)
> 
> I can avoid the crash and boot without any further problems by disabling
> every coresight device defined in msm8916.dtsi, e.g.:
> 
> 	tpiu@820000 { status = "disabled"; };

...

> 
> I don't have any use for coresight at the moment,
> but it seems somewhat odd to put this in the device specific dts.
> 
> Any idea what could be causing this crash?

This is mostly due to the missing power domain support. The CoreSight
components are usually in a debug power domain. So unless that is turned on,
(either by specifying proper power domain ids for power management protocol
supported by the firmware OR via other hacks - e.g, connecting a DS-5 to
keep the debug power domain turned on , this works on Juno -).

> I'm not sure if this is a device-specific issue or possibly some kind of
> configuration problem.
>    Or is this feature only working on development boards?

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
