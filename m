Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F19B12FD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:12:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Y4XI9X7s5pz5k0kBZ/v5YKrDbTK6Jh72kHd71AWOP1E=; b=ol80H+z8L+zOZQ
	gemxuNzRQhVb6uqRIgbllGeS916vMCS8wnNL9TlLFHBdrO0fIXEJQWgjQ1hHvmzfyUYn0tC0NpG50
	im7HuwbomMA/7UmTTdLW+zw2sa6cQyAaK6hm5iykjnBuqJ1hlXDNUhDBG6iIRspLLEWa6lJIxpTU2
	IaZLamuNbEcVARrhaR5Ap8dyvh+O5wAneK4eK+0WJfM8pauHVuv1l08GxW5WlEgwJzBYA4QoNFtax
	1qKgeB8OBLfSaXq2R51xmUY3UrE6rdL4A1/5K3dn5abEVW4KTXgQzaq5d00iWsNuIv+/rx20WkftM
	PKgbUyoEDAbYyp5T5+VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYv6-0002hL-84; Fri, 03 May 2019 14:12:12 +0000
Received: from mail-eopbgr70080.outbound.protection.outlook.com ([40.107.7.80]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYuz-0002gr-Nb
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:12:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i3YEQCGMMv8T1WHgbvrF0FwnSrUBrL8AVQNqBBMBGvg=;
 b=VPX2WdN1VjCXTz1LIGCBs+mPOqH+Yq5NXiNV5oXL2yIggMtc+BNVLmie775pY7CjDzR8879yV5TQhxF24iXIY3H4qhfagVBIXpbEmkYoB+k+1TvXGm1JoRqcSpN3eAIH5Sn0g1HlfLjaVgaqVeq5rOk+1TOcNPxG2Zo7Nm8SqfE=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4275.eurprd04.prod.outlook.com (52.134.91.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Fri, 3 May 2019 14:12:01 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.008; Fri, 3 May 2019
 14:12:01 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 6/6] i.MX defconfig update for 5.2
Thread-Topic: [GIT PULL 6/6] i.MX defconfig update for 5.2
Thread-Index: AQHU+OWBT0ux8MB+H0yoUPF9unnDpQ==
Date: Fri, 3 May 2019 14:12:01 +0000
Message-ID: <AM0PR04MB64343811EB30F53BBB585884EE350@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <20190422082836.3734-1-shawnguo@kernel.org>
 <20190422082836.3734-6-shawnguo@kernel.org>
 <20190429162910.l27ewbfvvestb474@localhost> <20190430022636.GA25377@dragon>
 <AM0PR04MB64345FA41350834C7552E81FEE3A0@AM0PR04MB6434.eurprd04.prod.outlook.com>
 <20190501004139.GB25377@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d79a1c38-2e2a-40a0-3020-08d6cfd14ffa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4275; 
x-ms-traffictypediagnostic: AM0PR04MB4275:
x-microsoft-antispam-prvs: <AM0PR04MB42756283E51040A64E5D5DB5EE350@AM0PR04MB4275.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(39860400002)(366004)(346002)(376002)(396003)(136003)(199004)(189003)(68736007)(14454004)(25786009)(4326008)(86362001)(15650500001)(476003)(26005)(74316002)(486006)(186003)(446003)(44832011)(2906002)(53936002)(229853002)(5660300002)(6246003)(54906003)(110136005)(478600001)(6116002)(8936002)(3846002)(52536014)(55016002)(9686003)(81156014)(8676002)(81166006)(316002)(305945005)(7736002)(6436002)(66476007)(66556008)(64756008)(256004)(66446008)(33656002)(91956017)(76116006)(14444005)(66946007)(66066001)(102836004)(99286004)(7696005)(76176011)(71190400001)(71200400001)(73956011)(6506007)(53546011)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4275;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: j55I75MIFZsF+D1zBUhoxg9iXtt2oNmpnNGgKG1ovmd1u8fmGLSu0dtVzUPPEG8Ueh62jIqeFrNEt1CH76D7jwVZQ8VXCtEO+TKr98v+7v9tYJggR0WcmJ2a7T3gBnQGoZy3eWz2EOenbSR/nOlJto/GF77GOGESFEZW8FNijf1sLX+9SUmoFIAFdgDo9RkzcqkjNJSGvygfJFHKLzbFEIGpoh6vi33jZ+sf/C7nabypQcoJZs/AHgpCFUZCGMWwePAZSRcI3uZXROzSlX4zA2AKL7dhx5tsSeHGzuaipBPxCLUvhbVIJISYBVFj27LZO2H1xwJTvcrhSpwvnUoezIYxiigkr/9YYcjZWtb3oiAOUJ2+R3ECpI/gG8PuQhYqZKtjX+145F5DWd9LtKxaWSXkz1VtzhlwccWW/qOm/Js=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d79a1c38-2e2a-40a0-3020-08d6cfd14ffa
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 14:12:01.6054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4275
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_071205_844208_4FFA456D 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.80 listed in list.dnswl.org]
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Stefan Agner <stefan@agner.ch>,
 Leo Li <leoyang.li@nxp.com>, "arm@kernel.org" <arm@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01.05.2019 03:42, Shawn Guo wrote:
> On Tue, Apr 30, 2019 at 09:18:18PM +0000, Leonard Crestez wrote:
>> On 4/30/2019 5:27 AM, Shawn Guo wrote:
>>> On Mon, Apr 29, 2019 at 09:29:10AM -0700, Olof Johansson wrote:
>>>> On Mon, Apr 22, 2019 at 04:28:36PM +0800, Shawn Guo wrote:
>>>>> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
>>>>>
>>>>>     Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
>>>>>
>>>>> are available in the Git repository at:
>>>>>
>>>>>     git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-defconfig-5.2
>>>>>
>>>>> for you to fetch changes up to a3f12aac21848796f5b5c6e9ce2f04e411ec2129:
>>>>>
>>>>>     arm64: defconfig: NVMEM_IMX_OCOTP=y for imx8m (2019-04-22 10:33:53 +0800)
>>>>>
>>>>> ----------------------------------------------------------------
>>>>> i.MX defconfig update for 5.2:
>>>>>    - Enable PCF857X GPIO expander and SIOX bus driver support for
>>>>>      imx_v6_v7_defconfig.
>>>>>    - Enable more drivers for i.MX8 platform support in arm64 defconfig:
>>>>>      SNVS RTC, SCU Watchdog, SPI, i.MX8MM pinctrl and clock, LPI2C,
>>>>>      ROHM_BD718XX PMIC and OCOTP NVMEM.
>>>>
>>>> All of these are enabled as =y. I don't think all of them are critical for
>>>> booting the system up to a rootfs. Can you please switch over any non-critical
>>>> drivers to =m?

>>   > - CONFIG_GPIO_MAX732X=y
>>   > - CONFIG_I2C_IMX_LPI2C=y
>>
>> Other I2C/GPIO drivers are "y" but again can't point to anything
>> specific that would fail.
> 
> I understand that the rootfs in Olof's context might be ramdisk, and
> missing GPIO driver shouldn't be a problem.  However, I really would
> like build a kernel image out of defconfig that can run into rootfs on
> SD/MMC or NFS, which would be much more useful.  In that case, drivers
> like GPIO should be required.

Indeed, some boards might use i2c gpio expanders to reset SD/MCC or 
ethernet phys; tracking down exactly which i2c gpio expanders are used 
in this way in order to fix boot issues wouldn't be fun.

--
Regards,
Leonard


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
