Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83DA101AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 23:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=arjIoK7+XV62nB8LqsgkWr2TB8Dn0xqR7YePWlwjyF8=; b=pe9f8cIr4M57Nn
	2GqXCL/GenHCIOh3ZeOeCcaC7rVUWG9B6dAxj7QGyCJGrQQxwchOyjgPa7spT2bLJ3IFaksrEtU4M
	yDj8v+JBJ4Tys20L9+E+uO68XfF8BsAv1CLXz4k07R2fVXc16xIhz6U1A5jqNYc0rgdhUf5lW33wo
	KJdhio7e8+GFyn8KZigM+NZuPkXtlyeEMfMKi5jiGJHWgAyrnnpaVbhsVbzlCnGgIouKRV17jCVUq
	MxZxNV57D+yBYG02iC/y59gBKswrYcMUkJ7GMiZ+JJFAufXlSJNFqHon3seBbdb3iq8Sv8U5fq6Q3
	vqfewpoXX8Qbw9uCYPJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLa94-0002cl-Iy; Tue, 30 Apr 2019 21:18:34 +0000
Received: from mail-eopbgr10067.outbound.protection.outlook.com ([40.107.1.67]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLa8w-0002cN-Tb
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 21:18:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iXrbYF8ZCU2w/WXnxnvt5e2ZKItGMNbl3lXm6z+Vmz0=;
 b=HJbmgtUxIXMJQre0ZjMZzekrNvn5gPc1P4P7tTituc8iuQNaIQbuLRs62RO9/mZh8SVCIwgigwt430O0eaDYb77Dy2kQDZQKId2FASQq0YaSoXe+D6dSNZksZ8UIZ99f3fXCXoaGMaNgClmbhbJOm9n5pTSgz68RkkNkSmFFonE=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4899.eurprd04.prod.outlook.com (20.176.215.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Tue, 30 Apr 2019 21:18:18 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.008; Tue, 30 Apr 2019
 21:18:18 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 6/6] i.MX defconfig update for 5.2
Thread-Topic: [GIT PULL 6/6] i.MX defconfig update for 5.2
Thread-Index: AQHU+OWBT0ux8MB+H0yoUPF9unnDpQ==
Date: Tue, 30 Apr 2019 21:18:18 +0000
Message-ID: <AM0PR04MB64345FA41350834C7552E81FEE3A0@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <20190422082836.3734-1-shawnguo@kernel.org>
 <20190422082836.3734-6-shawnguo@kernel.org>
 <20190429162910.l27ewbfvvestb474@localhost> <20190430022636.GA25377@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 13eeb871-b555-4a8d-1980-08d6cdb15dcd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4899; 
x-ms-traffictypediagnostic: AM0PR04MB4899:
x-microsoft-antispam-prvs: <AM0PR04MB489949C9C1707A4C0F3A0481EE3A0@AM0PR04MB4899.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(396003)(376002)(346002)(39860400002)(199004)(189003)(71190400001)(71200400001)(86362001)(6116002)(476003)(3846002)(478600001)(15650500001)(229853002)(66066001)(74316002)(66946007)(256004)(66446008)(73956011)(66476007)(76116006)(64756008)(66556008)(44832011)(305945005)(52536014)(68736007)(91956017)(14454004)(14444005)(486006)(54906003)(110136005)(316002)(33656002)(7736002)(99286004)(25786009)(53546011)(26005)(7696005)(76176011)(446003)(55016002)(6246003)(53936002)(6506007)(102836004)(5660300002)(9686003)(8936002)(186003)(8676002)(81156014)(2906002)(6436002)(4326008)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4899;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: D3qCCTHiN8XP64rMvU8HfqKCDTHU/82idrpgZvsuiZDMUNsT864WvBUQdO4r05ojSpIXwX2Jm7zgPg7G1jS4RlNosxbrm4am7+5Y6IXzZfrpkUNlMa1WVW3Q9Mmz0We+vQ/ctL11cerLlAxA36xOAwTd/K9HNSDyrpm3sH0GONZLnex/m3du9p5EzYetVLlbQAQ9PfxuxfQhOk2QSTZaYMXp/JN+nz7ElxOhvjv9GmMHRQABfReol7lsEd9lIW3Mp7vubMSJrt99wQygniqoeWjP8fpR8ZBjYNKbe0Mn+rK2ULje7IIclPBowUc/e2SgVOyxZrsNQOEDayB32EQjnoVkcaFNfDbxMkGUOzjSOPjqjddIOBx0Jz4BKPoFCoqlAUBJC7gRtihDK55vgra3fZz80Bmt5iAzcrsQIHHYTbg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13eeb871-b555-4a8d-1980-08d6cdb15dcd
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 21:18:18.5352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_141827_025536_4BEA8299 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 4/30/2019 5:27 AM, Shawn Guo wrote:
> On Mon, Apr 29, 2019 at 09:29:10AM -0700, Olof Johansson wrote:
>> On Mon, Apr 22, 2019 at 04:28:36PM +0800, Shawn Guo wrote:
>>> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
>>>
>>>    Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
>>>
>>> are available in the Git repository at:
>>>
>>>    git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-defconfig-5.2
>>>
>>> for you to fetch changes up to a3f12aac21848796f5b5c6e9ce2f04e411ec2129:
>>>
>>>    arm64: defconfig: NVMEM_IMX_OCOTP=y for imx8m (2019-04-22 10:33:53 +0800)
>>>
>>> ----------------------------------------------------------------
>>> i.MX defconfig update for 5.2:
>>>   - Enable PCF857X GPIO expander and SIOX bus driver support for
>>>     imx_v6_v7_defconfig.
>>>   - Enable more drivers for i.MX8 platform support in arm64 defconfig:
>>>     SNVS RTC, SCU Watchdog, SPI, i.MX8MM pinctrl and clock, LPI2C,
>>>     ROHM_BD718XX PMIC and OCOTP NVMEM.
>>
>> All of these are enabled as =y. I don't think all of them are critical for
>> booting the system up to a rootfs. Can you please switch over any non-critical
>> drivers to =m?

> - CONFIG_MFD_ROHM_BD718XX=y, CONFIG_REGULATOR_BD718XX=y
> 
>    @Leonard, are they critical for booting imx8mm-evk board up? Or can
>    they be installed as module after system is up?

This is the PMIC used on imx8mm-evk and also the purism devkit. Since 
it's used for main chip power "y" makes sense but boards can boot 
without it and I can't think of a corner case where we could fail to 
reach rootfs because of no PMIC driver.

Looking through arm64 defconfig other PMIC regulators seem to be "y"

 > - CONFIG_GPIO_MAX732X=y
 > - CONFIG_I2C_IMX_LPI2C=y

Other I2C/GPIO drivers are "y" but again can't point to anything 
specific that would fail.

> - CONFIG_NVMEM_IMX_OCOTP=y
> 
>    @Olof, this is the driver for fuse access on i.MX platform.  Drivers
>    like cpufreq will need to access fuse for cpu grade data.  So we would
>    take this driver as fundamental infrastructural.

Other than thermal and speed grading fuses also contain MAC address on 
imx chips. Since FEC (imx ethernet controller) is "y" for easy netboots 
it makes a lot of sense to keep this "y" as well.

These are all relatively small drivers. I don't think that RTC drivers 
are worth excluding either.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
