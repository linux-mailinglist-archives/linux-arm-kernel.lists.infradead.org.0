Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4494BE14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAmF50vbeD2qM9Zsgo1Wx2FW3xe2CRsLWIL+6g1m/E0=; b=aFtEm11auL30l4
	wOIK1qLQE6tSj63K+Oo29wBlPKhAHmVvc4sZdHGb5N0gc4bJOt6ZHQDgz0qrIrEQS1UgKLuMvhrJA
	zJU8V9gyKQ5vtZgjAp+rpaHfDFDFZLL60QdgxoM5ib3UTz78gC/CuJaktJ6VBlxWsN5xSkeu9zzPY
	I7kUqC/EULXzebmyGMND35gA19//B9KnFVl6YCR9cNiUG5rwrGViKffg3WLJwawMxanERJxjLo7y0
	6zQK02EQGEQ0Raq7aRCM5Pe7CVoJ1QUeXySucMmCkq+95cGIGVu/m7J2TEze4PJ+wJkhlv0bltSs9
	39KnjoZu7f4K2QpHfjOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddRd-0005h2-Da; Wed, 19 Jun 2019 16:28:21 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddRS-0005fZ-RO
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:28:12 +0000
Received: from LHREML710-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 980B6A667165A875910C;
 Wed, 19 Jun 2019 17:28:08 +0100 (IST)
Received: from [127.0.0.1] (10.202.227.157) by LHREML710-CAH.china.huawei.com
 (10.201.108.33) with Microsoft SMTP Server id 14.3.408.0;
 Wed, 19 Jun 2019 17:27:58 +0100
Subject: Re: [PATCH] arm64: dts: hisilicon: Switch to SPDX header
To: Lubomir Rintel <lkundrak@v3.sk>
References: <20190611072009.2978447-1-lkundrak@v3.sk>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <52f3ed62-79c0-2730-03c6-f480b0558af2@hisilicon.com>
Date: Wed, 19 Jun 2019 17:27:58 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190611072009.2978447-1-lkundrak@v3.sk>
Content-Language: en-US
X-Originating-IP: [10.202.227.157]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_092811_033916_129FDA33 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
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
Cc: Pengcheng Li <lipengcheng8@huawei.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lubomir,

On 6/11/2019 8:20 AM, Lubomir Rintel wrote:
> The original license text had a typo ("publishhed") which would be
> likely to confuse automated licensing auditing tools. Let's just switch
> to SPDX instead of fixing the wording.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>

Thanks!
I found linux-next has already fix this.

Best Regards,
Wei


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
