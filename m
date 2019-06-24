Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004A150489
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DVD2+9P+SUAZGJfPIt7tRgNJZqcJ8sGu5MNSmqVIm8E=; b=psBqtE6myNdIE/qMpabnVeUYf
	tQV6iL1JIuOrLK9oB7pmLaGEqnKb49eY+juLo2brPqED9Km9G8vnxu0l1TsUqaDkiPF/8G2VYdrwQ
	VrH8huXKoDOzXEbxSZFbN86gtT81E+nKx4/QMg/OsXISA5SbmwYFQmHaD0ZkOxkCnkiSlZGJLCvkx
	9P68M2YUTmVYkV0GtGjYpeLUItlAocXTiKx+r4Ocn2P1ff45Vf8wpfkfmXy0NKTYnJ6qZSiXi5YFM
	Wc5ymlQO7qokIjLvlmTuFxhoQryxk7hCL6Zrr9tWRzYSmwm4MhJAZydWFCuK+bkBWjnQtDH0m2O4p
	9TZuwJRmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfKJg-000786-Vf; Mon, 24 Jun 2019 08:27:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfKIx-0006lT-SK
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 08:26:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2D8BC0A;
 Mon, 24 Jun 2019 01:26:20 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C84BB3F71E;
 Mon, 24 Jun 2019 01:26:18 -0700 (PDT)
Subject: Re: [PATCHv3 1/1] coresight: Do not default to CPU0 for missing CPU
 phandle
To: saiprakash.ranjan@codeaurora.org, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 alexander.shishkin@linux.intel.com, andy.gross@linaro.org,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1561346998.git.saiprakash.ranjan@codeaurora.org>
 <635466ab6a27781966bb083e93d2ca2729473ced.1561346998.git.saiprakash.ranjan@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <4db99204-8553-7a80-f952-30cbd149593d@arm.com>
Date: Mon, 24 Jun 2019 09:26:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <635466ab6a27781966bb083e93d2ca2729473ced.1561346998.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_012624_003535_3EA23A2C 
X-CRM114-Status: GOOD (  10.74  )
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
Cc: rnayak@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, sibis@codeaurora.org,
 vivek.gautam@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sai,

Thanks for getting this done.

On 24/06/2019 04:36, Sai Prakash Ranjan wrote:
> Coresight platform support assumes that a missing "cpu" phandle
> defaults to CPU0. This could be problematic and unnecessarily binds
> components to CPU0, where they may not be. Let us make the DT binding
> rules a bit stricter by not defaulting to CPU0 for missing "cpu"
> affinity information.
> 
> Also in coresight etm and cpu-debug drivers, abort the probe
> for such cases.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
