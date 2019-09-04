Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9ABA8372
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xZg7uecYtwbVwzyyKh1Z94Ws1Pf4Zhwv7ub3RCHs8Vw=; b=BAZ0Ous1PW/mk+RKEcGm4OdqE
	zgmyO/wNLk2pNcdSK0zJDeJciUPRCtpjPWLpX/Y1knChuFGNdAGMycSolhQHDXm8MasrR6SkoCmOR
	aYoWW6OqtooG/NOiEUJ11DV2O/bmblWaIUSZx/GiZsGELcJSSEJwXaI/dOsixPbX3HgOgwxIbH2n7
	/4Oiy40ZUGPbp1i6jFFrCWVz/xoQGd3JOsJVLGxD0azYaluTf5jdmFBFdYwqTfWxfblDAyQJvsVv5
	v0XIb9+v54cPETEzy8QxSwMf+dEw1g4GRNCGYTV3DTdoik77zPlBZi63oNzIxFy8MhsrM/V5nevG1
	/iOvBRByA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5V9E-0000ZC-03; Wed, 04 Sep 2019 13:16:32 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5V90-0000YK-LI; Wed, 04 Sep 2019 13:16:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1567602978; x=1599138978;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=dVPgUqN88hiyFCDUl2n0H4GWl7kQ/LvDY+M8i0q+25Y=;
 b=VZ3WoOwZpRNbBzyask86p+s4bzhM8s3rmsabMlkwyJH3M21cXVQCp8uw
 wTHlnw8VLhZerNNEdVY59ltyzNsefsAk0t6RL2XdWQBV4jcjYOxAWB1x5
 rLSrxKCRKFhsCPtzFe4rAzF2EfZr+EJ8mF79yr+8z7QKIPk+FoNiHNa48 Y=;
X-IronPort-AV: E=Sophos;i="5.64,467,1559520000"; d="scan'208";a="700658012"
Received: from sea3-co-svc-lb6-vlan3.sea.amazon.com (HELO
 email-inbound-relay-2c-397e131e.us-west-2.amazon.com) ([10.47.22.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 04 Sep 2019 13:16:13 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2c-397e131e.us-west-2.amazon.com (Postfix) with ESMTPS
 id 3E81BA215A; Wed,  4 Sep 2019 13:16:11 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Wed, 4 Sep 2019 13:16:10 +0000
Received: from [10.88.66.45] (10.43.160.149) by EX13D01EUB001.ant.amazon.com
 (10.43.166.194) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 4 Sep
 2019 13:15:54 +0000
Subject: Re: [PATCH -next 13/15] thermal: thermal_mmio: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>, <miquel.raynal@bootlin.com>,
 <rui.zhang@intel.com>, <edubezval@gmail.com>, <daniel.lezcano@linaro.org>,
 <amit.kucheria@verdurent.com>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <f.fainelli@gmail.com>, <rjui@broadcom.com>, <sbranden@broadcom.com>,
 <mmayer@broadcom.com>, <computersforpeace@gmail.com>,
 <gregory.0xf0@gmail.com>, <matthias.bgg@gmail.com>, <agross@kernel.org>,
 <heiko@sntech.de>, <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <marc.w.gonzalez@free.fr>, <mans@mansr.com>, <jun.nie@linaro.org>,
 <shawnguo@kernel.org>, <phil@raspberrypi.org>, <gregkh@linuxfoundation.org>,
 <david.hernandezsanchez@st.com>, <horms+renesas@verge.net.au>,
 <wsa+renesas@sang-engineering.com>, <linux-pm@vger.kernel.org>
References: <20190904122939.23780-1-yuehaibing@huawei.com>
 <20190904122939.23780-14-yuehaibing@huawei.com>
From: Talel Shenhar <talel@amazon.com>
Message-ID: <228fdf20-9f3a-4809-6fed-448e2bb349d3@amazon.com>
Date: Wed, 4 Sep 2019 16:15:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904122939.23780-14-yuehaibing@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.43.160.149]
X-ClientProxiedBy: EX13D08UWC003.ant.amazon.com (10.43.162.21) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_061618_743313_F5D415C0 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 talel@amazon.com, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 ronenk@amazon.com, bcm-kernel-feedback-list@broadcom.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks.

Talel.

On 9/4/19 2:29 PM, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Reviewed-By: Talel Shenhar <talel@amazon.com>
> ---
>   drivers/thermal/thermal_mmio.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
