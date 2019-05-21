Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E9224D8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 13:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=nWGfw5M1DAZ/KMUu7WifbTw7qhwCn357wcSJ5GkWeqQ=; b=N7p8syrDOki29T
	88FZDRSdPDRLCBsx+rZ38Lo/X+NEjt9XtRzg+McNUynT2XH2YELVj12PLTWtzOphOFdtXSRXLAiqu
	iN/tarsZogs6rE5mCOuUJXxt0KoCgmS+XkOuUJL9Y5ssPjjV0JFKywNz7qu2BgU7u1/ky4djnnILP
	/x+2xz4NVis8r3mMqyK3irVblVK3bIAKOKTLF1EshcGt8V5AMhetUFfVz0ISkcKJnVJdoBGCtqP32
	77pZ5V3DIm7WLxf+PCZJnvSVnFsDRTaYm58naaJS9j5E9ulN8BJSTELcrnfBE7qQdGQKdJbgLTx0l
	f7ZyFCwR0OQJHd37080A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2ZB-0005ep-Rf; Tue, 21 May 2019 11:04:21 +0000
Received: from mail-am5eur03on0629.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::629]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2Yt-0005Ry-GW
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 11:04:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/JCKRJ/rZ5z3f2Y54LW83v4tUbvidtizOVuCM8lLLss=;
 b=ISrC8fdRNh5Kkj54KhALQM+u1ftNtZ9XKkFq6pUzGTspr4eGrdnJtdQbUJcuo4eUbsigHUmtQHL2JM7yrTVxyi2Oj8w8MKf6r9xPihLb8CDD7g36ADeQXJzM4EPOAXi+YVAdnaUKzkbvr9WrydUvPGaxA9cvljSeB2ZfuqQ0lN0=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5235.eurprd04.prod.outlook.com (20.177.41.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 21 May 2019 11:03:57 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 11:03:57 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: Re: [PATCH 1/2] soc: imx: soc-imx8: Avoid unnecessary of_node_put()
 in error handling
Thread-Topic: [PATCH 1/2] soc: imx: soc-imx8: Avoid unnecessary of_node_put()
 in error handling
Thread-Index: AQHVD7YvdNtmZ2uz6UeyYdwfC+FzEA==
Date: Tue, 21 May 2019 11:03:57 +0000
Message-ID: <AM0PR04MB6434C99FC1B4F12477F94064EE070@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <1558430013-18346-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08b4d7ba-1115-4e59-1d18-08d6dddc05b4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5235; 
x-ms-traffictypediagnostic: AM0PR04MB5235:
x-microsoft-antispam-prvs: <AM0PR04MB5235967920BB3111B1C45F64EE070@AM0PR04MB5235.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(136003)(39860400002)(346002)(366004)(199004)(189003)(486006)(6246003)(6116002)(2906002)(102836004)(8676002)(14454004)(186003)(44832011)(305945005)(26005)(229853002)(9686003)(7736002)(86362001)(316002)(476003)(53546011)(76176011)(6506007)(256004)(25786009)(2501003)(3846002)(7696005)(478600001)(6436002)(66556008)(446003)(54906003)(64756008)(4326008)(66476007)(110136005)(33656002)(73956011)(66446008)(66946007)(76116006)(52536014)(53936002)(74316002)(99286004)(81156014)(8936002)(55016002)(4744005)(5660300002)(66066001)(71190400001)(81166006)(71200400001)(68736007)(91956017);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5235;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9VFXH3YvISyNLG4GB6VTwK9Bl4++Tb/xNUdFRmvhR4Gbh1/pWIxWP4xtbR0RBly5pwnNfIv6KNpCG/gdRCT+QkG3OgsVSJIYsbBRGrgs5xngq2fPbnuuPzNMKT6YugoK+KR8BuaYLQyluG0y1GyJiaYa8AGLOV8d2h3I2HvB3RcJB2J2QMPSW2XY/NgijiDbFJ2t5nym7GZZ4+QNWaKoCGMHdxTfoCYzAR2r9csBKX0e6I9/lR12sMxJoc01Cs4Z6zQVN6Xn7+x+4PA15Il3hUy+WICdVXdf+PzQZUWys3fSS3YLbSQrL6OPLViZvGig1IdNahjFT35Pff42M9YYafYYfhD53OVJA2U7z1x08Ur9v+UlqGae/eKeER5lnixtLpAIw6MhfIl3G2+sbnHX2nUlXKFuR3v0q6ULOhPrZP4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08b4d7ba-1115-4e59-1d18-08d6dddc05b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 11:03:57.6798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_040403_609493_534CE00B 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:629 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Abel Vesa <abel.vesa@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/21/2019 12:18 PM, Anson Huang wrote:
> of_node_put() is called after of_match_node() successfully called,
> then in the following error handling, of_node_put() is called again
> which is unnecessary, this patch adjusts the location of of_node_put()
> to avoid such scenario.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

For both:

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

I was thinking that maybe you could of_node_put as soon as you were done 
with it but the model is read straight into soc_dev_attr so just freeing 
everything at the end makes more sense.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
