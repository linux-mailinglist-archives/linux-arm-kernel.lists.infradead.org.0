Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB3910055F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 13:10:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GJ4UlPHEto7kwYh+Hv4FcxBQt1wTX1nmhnfBQ8IXF9g=; b=C5icpVqHFECbf10vUJrAyJDaR
	Xrkx5k8sXtE5gmOzw/Gmt3lJ43gunK7/Ju09D1xTMy0fi5B9D+SGdpElCOekG2TI2LPGj9QOYIT0Z
	aTernQsoZkFXmu7GpMvGd7LpJZ6Hrvd6NdllwSWD/2OLI06wFatXjHNV7jp7dC2PwrzWfgnTQGu3L
	TqmjmjI4xMRpBn8x2a6Os45L0IktX18Z8gQHT/lSg2kTD6UAYTHn4D25789FNtkaGZvfKD13w1x+S
	/3mJRp9Q1GXfFi4W7AFRCksBxM2bQNALPEIwWYPBN2Ovyqzrwyq7N7oa/Lu+qZZwRz3SY5r8nTC4C
	5ruKsjtQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfqq-00009f-8N; Mon, 18 Nov 2019 12:09:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfqh-00008E-6C; Mon, 18 Nov 2019 12:09:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E06CC1FB;
 Mon, 18 Nov 2019 04:09:40 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 438563F6C4;
 Mon, 18 Nov 2019 04:09:40 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix NanoPC-T4 cooling maps
To: Heiko Stuebner <heiko@sntech.de>
References: <5bb39f3115df1a487d717d3ae87e523b03749379.1573908197.git.robin.murphy@arm.com>
 <4249681.hKoAvgd4aH@phil>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <59e03b94-87af-6d75-6036-c02b9dd89dbe@arm.com>
Date: Mon, 18 Nov 2019 12:09:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4249681.hKoAvgd4aH@phil>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_040943_270559_30719824 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/11/2019 12:52 am, Heiko Stuebner wrote:
> Am Samstag, 16. November 2019, 13:47:19 CET schrieb Robin Murphy:
>> Although it appeared to follow logically from the bindings, apparently
>> the thermal framework can't properly cope with a single cooling device
>> being shared between multiple maps. The CPU zone is probably easier to
>> overheat, so remove the references to the (optional) fan from the GPU
>> cooling zone to avoid things getting confused. Hopefully GPU-intensive
>> tasks will leak enough heat across to the CPU zone to still hit the
>> fan trips before reaching critical GPU temperatures.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> 
> applied, after little bit of editing.
> 
>>   &i2s0 {
>>   	status = "okay";
>>   };
> 
> although my nano-pc dts does not seem to have that &i2s0 node yet.
> Did I miss a patch somewhere?

Oops, no, my fault - there were more changes in the middle of my local 
branch which I thought were entirely orthogonal. I should have checked 
the diff context more closely... thanks for cleaning it up!

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
