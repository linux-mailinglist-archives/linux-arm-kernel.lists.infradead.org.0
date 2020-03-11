Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A54182152
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:54:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3isREis3FmKtrC4//Q3Ov/L94X0qrFqhxEMUMNQ6Cnk=; b=jNMXejPJ5q4g++
	x+Kc1Hw9znH7T9O2cSQUfrFikZpBPiI372qUuES0o/zBwUCMdTN48PLlZMFJi5M/DcuCkhDHE8Wju
	ke4oI6/xsG6jtiqsKpnBQIH51iqMlcsCqnZZ2FCC+Moj/IJUTtVXwuw9Wf1pCksm0Lh/z/66NGctm
	GchZ76YB2hmNqlzIhuRSZMPkvtv5Gzi915zoE1eNJXWM4E0Cd7MptVNR+Z9yxcls7nuogvgUpDJQD
	iSoUI2lGhQRS0E2k9slnO5tMeSVpp/PeU80eVRYoD7YM5egUy2m98dOpUKZDa3ykgitd3yebsOEZu
	rdTwjryxOJpS3yyiLH0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6Ui-0001uv-0S; Wed, 11 Mar 2020 18:54:16 +0000
Received: from mail-he1eur02on061b.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::61b]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6UX-0001tf-Eg
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:54:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BJz43VyAZkD9THS7ekaFpjGwjJPNZt61B8Ar4u3Mlx5ogTXqipINciOl4cEtMEjLXI+9i9UZZ2e5LqagBRkkrJywGBZAwqGFVTd7W461x84gBqmHuKpJ/WT0zPmrSeYQ58PE92DlABxShqMuen8RCyCsct7eKW695MquMPKdkAbJ+Hz810W3W5+0JGOXNEASNsZc0TfmMF+xWWuJHjF2jFgNWSs3/GsRxzI98M2t0Qk/Vn91Sh7vim2EeImmKaV+jrdAa3lXiKISxWfTtRiRFZRHgz3tfepfpZJXDrIzrnUP52IhHf2MNCbL9DHWldDgz+nO0GNcLV23cQdQ/YyCBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TT/mhrumhx/kPJ+Qzls4qcJ5p9rq3U2CQATIhES8/bU=;
 b=Kge+2wKo+LOdOwNHTZGyWSMTyw22hG4+wx/27FWdbDakwbxUjQub7ux+HwFwJdrUPGF1atMcwxeaaIOTELEgyA5LYn0xDz+ScyaBzg4050xNy+VJQHoIICDeeAPAQADAe3bbfTdL5d3MSC0Dqxjdrc8dEsGfKFGYDVLIZ7OnSJpxi9eY58EW8D3z1vRUaGE3BeIu+c3D+4FTI+coY0fiTiwIbpHAXiZZDV+wtQuSeiZbRo82O805rXsIS63U1JWtyD4WVOQXmTgZ0YJdDie5igYKO4n7xB2Kl90CIgJXuCdzPrmVKnsHaXqaljTctONe6UW2PrGunjeRFa4eB1Gsgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TT/mhrumhx/kPJ+Qzls4qcJ5p9rq3U2CQATIhES8/bU=;
 b=ivqedFCmGxJILbwlBHuwH9695KqBcywX5xeiyjj6pg+6nbcDtmQ6DC04+mLQSetDP58m1OMS8KFM9E1zaWdxL7QphWtER8mDxJw0i1/ErlPt0ainkWS/5KqtuGSCgZQS0jVno7biC53MHZg57rb7CK5M0HKdoZOyvHQXmtMtrZY=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6446.eurprd04.prod.outlook.com (20.179.233.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Wed, 11 Mar 2020 18:54:01 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23%2]) with mapi id 15.20.2814.007; Wed, 11 Mar 2020
 18:54:01 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 07/15] arm64: defconfig: Enable QorIQ cpufreq driver
Thread-Topic: [PATCH 07/15] arm64: defconfig: Enable QorIQ cpufreq driver
Thread-Index: AQHV62dVL2g/wtlvM02iwpLe9+E/l6hDAT2AgADUc2A=
Date: Wed, 11 Mar 2020 18:54:00 +0000
Message-ID: <VE1PR04MB66873A9B6773FFBF96F37C6B8FFC0@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <1582585690-463-1-git-send-email-leoyang.li@nxp.com>
 <1582585690-463-8-git-send-email-leoyang.li@nxp.com>
 <20200311061220.GB29269@dragon>
