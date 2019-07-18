Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4670A6CC5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 11:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zp7pn4/UO/np1eBUKh0GwyfzFfNNTSdX57KI+g9PbR0=; b=EdtWVLIkN19nmmpaGgBq6PNyR
	g9oqhcpW5ICkP4dbJ21u3tKTGmLmqDQOCypzgjtnae1GF5gxnJiIrpjna0RhFmMxHYq2G9A7c3EyF
	RsjyKQzAu72bTJxdnAjJ7ahreXq9eamwiqSGIe1JMzvoUojixYa2Pxp7I+QYVIkP+Z4YiUaLXILyi
	34JpPVnHlwidJwF2nkRe/Yl/XYZEGXgKmH7fConYE211qHdrvAD83KsBlCIvN9HXeh8btJpHtk/3L
	6UxOwUlBhl9V1DroK757sUjlw/tThg36yvtahiExsPhpeGCFvKWS2CoIO5PZc69i366nfhMnvM/f7
	PQ+UVUSew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho37B-0003cS-A0; Thu, 18 Jul 2019 09:54:17 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho36w-0003bt-4L
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 09:54:03 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B6FA0616D3; Thu, 18 Jul 2019 09:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563443641;
 bh=OQ/MD3YIdSMBrwnP8BDEG6Jw1d6HD1QPQooLjyZnEQ8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=lO4z8bR5105oNnaJ6YcqkK653dcUmfzedbtUJtwc/RenDwLMrPdK0Otz+EyOT4ryt
 nZCkTvARyn1XEnkCwYX08TiZacBZKelA9JKbzEbnpHgB3aRgrgar4kUkVeG/vEMlJl
 LrjhdYQxpNXuBkvhTFn/VVRzByuMyOuDKu92zHx8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [192.168.43.47] (unknown [157.49.202.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B33D560E40;
 Thu, 18 Jul 2019 09:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563443640;
 bh=OQ/MD3YIdSMBrwnP8BDEG6Jw1d6HD1QPQooLjyZnEQ8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=BNXObLhCuY1vX0ITvrPpNRCgTCe6f5MCZ4kxgDcu/KqePp1F9+dxW/G2tf/Way3I4
 T3lXQ1F3tNbVeM1x13k3SeiQx+CHSwmidV42bBWJDBoSsWcPyv/jNo9FpzsCLhDbLS
 PJ4RioLwbkRJDqaweKZ+gxgB/GOXPbm228lDX9X8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B33D560E40
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv8 2/5] arm64: dts: qcom: msm8998: Add Coresight support
To: Suzuki K Poulose <suzuki.poulose@arm.com>, gregkh@linuxfoundation.org,
 mathieu.poirier@linaro.org, leo.yan@linaro.org,
 alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <e510df23f741205fac9030f2c95d06d607549caa.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <3b192063-f31f-b861-d913-61d737cecc57@arm.com>
 <4854b0f7-6a81-bc87-3e63-d2b7c68a44f6@codeaurora.org>
 <281e3548-af53-f9a7-b9e4-813b448ab078@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <2b08943b-3900-ceb5-15ac-28ef2bbad03e@codeaurora.org>
Date: Thu, 18 Jul 2019 15:23:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <281e3548-af53-f9a7-b9e4-813b448ab078@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_025402_206274_F65A6EB1 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: rnayak@codeaurora.org, marc.w.gonzalez@free.fr,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 sibis@codeaurora.org, vivek.gautam@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 7/18/2019 3:07 PM, Suzuki K Poulose wrote:
> 
> 
> Using the sysfs doesn't guarantee that the ETR actually uses SG mode, 
> unless
> the buffer size selected is > 1M, which is why I am more interested in the
> perf usage. Alternatively you may configure a larger buffer size (say, 
> 8MB) via:
> 
> echo 0x800000 > /sys/bus/coresight/.../tmc_etr0/buffer_size
> 

Yes, you had mentioned about setting buffer size > 1M in the same 
thread[1] and I had followed the same.

[1] https://lkml.org/lkml/2019/1/18/311

> 
>>
>> As said in one of the series initially [1], QCOM msm downstream kernels
>> have been using scatter gather mode and we haven't seen any fatal issues.
>>
>> [1] https://patchwork.kernel.org/patch/10769535/
> 
> I haven't seen any test results there either.
> 

You did not ask for it there ;)

I do not have the test results handy now and those platforms.
I will arrange for them and post some test results.

Just to confirm, do you need some traces or just the buffer size
and sink set?

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
