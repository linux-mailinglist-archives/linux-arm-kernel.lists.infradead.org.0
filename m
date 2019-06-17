Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6021C47ED4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qJc0CS5zMAqQRxivomnFQAXl8riGXCa1hW6Boe9ZZgM=; b=fF0F1KptOvwmpGEnSTvDtLZmX
	ECji6XfTZjcm/DvgCBSU71LRbSpM9+RSeSSbXsXl/jbcJKM7S+UKzHseauW+0Ic6VVGRCEGdGz+AE
	5eZin3x2CsY7dhlTZnT3cLO7OtZUQ3r0qUmQWSVoS04p94Rqebdu67mIuoaqXJss7pyugRB1oKznL
	Z/mt0q1XfNtYFVwjQLua07Uo75zmHomDfd4l+4FMtmXKtch+tNIs1fIgszXQnI6C7n1Xf+yxJZUdN
	Vr7dsPndIngQJrMg35uMyYIQemVUPUPQizXY2RzAFyWpKjzRkq4jyrrdHsk0V+RNYix88nOBrDCBu
	sQWLvgFcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcoHl-0006Qk-F1; Mon, 17 Jun 2019 09:50:45 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoHY-0006Pr-OE
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:50:34 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id ED320608A5; Mon, 17 Jun 2019 09:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560765031;
 bh=G+Mh/Th62W8DiS2tkdPJylcX50k7ywJSYRreIQb9Vb0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=T5U8wSvMh8oAM0FBKhDwK64rOWuB408NqixPM8QSIWO6ERQOT9X4pEHjbugP9RLYZ
 fi2A2Yz6/0Ayk+GBIpSNKguVVCwn/SECg/L1RK0+m4hK21MZqBG4DGXr+paQoy7KUj
 oyqbjXJ4M91jrdR3dIFxbTtRGgB8EcDEVDuD2288=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.129.104]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: vivek.gautam@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7462E60274;
 Mon, 17 Jun 2019 09:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560765031;
 bh=G+Mh/Th62W8DiS2tkdPJylcX50k7ywJSYRreIQb9Vb0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=T5U8wSvMh8oAM0FBKhDwK64rOWuB408NqixPM8QSIWO6ERQOT9X4pEHjbugP9RLYZ
 fi2A2Yz6/0Ayk+GBIpSNKguVVCwn/SECg/L1RK0+m4hK21MZqBG4DGXr+paQoy7KUj
 oyqbjXJ4M91jrdR3dIFxbTtRGgB8EcDEVDuD2288=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7462E60274
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=vivek.gautam@codeaurora.org
Subject: Re: [PATCH v3 3/4] iommu/arm-smmu: Add support to handle Qcom's
 wait-for-safe logic
To: Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20190612071554.13573-1-vivek.gautam@codeaurora.org>
 <20190612071554.13573-4-vivek.gautam@codeaurora.org>
 <6f85b50d-4ee8-d33a-37c9-72d45eb50a9d@free.fr>
From: Vivek Gautam <vivek.gautam@codeaurora.org>
Message-ID: <ec7bdccb-f8db-6dce-2454-ac2073be2c45@codeaurora.org>
Date: Mon, 17 Jun 2019 15:20:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <6f85b50d-4ee8-d33a-37c9-72d45eb50a9d@free.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_025032_826850_3D07BBA4 
X-CRM114-Status: GOOD (  14.17  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/14/2019 6:45 PM, Marc Gonzalez wrote:
> On 12/06/2019 09:15, Vivek Gautam wrote:
>
>> This change is inspired by the downstream change from Patrick Daly
>> to address performance issues with display and camera by handling
>> this wait-for-safe within separte io-pagetable ops to do TLB
>> maintenance. So a big thanks to him for the change.
>>
>> Without this change the UFS reads are pretty slow:
>> $ time dd if=/dev/sda of=/dev/zero bs=1048576 count=10 conv=sync
>> 10+0 records in
>> 10+0 records out
>> 10485760 bytes (10.0MB) copied, 22.394903 seconds, 457.2KB/s
>> real    0m 22.39s
>> user    0m 0.00s
>> sys     0m 0.01s
>>
>> With this change they are back to rock!
>> $ time dd if=/dev/sda of=/dev/zero bs=1048576 count=300 conv=sync
>> 300+0 records in
>> 300+0 records out
>> 314572800 bytes (300.0MB) copied, 1.030541 seconds, 291.1MB/s
>> real    0m 1.03s
>> user    0m 0.00s
>> sys     0m 0.54s
> This issue does not affect msm8998, I presume?
>
> Nevertheless, I see much lower performance on msm8998:
>
> # dd if=/dev/sde of=/dev/null bs=1M status=progress
> 3892314112 bytes (3.9 GB, 3.6 GiB) copied, 50.0042 s, 77.8 MB/s
>
> 80 MB/s on msm8998 -- vs -- 300 MB/s on sdm845
>
> Do you have the interconnect patches on sdm845 that allow boosting
> the clock/bandwidth for specific HW blocks?

Umm, No. This is the upstream 5.2-rc4 plus 4-6 patches to enable display 
and fix splash screen.
Is this the performance for UFS? The numbers i posted were for UFS.

Thanks
Vivek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