In-Reply-To: <20200311061220.GB29269@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [136.49.234.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0cc9e7c3-8e39-469f-5a3d-08d7c5ed9000
x-ms-traffictypediagnostic: VE1PR04MB6446:
x-microsoft-antispam-prvs: <VE1PR04MB64462FCD5B19BB32A73750278FFC0@VE1PR04MB6446.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(396003)(376002)(346002)(199004)(81156014)(55016002)(8676002)(52536014)(81166006)(66556008)(64756008)(9686003)(66476007)(76116006)(66446008)(71200400001)(66946007)(5660300002)(8936002)(86362001)(26005)(33656002)(316002)(2906002)(54906003)(966005)(7696005)(4326008)(6916009)(186003)(53546011)(6506007)(45080400002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6446;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qjmSUFgSpmC2U7TGBhSJ5rLFOD4UnqtMK0wpdJKn5F5gGUaX+wuVsSP3C+GT496kA+pNVmXtO49cWzrBSF8I4t9wlZhzravffIolZmtOXr9iuHLpaJyqewqM6YAdD58Ghu0E5UCHgzTTU/lXyGdyXe8wFWT+4ArfVyQcXAl98iItNREuLxiMZZh2er2BG+FxiIGry1kC1m5a56P6/ZDQdcCMTuTpobhSdInzFB/RYH71YBvyMGQr/WsfyAvOeNgQAg/ZxI9DQoak1VxxLzEoWIjSUaZV35DxvjJ7/1kSlQ62XE39ceaZlzB/b/Vvbw7M2IA3ZLf4iVZPu3K2ltXolcKuSTwJa6p0E2EDXCxqdsh539awlRtCYuovBQG7AfF/gN/eUKBsja0755nwqOYoygQjL3HTnqW06V0u8hB8Fgbe9ekld+jUV6EA5yc5NdplJDGcuFdW+uyrW+cjrkLUrED3omMA4mSmrgPieZ8mpNybio00BNjy4IA+u6XpSIB1A2gpcef01bXSUyibL6PSaA==
x-ms-exchange-antispam-messagedata: zSPtdTizLfRkqscBofGghrdxvY9CIIXo52qeKqZmVpxnEfnTq1uR1GM1cqOytyg5wGp8YCGebMQzivlCyYjmHti/6okQEP5RBs0o+jpc+Rlg2FK293gTDIdP0FcTdbionUdKT3+BzX21rJ+D+QWv+g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cc9e7c3-8e39-469f-5a3d-08d7c5ed9000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 18:54:00.8348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AA1rA46SWinpYAwaZZHPWCrKD4ocM/Mtyb5G0BUh+Zq64xSykJzECJxzNYDk9sn89vNSpbicWv9e8L9xjFCbug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_115405_578288_DE4B24BE 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:61b listed in]
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
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Wednesday, March 11, 2020 1:12 AM
> To: Leo Li <leoyang.li@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH 07/15] arm64: defconfig: Enable QorIQ cpufreq driver
> 
> On Mon, Feb 24, 2020 at 05:08:02PM -0600, Li Yang wrote:
> > Enables the generic QorIQ cpufreq driver to support frequency scaling
> > for various QorIQ SoCs.  Enabled as built-in as it is a core feature.
> >
> > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> > ---
> >  arch/arm64/configs/defconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index e97ef8b944b8..996dc749ea5c 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -90,6 +90,7 @@ CONFIG_ARM_QCOM_CPUFREQ_NVMEM=y
> >  CONFIG_ARM_QCOM_CPUFREQ_HW=y
> >  CONFIG_ARM_RASPBERRYPI_CPUFREQ=m
> >  CONFIG_ARM_TEGRA186_CPUFREQ=y
> > +CONFIG_QORIQ_CPUFREQ=y
> >  CONFIG_ARM_SCPI_PROTOCOL=y
> >  CONFIG_RASPBERRYPI_FIRMWARE=y
> >  CONFIG_INTEL_STRATIX10_SERVICE=y
> > @@ -722,7 +723,6 @@ CONFIG_COMMON_CLK_RK808=y
> >  CONFIG_COMMON_CLK_SCPI=y
> >  CONFIG_COMMON_CLK_CS2000_CP=y
> >  CONFIG_COMMON_CLK_S2MPS11=y
> > -CONFIG_CLK_QORIQ=y
> 
> Why is this getting removed?

Newly added QORIQ_CPUFREQ selects CLK_QORIQ, so it is removed by savedefconfig.

Regards,
Leo

> 
> Shawn
> 
> >  CONFIG_COMMON_CLK_PWM=y
> >  CONFIG_CLK_RASPBERRYPI=m
> >  CONFIG_CLK_IMX8MM=y
> > --
> > 2.17.1
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> >
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.inf
> radead.org%2Fmailman%2Flistinfo%2Flinux-arm-
> kernel&amp;data=02%7C01%7Cleoyang.li%40nxp.com%7C9fc5f6a95bf74523
> 717708d7c5832d15%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C
> 637195039498757892&amp;sdata=nsR%2F3bVYD61W2%2BE393dhJNgKCp%2
> FfvH9cYSdRLckOxns%3D&amp;reserved=0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
