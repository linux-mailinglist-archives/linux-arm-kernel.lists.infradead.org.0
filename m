Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF9384A78
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f9CihOirPF05NxqqSNQ12pIK1sMKq03+14zLEC7Dti0=; b=bpi0NctSsqSD0N3td0Z5u3QER
	E+FZBC9pYBysASKhdoFJktSOgFw+/Sv6cMYOwnXz/8m2L5wbIPGPjgCkPPYNc9ZivleVW0g0CsGY+
	fMsbtAcZ0nicHGA2oDhsTwitjywTVzsC4xWxYGxBV/WLPUT8buKf6KZht59q+zijFuhV3SFSEk2EV
	JhnxRqjOrAtc7p+1KmODatgfilb6X2+AIRpXKiNGO9u1DBaXI7vc0uS1JQMjQT/V2EeEjySfpdhjp
	0OYBJTSEtnS31HGSYpC27H6ecDWOnL440Ndl6Xc3due7ZUDO7pfeY7ScmKQrLGBQ3iXzP+Xc2WFSG
	fEj2FqydQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJwA-00057N-Vg; Wed, 07 Aug 2019 11:16:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJvw-00056g-Aw
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:16:45 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DB75160795; Wed,  7 Aug 2019 11:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565176602;
 bh=wn8HVAyIf35oyGrdxkkAG6UgB7MluicsdBzxP+JPiYA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=PKRTDch+ILT5c2mLnwRwIR/5vZ1qGH/zvy5OYZdharsH60lYWPtZ76yCtGP9WF+VY
 BczYuOjejWeF6nE7qj1r75wHX3JND9awFU39HjG6wse2/nqCJ15BQJzd85zvudNug9
 j70jXNlmj3m+5aAzlvKS7fST2nyhfPMbjk0iQ2yI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [192.168.43.47] (unknown [223.237.242.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2FBE560795;
 Wed,  7 Aug 2019 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565176602;
 bh=wn8HVAyIf35oyGrdxkkAG6UgB7MluicsdBzxP+JPiYA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=PKRTDch+ILT5c2mLnwRwIR/5vZ1qGH/zvy5OYZdharsH60lYWPtZ76yCtGP9WF+VY
 BczYuOjejWeF6nE7qj1r75wHX3JND9awFU39HjG6wse2/nqCJ15BQJzd85zvudNug9
 j70jXNlmj3m+5aAzlvKS7fST2nyhfPMbjk0iQ2yI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2FBE560795
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv9 1/3] arm64: dts: qcom: sdm845: Add Coresight support
To: Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org,
 bjorn.andersson@linaro.org, leo.yan@linaro.org,
 alexander.shishkin@linux.intel.com, agross@kernel.org,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <be6d77eb6c7498df09d04e0a369d4d65b38f4b8e.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <b50c06d4-8298-7abe-4442-2aff336509f5@codeaurora.org>
 <b5cb08ef-ca2f-e852-f234-d0f693b58596@codeaurora.org>
 <adc1ac7a-877a-73cf-4051-4e3b4017799b@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <20da41d4-7626-0fd8-ebd3-f8a632b3cac2@codeaurora.org>
Date: Wed, 7 Aug 2019 16:46:26 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <adc1ac7a-877a-73cf-4051-4e3b4017799b@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_041644_401914_CFDDDD6D 
X-CRM114-Status: GOOD (  11.77  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 8/7/2019 3:42 PM, Suzuki K Poulose wrote:
> Sai,
> 
>> Any more tests you would want me to run?
> 
> Apologies for the late response. I had seen the results and they look fine.
> I was hitting some issues, which I have now root caused to firmware issues.
> So we are good to go.
> 

Thanks Suzuki.

Hi Bjorn, any chance you could pull these in?

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
