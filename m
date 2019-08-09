Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 068FA88008
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTPWnur+mniWE6vHbDbBqMYwD5fxcQvVobQ+yE3SaJQ=; b=aWDd9CwL8uy2Jv
	7BpzcoRc4V35h1iDHr5J3quS2MQHHy5EXgP0/Wkq27fs2vl8bG9DBCzL34xaR5PPSYZht1q6tIgN5
	TNvEAqJ2fK05ZvHiZN06gjG+MNXS/XBdeAVQ1ZZjShZFceHbDIWaoE4jaGGGSxgP8NJFPF1+WfCxT
	nWVQ+UoNVCTW7hqQDTKk7UYeJs7RQjraNf3VXI47BlQtxir8NibeaviCs6ZGofCOpvtss0SNdh9tE
	bD7envrfTa6SZ8EjniPPZt+mLq42CBEJc68pcqAISljFU/SsipQBVGFavxg7y4vl8CRd+B8s+u8kv
	xJOXyAdE5IkmwAKesqtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7nE-0003Gm-Hm; Fri, 09 Aug 2019 16:31:04 +0000
Received: from smtprelay0086.hostedemail.com ([216.40.44.86]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7n2-0003Fv-K9
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:30:53 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 4A2E98368EFA;
 Fri,  9 Aug 2019 16:30:43 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2689:2828:3138:3139:3140:3141:3142:3352:3622:3866:3870:3874:4321:4605:5007:8603:10004:10400:10848:11026:11232:11657:11658:11914:12043:12296:12297:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21451:21626:21740:30003:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:29,
 LUA_SUMMARY:none
X-HE-Tag: part95_232f517601209
X-Filterd-Recvd-Size: 2195
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf01.hostedemail.com (Postfix) with ESMTPA;
 Fri,  9 Aug 2019 16:30:41 +0000 (UTC)
Message-ID: <dc0de0cd9a1e24477b20d563199e800b98d933f6.camel@perches.com>
Subject: Re: [PATCH v2 09/13] net: lpc-enet: fix printk format strings
From: Joe Perches <joe@perches.com>
To: Arnd Bergmann <arnd@arndb.de>, soc@kernel.org
Date: Fri, 09 Aug 2019 09:30:40 -0700
In-Reply-To: <20190809144043.476786-10-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
 <20190809144043.476786-10-arnd@arndb.de>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_093052_727401_1660D2BC 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.86 listed in list.dnswl.org]
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
Cc: kbuild test robot <lkp@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, "David S.
 Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-08-09 at 16:40 +0200, Arnd Bergmann wrote:
> compile-testing this driver on other architectures showed
> multiple warnings:
> 
>   drivers/net/ethernet/nxp/lpc_eth.c: In function 'lpc_eth_drv_probe':
>   drivers/net/ethernet/nxp/lpc_eth.c:1337:19: warning: format '%d' expects argument of type 'int', but argument 4 has type 'resource_size_t {aka long long unsigned int}' [-Wformat=]
> 
>   drivers/net/ethernet/nxp/lpc_eth.c:1342:19: warning: format '%x' expects argument of type 'unsigned int', but argument 4 has type 'dma_addr_t {aka long long unsigned int}' [-Wformat=]
> 
> Use format strings that work on all architectures.
[]
> diff --git a/drivers/net/ethernet/nxp/lpc_eth.c b/drivers/net/ethernet/nxp/lpc_eth.c
[]
> @@ -1333,13 +1333,14 @@ static int lpc_eth_drv_probe(struct platform_device *pdev)
>  	pldat->dma_buff_base_p = dma_handle;
>  
>  	netdev_dbg(ndev, "IO address space     :%pR\n", res);
> -	netdev_dbg(ndev, "IO address size      :%d\n", resource_size(res));
> +	netdev_dbg(ndev, "IO address size      :%zd\n",
> +			(size_t)resource_size(res));

Ideally all these would use %zu not %zd



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
