Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D3B4BDD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvQZ2YC3zABlLsiIpK6drNL+fnTnZHkuVOJHplW4/m4=; b=WfcX7FI3mlEkdS
	rhTxcvbyz6Cd6oCEJ9cT2+a1HxiVv+pdCW92yEKXzSJGIHfMJx98O/ODHqnIgvjQyVkGpSVyHhs05
	aLKhHz4cM08BN7CRkxehN48fwRqH8Ppm3st8odnopWHvzBqqD2i2ayq2pjNH5eml1yif09S5zkun9
	uJbjgam3USjc9O3o2az74FXBwGK4W8mfwkvn1NZOL1OTR6zaco0q6A92IJSK4sohzlVh3OEUbDs+f
	rM8aXCJDc8eqIVs9G8epNvWgNumq829XXmGZ/wqjyrGwobtnNsz/w8qEBLapdEvMSBXX9hgZP4VNS
	U/ODbf+ZM9pF1y2gCyOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddE2-0006Tr-LG; Wed, 19 Jun 2019 16:14:18 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddDs-0006Sz-SE
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:14:10 +0000
Received: from lhreml702-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 095893D40BFF13CBD759;
 Wed, 19 Jun 2019 17:14:04 +0100 (IST)
Received: from [127.0.0.1] (10.202.227.157) by lhreml702-cah.china.huawei.com
 (10.201.108.43) with Microsoft SMTP Server id 14.3.408.0;
 Wed, 19 Jun 2019 17:13:53 +0100
Subject: Re: [PATCH v4] arm64: dts: hi3660: Add CoreSight support
To: Leo Yan <leo.yan@linaro.org>, Wanglai Shi <shiwanglai@hisilicon.com>
References: <1555768835-68555-1-git-send-email-shiwanglai@hisilicon.com>
 <20190516041140.GC12557@leoy-ThinkPad-X240s>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <be5ea435-2484-18c3-2282-426c688d33aa@hisilicon.com>
Date: Wed, 19 Jun 2019 17:13:52 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190516041140.GC12557@leoy-ThinkPad-X240s>
Content-Language: en-US
X-Originating-IP: [10.202.227.157]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_091409_713812_40AFD4E1 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 mathieu.poirier@linaro.org, suzuki.poulose@arm.com, suzhuangluan@hisilicon.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 John Stultz <john.stultz@linaro.org>, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo, Wanglai

On 5/16/2019 5:11 AM, Leo Yan wrote:
> On Sat, Apr 20, 2019 at 10:00:35PM +0800, Wanglai Shi wrote:
>> This patch adds DT bindings for the CoreSight trace components
>> on hi3660, which is used by 96boards Hikey960.
>>
>> Signed-off-by: Wanglai Shi <shiwanglai@hisilicon.com>
> 
> Hi Wei,
> 
> Mathieu and me both have reviewed this patch, could you pick up this
> patch?  Thanks a lot!

Applied to the hisilicon dt tree.
Thanks!

Best Regards,
Wei


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
