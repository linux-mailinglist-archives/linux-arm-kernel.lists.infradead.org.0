Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE311A2FAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 09:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kzyxEUEU2FOR2iO+DVT2REb1sSFFmMEdoRcIvr5lGK8=; b=G+rbWSmnwUj/rTnN+72TBGVP0
	QXmUHTIRBHepWPsjth+jVZd/WBdj3Qpl19+r5wdxNIsSoVOXGxDy5XQMoAxic8cSXeZrmmw3mYgzI
	ZTnFI/g1kKNxmphiwgdog9Pn0Kwumooo/5M6288jYVNJrhfqYZ9or1WRKtxVgv6/75hWYzGlfUnyU
	JD3YW02R3sI75A8Mnkm/2KjMeGwQ26/0Ga4WLSWW7K0uDv+OLVlG0Lex4hwvfVZnHTrtHpugdyYLP
	oJ9wndJbOWjoOD9UaXpxGohqTiRfSAo6CR2gzZD1HWAyIpBSOBA7cqsinUk4SG/Y75dmxG9pOPBfy
	rat48xMZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMRDM-0008Vh-3Q; Thu, 09 Apr 2020 07:03:04 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMRDF-0008UO-KC
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 07:02:59 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 0F0463508B4D76666315;
 Thu,  9 Apr 2020 08:02:45 +0100 (IST)
Received: from [127.0.0.1] (10.47.11.47) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 9 Apr 2020
 08:02:44 +0100
Subject: Re: [RFC PATCH] perf/smmuv3: Fix shared interrupt handling
To: Robin Murphy <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>, 
 "mark.rutland@arm.com" <mark.rutland@arm.com>
References: <d73dd8c3579fbf713d6215317404549aede8ad2d.1586363449.git.robin.murphy@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <34dd7c2e-b6db-684f-f0a2-73f2e6951308@huawei.com>
Date: Thu, 9 Apr 2020 08:02:20 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <d73dd8c3579fbf713d6215317404549aede8ad2d.1586363449.git.robin.murphy@arm.com>
Content-Language: en-US
X-Originating-IP: [10.47.11.47]
X-ClientProxiedBy: lhreml738-chm.china.huawei.com (10.201.108.188) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_000257_811311_EE5D689F 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "harb@amperecomputing.com" <harb@amperecomputing.com>,
 "tuanphan@os.amperecomputing.com" <tuanphan@os.amperecomputing.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/04/2020 17:49, Robin Murphy wrote:
> IRQF_SHARED is dangerous, since it allows other agents to retarget the
> IRQ's affinity without migrating PMU contexts to match, breaking the way
> in which perf manages mutual exclusion for accessing events. Although
> this means it's not realistically possible to support PMU IRQs being
> shared with other drivers, we *can* handle sharing between multiple PMU
> instances with some explicit affinity bookkeeping and manual interrupt
> multiplexing.

Hi Robin,

Out of curiosity, do we even need to support shared interrupts for any 
implementations today?

D06 board:

john@ubuntu:~$ more /proc/interrupts | grep smmuv3-pmu

  989:  0  0  0  0  ITS-pMSI 133120 Edge  smmuv3-pmu
  990:  0  0  0  0  ITS-pMSI 135168 Edge  smmuv3-pmu
  991:  0  0  0  0  ITS-pMSI 137216 Edge  smmuv3-pmu
  992:  0  0  0  0  ITS-pMSI 139264 Edge  smmuv3-pmu
  993:  0  0  0  0  ITS-pMSI 141312 Edge  smmuv3-pmu
  994:  0  0  0  0  ITS-pMSI 143360 Edge  smmuv3-pmu
  995:  0  0  0  0  ITS-pMSI 145408 Edge  smmuv3-pmu
  996:  0  0  0  0  ITS-pMSI 147456 Edge  smmuv3-pmu

Thanks,
John


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
