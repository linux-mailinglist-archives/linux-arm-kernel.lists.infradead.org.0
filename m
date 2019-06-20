Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9C74D2E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rQ8rlvgkumTCnuyy2M2bqhrSIexSGSNMWNwNJxpoR9w=; b=PIlFAN9DpwDX8NiOtfS2jPasx
	cRi9DPL+ksX5lQ1GjCwHTbX8pPrER4JDR2layKuqJXLar8W3JXjAKhbZRmiezNQSZW9dkHcp60i/T
	M1kqb6YOs2e4IkR5qVAlpTwCHCWa5quPusSD8ulD5ci1ILs9CzcBCosGaupWQz+3/w41YCs9TGv+h
	hyrWpeQWZdGphA1gDWyvbjy01dxblQev7m+ekHjYWAgMNq5O/KSSGvkaXnu2rgC4xvs1Jh9YzYfpk
	2ulCFFN3EVVo30IMOxiNVoByfSoQKT2mkoP+bKdaqV8bmWsa6nqcFdGzHK/wK+Uv8VmpgR9HGIb/6
	mErrqTbBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzdx-0003xh-HP; Thu, 20 Jun 2019 16:10:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzdk-0003xN-TW
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:10:22 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 055146055D; Thu, 20 Jun 2019 16:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561047020;
 bh=c+3aFyFm/rHxZsXwmsaa8gZe+tDKRvfjN/JtdoBhohk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Yr9OoZx6Pl97MehCsxymXtW5Vho9bSbeV3GACn1t8vDJ3yk+1ckL4HO7tPUu1Cq/+
 ZE641VaTPCcm+4h90BnhOUgYjZNCs8mRaNx5PjyJ6w+z1YvgZmKanIbbTOseA7grfU
 aJyud7JrQgQ5mAP8MfFFHk5KfQttxIAPLLG3S8ZA=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id ADB4B6087F;
 Thu, 20 Jun 2019 16:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561047018;
 bh=c+3aFyFm/rHxZsXwmsaa8gZe+tDKRvfjN/JtdoBhohk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=VgtcJ2Oid3anwp7PhUeB1dWBnTG33+bPyT5WuNkyCiIo93T/o0/7d543tHKIvEErv
 QUbewcFV9GRlsJ/M6Ao80aJTPhqBjQTkiAJVq73sW2+W3b8tFuhtfcjAI6SDTcp8+F
 MGBuINdqojz0F0bRBc8y6DLvGS/MhKDzg25Jzd7c=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org ADB4B6087F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCH 2/2] coresight: Abort probe for missing CPU phandle
To: Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, alexander.shishkin@linux.intel.com,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <d93e28fc80227f9a385130a766a24f8f39a1dcf0.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <1ddee3c1-8299-1991-eb88-151b9c3ee180@arm.com>
 <e3e13629-a723-8b08-cbae-5a3295170900@codeaurora.org>
 <0182216b-5495-bcf7-bb0e-869133b24830@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <ff99f1b5-7a04-a11a-7bbc-1a6a68908113@codeaurora.org>
Date: Thu, 20 Jun 2019 21:40:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <0182216b-5495-bcf7-bb0e-869133b24830@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091020_975500_ED54D405 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 6/20/2019 8:53 PM, Suzuki K Poulose wrote:
> 
> 
> 
> Please wait for Mathieu's thoughts on it. And in general I would wait
> for feedback from the people in a version, before posting another one,
> to reduce the number of respins.
> 

Mathieu already said he was OK in the other thread, but I will wait for
some more feedbacks.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
