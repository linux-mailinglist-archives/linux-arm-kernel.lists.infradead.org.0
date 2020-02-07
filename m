Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD291552D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 08:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GC6x+Ctq9y7XFtiWkje0hd58hRJcy0LOyOz6oaMEXvc=; b=AcQWkvFFthEIC7
	fzl5ewTeAW6bEXw6WhvQ3TUE/bt3Qv+kS6h8AzlfUevktZQE+F+6V1ZoA/VFc924ssDc29En7UYf3
	bzj0ZZWSR2PmcwpVnNf5iZfcpoV4BWv+o3l6S/XWdvzh3r20ae17/i2hcMOv5EBAFvFEp4lRJqTNZ
	H3T3OYHQV73PtGCfvOmFz+dmr9xpBmVlhMwLFgxJNqWoe3h007D6QC9pVpJLOBwfa9UboAqGHnodi
	R+FtVV7CTmgl6yPd4dTW3ijyaOxevEBghz9ndAhxhMT5MQrjlyk1RvId3D9EEM3ZB1CeRyYAXG1Cz
	CMfblK5xMUUqY+M3j6+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izxxY-0003hd-9V; Fri, 07 Feb 2020 07:21:52 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izxxR-0003gu-Ep
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 07:21:46 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 23:21:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,412,1574150400"; d="scan'208";a="250325781"
Received: from pgsmsx104.gar.corp.intel.com ([10.221.44.91])
 by orsmga002.jf.intel.com with ESMTP; 06 Feb 2020 23:21:39 -0800
Received: from pgsmsx114.gar.corp.intel.com ([169.254.4.192]) by
 PGSMSX104.gar.corp.intel.com ([169.254.3.14]) with mapi id 14.03.0439.000;
 Fri, 7 Feb 2020 15:21:38 +0800
From: "Ong, Boon Leong" <boon.leong.ong@intel.com>
To: David Miller <davem@davemloft.net>
Subject: RE: [PATCH net v4 1/6] net: stmmac: Fix incorrect location to set
 real_num_rx|tx_queues
Thread-Topic: [PATCH net v4 1/6] net: stmmac: Fix incorrect location to set
 real_num_rx|tx_queues
Thread-Index: AQHV3AI9OlvIBg8tJE+vuiHHv7FbVKgMFToAgAM6L7A=
Date: Fri, 7 Feb 2020 07:21:38 +0000
Message-ID: <AF233D1473C1364ABD51D28909A1B1B75C4A8F7E@pgsmsx114.gar.corp.intel.com>
References: <20200205085510.32353-1-boon.leong.ong@intel.com>
 <20200205085510.32353-2-boon.leong.ong@intel.com>
 <20200205.143924.1875004608052019375.davem@davemloft.net>
In-Reply-To: <20200205.143924.1875004608052019375.davem@davemloft.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_232145_549798_4E48DE59 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>, "Voon,
 Weifeng" <weifeng.voon@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, "Tan,
 Tee Min" <tee.min.tan@intel.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "alexandru.ardelean@analog.com" <alexandru.ardelean@analog.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: David Miller <davem@davemloft.net>
Date: Wednesday, February 5, 2020 9:39 PM

>From: Ong Boon Leong <boon.leong.ong@intel.com>
>Date: Wed,  5 Feb 2020 16:55:05 +0800
>
>> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
>b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
>> index 5836b21edd7e..4d9afa13eeb9 100644
>> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
>> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
>> @@ -2657,6 +2657,10 @@ static int stmmac_hw_setup(struct net_device
>*dev, bool init_ptp)
>>  >--->-------stmmac_enable_tbs(priv, priv->ioaddr, enable, chan);
>>  >---}
>>
>> +>---/* Configure real RX and TX queues */
>> +>---netif_set_real_num_rx_queues(dev, priv->plat->rx_queues_to_use);
>> +>---netif_set_real_num_tx_queues(dev, priv->plat->tx_queues_to_use);
>> +
>>  >---/* Start the ball rolling... */
>>  >---stmmac_start_all_dma(priv);
>>
>
>It is only safe to ignore the return values from
>netif_set_real_num_{rx,tx}_queues() if you call them before the
>network device is registered.  Because only in that case are these
>functions guaranteed to succeed.
>
>But now that you have moved these calls here, they can fail.
>
>Therefore you must check the return value and unwind the state
>completely upon failures.
>
>Honestly, I think this change will have several undesirable side effects:
>
>1) Lots of added new code complexity
>
>2) A new failure mode when resuming the device, users will find this
>   very hard to diagnose and recover from
>
>What real value do you get from doing these calls after probe?
>
>If you can't come up with a suitable answer to that question, you
>should reconsider this change.
>
>Thanks.

We have patch that implements get|set_channels() that depends on this fix.
Anyway, we understand your insight and perspective now. So, we will drop
this patch in v5 series.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
