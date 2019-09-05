Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599D9A99CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 06:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+7Wpou9qIUSpALlb/ibSkuuJEGpTMSe6byWl2uTmBQ=; b=DIICAimP+Rcg2G
	HshtAtInx6E/nxhWMNo/v8Bfw7F3XvK8omPGKZYd92MMpSSeWPIP9zZOW0mK3+voPOZEzrvtVYmJz
	1QDiudvjCNQYqVHfftRfIbcovBj4dEyTJMkhkebSdyAKS+XvdCofSG8K2T7Dh8q7MTe4VE5EVdbCa
	I3MY/WitwCOg+gr67ChG+AxL6PZ2nRc0smryL1IQ7tf+GUEFEztr2qwkHVjZejjvTo+bKz/ov8P7i
	bnvZkB5Z2pl2BXlJrWEpnpNF4EHMBGwA/4RStliftyWBmWTdGQUsWgGrEyz0OcKJbygHH91F/Knyg
	t+URUIwjPlrASxRrMsZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5jlR-0007P6-Gb; Thu, 05 Sep 2019 04:52:57 +0000
Received: from [216.24.177.18] (helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5jlE-0007O2-Bd; Thu, 05 Sep 2019 04:52:46 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1i5jks-0006EF-4s; Thu, 05 Sep 2019 14:52:23 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Thu, 05 Sep 2019 14:52:18 +1000
Date: Thu, 5 Sep 2019 14:52:18 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Vic Wu <vic.wu@mediatek.com>
Subject: Re: [PATCH 1/5] crypto: mediatek: move mtk_aes_find_dev() to the
 right place
Message-ID: <20190905045218.GA32038@gondor.apana.org.au>
References: <20190828063716.22689-1-vic.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828063716.22689-1-vic.wu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_215244_646228_47C6E308 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 02:37:12PM +0800, Vic Wu wrote:
> From: Ryder Lee <ryder.lee@mediatek.com>
> 
> Move mtk_aes_find_dev() to right functions as nobody uses the
> 'cryp' under current flows.
> 
> We can also avoid duplicate checks here and there in this way.
> 
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Vic Wu <vic.wu@mediatek.com>
> ---
>  drivers/crypto/mediatek/mtk-aes.c | 39 +++++++++++--------------------
>  1 file changed, 14 insertions(+), 25 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
