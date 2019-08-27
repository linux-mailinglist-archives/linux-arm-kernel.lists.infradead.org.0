Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD73D9DEA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c89AbSvY4y9VocWhfw5zVnSruW0DOC6ho5rMOdHQzXA=; b=rCdbTdG0j5+Vku
	vQ5geoWTwjIL4nWsw4v6sT/Mi7B+1ap1f5rkbRCp+oWOKbwPSFK+npdukD5J/sefUAogqkr3my8cD
	C+asaKpZ86eZgFej1QbKhXkNAAGrcYe/ysNBKLxe14mKHouIcA+ACaaXAWtNa+omOl1DW32va8o0u
	BKIFqpwG7vqVS/IfHEwPi4qVaI4cVWdCWgAv1JwyJvcCdaQ52oQGNBZn4gqk8PqKotqc4U+r9k/0t
	1xB/Gp5Wkd3rs8V0U0hTeMbZLI1JazkOwmYx18G0R51kfcOsIROeBu/ggHLGQKalTvn/he2LrrwtB
	tPVenVwXIHezbV8t9IhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2VpN-0006df-05; Tue, 27 Aug 2019 07:23:41 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2VpA-0006d0-HE
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 07:23:30 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 673CA44DC12ACBBBF01D;
 Tue, 27 Aug 2019 15:23:23 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 27 Aug 2019 15:23:19 +0800
Subject: Re: [PATCH -next] media: sun6i: Make sun4i_csi_formats static
To: Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20190827070623.15776-1-yuehaibing@huawei.com>
 <20190827072043.GA7657@paasikivi.fi.intel.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <48f90bc2-3c9a-bc37-98b2-e21f76d08afe@huawei.com>
Date: Tue, 27 Aug 2019 15:23:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190827072043.GA7657@paasikivi.fi.intel.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_002328_757582_F33E236D 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: maxime.ripard@bootlin.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/8/27 15:20, Sakari Ailus wrote:
> Hi Yue,
> 
> On Tue, Aug 27, 2019 at 03:06:23PM +0800, YueHaibing wrote:
>> Fix sparse warning:
>>
>> drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c:21:31:
>>  warning: symbol 'sun4i_csi_formats' was not declared. Should it be static?
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> 
> Thanks for the patch.
> 
> This has been already addressed by another patch:
> 
> <URL:https://patchwork.linuxtv.org/patch/58395/>

OK, thank you!

> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
