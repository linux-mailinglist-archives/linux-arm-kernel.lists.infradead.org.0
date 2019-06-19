Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86314BC4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plQf2pgY4CMkOB3ua/sC8OeFpULzu8QcwSt2F904Gs4=; b=FlEbKiaR39LIA1
	reWmCJ0YoG5ZweTrzNIfdTIXHmjZuUjhCTh1Ub4VHgTb5TBsJzO6ZBl5U7CXqYdHdDyQZE9Dc0y3I
	GeSWA7MlQQClJvFw8qLEK+kpyW5BqsQ2bBY12KmMAY2rltRVGMbcuen1Xq+KJV775LXAJOXC1Q4SZ
	oGSTD1gdTNLEznpGPu7oMkpRudKvvf60BHL/R5pDsNQLQo19oJsFJR1EbmfcSASXQevhFDeIX0ZNc
	X9Q3k374igkCL/XfiED1gvIdyyblqgNNWZ8Tho2nKJiTUXDbVFSG9yeGUlyOYEXpHbsrEBysePwAe
	x5PzEIi2MpjxSA6MDuoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdc8o-0000Jj-Vv; Wed, 19 Jun 2019 15:04:51 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdc8a-0000Ha-HZ
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:04:38 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JF1doV024433; Wed, 19 Jun 2019 17:04:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : cc : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=pmo1Bv+ES9tIvk0vtUKa8hC+z8yY1GRb510dQ0/+90Q=;
 b=IOlJAYb/oqA9f2QUTJJmwqoMPmAYrRr/f32Fu04/AM4HGOA8va0zctT+WjGZRLaSLcJA
 XKXJXaHQMZLhCwvJkjIYeR6cpMuATUB1G0WCoY+ZiNXXGtpUyAEUPAITiKKpBb2G2iqf
 u5l/Ub/ySXFkSxxdgrI7y1esXOgCgBIKLEhPOxUYr42LluLOY7HoZ9/cBDnuimJj3hJc
 n0XowaEZ1sFiHHRlLj9YZ9AEJyl7JLCnvZ0gYYK6VK+OWIIwZ7LbzvFOfXgOBg/wBC6J
 BrI6ziGDfLc0FWrDgTQQZaGeCo0kx3773cgl6Dzx3wkDEljZ+j6+3y33fB3zBNe822qK mw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t781a4jbv-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 17:04:30 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3BD9834;
 Wed, 19 Jun 2019 15:04:30 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1AB4E2AED;
 Wed, 19 Jun 2019 15:04:30 +0000 (GMT)
Received: from [10.48.0.167] (10.75.127.48) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 19 Jun
 2019 17:04:29 +0200
Subject: Re: [PATCH 0/5] iio: adc: stm32-dfsdm: fix and improve output data
 managementiio: adc: stm32-dfsdm: fix and improve output data management
To: Olivier Moysan <olivier.moysan@st.com>
References: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <5a7c1aed-16fa-d13f-b1b4-7847319f62ec@st.com>
Date: Wed, 19 Jun 2019 17:04:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_09:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080436_918074_ADA5B3CE 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/19/19 3:03 PM, Olivier Moysan wrote:
> This patch-set provides some fixes and improvements regarding output data format
> for STM32 DFSDM.
> - Fix output data resolution and saturation management in continuous mode
> - Fix data type
> - Apply same processing on data in continuous and triggered mode
> - Add fast mode support to get better resolution for output data
> - Add a comment about 16 bits data transfers
> 
> Olivier Moysan (5):
>   iio: adc: stm32-dfsdm: fix output resolution
>   iio: adc: stm32-dfsdm: fix data type
>   iio: adc: stm32-dfsdm: manage data resolution in trigger mode
>   iio: adc: stm32-dfsdm: add fast mode support
>   iio: adc: stm32-dfsdm: add comment for 16 bits record

Hi Olivier,

For the series,
Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Thanks,
Best Regards,
Fabrice
> 
>  drivers/iio/adc/stm32-dfsdm-adc.c | 233 +++++++++++++++++++++++++++++++-------
>  drivers/iio/adc/stm32-dfsdm.h     |  24 +++-
>  2 files changed, 208 insertions(+), 49 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
