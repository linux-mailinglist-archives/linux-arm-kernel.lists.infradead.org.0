Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5C92813E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wDdM0Jx9H4e2aWijN/Pdysk+Goc6D5IkQEpXFJzCXB8=; b=D4a4CEpchp6yM0kpPzb9l1nYp
	BSvSlhQMJEHj36lkhKIsJ9MmCPUrxpKHo8ETivEFxnEBVHRg3TE/I+WpxHC1aaNYgxlk1G46GQ6TW
	1d7pbqKQGmZyCFpopwoA9+xuTNvH8jYXXNEseM6vnILyizscbT8oAi3dpj4Gr0wfwII8DHLnwz463
	G0uJer1Z9NOXuMsAKhtbWH8o1KJts0l5s3SqOtVmCCmV5DWWa+3NP5VLPBETf/O215BCWuGLwp25p
	z89eI6dpAyrXMLDxO6iYgycEWJq5OpIkmdFO1vwiTOT2liMDJ/6r/DGvAvkcQ5RJ1pWSqcUkSrSUO
	FpfSYIJyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTphM-00077j-T2; Thu, 23 May 2019 15:32:04 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTphE-00077L-TG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:31:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E057A78;
 Thu, 23 May 2019 08:31:56 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C3B813F690;
 Thu, 23 May 2019 08:31:55 -0700 (PDT)
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
To: leo.yan@linaro.org
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
 <20190523143227.GC31751@leoy-ThinkPad-X240s>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <23a50436-4bcf-3439-c189-093e1a58438d@arm.com>
Date: Thu, 23 May 2019 16:31:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523143227.GC31751@leoy-ThinkPad-X240s>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_083156_949715_55FDFDAF 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

On 23/05/2019 15:32, Leo Yan wrote:
> Hi Suzuki,
> 
> On Wed, May 22, 2019 at 11:34:33AM +0100, Suzuki K Poulose wrote:
> 
> [...]
> 
>> Changes since v2:
>>   - Drop the patches exposing device links via sysfs, to be posted as separate
>>     series.
> 
> Thanks for sharing the git tree linkage in another email.  Just want
> to confirm, since patch set v3 you have dropped the patch "coresight:
> Expose device connections via sysfs" [1], will you send out this patch
> after ACPI binding support patches has been merged?

We are awaiting Mike's comment on the approach, as his CTI support also
needs something similar.

> 
> When you send out the new patch for exposing device connection, please
> loop me so that I can base on it for perf testing related works.

Sure, will do. As such, the perf testing should not be affected by that
series. It is just a helper to demonstrate the connections. But yes, it
will definitely help you to choose an ETF for a cluster, if you had multiple
ETFs on the system. Otherwise, you should be OK.

Please be aware that the power management support is missing on ACPI platform.
So you must make sure, by other means, that the debug domain is powered up.


Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
