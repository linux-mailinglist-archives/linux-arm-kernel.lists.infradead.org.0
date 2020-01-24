Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F931479D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 09:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDJ7kBbuTmM0tv+KexQViNXuy86oTJ54srlGsyuKh70=; b=FW4RMrravYGUUv
	gKX1HIGCWXeGuexBxERYDwaxgKVVUsUsP9h9f4Dnnd1XzK0ymirpWm4/JSWAXjqwXZsrKMBt7TB9T
	JmiMzy3sfwuYGjtGIeG7NKRpCrf714r7W1/J9fbIvVgUwPJ/4IH5Lyfjm3HzJ6xb2CfaTO3dY7ubp
	3xFTIN477gs7SBtxpEtONL+mnGqNqe1TIKjJHKT96/gEPuTFFJ8MgRp2Z38K1dNnlm4wPEPGWvaD4
	sycBV2GhNABnGD0HZmJGZX1ItyoCs4gmtrClVZnLVZO7AUkBYAnumSbiytO5n9XwsWMGRK/7HYz9z
	DhmssQvv58is23EwIKXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuum7-0003oX-SO; Fri, 24 Jan 2020 08:57:11 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuulw-0003oA-Kh
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 08:57:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 00:57:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="260174253"
Received: from pgsmsx104.gar.corp.intel.com ([10.221.44.91])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2020 00:56:57 -0800
Received: from pgsmsx114.gar.corp.intel.com ([169.254.4.192]) by
 PGSMSX104.gar.corp.intel.com ([169.254.3.14]) with mapi id 14.03.0439.000;
 Fri, 24 Jan 2020 16:56:56 +0800
From: "Ong, Boon Leong" <boon.leong.ong@intel.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Subject: RE: [PATCH net v3 2/5] net: stmmac: fix incorrect GMAC_VLAN_TAG
 register writting in GMAC4+
Thread-Topic: [PATCH net v3 2/5] net: stmmac: fix incorrect GMAC_VLAN_TAG
 register writting in GMAC4+
Thread-Index: AQHV0QSDmNiamEvEckGAHFcP1jevNaf19hiAgAOQN5A=
Date: Fri, 24 Jan 2020 08:56:56 +0000
Message-ID: <AF233D1473C1364ABD51D28909A1B1B75C488EF5@pgsmsx114.gar.corp.intel.com>
References: <20200122090936.28555-1-boon.leong.ong@intel.com>
 <20200122090936.28555-3-boon.leong.ong@intel.com>
 <BN8PR12MB326699D4E4CD49804F2E5097D30C0@BN8PR12MB3266.namprd12.prod.outlook.com>
In-Reply-To: <BN8PR12MB326699D4E4CD49804F2E5097D30C0@BN8PR12MB3266.namprd12.prod.outlook.com>
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
X-CRM114-CacheID: sfid-20200124_005700_685720_F3E0637D 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

>Thanks for adding patch 4/5 but I meant in previous reply that this patch
>should also go for XGMAC cores ...
>
Noted. We will add tis in v4. 
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
