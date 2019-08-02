Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D56F7FE4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 18:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InjqG1Mg1Bu+byKOVZrVcqhsUkwVaA7X7GaKfIn9pTQ=; b=XY4lfdZhdw9rjQ
	7b94AG7Owlx59VTAkQfVji62RjOlK6NQ+bO+9ZxzV83uPhDfXttWBCSfChN0XdKWhon8hA14cdxQ8
	u/jXxs+nsrcarXD32PsSOu2fWyNtQltCvx5yOLQPV+aigen26tNBen5aoVcAJQ4gfAxQfkJPRGa+k
	/CqLKhQ9m+Qd2+IkDJ4i/Nbgx2G7IpwXpxleUbRhj2MD+oaYFbV6jXxO75k8VQWXe2tffzZ6CaLFt
	F8vL6rzL4orh/DGCLWNzc0N9gtudpDy8UTUgB3IWOcF4KHTqQBCDJ3FJX/IRn2cG1Ct3YTBZ5ZzfY
	2LiYZvV5KYk3Qpa8XIaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hta8e-00087H-HZ; Fri, 02 Aug 2019 16:10:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hta8Y-00086Z-3K; Fri, 02 Aug 2019 16:10:35 +0000
Received: from p508fd160.dip0.t-ipconnect.de ([80.143.209.96]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hta7x-00041C-8t; Fri, 02 Aug 2019 18:09:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 09/12] crypto: rockchip - use
 devm_platform_ioremap_resource() to simplify code
Date: Fri, 02 Aug 2019 18:09:56 +0200
Message-ID: <2422935.Q2t5okTyEj@phil>
In-Reply-To: <20190802132809.8116-10-yuehaibing@huawei.com>
References: <20190802132809.8116-1-yuehaibing@huawei.com>
 <20190802132809.8116-10-yuehaibing@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_091034_289974_5D76E89C 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gary.hook@amd.com, clabbe.montjoie@gmail.com, linux-arm-kernel@axis.com,
 jamie@jamieiles.com, linux-stm32@st-md-mailman.stormreply.com,
 jesper.nilsson@axis.com, linux-samsung-soc@vger.kernel.org,
 herbert@gondor.apana.org.au, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, agross@kernel.org,
 thomas.lendacky@amd.com, alexandre.torgue@st.com, antoine.tenart@bootlin.com,
 linux-arm-msm@vger.kernel.org, mripard@kernel.org,
 linux-mediatek@lists.infradead.org, lars.persson@axis.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 mcoquelin.stm32@gmail.com, kgene@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 2. August 2019, 15:28:06 CEST schrieb YueHaibing:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

looks like nice and simple improvement
Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
