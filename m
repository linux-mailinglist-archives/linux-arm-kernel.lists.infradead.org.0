Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE83917A93
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 15:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XxJF3j9iCHNEkfim+BixAiapMF/5JHDyDm4Ceqt+9Fo=; b=PmQrEZqMryokB2
	ewC7fW/HcOoIiYz4dEqBoF2xpCDuuA/oDBLdMSiKmtvoA1rsAq+Oe0KwdYvprJ8ya+5U4J0+IOk1F
	0EQr+sl7jQtaWatpFjtvcDo8qm/75ie76QgnQY3PqXgCkHWgAQ4HCzK9X/LEmCE0c1aEvZGMiyTSD
	2TjTXOk4vKgri56DyUqMqR+HR90wG/22vqWiNJkYGTE5o1CpJW/ZO0eiplCOonc/S2gLIltAkwCqP
	/77y2toY5jqzbwpEtVkmedHKOYhRb4xn83wFYiRdOmnbbUzfVxTeGKQAwRYO7s5ZM6pIz1rbB/LL6
	jhcWZOaLH8GLV5QQmE9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOMar-00008W-Pv; Wed, 08 May 2019 13:26:45 +0000
Received: from mail-eopbgr770074.outbound.protection.outlook.com
 ([40.107.77.74] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOMaj-00007t-S6; Wed, 08 May 2019 13:26:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jRZOazIR7In+02p6vDsRizpcnxBWx1U//h0MEIEuZuc=;
 b=Mi3Xs1RZR1Kk+9QXXdeLCo8LvH71RvweK88Lp8oOtgh22y7zUwWEHAVk/8NUHjE2KwzUQnuoX6z3YpP+BGC5DbMSAxk+Z+07rj9W/9VF7pgKWq8mzmZ/O53Qy+mJj7jhPTUQW7S5tpYn4NiZ/bCdRjZQhZSSjGo97Kg1QMa3Zxk=
Received: from DM6PR03CA0050.namprd03.prod.outlook.com (2603:10b6:5:100::27)
 by SN2PR03MB2270.namprd03.prod.outlook.com (2603:10b6:804:d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.10; Wed, 8 May
 2019 13:26:33 +0000
Received: from CY1NAM02FT011.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::201) by DM6PR03CA0050.outlook.office365.com
 (2603:10b6:5:100::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11 via Frontend
 Transport; Wed, 8 May 2019 13:26:33 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.57)
 smtp.mailfrom=analog.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 CY1NAM02FT011.mail.protection.outlook.com (10.152.75.156) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Wed, 8 May 2019 13:26:31 +0000
Received: from NWD2HUBCAS9.ad.analog.com (nwd2hubcas9.ad.analog.com
 [10.64.69.109])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x48DQUQM021820
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Wed, 8 May 2019 06:26:30 -0700
Received: from NWD2MBX7.ad.analog.com ([fe80::190e:f9c1:9a22:9663]) by
 NWD2HUBCAS9.ad.analog.com ([fe80::44a2:871b:49ab:ea47%12]) with mapi id
 14.03.0415.000; Wed, 8 May 2019 09:26:29 -0400
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>
Subject: Re: [PATCH 09/16] mmc: sdhci-xenon: use new match_string()
 helper/macro
Thread-Topic: [PATCH 09/16] mmc: sdhci-xenon: use new match_string()
 helper/macro
Thread-Index: AQHVBZFjC5krcc3G0k+g00YBPwx6V6ZhaK0AgAAShYA=
Date: Wed, 8 May 2019 13:26:29 +0000
Message-ID: <2ec6812d6bf2f33860c7c816c641167a31eb2ed6.camel@analog.com>
References: <20190508112842.11654-1-alexandru.ardelean@analog.com>
 <20190508112842.11654-11-alexandru.ardelean@analog.com>
 <20190508122010.GC21059@kadam>
In-Reply-To: <20190508122010.GC21059@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.50.1.244]
x-adiroutedonprem: True
Content-ID: <6166AD703C20264A8933E29F0D6472FA@analog.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(376002)(396003)(346002)(136003)(39860400002)(2980300002)(199004)(189003)(7696005)(76176011)(229853002)(356004)(70206006)(7416002)(7406005)(316002)(2486003)(23676004)(305945005)(7736002)(7636002)(47776003)(6246003)(4326008)(54906003)(2906002)(106002)(6116002)(3846002)(446003)(14444005)(36756003)(478600001)(186003)(102836004)(126002)(486006)(2616005)(476003)(2351001)(86362001)(2501003)(70586007)(118296001)(50466002)(336012)(8936002)(5660300002)(14454004)(5640700003)(6916009)(4744005)(436003)(426003)(26005)(246002)(11346002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN2PR03MB2270; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cfdadccb-4d44-4864-c715-08d6d3b8c9c3
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:SN2PR03MB2270; 
X-MS-TrafficTypeDiagnostic: SN2PR03MB2270:
X-Microsoft-Antispam-PRVS: <SN2PR03MB22702FB510E95C53ECE1B38AF9320@SN2PR03MB2270.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0031A0FFAF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: fV1p6yRnB85jQZJN7eRbmOVfYHNwky9etvny6vTDXhePyeWXsqL1v2Aesb+Wk2QXqNCdHVI7JxPpMwTuJmBLaQ98M5NyNZ6XAm57uPOwak+8pn1MIc9yqsnCgia/XHmaLRDKnfXPVsH6Dygj8nYwt/0eV2mYNm9yTO8q0OeU2Og99154RYQ9n8VC3F0OaaBq7VRly+zYEpsK/KpXipHcs3BgmCCQ4nFSeqWpM/F2P+H7TCUsZxK/t9wXauan74KDJNvfmggirOduBXb04+FG6sVpxsKYTszlRJOKYk27ytxWmH843gqE47SClPstH2PhW66aSpufvNJ0pbqiMVZw6BPG0s0jouyFZkplH++TiX/GsSSRxs9pL+v1FgQVuD5jfwwE6cpi+GA0D9SnaPwM45pGQJSeNO4gm4s7r+wCjks=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2019 13:26:31.5064 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cfdadccb-4d44-4864-c715-08d6d3b8c9c3
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR03MB2270
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_062637_911578_0831A90C 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "cgroups@vger.kernel.org" <cgroups@vger.kernel.org>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-ide@vger.kernel.org" <linux-ide@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-integrity@vger.kernel.org" <linux-integrity@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-05-08 at 15:20 +0300, Dan Carpenter wrote:
> 
> 
> On Wed, May 08, 2019 at 02:28:35PM +0300, Alexandru Ardelean wrote:
> > -static const char * const phy_types[] = {
> > -     "emmc 5.0 phy",
> > -     "emmc 5.1 phy"
> > -};
> > -
> >  enum xenon_phy_type_enum {
> >       EMMC_5_0_PHY,
> >       EMMC_5_1_PHY,
> >       NR_PHY_TYPES
> 
> There is no need for NR_PHY_TYPES now so you could remove that as well.
> 

I thought the same.
The only reason to keep NR_PHY_TYPES, is for potential future patches,
where it would be just 1 addition

 enum xenon_phy_type_enum {
      EMMC_5_0_PHY,
      EMMC_5_1_PHY,
+      EMMC_5_2_PHY,
      NR_PHY_TYPES
  }

Depending on style/preference of how to do enums (allow comma on last enum
or not allow comma on last enum value), adding new enum values woudl be 2
additions + 1 deletion lines.

 enum xenon_phy_type_enum {
      EMMC_5_0_PHY,
-      EMMC_5_1_PHY
+      EMM
C_5_1_PHY,
+      EMMC_5_2_PHY
 }

Either way (leave NR_PHY_TYPES or remove NR_PHY_TYPES) is fine from my
side.

Thanks
Alex

> regards,
> dan carpenter
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
