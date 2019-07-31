Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5122A7B96F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 08:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5HE4HQx9pn1VV+R5M6YVOJoQL6+LtstVztI9ClfYBvQ=; b=tSYW706ef2NYZpWRFOhCwx+EW
	tJ/kgyedcU/RTCsKvhmHu+rfCl/iCTkNxF4xiXKkm+VE881lcOnlGSANpOvLK2Ih3aBXPEfa4LyIP
	6OaqLmuUNZoULp9gOP6pF8HE0zsjAy/3uqe5Xxmeo23NlBw7nZ11km3WZA+9rsExsFiysAKfI/wu4
	3HhOount5rq/mbRDMdRbZMse46modmTWV1oaZUK7UkI5ZVxlIgO00XjXZ7XAKaRFEDyiOsMMq7NKX
	1pR9RG+f07FGqyXGYpCyCd01sGnVEv0q6rLfix4oBhzwv4lvSQHbaZ58OuDbKbDRkbiIluhu12PgR
	LAHclPe5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hshkU-0004jj-V2; Wed, 31 Jul 2019 06:06:07 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hshkI-0004jP-51
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 06:05:55 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id CD4E8602F1; Wed, 31 Jul 2019 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564553153;
 bh=hEk5PTdhSlKYsF9BXBhjcZBTRehJjUX5duLT6JssgUI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=L7QZGwJ0INkOQxR7UU4hxuC1jBHQfyR/j1TeOlzjZqMssnkNWO1poRKVn27FyBlnv
 K13xaqM+DJ1odTPKtpHVkgiu9ArMtMKkjVn2vfcHJIw6A8hXD5XOmLYRM+sTKSOz24
 oQFLXvD9Wq8eTTyRSCfCtu1DUfZJuhBk1glBKWYc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 37482602F1;
 Wed, 31 Jul 2019 06:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564553152;
 bh=hEk5PTdhSlKYsF9BXBhjcZBTRehJjUX5duLT6JssgUI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ioDPYOhc1zZYTYKDQYsrRAN8bInbnXb4qZ95Frt66pd/Z4f7I3Cn8+RB3dXiDXMZ5
 qxrqORFaXA/XnmfRdMoEb5atqtBHbwwCEUIWrTl1k/+mSFQlKsChhkVHOqqRA7NUFk
 aahtVZzAqwLrnD3bZySkzv62zhy4DwWoSurO2Ec4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 37482602F1
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv9 1/3] arm64: dts: qcom: sdm845: Add Coresight support
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Leo Yan <leo.yan@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andy Gross <agross@kernel.org>, David Brown <david.brown@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <be6d77eb6c7498df09d04e0a369d4d65b38f4b8e.1564550873.git.saiprakash.ranjan@codeaurora.org>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <b50c06d4-8298-7abe-4442-2aff336509f5@codeaurora.org>
Date: Wed, 31 Jul 2019 11:35:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <be6d77eb6c7498df09d04e0a369d4d65b38f4b8e.1564550873.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_230554_237673_E00A6746 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rajendra Nayak <rnayak@codeaurora.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On 7/31/2019 11:28 AM, Sai Prakash Ranjan wrote:
> Add coresight components found on Qualcomm SDM845 SoC.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 451 +++++++++++++++++++++++++++
>   1 file changed, 451 insertions(+)

I have tested coresight with scatter gather on SDM845 MTP and MSM8996
based DB820c board and posted the results in

- https://github.com/saiprakash-ranjan/coresight-test-results

Please let me know if you need some additional testing done.

I could not perform coresight tests on MSM8998 MTP with latest build
as it was resulting in crash due to some AHB timeouts. This was not
due to scatter-gather and mostly likely the problem with the build.
Maybe we can keep msm8998-coresight on hold?

BTW, patches are based on linux-next.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
