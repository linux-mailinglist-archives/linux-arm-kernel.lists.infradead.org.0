Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5696C8E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 07:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0gHa57ENwrpkxN37Xgx8coEVKq542VYeHDAfNY7YldM=; b=JCAikXao0lPtgORT6yZS9rvFW
	s4HDP94eOjIdsczUubTwbEj6U3W9Af9He+QZCMnMA3XKbf2C3Q5IpYODOLCruPk4Fl0W9fqjBi5kY
	2aKNgVT/wYdrqncZ70CCVdjXiRdG9+/97B7aTK3u/Zbta5ON+9Bqd6SFs6DxllM7QyJKKpv5NX6l7
	89iDjJcLNX8IhIpnJ6qPBA8XhcNYEzVqJDzVu4zL2BSfpMqcfFXfsIJf3b6YzIqUdqenQ3ZZzsmeG
	9UAGQHICsHLRlqr3F7u9R2zfFyjQaJUd79CbEjumi/LxdAaID1GrhmPfAsoNgXL67TNlQ9YjAPwuD
	oHTqqRucg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzGQ-0001AW-Vv; Thu, 18 Jul 2019 05:47:35 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzG9-00019q-Cw
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 05:47:18 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6E559611DC; Thu, 18 Jul 2019 05:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563428836;
 bh=/ujdpFaJYkatN6CUI58Cr1STMKLWs0kR78sFppIFlsU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=fvlwjest/4muTYx6f1AXoXmLjgK+YHkSGOdYwd6DYEv4sMD9+74KJjniWuJeqfyOc
 CV0RwzgYpKrlDxgc6W+rtc+SO0LUETB8LYjzZIpW9THlw5kkmv//3AKxy5h55QOaI+
 b2e7xOu//CwM4kPMVdNmXdtrm7zabTTwtsrvgrWg=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 42CAB606DC;
 Thu, 18 Jul 2019 05:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563428834;
 bh=/ujdpFaJYkatN6CUI58Cr1STMKLWs0kR78sFppIFlsU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=CHTV/o0iOuqtVwPxDqUslnjX+79s2m9N0cdasfNgCanHZ1SChWfzPHLowNJhzuuTq
 0THxH+2jf4p8R1FGFPEe/3QclzXY32+2lVyfi98EVwHlLN4tghGDFjg7Qf+FdnChFU
 CgTxtNKxFf0rXDy9Ye0zwyGwyzAL/TbLEpIw3I5Y=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 42CAB606DC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv8 3/5] arm64: dts: qcom: msm8996: Add Coresight support
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <2fa725fbc09306f1a95befc62715a708b4c0fad0.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <20190717170050.GB4271@xps15>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <f28d9c8f-017c-c990-2f00-0ef5a62f3b40@codeaurora.org>
Date: Thu, 18 Jul 2019 11:17:01 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190717170050.GB4271@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_224717_480687_1EC11B93 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-msm@vger.kernel.org,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 7/17/2019 10:30 PM, Mathieu Poirier wrote:
> On Fri, Jul 12, 2019 at 07:46:25PM +0530, Sai Prakash Ranjan wrote:
>> From: Vivek Gautam <vivek.gautam@codeaurora.org>
>>
>> Enable coresight support by adding device nodes for the
>> available source, sinks and channel blocks on msm8996.
>>
>> This also adds coresight cpu debug nodes.
>>
>> Signed-off-by: Vivek Gautam <vivek.gautam@codeaurora.org>
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>> Acked-By: Suzuki K Poulose <suzuki.poulose@arm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/msm8996.dtsi | 434 ++++++++++++++++++++++++++
>>   1 file changed, 434 insertions(+)
>>
> 
> We've gone trhough 8 iteration of this set and I'm still finding checkpatch
> problems, and I'm not referring to lines over 80 characters.
> 

I only get below 2 checkpatch warnings:

If you are talking about the below one, then it was not added manually.
It was taken automatically when I pulled in the v7. Should I be
resending this patch for this?

$ ./scripts/checkpatch.pl -g 2fa725fbc09306f1a95befc62715a708b4c0fad0
WARNING: 'Acked-by:' is the preferred signature form
#14:
Acked-By: Suzuki K Poulose <suzuki.poulose@arm.com>

WARNING: line over 80 characters
#154: FILE: arch/arm64/boot/dts/qcom/msm8996.dtsi:763:
+                       compatible = "arm,coresight-dynamic-replicator", 
"arm,primecell";

total: 0 errors, 2 warnings, 440 lines checked


-Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
