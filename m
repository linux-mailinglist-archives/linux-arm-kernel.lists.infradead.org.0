Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C133BF3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 00:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8FuX4TT9iQjXCHNC6Glg32DsutxhxN7swMtWJu3Cxdo=; b=GbxKFl8WD5hRVY
	AqfnXP1JyRzM/PwFNGDFqAr/d19qiL3KyiRTHgRFUeu9XNPFn0BCvyPJVwB2OhjB0qCB1p6OhtrZy
	25Z66mfVLMimNuFIkCDDgvJ2984GPblw8F0mWI/OAAbdFBqsjzR24y6Cm1PfFj6gDh0ZH6MeTnrUZ
	yZ7Jjzrgf1CE22C1xFYBrJg13+moM2RR/0J6JpjUyjBwUbWebJy7kDYkOF8y8Vd916pTIzcq9L2OW
	arhrsH9jVq7JiWVao6VuaJMLJcgRhjC185i0GWFNgllFWSPpyEquXOgfYsIVc1PPCEuZxXNkauBO3
	NaN5r4ZjhV15MG5xEbWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSUi-0000BU-VI; Mon, 10 Jun 2019 22:10:25 +0000
Received: from mail-eopbgr20047.outbound.protection.outlook.com ([40.107.2.47]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haSUU-0008VF-W4
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 22:10:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pnUhM6lzbUUmwqBv1uRHu1Q1o2Qy1bISxKMAFr947kI=;
 b=TNBC7xombinh6IAlKufSLIr8Oa/T6qvBF4IXxli/WDTq2PrxSLLk10bh1hLeSA5iQ5xh9GVgNsw60VxqLtnsETofvIUX0pbA1VFHJK4opJ7Avg5ixoxr47Szi07r2UbRqN3V/DuPFXQH+MJ+1AXv3B8IBfqnzpg3Hrpj24dXD3w=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5903.eurprd04.prod.outlook.com (20.178.205.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Mon, 10 Jun 2019 22:10:07 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 22:10:07 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Alexandre Bailon <abailon@baylibre.com>, Anson Huang <anson.huang@nxp.com>
Subject: Re: [RFC PATCH 1/3] drivers: interconnect: Add a driver for i.MX SoC
Thread-Topic: [RFC PATCH 1/3] drivers: interconnect: Add a driver for i.MX SoC
Thread-Index: AQHU2dPAGEvIM5gAt0ufevh4gpMf+A==
Date: Mon, 10 Jun 2019 22:10:07 +0000
Message-ID: <VI1PR04MB5055980A24CAC07010E6192AEE130@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190313193408.23740-1-abailon@baylibre.com>
 <20190313193408.23740-2-abailon@baylibre.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0950b67e-8523-4625-5409-08d6edf0659d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5903; 
x-ms-traffictypediagnostic: VI1PR04MB5903:
x-microsoft-antispam-prvs: <VI1PR04MB590340E245DAD739AAEA3B08EE130@VI1PR04MB5903.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(376002)(366004)(136003)(189003)(199004)(8676002)(73956011)(68736007)(66556008)(6506007)(53546011)(66066001)(102836004)(81166006)(66946007)(81156014)(229853002)(53936002)(99286004)(7696005)(66446008)(66476007)(76176011)(64756008)(33656002)(74316002)(6436002)(14454004)(54906003)(478600001)(71190400001)(6636002)(5024004)(71200400001)(256004)(14444005)(76116006)(91956017)(8936002)(110136005)(9686003)(55016002)(305945005)(3846002)(6116002)(186003)(25786009)(5660300002)(44832011)(86362001)(52536014)(26005)(6246003)(486006)(4326008)(446003)(316002)(2906002)(7736002)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5903;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mj43Mubsto0+pYgjjiIHsx1bkGFIAxq7Aq+fazA4FwAuZNi4XZDbsbhtnwZcKtaKWnFt003Nmeda53VUfLF3D/uqt8k7xxYnLeRJATflUX6ZZag6X91TB6We+0LQvotK150jFylfYSBcBxfCGdBYug4mCXicxn672KsH2dbq/G8HNPrWyRPQeKffdVZ0o6xSgsDZQ1/G3zVx4R63j15dHOGsLf6zOCzObOZQc5HLXtGdH42bBf+r+8UZRcTlbRRMwgZH3afsIq0Yt25TZ5LWAINpsmbw+fMPbFPXzrCCBft+FFD4+vxLw9c2IQaEq3Y3bQrMxDihQ1vuF7EXsKbuQcdNMJu1JIdFsjvQgZmNmCrFZN4fKGJTiGdU8bL8hcz9K3zW29p7VtkSBxNfgazYkZ4noLJisOO/zLqDnb7w7ic=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0950b67e-8523-4625-5409-08d6edf0659d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 22:10:07.0868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5903
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_151011_138193_909F45F3 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ptitiano@baylibre.com" <ptitiano@baylibre.com>,
 "georgi.djakov@linaro.org" <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/13/2019 9:36 PM, Alexandre Bailon wrote:
> 
> This adds support of i.MX SoC to interconnect framework.
> This is based on busfreq, from NXP's tree.
> This is is generic enough to be used to add support of interconnect
> framework to any i.MX SoC, and, even, this could used for some other
> SoC.

> Thanks to interconnect framework, devices' driver request for
> bandwidth which is use by busfreq to determine a performance level,
> and then scale the frequency.

This part is difficult for me to understand:

> +static int busfreq_opp_bw_gt(struct busfreq_opp_node *opp_node,
> +			      u32 avg_bw, u32 peak_bw)
> +{
> +	if (!opp_node)
> +		return 0;
> +	if (opp_node->min_avg_bw == BUSFREQ_UNDEFINED_BW) {
> +		if (avg_bw)
> +			return 2;
> +		else
> +			return 1;
> +	}
> +	if (opp_node->min_peak_bw == BUSFREQ_UNDEFINED_BW) {
> +		if (peak_bw)
> +			return 2;
> +		else
> +			return 1;
> +	}
> +	if (avg_bw >= opp_node->min_avg_bw)
> +		return 1;
> +	if (peak_bw >= opp_node->min_peak_bw)
> +		return 1;
> +	return 0;
> +}
> +
> +static struct busfreq_opp *busfreq_cmp_bw_opp(struct busfreq_icc_desc *desc,
> +					      struct busfreq_opp *opp1,
> +					      struct busfreq_opp *opp2)
> +{
> +	int i;
> +	int opp1_valid;
> +	int opp2_valid;
> +	int opp1_count = 0;
> +	int opp2_count = 0;
> +
> +	if (!opp1 && !opp2)
> +		return desc->current_opp;
> +
> +	if (!opp1)
> +		return opp2;
> +
> +	if (!opp2)
> +		return opp1;
> +
> +	if (opp1 == opp2)
> +		return opp1;
> +
> +	for (i = 0; i < opp1->nodes_count; i++) {
> +		struct busfreq_opp_node *opp_node1, *opp_node2;
> +		struct icc_node *icc_node;
> +		u32 avg_bw;
> +		u32 peak_bw;
> +
> +		opp_node1 = &opp1->nodes[i];
> +		opp_node2 = &opp2->nodes[i];
> +		icc_node = opp_node1->icc_node;
> +		avg_bw = icc_node->avg_bw;
> +		peak_bw = icc_node->peak_bw;
> +
> +		opp1_valid = busfreq_opp_bw_gt(opp_node1, avg_bw, peak_bw);
> +		opp2_valid = busfreq_opp_bw_gt(opp_node2, avg_bw, peak_bw);
> +
> +		if (opp1_valid == opp2_valid && opp1_valid == 1) {
> +			if (opp_node1->min_avg_bw > opp_node2->min_avg_bw &&
> +				opp_node1->min_avg_bw != BUSFREQ_UNDEFINED_BW)
> +				opp1_valid++;
> +			if (opp_node1->min_avg_bw < opp_node2->min_avg_bw &&
> +				opp_node2->min_avg_bw != BUSFREQ_UNDEFINED_BW)
> +				opp2_valid++;
> +		}
> +
> +		opp1_count += opp1_valid;
> +		opp2_count += opp2_valid;
> +	}
> +
> +	if (opp1_count > opp2_count)
> +		return opp1;
> +	if (opp1_count < opp2_count)
> +		return opp2;
> +	return opp1->perf_level >= opp2->perf_level ? opp2 : opp1;
> +}
> +
> +static int busfreq_set_best_opp(struct busfreq_icc_desc *desc)
> +{
> +	struct busfreq_opp *opp, *best_opp = desc->current_opp;
> +
> +	list_for_each_entry(opp, &desc->opps, node)
> +		best_opp = busfreq_cmp_bw_opp(desc, opp, best_opp);
> +	return busfreq_set_opp(desc, best_opp);
> +}

The goal seems to be to find the smaller platform-level "busfreq_opp" 
which can meet all aggregated requests.

But why implement this by comparing opps against each other? It would be 
easier to just iterate OPPs from low to high and stop on the first one 
which meets all requirements.

The sdm845 provider seems to take a different approach: there are BCMs 
("Bus Clock Managers") which are attached to some of the icc nodes and 
those are individually scaled in order to meet BW requirements. On imx8m 
we can scale buses via clk so we could just attach clks to some of the 
nodes (NOC, DRAM, few PL301).

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
