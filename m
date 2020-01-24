Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9831479CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 09:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4Zm4CkfNySOwVUrIaFGFrkueVVRZ1VAl5oo1qzXDts=; b=S0aFOqECz8cUos
	Cmf1H6e3+0FaXjig8rWJNjztm7zDUfbOnVOZYy0a0cktPRedTwcOfO55KufGgeNPCLnZqAtB9xVWu
	grDewFBYXwTv5WHhXX47CGEdYLJ0H/MasqbtS/FzTu5s4v+RrQETOOK2VuSXpXQS6M9Kn8NMXcX74
	tmkRAgBZAHqoQG2/6putaQYHFOgENsNqu3pzQsgzUK4NYjt/omjs2T+xy97An7JUEnL9P2DIS767L
	0GUucVmUkfly7E2Kkma7NIJOzZ2oiCdufUWAVOJwoOk+TwkGrRebOmL2bxSHCGCCP/hNLYoTG67xf
	+MDG+EnfLoeL3TFWoorQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuule-0003XU-9V; Fri, 24 Jan 2020 08:56:42 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuulU-0003WQ-V6
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 08:56:34 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 00:56:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="260174149"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2020 00:56:29 -0800
Received: from pgsmsx114.gar.corp.intel.com ([169.254.4.192]) by
 PGSMSX101.gar.corp.intel.com ([169.254.1.131]) with mapi id 14.03.0439.000;
 Fri, 24 Jan 2020 16:56:28 +0800
From: "Ong, Boon Leong" <boon.leong.ong@intel.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Subject: RE: [PATCH net v3 1/5] net: stmmac: Fix incorrect location to set
 real_num_rx|tx_queues
Thread-Topic: [PATCH net v3 1/5] net: stmmac: Fix incorrect location to set
 real_num_rx|tx_queues
Thread-Index: AQHV0QPigSDsI0BxMUeg/pQlin0Cyqf17B8AgAOVJYA=
Date: Fri, 24 Jan 2020 08:56:28 +0000
Message-ID: <AF233D1473C1364ABD51D28909A1B1B75C488EDC@pgsmsx114.gar.corp.intel.com>
References: <20200122090936.28555-1-boon.leong.ong@intel.com>
 <20200122090936.28555-2-boon.leong.ong@intel.com>
 <BN8PR12MB3266F0534CE20CE906AA3C06D30C0@BN8PR12MB3266.namprd12.prod.outlook.com>
In-Reply-To: <BN8PR12MB3266F0534CE20CE906AA3C06D30C0@BN8PR12MB3266.namprd12.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_005633_054275_1AD57415 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Joao
 Pinto <Joao.Pinto@synopsys.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "Voon, Weifeng" <weifeng.voon@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Arnd Bergmann <arnd@arndb.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Tan,
 Tee Min" <tee.min.tan@intel.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



>-----Original Message-----
>From: Jose Abreu <Jose.Abreu@synopsys.com>
>Sent: Wednesday, January 22, 2020 5:56 PM
>To: Ong, Boon Leong <boon.leong.ong@intel.com>; netdev@vger.kernel.org
>Cc: Tan, Tee Min <tee.min.tan@intel.com>; Voon, Weifeng
><weifeng.voon@intel.com>; Giuseppe Cavallaro <peppe.cavallaro@st.com>;
>Alexandre TORGUE <alexandre.torgue@st.com>; David S . Miller
><davem@davemloft.net>; Maxime Coquelin <mcoquelin.stm32@gmail.com>;
>Joao Pinto <Joao.Pinto@synopsys.com>; Arnd Bergmann <arnd@arndb.de>;
>Alexandru Ardelean <alexandru.ardelean@analog.com>; linux-stm32@st-md-
>mailman.stormreply.com; linux-arm-kernel@lists.infradead.org; linux-
>kernel@vger.kernel.org
>Subject: RE: [PATCH net v3 1/5] net: stmmac: Fix incorrect location to set
>real_num_rx|tx_queues
>
>From: Ong Boon Leong <boon.leong.ong@intel.com>
>Date: Jan/22/2020, 09:09:32 (UTC+00:00)
>
>> For driver open(), rtnl_lock is acquired by network stack but not in the
>> resume(). Therefore, we introduce lock_acquired boolean to control when
>> to use rtnl_lock|unlock() within stmmac_hw_setup().
>
>Why not use rtnl_is_locked() instead of the boolean ?

We know that stmmac_open() is called with rtnl_mutex locked by caller.
And, stmmac_resume() is called without rtnl_mutex is locked by caller.
If we replace the boolean with rtnl_is_locked(), then we will have the
following logics in stmmac_hw_setup():-

     if (!rtnl_is_locked)   ---- (A)
         rtnl_lock();
     netif_set_real_num_rx_queues();
     netif_set_real_num_tx_queues();
     if (!rtnl_is_locked)   ---- (B)
         rtnl_unlock();

For stmmac_open(), (A) is false but (B) is true. 
So, the stmmac_open() exits with rtnl_mutex is released.
Here, the above logic does not perserve the original rtnl_mutex
is locked when stmmac_open() is called.

For stmmac_resume(), (A) is true, and (B) is also true.
So, the stmmac_resume() exits with rtnl_mutex is released.
Here, the above logic works well as the original rtnl_mutex is released
when stmmac_resume() is called.
 
So, as far as I can see, the proposed boolean approach works fine for both
stmmac_open() and stmmac_resume().

Do you agree? 
 


 
 

 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
