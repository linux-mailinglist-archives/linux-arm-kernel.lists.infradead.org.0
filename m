Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3361CBD14
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 05:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXTkfD3PH5I0DiFekbV+KpogFbgB3sj29yBMTNwRbsQ=; b=L2vl84/ifdASR1
	hy1PYlogDWm4Pz8RmRDc75i1BB50pFLZ2u4HIH5Tr/Ja4pVC9SPxjsinjgmbSkMe3UFZCO86W4mbf
	aq2cYnt4WSiUHbvuNOisSB2MqbkrresvF6nSgwaVdR6sgbozBUSC70EeSnljqMWHCiRsxFAMe9U0f
	pTFD9c94LKu2OPJfOu9plIHhXBZ25Eevau8JM1SPyMriMOZSq6F6DuERLXk3yXdgMeZrIKzU3MwKn
	ue7TPMXW89VhzmhQr/+HKXUx7kmlbXqz6FdRXZAx0hxHI5p/CV/l+FKXIzry0QwP1EAWHa+woFTCe
	KhcZFv4dJgYNkst202Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXGWS-0004wd-6T; Sat, 09 May 2020 03:51:32 +0000
Received: from mail-eopbgr140059.outbound.protection.outlook.com
 ([40.107.14.59] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXGWM-0004vk-1D
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 03:51:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YEQJyFCMiXMZ4TG/KxboPyLA66+xKEgFV9cyNED4KIO68vuh4ygJL4npNQPZNewMimCeNvspLm66+gbRwKyv7JBWDsGzH6QMp4496OKD+ZnCiZaeRAXNhRL7sn1E3qnpO/N5IvAAjO6cZ3lIZBcuXsm3d/wqw17vcIkou3qj/SxgPox5PO+4BwUS6oqfABPbwGo20rRNzC/U/jpB34H4jvGzg/RuUwxJOELMSPyiz/m+eZz2Utj5XhcWbyGDjJl6Gf/Rf0FJGI5nMv5fIUaLNdvOXiHDqR6lUJNBJrI6oxamCoDUiYc634SXhnEm9MNhaw+hf2ESvTd2irJoBwJ6jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/DKw5NJaPrlON8tfFVdPcd3XhjIarmoMZ3zdAUVzwa4=;
 b=nGLcRkZ8z/pQsaOmSzp+2RXsgr4x+t+a0HpP7UAkssW5pwzrARTpZtKTz0PgRhl7MEm0tQZU0/PLMQz82b1DEFDIDTOcFmV44Gyfdu62A9DFl7WbNL9K4UgT7voam75Sau62InZOMxTS3jsNstGiFf+lUeamL6+XjHLG+3tTp6btkAZ0H45oZZ8UTfpiCTZpbU6MHQtXxqWqvQWvLTT8T4pc/O2hTOlo9ZKn5bInhtKGblRRpaOYXlCfhOHTat02UHSn/wrsng0/TvnpIMA3AUlT59KTJzyOJ2n+Gr+TmfjZJ3l/krJp5mZViqviAJ4NTAnrTFgbhsXvCRZr1r/NIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/DKw5NJaPrlON8tfFVdPcd3XhjIarmoMZ3zdAUVzwa4=;
 b=UXMb0PIef1Kza28lxicKeSqK9Cmzd5+xjdWy73boJEiyelFQEgpZVItnQ33WmsL5k2gDehCla/fUYT2vShyu97T5y6AZsmLNEJwTxCDQqYSeXOiuiiRcqGlzueZYY6gYc8P4/rVPUzBe1eLrTbDK0IXCXxqwabq3cYkGIFXFoEA=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4310.eurprd04.prod.outlook.com (2603:10a6:209:3f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Sat, 9 May
 2020 03:51:19 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.2979.033; Sat, 9 May 2020
 03:51:19 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Wei Yongjun <weiyongjun1@huawei.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 Alexandre Bailon <abailon@baylibre.com>, Leonard Crestez
 <leonard.crestez@nxp.com>
Subject: RE: [PATCH -next] interconnect: imx: Fix return value check in
 imx_icc_node_init_qos()
Thread-Topic: [PATCH -next] interconnect: imx: Fix return value check in
 imx_icc_node_init_qos()
Thread-Index: AQHWJa29IiyE1sVgb0mWjOX1icTJP6ifHq6g
Date: Sat, 9 May 2020 03:51:19 +0000
Message-ID: <AM6PR04MB4966FFE3C487D217A91B070280A30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <20200509030214.14435-1-weiyongjun1@huawei.com>
In-Reply-To: <20200509030214.14435-1-weiyongjun1@huawei.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c2e96bff-e72d-4dd5-66da-08d7f3cc3ba5
x-ms-traffictypediagnostic: AM6PR04MB4310:|AM6PR04MB4310:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4310A3330355AEFA6DEAA26A80A30@AM6PR04MB4310.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 03982FDC1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zRgs61Ry4FsLLaaxZMUZjlydhcnkUS4CIz8gMQR8woVeBpL5u8vnpTpjkulfQ986IREA7qYkm+FoDoikJwb3cHyejW2wETEhGoGEcbAVHc4/wl481NDFxr+r4dFPgNtVOvr0YUJkMpkmQZff4mYyRdQqztVyflX/i/QYB4foug+ZE95spY4VKLAYie6FXxRGAeHNS+gEvB6ADoQlYqLOVEqM8bUA9t3XAHJrq+hPl0J3g/1jRdYutVxLLeReqiAouHy4ZCfAd7LWyXwfqZMpoLFH2x4uJhlWCBjeYo4gXhgoQ9wOsT4G3v35mldItlEAoiuhKZHOkoDE5XkxkWIPvdK2Kur21rj+vSPb3oQKTealJfa7otfV8VgVMxIoIXfylKAs6tqJ8fnYebq/tiLT51pfJ+uX4+hLUEztna+UEgS+kk6OMBIsLo1K9pdoKnoY4jxxEeS4ppFDBnFqninHzwVt6eW9+zsMJH/s98zTVwR/2tISeYRUzvEB+Nb8qzdynL7z/TOITH+rRVhCTI3bHQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(39860400002)(346002)(376002)(396003)(33430700001)(86362001)(64756008)(66476007)(478600001)(66556008)(6506007)(52536014)(76116006)(33440700001)(4326008)(66946007)(316002)(7696005)(44832011)(5660300002)(4744005)(66446008)(186003)(8936002)(55016002)(6636002)(26005)(2906002)(54906003)(71200400001)(7416002)(33656002)(110136005)(8676002)(9686003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: gbcHeIFuhjU1Rus+s8OQXmRAYE3B6jE41einC6fyBTjJ8LYuFdtqEOE2thRgFkMjFCja5oZqMGlly4SUto1O1eYrS6F7UMJLE3Tz/Ju49usi9pLRFuEr82z00I78wU1l8qwwjVCvgJQPhcQ40eTvRALG2JjVFkFRYUTVLuKoHZnc5uSAfbfmQqUpfZLtbqPKqsS7ZfqmthKs7CV2xlaXazxjxzFdHxZDkN7mF3kSJJQov6dwAEeOxmqDi4J6d9QCq88zMQlcZ4TmZ/d/eTU8zvbS8FnQGaDGj94c+URURD/3By0xbRotBs5MY2xAm2r9sueWIjM92LiJOCPZt807vpIJovoGlaNZFBtUH6zeKoRpeGtrQDgukNwbLJHazVntxp4X7PcUmVz4OG20ZpS3rIEMplgCFle2iuUHLu9fufN4702LSSUvwApdRdHf74G2NqZizehlu6wNaCWbAcyXXoHZNUbDdocdtoTFRFL2v0ucUwdwNQWvvTmHKL2eR6oG
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2e96bff-e72d-4dd5-66da-08d7f3cc3ba5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2020 03:51:19.4648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LKPlzNSvPrJ7lIE/2UgcXQvx7CKDVJhqk9SZ0ohueLCfjNUM+Nc7rir2BdjiOvZbg6xKt+g1O7GXrT5lDHOctQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4310
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_205126_121119_AFD23D85 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.59 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Hulk Robot <hulkci@huawei.com>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Wei Yongjun <weiyongjun1@huawei.com>
> Sent: Saturday, May 9, 2020 11:02 AM
> 
> In case of error, the function of_parse_phandle() returns NULL pointer not
> ERR_PTR(). The IS_ERR() test in the return value check should be replaced with
> NULL test.
> 
> Fixes: f0d8048525d7 ("interconnect: Add imx core driver")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
