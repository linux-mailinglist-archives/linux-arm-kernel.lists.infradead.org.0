Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE164AD51F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 10:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuuyM9Z/+pAHrYHC1BRKucAU4ZDEq6UFpHj0HwLk5Vc=; b=UOSKWcvjTd+u9a
	ynBkrRW+UlRj1reNKpgRoWfU3Wp6NMsMmG4gy1PvRkPEzp/pn7okx1DOTxugwA137GrFJlukrvf9C
	gOuqN6UQzzStVKBX7rzs5tB2X5KbwBtKCHNegBoYs5njh/8R9pGNVHh9tERwn2rZh/zH7lK+koK9P
	qPxTbX77L4Hd+xFvJ2FRhkhC18lwGYxM6RFhQljkDwdoe0yhGf47frcOEO+9rr6ebVebDxavKgKhe
	nN6wEDdMTMhQV/yfxRl2Br4KMyCWfa5WfOzWBeoOYsAAWBdS95r00j1mF0hACqhXrtLiRnuCM+sjX
	hF8nkCJ/hTpL91sGpqVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7FQO-00033W-Aw; Mon, 09 Sep 2019 08:53:28 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FQB-00032g-3g
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 08:53:17 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x898r8WI019249; Mon, 9 Sep 2019 04:53:08 -0400
Received: from nam03-by2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2056.outbound.protection.outlook.com [104.47.42.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 2uv6d983ba-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 09 Sep 2019 04:53:07 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HM4Ow77pPKElk2NZIifySov/qZNCbAh/e+HFfG81xfLKwAjkiMeHEhfNsFiyZUCJAO8YSAzxcWXoXOmtw9VgN+k3/PQZD1OU1kS50oEInYugP6wGI1e96lpMbpI+71+EdmT++yKOdP4KT912FGgkoHZ5/0LWgQwNBrjWHqZ0KrSnkbttDvtAnlpAJwtRKHd6NumJotZscLeNS7aUkpqmsf7eNMNZPA/6sDGOZFWdvfSb99OYxaEz2ipYKAcDEbg+agag1vahfP2fF6c0HsWz+IyAFY217M1ZfZ3f+kySMuv3VWUe9coHf/buzHltwuhOraa7xe/3yznHF93HPMKohg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5rzaacQqsHtWxfDdbIq2SgzD1pSvBS4WIoqEaWc81c0=;
 b=O1E+aN9n+SaV5GHjbB7ZTHunU5LCkyiOhnAXUrCDPxkOk63VEOT//vW7QOt58nOjSZINRr+NrSZeklzhgzXQlT5jtsgI6FhxZVixmv1Qz4mFuuwO/royp5i1B3JfDt+wxThOQMDnOQMK47iJslN3WAHjYrQBPIRujDQj2jFctbofecPTWSaB1p9j6sMQ0SM+j2bTtAwe3AKDinDt4QqLr29OuVT44/Mabia21seliuFA3dHhFjCR2ZkAYrGbWLVGT7nfhwHmEaO68G8qL3caxoYBbmilfPADj3ehGxXTwabvth8+AIDTRQFiFTH3w5YBAbwk6cvnpoF9xH9bKKVZwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5rzaacQqsHtWxfDdbIq2SgzD1pSvBS4WIoqEaWc81c0=;
 b=K5xeXZhbkUj7R8GZvLiCYdqkxOZOeXvpgITXvPuo3sXe4crKKZ7dC+axgLVl9ayxxlJ+55t17jZKB6uaveTZBgZK1lXF8acCf9gT6ztT4RL3t5/vAK9XehYWQkXxzE1oy4KRCLJ2z848Wg8Np2La74G5F3N2jtg+NGbQcsoz+Fw=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5239.namprd03.prod.outlook.com (20.180.5.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Mon, 9 Sep 2019 08:53:06 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::344d:7f50:49a3:db1b]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::344d:7f50:49a3:db1b%3]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 08:53:06 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "lkp@intel.com" <lkp@intel.com>
Subject: Re: [PATCH] net: stmmac: socfpga: re-use the `interface` parameter
 from platform data
Thread-Topic: [PATCH] net: stmmac: socfpga: re-use the `interface` parameter
 from platform data
