Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F099A505A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bkto3EodeKj6q1czccLsKGQo4VGsOghIIw8xeLSqekU=; b=rD9JK1+J4G3mvqr1JhbPxkFyC
	MgRk5q2uUbcU6swHeMIpM7i32ewqDD12v2ezpXxnOEgKnR7FDzynijQgk0IEZ7mnDhwCf0agc23ci
	cxi+aqjuLyOUDE7JedVGCop4T3MokNqw5kZsjae3UiX9Dy+yVbUWylDQbAtrQ1uf3ysQmQqE++C5i
	qrPisx7zFaXWZOvUIzBM7X1LsHUvprAam3RFtRmPqtWW1CAPr1u44Deed5jLMhT/eZAgoFlMHBeW2
	CEASWhy+T23ys61VVmNTe2+mzrdTJN86XeGtyRJKl/D3Fq/7BVFfuvQhbGCP5gF+slJMNtTVZeNHV
	qycxTSAew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLGn-0008JJ-PZ; Mon, 24 Jun 2019 09:28:13 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLGa-0008Iu-Jb
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:28:01 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EA023609F3; Mon, 24 Jun 2019 09:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561368479;
 bh=Rxclg2J+fWA8GUEmOU6NUxxB+KBcECPCvwJIpsOLICs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=R7sTpfaUnBiAsHi9QzlvcwBvEgnqax/4UEsrkq3OvRM/v0oaOcrHTEBOSn9fuQHpB
 FYOJhdyiXixMYbToP5dONeUR+9R6LrLQPkBsDhYJ5YnUQ3CSr7DBCRUouVc4l7FP3n
 AZg5FIKSQv8/uT1Upxd+To/5PVCnt5/JwJRYy3rg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.136.27]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6B25560208;
 Mon, 24 Jun 2019 09:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561368479;
 bh=Rxclg2J+fWA8GUEmOU6NUxxB+KBcECPCvwJIpsOLICs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=R7sTpfaUnBiAsHi9QzlvcwBvEgnqax/4UEsrkq3OvRM/v0oaOcrHTEBOSn9fuQHpB
 FYOJhdyiXixMYbToP5dONeUR+9R6LrLQPkBsDhYJ5YnUQ3CSr7DBCRUouVc4l7FP3n
 AZg5FIKSQv8/uT1Upxd+To/5PVCnt5/JwJRYy3rg=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6B25560208
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv3 1/1] coresight: Do not default to CPU0 for missing CPU
 phandle
To: Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 alexander.shishkin@linux.intel.com, andy.gross@linaro.org,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1561346998.git.saiprakash.ranjan@codeaurora.org>
 <635466ab6a27781966bb083e93d2ca2729473ced.1561346998.git.saiprakash.ranjan@codeaurora.org>
 <4db99204-8553-7a80-f952-30cbd149593d@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <d1fadd8d-4b3d-38a4-1d26-e72e8eff8ff1@codeaurora.org>
Date: Mon, 24 Jun 2019 14:57:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <4db99204-8553-7a80-f952-30cbd149593d@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_022800_660438_C1D22218 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 6/24/2019 1:56 PM, Suzuki K Poulose wrote:
> Sai,
> 
> Thanks for getting this done.
> 
> On 24/06/2019 04:36, Sai Prakash Ranjan wrote:
>> Coresight platform support assumes that a missing "cpu" phandle
>> defaults to CPU0. This could be problematic and unnecessarily binds
>> components to CPU0, where they may not be. Let us make the DT binding
>> rules a bit stricter by not defaulting to CPU0 for missing "cpu"
>> affinity information.
>>
>> Also in coresight etm and cpu-debug drivers, abort the probe
>> for such cases.
>>
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Thanks for the review Suzuki.

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
