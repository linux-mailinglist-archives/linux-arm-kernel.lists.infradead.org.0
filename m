Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109A221510
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 10:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtPA0USjPfg+K/FDh88/hq7kIBzkg7U079UcCjt6vR8=; b=N51I+f3QhCRfWR
	quaTTfcYOLxpyaMSwSsQWdnhjwyyEB5P9oX6ObkYBhy4qR9yK4KZ00n/G1wD7dSueGRrj+o/SllDw
	mgkEwbJ+7w+IZl9+JK2R54h/gNMfYswPMILnqgKt1esz3chqgzlOpCWIpPIS8tKohXLAq4geJq0N1
	LdcHJC+uPAHNH3IwgfD2XXdo0xCDXBLDB+C1zBqaUq/hO5bmDiTD2E6RE+QPAPWNA9UfR/WnRH8nN
	ZiY+7iGaTMeor6SDgjkU0VZfWchSFozoKiaYXqZ43OKUfhPQSOehvphpl8TjbNn09f+2rovdHA1us
	2icc3WctuGqJGssdb16w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXsd-0001jy-3h; Fri, 17 May 2019 08:06:15 +0000
Received: from mail-eopbgr130040.outbound.protection.outlook.com
 ([40.107.13.40] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXsV-0001jA-Dj
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 08:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JIwjLwpx3QoDOPE+p8h9hJ4vgqTr3GQM8MHajBac8kk=;
 b=CHD/4DLyk5Hg0tjA9eWFdBN5AucIoPmj5NgDYm0IL1KfuQ4Stc0KLr7AwFHp9ym7j6oW49Bm7JIK54HWnirIHEpjWjjQqAAGHJaeJNFzZJ0vLR7Cuaf5xXpkE3l818miwim0IyiQoYU6V0Zo2PkLn3s4fUC+mkTxFq5CtC7uA6M=
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com (20.177.50.159) by
 VI1PR04MB2973.eurprd04.prod.outlook.com (10.170.228.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Fri, 17 May 2019 08:06:02 +0000
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::8d0e:de86:9b49:b40]) by VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::8d0e:de86:9b49:b40%7]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 08:06:01 +0000
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, "arm@kernel.org" <arm@kernel.org>
Subject: Re: [GIT PULL] updates to soc/fsl drivers for v5.2
Thread-Topic: [GIT PULL] updates to soc/fsl drivers for v5.2
Thread-Index: AQHVAF5cAUKBiQa4mkaum88uqVKACaZvDf0A
Date: Fri, 17 May 2019 08:06:01 +0000
Message-ID: <7eb0e7d0-6d28-5862-2ad5-889e57c8df5c@nxp.com>
References: <20190501203756.5443-1-leoyang.li@nxp.com>
In-Reply-To: <20190501203756.5443-1-leoyang.li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: feb04c1b-2fa9-4ad0-baee-08d6da9e80b1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB2973; 
x-ms-traffictypediagnostic: VI1PR04MB2973:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR04MB29737AC87FDBCC133E9A6F46EC0B0@VI1PR04MB2973.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(376002)(346002)(136003)(366004)(39860400002)(396003)(199004)(189003)(6116002)(6306002)(11346002)(54906003)(486006)(110136005)(446003)(476003)(2616005)(25786009)(66066001)(66556008)(66446008)(64756008)(71200400001)(15650500001)(2501003)(3846002)(76116006)(6512007)(45080400002)(8936002)(66946007)(73956011)(36756003)(66476007)(478600001)(6486002)(5660300002)(31686004)(6436002)(305945005)(4326008)(71190400001)(53936002)(68736007)(256004)(14454004)(102836004)(14444005)(26005)(53546011)(7736002)(316002)(6506007)(31696002)(99286004)(6246003)(229853002)(86362001)(76176011)(966005)(186003)(44832011)(81166006)(81156014)(2906002)(8676002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB2973;
 H:VI1PR04MB5134.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 78lTt5oott76MG4UDv01F7ZxseIwKLS3TrupVENvwTSCvymJzdENoJGxmiI9zGvhO+VdJFx6Ynivh7Qgttw9lNOmiOED5mqUlU/6kEBNoxD3QMtPYRT6e315NMMc945FI+v4fI2Chzb/t3sMHXFz8JR8jBWUV0RAeC4anhMikpVoceS0spQkPPuszytq2g7QwPpu1oIRSj0v/Euz3IdhlqFmqQQsWOhy4zeaZV66EtjPiRR7qdS2KS10lGsPbPNopp6dOzVBBaDMtJ0PpEoucmn5Ab7tllAy2yugBwcEgBj6f6gSP7dgVvRTFdr8jm56iaH0GGTrJLKHIT39AD6o5RcrL23dI075qrH2dmgKFj0EWaAsHM7p53JSRXue11IaZCd1LyJ2Lb09jZ1fUlcbCkg/pCzmUPJz5KOorR2xGJ4=
Content-ID: <1A8B1DD27DAFFB409701F815D5218144@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feb04c1b-2fa9-4ad0-baee-08d6da9e80b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 08:06:01.7153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB2973
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_010607_463327_21012733 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Olof Johansson <olof@lixom.net>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Did this pull request somehow slipped through?

---
Thanks & Best Regards, Laurentiu

On 01.05.2019 23:37, Li Yang wrote:
> Hi arm-soc maintainers,
> 
> Please help to merge for-next patches for the upcoming merge window.  Thanks
> 
> Regards,
> Leo
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>    Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>    git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.2
> 
> for you to fetch changes up to 1c8f39946c033de08e382025d7ac7f55fbca57eb:
> 
>    soc: fsl: qbman_portals: add APIs to retrieve the probing status (2019-05-01 15:09:59 -0500)
> 
> ----------------------------------------------------------------
> NXP/FSL SoC driver updates for v5.2
> 
> DPAA2 Console driver
> - Add driver to export two char devices to dump logs for MC and
>    AIOP
> 
> DPAA2 DPIO driver
> - Add support for memory backed QBMan portals
> - Increase the timeout period to prevent false error
> - Add APIs to retrieve QBMan portal probing status
> 
> DPAA Qman driver
> - Only make liodn fixup on powerpc SoCs with PAMU iommu
> 
> Guts driver
> - Add definition for LX2160a SoC
> 
> ----------------------------------------------------------------
> Ioana Ciornei (2):
>        Documentation: DT: Add entry for DPAA2 console
>        soc: fsl: add DPAA2 console support
> 
> Laurentiu Tudor (2):
>        soc: fsl: qman: fixup liodns only on ppc targets
>        soc: fsl: qbman_portals: add APIs to retrieve the probing status
> 
> Roy Pledge (2):
>        bus: mc-bus: Add support for mapping shareable portals
>        soc: fsl: dpio: Add support for memory backed QBMan portals
> 
> Vabhav Sharma (1):
>        soc: fsl: guts: Add definition for LX2160A
> 
> Youri Querry (1):
>        soc: fsl: dpio: Increase timeout for QBMan Management Commands
> 
>   .../devicetree/bindings/misc/fsl,dpaa2-console.txt |  11 +
>   MAINTAINERS                                        |   1 +
>   drivers/bus/fsl-mc/dprc.c                          |  30 +-
>   drivers/bus/fsl-mc/fsl-mc-bus.c                    |  15 +-
>   drivers/bus/fsl-mc/fsl-mc-private.h                |  17 +-
>   drivers/soc/fsl/Kconfig                            |  10 +
>   drivers/soc/fsl/Makefile                           |   1 +
>   drivers/soc/fsl/dpaa2-console.c                    | 329 +++++++++++++++++++++
>   drivers/soc/fsl/dpio/dpio-driver.c                 |  23 +-
>   drivers/soc/fsl/dpio/qbman-portal.c                | 148 +++++++--
>   drivers/soc/fsl/dpio/qbman-portal.h                |   9 +-
>   drivers/soc/fsl/guts.c                             |   6 +
>   drivers/soc/fsl/qbman/bman_portal.c                |  20 +-
>   drivers/soc/fsl/qbman/qman_ccsr.c                  |   2 +-
>   drivers/soc/fsl/qbman/qman_portal.c                |  21 +-
>   drivers/soc/fsl/qbman/qman_priv.h                  |   9 +-
>   include/soc/fsl/bman.h                             |   8 +
>   include/soc/fsl/qman.h                             |   9 +
>   18 files changed, 618 insertions(+), 51 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/misc/fsl,dpaa2-console.txt
>   create mode 100644 drivers/soc/fsl/dpaa2-console.c
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infradead.org%2Fmailman%2Flistinfo%2Flinux-arm-kernel&amp;data=02%7C01%7Claurentiu.tudor%40nxp.com%7Cce3ff1bdc08b445447e408d6ce757dc9%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636923401346806528&amp;sdata=DXh5Men7Mw1lttFbJskOzdLfSMqClpMr9lu9qJQV5H8%3D&amp;reserved=0
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