Thread-Index: AQHVZK71MotWq7Szq0ysUG4QFG+T4qcgLVwAgALhQQA=
Date: Mon, 9 Sep 2019 08:53:06 +0000
Message-ID: <a7dc54d6e1fad0dc464a30101c8740b8c11f2d8b.camel@analog.com>
References: <20190906123054.5514-1-alexandru.ardelean@analog.com>
 <201909072036.v1rX0Vwh%lkp@intel.com>
In-Reply-To: <201909072036.v1rX0Vwh%lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcb38f20-807b-4034-9ad8-08d7350321b7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR03MB5239; 
x-ms-traffictypediagnostic: CH2PR03MB5239:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <CH2PR03MB5239E6EED9965DA7FB7D68DDF9B70@CH2PR03MB5239.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01559F388D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(376002)(346002)(396003)(136003)(189003)(199004)(53936002)(4326008)(256004)(476003)(2351001)(229853002)(36756003)(76176011)(7416002)(102836004)(26005)(6916009)(305945005)(6506007)(2906002)(66476007)(64756008)(66446008)(66556008)(91956017)(76116006)(5024004)(7736002)(66946007)(4001150100001)(6116002)(3846002)(2501003)(6306002)(14454004)(8936002)(1730700003)(81156014)(81166006)(8676002)(86362001)(66066001)(966005)(118296001)(6436002)(25786009)(71200400001)(6486002)(486006)(99286004)(54906003)(186003)(71190400001)(11346002)(5660300002)(446003)(316002)(6246003)(478600001)(5640700003)(6512007)(2616005)(81973001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5239;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ajHTUKxXC9xufAzxcwqryCcL/eTfPtfGYT/zzdNvqlb155vLIShMKhxqm23sSV6qQXets1Zh5Itx60A5LM9o1TXmubSBizDT/KR99T6q7AIxMLd8NB00TpgyyznCss605vnbLLU1gsxekVGKJaeBm2hmd6WirXjtHSJ7wvL1+ySgP/2QEylnOKgSckfQDlxstCq3BVv+nvqp3wxg1k+iWONg4hZoHKqxfkrhfaAgJE1xsaJjRPdEWKWv2BiFQhMPxMuA8SmEbyJJQaOhJgSSVBLCkqNhMmTb5H+rL+3UHl6ilEjh3hibWX40ldNuWujF17OxtMl4mZYsC1rO1OklgYz9bPo7Kn6/uVxmjT2XpSqGZnHoyQmnuFCOraNoyya0QN9kDdZd9SrtkCBdz3l9TDJ7xQPSnJdPyQlq9ZXq3vM=
x-ms-exchange-transport-forked: True
Content-ID: <9888AC36AEA71944A2D723F4AABCB6CF@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcb38f20-807b-4034-9ad8-08d7350321b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2019 08:53:06.2068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uUvQGx1/TRYTG1zyEWxRy0Xiqu/V2PRoHn34d16ctSIp5i/U7o/JsNdt+XL81+aNZ7fIc6nmWASb6ZlVxbLGn9t1mwKtit/oombUvQLXiso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5239
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-09_04:2019-09-08,2019-09-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0
 malwarescore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 spamscore=0 mlxlogscore=999 adultscore=0 clxscore=1011
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909090094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_015315_217224_B5BABB93 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "kbuild-all@01.org" <kbuild-all@01.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2019-09-07 at 20:54 +0800, kbuild test robot wrote:
> [External]
> 
> Hi Alexandru,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]

Hmm, this error should be expectable I guess: I applied this on net-next/master.

Alex

