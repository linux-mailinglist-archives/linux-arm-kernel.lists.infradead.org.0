Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BA712AEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 11:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=FGMoc1kFY698LS+a+CG1yViR9ebfYIjbqYex59QM5Jo=; b=VoRd/UN4EyG15W
	eU33iYop+dmvNotGVDY/FarpZlE2TfsVKTK9zCc0X/VRepykdlzann6zPp7fanEln3vEja02mVPOV
	hqhaNFH/oCfEjgm26K2N6ssjmSrDX3rRyLttp74+CLUrzpp1kcLK5kidr533kOO64UCeSFKu1pHM3
	7cz+hV4koEJMLgN0tyaH7fIe9Q937+8ng6n3W3pAsIfYtXkDvTHif1AVrmkwlxnseVcys1buJouQZ
	gsugQverSNHuxt05oQhEehPm0mJyXz2ks+bjV5tBzIZsm4IrjsM5nnd/Yyo8IETsSeA/QmS6E2Ol3
	mr5KwoI14IqwhSFk1dSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUl4-0002z2-D4; Fri, 03 May 2019 09:45:34 +0000
Received: from mail-eopbgr10064.outbound.protection.outlook.com ([40.107.1.64]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUkO-000167-Jw
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 09:45:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GgjsFt9CS2wYblioVnW9GXVgsBc7Lxls5TP+tJdMSTg=;
 b=sY8KpSTvAH+KsyJjtsSLHvWgKlVYbYdgjOKkIUddQbWvK4OuaZUQG1ppEgdjPcndRTJ4j5hNm/07/y54CtrZpFkz9iiJsA5UvZqsW920N56EsXi7WymjKnSnZh3nTJPlQshfDVBJ8NdjodaoezXEDfmNeskblwmksBQpTS+aLJc=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5026.eurprd04.prod.outlook.com (20.177.40.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.16; Fri, 3 May 2019 09:44:48 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.008; Fri, 3 May 2019
 09:44:48 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v2 1/3] cpufreq: Add imx-cpufreq-dt driver
Thread-Topic: [PATCH v2 1/3] cpufreq: Add imx-cpufreq-dt driver
Thread-Index: AQHVATiRBI3TxTCIzUmxtrShT8luGA==
Date: Fri, 3 May 2019 09:44:48 +0000
Message-ID: <AM0PR04MB64345196835732B019F1D885EE350@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <cover.1556836868.git.leonard.crestez@nxp.com>
 <df3a41d8bf57b8dd8f8c17599eeca98d6e43962c.1556836868.git.leonard.crestez@nxp.com>
 <20190503065227.afqgmylbjwhg2mc3@vireshk-i7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02c6117b-65d7-47bf-3a3f-08d6cfabfb72
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5026; 
x-ms-traffictypediagnostic: AM0PR04MB5026:
x-microsoft-antispam-prvs: <AM0PR04MB502644CF3D3FD5305C9C076BEE350@AM0PR04MB5026.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(376002)(346002)(396003)(199004)(189003)(102836004)(6506007)(81166006)(186003)(229853002)(446003)(3846002)(81156014)(71190400001)(7736002)(476003)(53546011)(486006)(5660300002)(6116002)(71200400001)(8936002)(14454004)(66556008)(66066001)(64756008)(44832011)(73956011)(66446008)(66946007)(6436002)(66476007)(76176011)(7696005)(6916009)(8676002)(99286004)(55016002)(478600001)(305945005)(91956017)(316002)(26005)(6246003)(52536014)(86362001)(4326008)(76116006)(68736007)(53936002)(256004)(9686003)(14444005)(33656002)(54906003)(74316002)(2906002)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5026;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +3SbIyqczB4WcVuMTIx7eEqlwDW7paAcWNyhRKdjgHVfhIHl1BNQW2ujWUqcRAyy12ipAxyujYyGzCGyUq26zgFGQymSWu1Fe10zAJFYKFOaEzM2FZFSSB1WfyUJWs+OBbyI5a4lTBMo+Hh9A3w7cjsbJxpmsMHgzB8gFRBMQWnLvEXfln0Bk8K43ByVkxyyVakAiHcQQ8MBo47RSU7WmYosv05L/pcnqaESoV97pJvTuODz9rMlCwtk663zrIbY1p/6sMKgzH9H1ZAF44zJ9swN4oljmzFOy+ZWfSze/x1xz+5iFPYPBiII4DWQ4SvnJxE8myGkMqYeJZilQ5QsRNE979bo4okNJ6o0Tmmeep+UPSe9KfI76412DIA1V/6RM+SCpgA9QNzdQ5hbWOGLP/7qhdaquxvWuERv9q8Sncw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02c6117b-65d7-47bf-3a3f-08d6cfabfb72
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 09:44:48.3069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_024453_597856_F6C20A80 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.64 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03.05.2019 09:52, Viresh Kumar wrote:
> On 02-05-19, 22:44, Leonard Crestez wrote:
>> Right now in upstream imx8m cpufreq support just lists a common subset
>> of OPPs because the higher ones should only be attempted after checking
>> speed grading in fuses.
>>
>> Add a small driver which checks speed grading from nvmem cells before
>> registering cpufreq-dt.
>>
>> This allows unlocking all frequencies for imx8mm and imx8mq.
>>
>> diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
>> @@ -90,10 +90,20 @@ config ARM_IMX6Q_CPUFREQ
>>   	help
>>   	  This adds cpufreq driver support for Freescale i.MX6 series SoCs.
>>   
>>   	  If in doubt, say N.
>>   
>> +config ARM_IMX_CPUFREQ_DT
>> +	tristate "Freescale i.MX8M cpufreq support"
>> +	depends on ARCH_MXC && CPUFREQ_DT
>> +	default m if (ARCH_MXC && CPUFREQ_DT)
>> +	help
>> +	  This adds cpufreq driver support for newer Freescale i.MX series
> 
> "newer" is a relative thing, it won't be newer an year or two later. Just drop
> it.

I meant "newer than i.MX6". Various attempts at adding explicit cpufreq 
drivers for newer SOCs were rejected in favor of cpufreq-dt.

I'll change to mention i.MX8M explicitly and update if 7 is added.

>> +static struct platform_driver imx_cpufreq_dt_driver = {
>> +	.probe = imx_cpufreq_dt_probe,
>> +	.remove = imx_cpufreq_dt_remove,
>> +	.driver = {
>> +		.name = "imx-cpufreq-dt",
>> +	},
>> +};
>> +module_platform_driver(imx_cpufreq_dt_driver);
> 
> Why add another virtual device-driver pair here? The only reason why we have
> been adding it was to get deferred probe to work which doesn't look like the
> case for this driver. Why not do everything from the init() routine ?

The imx-cpufreq-dt platform_driver reads from fuses (nvmem/imx-ocotp) 
which can be theoretically be built as a module and also has clock 
requirements. No sure we should rely that the call to read from nvmem 
never returns EPROBE_DEFER.

I'm not sure which "init()" you mean, the registration code is inside 
soc driver and at that point the fuse driver might not be available.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
