Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F6C2525E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExgC83y3QxTAodblui7awsqa0LPAqxzljCY2v5LPK+c=; b=EWfQvAWCH5HRo7
	OR74vMqDhmsBl9UpykEsmtD9JydqY55fQHAm68vlLTMXe2nwMHcIDTRjVeGFwM8QOAtDpH/N70qf2
	fLZPvnViK56sD6xZYbgDp8TR3FsIQkf8mCohKRSCEld3zq+UsBRxDj4hdalmp/tp2dc1K9Q44HpoE
	t1NHrjRKjUX68N8P8Tv+jhBnGhaGHUE/+/dDh8HYOaXBz5hu07C5w4yI1yZ21asY+NAZCQ6oQOZld
	pqEYdcWX8LBlBqwjguj1nQYY0ICBX2cMIE8+/CDNj9dkMWUH13CjQ+ObHMPB7YzViq+2CgViDXCDs
	9vUKCRPI96VjEjgp3oIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5yv-00070w-NG; Tue, 21 May 2019 14:43:09 +0000
Received: from mail-eopbgr10085.outbound.protection.outlook.com ([40.107.1.85]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5yn-0006qE-VV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:43:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bAe9D7hevjHlYHPyoDMgrvMn9mfWUeel6DvzUcwfE18=;
 b=F4YwiU3QF3zbomZfR9IY+vjKBxtNsWaln1n3TkehQUE9p+SQGgnNBnYpkKkpGXYsRzW+5GS91sYZjU56Xt1usyX92gaAk9tFBYaxeOAyRJC3bVxEuegq1WzDP6IDLZHLMuQ1jfbgx4YDtCnOVQjULmUjtGFDZkjPYcE6Hf6Ff2E=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3930.eurprd04.prod.outlook.com (52.134.71.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 21 May 2019 14:42:58 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 14:42:58 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>, Leonard Crestez
 <leonard.crestez@nxp.com>
Subject: RE: [PATCH V4 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V4 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVDHRAx0Mm9bAN6USp/nK7XaFMrKZ1igmAgAAjXCA=
Date: Tue, 21 May 2019 14:42:58 +0000
Message-ID: <DB3PR0402MB3916EED0DD292956887E839DF5070@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1558071840-841-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB6434643CA1A6807347DCAAF8EE070@AM0PR04MB6434.eurprd04.prod.outlook.com>
 <61fb2d82-67e7-ab2d-961e-78d018cf3272@free.fr>
In-Reply-To: <61fb2d82-67e7-ab2d-961e-78d018cf3272@free.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6168bb3-4ffe-44e2-deec-08d6ddfa9e27
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3930; 
x-ms-traffictypediagnostic: DB3PR0402MB3930:
x-microsoft-antispam-prvs: <DB3PR0402MB39303DD3C926656395D9CC79F5070@DB3PR0402MB3930.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(39860400002)(366004)(136003)(13464003)(199004)(189003)(66946007)(76176011)(66446008)(73956011)(26005)(66556008)(64756008)(110136005)(316002)(76116006)(6636002)(66476007)(55016002)(229853002)(44832011)(14444005)(256004)(9686003)(68736007)(2906002)(99286004)(54906003)(11346002)(6506007)(476003)(14454004)(53546011)(446003)(7696005)(6436002)(186003)(71190400001)(6116002)(71200400001)(4326008)(3846002)(478600001)(53936002)(102836004)(86362001)(52536014)(74316002)(8936002)(305945005)(7736002)(33656002)(66066001)(8676002)(5660300002)(81166006)(81156014)(6246003)(25786009)(486006)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3930;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Jon27ZC59QlF8oPWc1tstJgF1BSiCVvz7GSJzcHaVXeL8TRz7DD0doPdsNk+i32bj0X2xemqtgs7elrUm5/XsvlmG/vaTRjtxQyl5pwvQT009JNz+Jar5RZEy/KxKYCPaARwm+47JV33u0JxXUn9VBe43tJ5wzRsvimA1TLDcsmivn9Ff3ZbBg7wmoeqQFk0Wti/RqLv9DOhs5n8/781+4qWolZJGYuh85zLaaH7WGnvbJyiYM6ABiuII9Xa+WwZEkeu85Tg/G6DO1br5ERDplPAzi7L9LxLG502zM9oXgk44LgCN7kFbyaU8U/u1CHm2Gh9Qyc0FYFCOj8k7Zt+YYlvBWOh1zSOQuQH1V1WCtjiSAuH8Swc5w/9hgP5wKtntooNn4nytzs2w6+hSuz8LXd8Pc+xc5/yXNFsCBX4nPU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6168bb3-4ffe-44e2-deec-08d6ddfa9e27
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 14:42:58.3230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3930
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_074302_152473_EE552661 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DT <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marc/Leonard

> -----Original Message-----
> From: Marc Gonzalez [mailto:marc.w.gonzalez@free.fr]
> Sent: Tuesday, May 21, 2019 8:34 PM
> To: Leonard Crestez <leonard.crestez@nxp.com>; Anson Huang
> <anson.huang@nxp.com>
> Cc: Mark Rutland <mark.rutland@arm.com>; Rob Herring
> <robh+dt@kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>;
> DT <devicetree@vger.kernel.org>
> Subject: Re: [PATCH V4 1/2] soc: imx: Add SCU SoC info driver support
> 
> On 21/05/2019 13:56, Leonard Crestez wrote:
> 
> > On 5/17/2019 8:49 AM, Anson Huang wrote:
> >
> >> +	root = of_find_node_by_path("/");
> >> +
> >> +	np = of_find_compatible_node(NULL, NULL, "fsl,imx-scu");
> >
> > It's possibly not very important for root or FW communication nodes
> > but you should probably of_node_put those back.
> 
> Isn't it better/simpler to use of_root?
> 
> extern struct device_node *of_root;

You are right, I will add below changes into V5, one change is to use extern of_root
directly, the other is to add of_put_node() after "fsl,imx-scu" is found.

@@ -56,7 +56,6 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
 {
        struct soc_device_attribute *soc_dev_attr;
        struct soc_device *soc_dev;
-       struct device_node *root;
        u32 id, val;
        int ret;

@@ -72,8 +71,7 @@ static int imx_scu_soc_probe(struct platform_device *pdev)

        soc_dev_attr->family = "Freescale i.MX";

-       root = of_find_node_by_path("/");
-       ret = of_property_read_string(root,
+       ret = of_property_read_string(of_root,
                                      "model",
                                      &soc_dev_attr->machine);
        if (ret)
@@ -132,6 +130,8 @@ static int __init imx_scu_soc_init(void)
        if (!np)
                return -ENODEV;

+       of_node_put(np);
+
        ret = platform_driver_register(&imx_scu_soc_driver);
        if (ret)
                return ret;

thanks,
Anson

> 
> Regards.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
