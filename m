Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C1213CC7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 19:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WxO2W15HU7kD8sRH91DQju0qoAXvkAt+94GvGEsSppQ=; b=CcYGPQL7SGxc3z
	8/Zs7C+OfiB3n3+WvF12e4Hb9q7drwtHoowJpAyUaIwfvKKnqMg3N8nfP8SmkR4XnNwrN6MFXJfIf
	fjzys0IhuAJQau0yMW8BAVXQIAr4IUTayN2+Q+PBH14wwssi7xZrMMUebJVxixkYc7T8sXMTqk7kx
	/liWJyUMDqpRNn7yB5igZO8aEY7MVxaQcH7ExAG6syA1z4XhtJyByHUehzXKLGNpAldXp81QWpJbS
	WOK5c4iHfDqnPkwWE1kKyCOWteZYD4xy+SlklCSa0RKXbKqTkk/SpCOOcjgHhb89RyRDvmUXLg3gp
	mkDlIdZx0KzE7ZGscOzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irngO-0004z4-FS; Wed, 15 Jan 2020 18:46:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irngE-0004xe-4g
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 18:46:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04A51328;
 Wed, 15 Jan 2020 10:46:12 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A1AF53F6C4;
 Wed, 15 Jan 2020 10:46:09 -0800 (PST)
Subject: Re: [PATCH 0/2] Add EDAC support for Kryo CPU core caches
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
References: <0101016ed57a10a8-bd8fbdb9-a5cd-4460-bae6-c5c35f0eed88-000000@us-west-2.amazonses.com>
From: James Morse <james.morse@arm.com>
Message-ID: <0769b7cb-4e01-eb83-8ad4-b29b4fafafd4@arm.com>
Date: Wed, 15 Jan 2020 18:46:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0101016ed57a10a8-bd8fbdb9-a5cd-4460-bae6-c5c35f0eed88-000000@us-west-2.amazonses.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_104614_228519_1B8048DB 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, psodagud@codeaurora.org,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 tsoni@codeaurora.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Evan Green <evgreen@chromium.org>, Robert Richter <rrichter@marvell.com>,
 baicar@os.amperecomputing.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sai,

(CC: +Tyler)

On 05/12/2019 09:52, Sai Prakash Ranjan wrote:
> This series implements EDAC support for error reporting on
> Kryo{3,4}XX CPU caches L1,L2, L3-SCU. All the cores(big.LITTLE)
> in Kryo{3,4}XX CPUs implement RAS extensions and use interrupt
> based ECC mechanism to report errors.
> 
> This series has been tested on SC7180, SDM845, SM8150 SoCs with
> Kryo{3,4}XX CPU cores based on ARM Cortex-A55, Cortex-A75 and
> Cortex-A76.
> 
> This implementation is platform specific in contrast to the
> patch posted last time for generic error reporting on arm cortex
> implementations with RAS extensions by Kyle Yan.
>  - https://patchwork.kernel.org/patch/10161955/

I think that series was dropped because it was too soc-specific and overlaps with the v8.2
kernel first support. That series was superseded by:
lore.kernel.org/r/1562086280-5351-1-git-send-email-baicar@os.amperecomputing.com

Can you work with Tyler on a combined series? The combined support may need to look quite
different. (DT and big/little being the obvious differences).

I'm afraid this is the tip of the kernel-first-RAS iceberg.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
