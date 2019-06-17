Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE3C47FFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 12:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3pvhYSaQphXeute9zqgB6zrpLZGv4mfIEiQk3N7vzU=; b=Y4Zcx09tWHgOUE
	H5jOxs5kYIN//xvHWqaVSvNqwCQRZGlSDFq82boViZ6icYP+nOZzpK+W9uBBNc/NZDdSknhL9V1GZ
	Wq4VFC9QGW2wHgEarVU3H2q9Ce8WPB4Hj2ERkHBDJWdRjsE90cEJEipLK9kVHUjpVt7Nj6VOVQKkK
	0vl2sRzHDDd+I1fSUHg2LAe6GQOYnk2SCTFmOZxEYKq2np3DhKB20xzliN+9d5gK0l/M/sploLYI/
	do33ZB385kMlJP3OOhc/viFx3sziH7G2dYZauBsgjj2AJwR28q+wiZgZj1fnDsyAznDwIbjntWh9F
	Lt+LghIMXfaOj1R29lvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpBb-0001kz-R3; Mon, 17 Jun 2019 10:48:27 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpBS-0001ke-RT
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 10:48:20 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 699D620732;
 Mon, 17 Jun 2019 12:48:13 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 55E4A206B8;
 Mon, 17 Jun 2019 12:48:13 +0200 (CEST)
Subject: Re: [PATCH v3 3/4] iommu/arm-smmu: Add support to handle Qcom's
 wait-for-safe logic
To: Vivek Gautam <vivek.gautam@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20190612071554.13573-1-vivek.gautam@codeaurora.org>
 <20190612071554.13573-4-vivek.gautam@codeaurora.org>
 <6f85b50d-4ee8-d33a-37c9-72d45eb50a9d@free.fr>
 <ec7bdccb-f8db-6dce-2454-ac2073be2c45@codeaurora.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <c6d30912-17b3-3349-e742-bbf0ff02a50f@free.fr>
Date: Mon, 17 Jun 2019 12:48:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ec7bdccb-f8db-6dce-2454-ac2073be2c45@codeaurora.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Jun 17 12:48:13 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_034819_034887_E4F2CECC 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/06/2019 11:50, Vivek Gautam wrote:

> On 6/14/2019 6:45 PM, Marc Gonzalez wrote:
>
>> # dd if=/dev/sde of=/dev/null bs=1M status=progress
>> 3892314112 bytes (3.9 GB, 3.6 GiB) copied, 50.0042 s, 77.8 MB/s
>>
>> 80 MB/s on msm8998 -- vs -- 300 MB/s on sdm845
>>
>> Do you have the interconnect patches on sdm845 that allow boosting
>> the clock/bandwidth for specific HW blocks?
> 
> Umm, No. This is the upstream 5.2-rc4 plus 4-6 patches to enable display 
> and fix splash screen.
> Is this the performance for UFS? The numbers I posted were for UFS.

Correct, the numbers I provided were for msm8998 UFS...

Basically, it looks like sdm845 UFS is 4x faster than msm8998 UFS
using upstream. Which is surprising (may depend on specific Flash
chip in use though).

Would be good if somebody with both boards could post numbers.
I'll try to post "fresh" numbers when I can.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
