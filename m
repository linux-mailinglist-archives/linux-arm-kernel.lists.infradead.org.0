Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A77AE159DB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 00:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kiijaEutRriCPEu8LGypeDQE1s6DH3EXIh+XYPXbTI=; b=dYkRFMiEXNlOQz
	j5om547XfmX7lnuVH4wt65soC7PMKKe21jc7q1uaE8HoJWueF+L810pr+3i3UG70ZqbkP/lacsgdT
	W3GqXOwYxaj6V/szJAoRhjhyw3wazZ1XD7P9KzLpNi22vaY2hOVITM9lUn6Hl1R/KJnXp+zehm0+7
	v1nJB145OTJJZr10MB9y3LO5J/yLV9HdWJ9fSwxIrdddeMvOfxksAz/Xh8fs7Klc1W38iurOLqbY0
	X43fWzkLJ/VzLeiem9FNfWavTqjRb8z2iD5+REj3jF6bJrIapHeJTt3YfEunvwRqOOmCuvhr17iBp
	zUZ37Km+CcfC+5GdwJZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1fO1-0000k3-DG; Tue, 11 Feb 2020 23:56:13 +0000
Received: from mail-db8eur05on2049.outbound.protection.outlook.com
 ([40.107.20.49] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1fNt-0000jb-2X
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 23:56:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HUUPMkkfXxhAy6rkhb9niDb4FrVk8Up3PGWsH+a5rbMIDH0Sc0ZZCDISZzYv2fOWylrhS8ukCMGJeRNK7cN8XjzzCi+5AQrqdblMZwGZ/BnqaAwpqwKvh7SzsCr38FrJ9yxEZ3ir2TauJgf2ogpY2Ogy4dPn9ryMS6xdtubjidf30V3vrbXP3+cTm/6VNViHyhqapaKwZmgDnHvt27UtnJUSLQ6f5WQH1hcHXcpCncjmOlCNFi/52fCxVSQpIAkaLflmby6O8iYO9KTXgrB+tbOj+jkwyp8zOLRQBZomvhwGtg/IHZ3l8kYjlD3rU03TuAFlBox8Bxi2ig8bFgkCZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TIrScfj5oSK92dcySCablajZXmZL3F5YvZAAJ9pHalQ=;
 b=gU5FIcl6Tn8IiJIUjXw9qROPbgI9jyJTvKDCLZFS/iT1Zl9turDoskIybwafDP8giW7j9YlwPtSsOf/DV1ES8/2NCynRDZ+jGD3iLYz+WfGXTEfcEep9s+YV978UNRVEAjZzgtQDKJ9f6gs1EwLC4/krhGQpvVNXURWEQJYwqo4IrnCbeh4KTiPpxMK1uCQ3Z9K+O8mL/vIleehtcU+qal1hzT3cf1upP7balS9RXYOWqNaKQwxemV/mLDyL3B2OYOS3wF4ode+Pygo+DkOKgfDrxFJy/wrlUsI86hTDUL0iBbk3ez4G4/cJrm51ecGRJ/lfUFhu/db1j0MpKQfDDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TIrScfj5oSK92dcySCablajZXmZL3F5YvZAAJ9pHalQ=;
 b=g/hs2xrfomDv/qNqZTx/SgLqEYv5eaTUMGwUYOT2IgqUA7QfCRwBZ0c9Ydb3oK0Db7nmIBF2OaJtiPh0f9HWvqdrdd8UyHfW6wpIQjrOg98o9b1E0jmSgZ1zKMUtoHiPmpVL37xYdNlbO/AjIKVVMekO9hA1XDJf+VHt6K4VzGw=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6670.eurprd04.prod.outlook.com (20.179.233.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Tue, 11 Feb 2020 23:56:01 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23%2]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 23:56:01 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: RE: [PATCH] iommu/arm-smmu: fix the module name for disable_bypass
 parameter
Thread-Topic: [PATCH] iommu/arm-smmu: fix the module name for disable_bypass
 parameter
Thread-Index: AQHV4TQ+rYAmxRjidEu7CIluqOuss6gWqE4AgAABt3A=
Date: Tue, 11 Feb 2020 23:56:01 +0000
Message-ID: <VE1PR04MB6687C1D26EF252554E8831AE8F180@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <1581464215-24777-1-git-send-email-leoyang.li@nxp.com>
 <20200211234536.GK25745@shell.armlinux.org.uk>
In-Reply-To: <20200211234536.GK25745@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1e6c1a86-82a7-420f-6428-08d7af4df2e9
x-ms-traffictypediagnostic: VE1PR04MB6670:
x-microsoft-antispam-prvs: <VE1PR04MB667081197ECDBC5C6B8A0A9E8F180@VE1PR04MB6670.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(189003)(199004)(186003)(8936002)(45080400002)(26005)(54906003)(4326008)(8676002)(6506007)(53546011)(6916009)(5660300002)(966005)(71200400001)(7696005)(81156014)(81166006)(64756008)(2906002)(66946007)(66556008)(316002)(66446008)(66476007)(76116006)(33656002)(9686003)(52536014)(478600001)(55016002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6670;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ztammonGeAXeH6VfVfI75OVV9Khhg2PnA3qnNZF+hE2F7C+nYU5c3qHBwovwo3EAkNvDrS3XCkdBEK3VNdPs0kvzD/zbThOvKYKNlamYeNp27s5RpVXMGO1OQ9e3knO9Maq5Uk1CV4IkmN2g5DNGr8nMRdVLqVFccM7LFwOk+tjX/P9NCKouBFC4EAFxJhJNKiEDZWuvmmCGmOTD6EoPXNDlzu9SbHVETrl1Ixom8hIhoTGYiHvqAln1dz+s8HxDp4/DaQF1ZrCeeJZRyJkfMqWtr22MV6n2Jm0eEpRvfklhQZl03S2DTD6jgR4iWzeqhNUwhuevdc9WG+5Fx8+NEzctWmZTq0PHAbbndLLkg4FPXqHyHV66bSJMZ90yFuFkErGTYRwmxSGEkHKmIY0B2VNuaRTNSCA32b+bJJxLTd+wVZ59TGUpZKbudi+G2RLdyf9OPOzD70otFnBPnCJQHilfasF2IYzkUkrhVFN0JCIrhGpdlU+jV+nYUdvMLa9Q0liP5L5J/99b+O4SyUr2dLMZCdoSnAdZ7+7DHNtxXB24/dHrEhUedT9A1b65NvLxy/adWqUVZxRXp6bs1kcQxErwSbyLpFYvCpDYk51EtdDscWa5ffkdeGGQ0s/YAepm
x-ms-exchange-antispam-messagedata: BkORNlyxH41qiXXhcidUxmJcBMdv7dGvLWU1860RdsTyfCzN2K55PQr0tIPa/MuAZ2vxF22Atih2FtmHoW2vPH1KE2iIaDc1oKaOuGfvNjbQH1MeRuy+IeflSg5zfhAlxHuTe41KZj2Q8eAefX27dg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e6c1a86-82a7-420f-6428-08d7af4df2e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 23:56:01.7639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iyxPkrevjxiisfczejcN9OmIDRHs9h1T+fof3GyEwX9KTL+/ZGmKR8vlU4OVFMFINhz/uNVzF3shhcjZyMygkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_155605_167600_5CD9EC80 
X-CRM114-Status: GOOD (  25.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
> Sent: Tuesday, February 11, 2020 5:46 PM
> To: Leo Li <leoyang.li@nxp.com>
> Cc: Joerg Roedel <joro@8bytes.org>; Will Deacon <will.deacon@arm.com>;
> Robin Murphy <robin.murphy@arm.com>; iommu@lists.linux-
> foundation.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [PATCH] iommu/arm-smmu: fix the module name for
> disable_bypass parameter
> 
> On Tue, Feb 11, 2020 at 05:36:55PM -0600, Li Yang wrote:
> > Since commit cd221bd24ff5 ("iommu/arm-smmu: Allow building as a
> > module"), there is a side effect that the module name is changed from
> > arm-smmu to arm-smmu-mod.  So the kernel parameter for
> disable_bypass
> > need to be changed too.  Fix the Kconfig help and error message to the
> > correct parameter name.
> 
> Hmm, this seems to be a user-visible change - so those of us who have been
> booting with "arm-smmu.disable_bypass=0" now need to change that
> depending on which kernel is being booted - which is not nice, and makes
> the support side on platforms that need this kernel parameter harder.

I agree.  Probably a better fix is to update the Makefile to change the module name back to the original one.

Regards,
Leo

> 
> >
> > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> > ---
> >  drivers/iommu/Kconfig    | 2 +-
> >  drivers/iommu/arm-smmu.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig index
> > d2fade984999..fb54be903c60 100644
> > --- a/drivers/iommu/Kconfig
> > +++ b/drivers/iommu/Kconfig
> > @@ -415,7 +415,7 @@ config
> ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT
> >  	  hardcode the bypass disable in the code.
> >
> >  	  NOTE: the kernel command line parameter
> > -	  'arm-smmu.disable_bypass' will continue to override this
> > +	  'arm-smmu-mod.disable_bypass' will continue to override this
> >  	  config.
> >
> >  config ARM_SMMU_V3
> > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index
> > 16c4b87af42b..2ffe8ff04393 100644
> > --- a/drivers/iommu/arm-smmu.c
> > +++ b/drivers/iommu/arm-smmu.c
> > @@ -512,7 +512,7 @@ static irqreturn_t arm_smmu_global_fault(int irq,
> void *dev)
> >  		if
> (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
> >  		    (gfsr & ARM_SMMU_sGFSR_USF))
> >  			dev_err(smmu->dev,
> > -				"Blocked unknown Stream ID 0x%hx; boot
> with \"arm-smmu.disable_bypass=0\" to allow, but this may have security
> implications\n",
> > +				"Blocked unknown Stream ID 0x%hx; boot
> with
> > +\"arm-smmu-mod.disable_bypass=0\" to allow, but this may have
> > +security implications\n",
> >  				(u16)gfsynr1);
> >  		else
> >  			dev_err(smmu->dev,
> > --
> > 2.17.1
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists
> > .infradead.org%2Fmailman%2Flistinfo%2Flinux-arm-
> kernel&amp;data=02%7C0
> >
> 1%7Cleoyang.li%40nxp.com%7Cf2f7f3c7c8fa4df0fb0608d7af4c84d1%7C686ea
> 1d3
> >
> bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637170615487429054&amp;sdata=
> NO4VZ1
> > sSMKyeXiL%2BUc5K6gIW5Uld%2BRsGAICLgI2nnd8%3D&amp;reserved=0
> >
> 
> --
> RMK's Patch system:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww
> .armlinux.org.uk%2Fdeveloper%2Fpatches%2F&amp;data=02%7C01%7Cleoy
> ang.li%40nxp.com%7Cf2f7f3c7c8fa4df0fb0608d7af4c84d1%7C686ea1d3bc2b4
> c6fa92cd99c5c301635%7C0%7C0%7C637170615487429054&amp;sdata=eMRT
> wZGZPeq3DvkBwjBjGbsS1Qsy3LYMnjH%2B9FJm2aE%3D&amp;reserved=0
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps
> up According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
