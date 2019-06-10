Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DCC3B3A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JHoPiiGug7TcYwz+WfkfZU+DN3bIwZ0W7K6HbuU4xs=; b=ZWkY9DwrVnbBZd
	LXAzbDLJXhjF7WEEryVvm0sHCrq5Xr80wn0+pvpc7Te/tOlGiwmNev4iSXCInj8GlnTO9U6g+oowE
	yeB0X4DYRqlo+O04sSm4oLo2qWos5tSnbiX4h5jCA2IwgM0s/4IQV7bvd+G98s8+IZ6FriJRrlT0F
	8MaeefIOGvrmwFOOcNTFwNZ97HLp/PBscXj7IICrsHNxq3XGGyDftlo5QPuhUBcnD6m9wPMi6CHop
	CwdmhTUI423VFkJCXADeduOjz1p/5PWZBhQiiXJ/tPUnIzQka0OFdKuQ/YxPgHYEtMLHm/3azRiz2
	Xzm/vgRXiHPqHM+rrhpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haI4E-0006VL-QS; Mon, 10 Jun 2019 11:02:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haI3u-0006Tf-Fo
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 11:02:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C32A26074C; Mon, 10 Jun 2019 11:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560164522;
 bh=mRD0HxQRl5qvKBhQoKCxAZoQjXYl9uAGRc+kOHjgp68=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=hmpdwoU3V9L5FiuuT/9E+smvQ5/Jdtdo/veWip+TL3UPxiIBRf1WVwpCQG1rzTCNq
 egADHCMw807RYAw+Rkx92Zea2AOtNkLADhK4fKrhhc0BCciGYtg/hkN806VbwuEfl2
 I15hM2jvYZmctIG4e2MM0HJbfzKhRRNWepWz3Gvw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.201.2.161]
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: sricharan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3D50060271;
 Mon, 10 Jun 2019 11:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560164519;
 bh=mRD0HxQRl5qvKBhQoKCxAZoQjXYl9uAGRc+kOHjgp68=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=R1+9C+PIOrIaeixpPyIerEfvdehTjfet+LxQbNBKhChBEx9+0hbBLIGGCkq4NJmOB
 qTAP9KBidpLhnp4Myb41gzmir6AKYZ7pwv9toiPDdlIOgx1EBjOXLKGe/v4kqGv66Y
 /WSehylOGAagYmnO7UwXXof1yn2BXFrqK9lsVj78=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3D50060271
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH 2/6] dt-bindings: qcom: Add ipq6018 bindings
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-3-git-send-email-sricharan@codeaurora.org>
 <20190608032754.GD24059@builder>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <93e5b0c5-f97b-ef62-8c7f-262e80a53b49@codeaurora.org>
Date: Mon, 10 Jun 2019 16:31:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190608032754.GD24059@builder>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_040202_553757_C9F1452A 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-gpio@vger.kernel.org,
 agross@kernel.org, linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/8/2019 8:57 AM, Bjorn Andersson wrote:
> On Wed 05 Jun 10:15 PDT 2019, Sricharan R wrote:
> 
>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>> Signed-off-by: speriaka <speriaka@codeaurora.org>
>> ---
>>  Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>> index f6316ab..7b19028 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>> @@ -36,6 +36,7 @@ description: |
>>    	mdm9615
>>    	ipq8074
>>    	sdm845
>> +	ipq6018
> 
> It would be nice if these lists where sorted, but as that's not the
> case, please sort it wrt the other ipq at least.
> 

 ok.

Regards,
 Sricharan


-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