> [cannot apply to v5.3-rc7 next-20190904]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    
> https://github.com/0day-ci/linux/commits/Alexandru-Ardelean/net-stmmac-socfpga-re-use-the-interface-parameter-from-platform-data/20190907-190627
> config: sparc64-allmodconfig (attached as .config)
> compiler: sparc64-linux-gcc (GCC) 7.4.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=sparc64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from include/linux/dma-mapping.h:7:0,
>                     from include/linux/skbuff.h:30,
>                     from include/linux/if_ether.h:19,
>                     from include/uapi/linux/ethtool.h:19,
>                     from include/linux/ethtool.h:18,
>                     from include/linux/phy.h:16,
>                     from drivers/net//ethernet/stmicro/stmmac/dwmac-socfpga.c:11:
>    drivers/net//ethernet/stmicro/stmmac/dwmac-socfpga.c: In function 'socfpga_gen5_set_phy_mode':
> > > drivers/net//ethernet/stmicro/stmmac/dwmac-socfpga.c:264:44: error: 'phymode' undeclared (first use in this
> > > function); did you mean 'phy_modes'?
>       dev_err(dwmac->dev, "bad phy mode %d\n", phymode);
>                                                ^
>    include/linux/device.h:1499:32: note: in definition of macro 'dev_err'
>      _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                                    ^~~~~~~~~~~
>    drivers/net//ethernet/stmicro/stmmac/dwmac-socfpga.c:264:44: note: each undeclared identifier is reported only once
> for each function it appears in
>       dev_err(dwmac->dev, "bad phy mode %d\n", phymode);
>                                                ^
>    include/linux/device.h:1499:32: note: in definition of macro 'dev_err'
>      _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                                    ^~~~~~~~~~~
>    drivers/net//ethernet/stmicro/stmmac/dwmac-socfpga.c: In function 'socfpga_gen10_set_phy_mode':
>    drivers/net//ethernet/stmicro/stmmac/dwmac-socfpga.c:340:6: error: 'phymode' undeclared (first use in this
> function); did you mean 'phy_modes'?
>          phymode == PHY_INTERFACE_MODE_MII ||
>          ^~~~~~~
>          phy_modes
> 
> vim +264 drivers/net//ethernet/stmicro/stmmac/dwmac-socfpga.c
> 
> 40ae25505fe834 Dinh Nguyen        2019-06-05  255  
> 40ae25505fe834 Dinh Nguyen        2019-06-05  256  static int socfpga_gen5_set_phy_mode(struct socfpga_dwmac *dwmac)
> 40ae25505fe834 Dinh Nguyen        2019-06-05  257  {
> 40ae25505fe834 Dinh Nguyen        2019-06-05  258  	struct regmap *sys_mgr_base_addr = dwmac->sys_mgr_base_addr;
> 40ae25505fe834 Dinh Nguyen        2019-06-05  259  	u32 reg_offset = dwmac->reg_offset;
> 40ae25505fe834 Dinh Nguyen        2019-06-05  260  	u32 reg_shift = dwmac->reg_shift;
> 40ae25505fe834 Dinh Nguyen        2019-06-05  261  	u32 ctrl, val, module;
> 40ae25505fe834 Dinh Nguyen        2019-06-05  262  
> 6169afbe4a340b Alexandru Ardelean 2019-09-06  263  	if (socfpga_set_phy_mode_common(dwmac, &val)) {
> 801d233b7302ee Dinh Nguyen        2014-03-26 @264  		dev_err(dwmac->dev, "bad phy mode %d\n", phymode);
> 801d233b7302ee Dinh Nguyen        2014-03-26  265  		return -EINVAL;
> 801d233b7302ee Dinh Nguyen        2014-03-26  266  	}
> 801d233b7302ee Dinh Nguyen        2014-03-26  267  
> b4834c86e11baf Ley Foon Tan       2014-08-20  268  	/* Overwrite val to GMII if splitter core is enabled. The
> phymode here
> b4834c86e11baf Ley Foon Tan       2014-08-20  269  	 * is the actual phy mode on phy hardware, but phy interface
> from
> b4834c86e11baf Ley Foon Tan       2014-08-20  270  	 * EMAC core is GMII.
> b4834c86e11baf Ley Foon Tan       2014-08-20  271  	 */
> b4834c86e11baf Ley Foon Tan       2014-08-20  272  	if (dwmac->splitter_base)
> b4834c86e11baf Ley Foon Tan       2014-08-20  273  		val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII;
> b4834c86e11baf Ley Foon Tan       2014-08-20  274  
> 70cb136f773083 Joachim Eastwood   2016-05-01  275  	/* Assert reset to the enet controller before changing the phy
> mode */
> bc8a2d9bcbf1ca Dinh Nguyen        2018-06-19  276  	reset_control_assert(dwmac->stmmac_ocp_rst);
> 70cb136f773083 Joachim Eastwood   2016-05-01  277  	reset_control_assert(dwmac->stmmac_rst);
> 70cb136f773083 Joachim Eastwood   2016-05-01  278  
> 801d233b7302ee Dinh Nguyen        2014-03-26  279  	regmap_read(sys_mgr_base_addr, reg_offset, &ctrl);
> 801d233b7302ee Dinh Nguyen        2014-03-26  280  	ctrl &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << reg_shift);
> 801d233b7302ee Dinh Nguyen        2014-03-26  281  	ctrl |= val << reg_shift;
> 801d233b7302ee Dinh Nguyen        2014-03-26  282  
> 013dae5dbc07aa Stephan Gatzka     2017-08-22  283  	if (dwmac->f2h_ptp_ref_clk ||
> 013dae5dbc07aa Stephan Gatzka     2017-08-22  284  	    phymode == PHY_INTERFACE_MODE_MII ||
> 013dae5dbc07aa Stephan Gatzka     2017-08-22  285  	    phymode == PHY_INTERFACE_MODE_GMII ||
> 013dae5dbc07aa Stephan Gatzka     2017-08-22  286  	    phymode == PHY_INTERFACE_MODE_SGMII) {
> 43569814fa35b2 Phil Reid          2015-12-14  287  		ctrl |= SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK <<
> (reg_shift / 2);
> 734e00fa02eff5 Phil Reid          2016-04-07  288  		regmap_read(sys_mgr_base_addr,
> SYSMGR_FPGAGRP_MODULE_REG,
> 734e00fa02eff5 Phil Reid          2016-04-07  289  			    &module);
> 734e00fa02eff5 Phil Reid          2016-04-07  290  		module |= (SYSMGR_FPGAGRP_MODULE_EMAC << (reg_shift /
> 2));
> 734e00fa02eff5 Phil Reid          2016-04-07  291  		regmap_write(sys_mgr_base_addr,
> SYSMGR_FPGAGRP_MODULE_REG,
> 734e00fa02eff5 Phil Reid          2016-04-07  292  			     module);
> 734e00fa02eff5 Phil Reid          2016-04-07  293  	} else {
> 43569814fa35b2 Phil Reid          2015-12-14  294  		ctrl &= ~(SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK <<
> (reg_shift / 2));
> 734e00fa02eff5 Phil Reid          2016-04-07  295  	}
> 43569814fa35b2 Phil Reid          2015-12-14  296  
> 801d233b7302ee Dinh Nguyen        2014-03-26  297  	regmap_write(sys_mgr_base_addr, reg_offset, ctrl);
> 734e00fa02eff5 Phil Reid          2016-04-07  298  
> 70cb136f773083 Joachim Eastwood   2016-05-01  299  	/* Deassert reset for the phy configuration to be sampled by
> 70cb136f773083 Joachim Eastwood   2016-05-01  300  	 * the enet controller, and operation to start in requested mode
> 70cb136f773083 Joachim Eastwood   2016-05-01  301  	 */
> bc8a2d9bcbf1ca Dinh Nguyen        2018-06-19  302  	reset_control_deassert(dwmac->stmmac_ocp_rst);
> 70cb136f773083 Joachim Eastwood   2016-05-01  303  	reset_control_deassert(dwmac->stmmac_rst);
> fb3bbdb859891e Tien Hock Loh      2016-07-07  304  	if (phymode == PHY_INTERFACE_MODE_SGMII) {
> fb3bbdb859891e Tien Hock Loh      2016-07-07  305  		if (tse_pcs_init(dwmac->pcs.tse_pcs_base, &dwmac->pcs)
> != 0) {
> fb3bbdb859891e Tien Hock Loh      2016-07-07  306  			dev_err(dwmac->dev, "Unable to initialize TSE
> PCS");
> fb3bbdb859891e Tien Hock Loh      2016-07-07  307  			return -EINVAL;
> fb3bbdb859891e Tien Hock Loh      2016-07-07  308  		}
> fb3bbdb859891e Tien Hock Loh      2016-07-07  309  	}
> 70cb136f773083 Joachim Eastwood   2016-05-01  310  
> 801d233b7302ee Dinh Nguyen        2014-03-26  311  	return 0;
> 801d233b7302ee Dinh Nguyen        2014-03-26  312  }
> 801d233b7302ee Dinh Nguyen        2014-03-26  313  
> 
> :::::: The code at line 264 was first introduced by commit
> :::::: 801d233b7302eeab94750427a623c10c044cb0ca net: stmmac: Add SOCFPGA glue driver
> 
> :::::: TO: Dinh Nguyen <dinguyen@altera.com>
> :::::: CC: David S. Miller <davem@davemloft.net>
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
