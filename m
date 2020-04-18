Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCB41AEC7D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 14:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqbrcB0hFZ9XfKGFr5axRnv5jJISKNbsA+yJx3R2uRo=; b=WJudpn5UvcJJ4U
	c+0wpUOa6bIegnVMKqu6Odbm3w6u1MlW5hQYr7G1W0obmEr/UzRI2WcVe+HAHbIL74D0frVe64V8M
	B/7h9RVADEzcRzQB1XyRVJhiQrLaN0upBggF1eDFPqGvuxNAPL3UH/A08t+fGDb+wdffxExx23wNC
	mjvV9DJBMfsOa5YsuSq5seiOfEk2clygh+pogM6cem2T1sJfWGBBWMNq5Eld6ZExMe5e9facL/Y7M
	6GIx0VoE4OU+tLOtwBQSZfs31i78Gsa7wJP7NoENayM5RGbPqSB0bSYiafG095hlkOu7UTFS2K1ip
	rETxJyMWeaSvGuUm8rwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPmkR-0001Dj-Le; Sat, 18 Apr 2020 12:39:03 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPmkH-0001D8-Up
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 12:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587213533; x=1618749533;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TiH9snXz0XEvk8v8qxtXR58X+4arid4AASGVYlL5WMM=;
 b=m/NTtIAGJBHLEiCl7HtBfWDUZFXohVH/0DroKDcl1ZQIm8b0lawcBa73
 HyHP9zoYTgjpQqmnxfi18XFErdCWuc5Bhs6hKE0jLVNq59NHUBlxB6FZa
 a7S+vPl5m+ZHR96zw67ut4HS1vXG7aWKEaw5C3GV0JXGJMsUnjtpqgevu
 OQHT0HLegA9WbzxfOfAzH9gz6IzR1B5TmZyunGQhSt/AjoZmsNVrSZ9Gu
 ezMaK5sRDm0BQIcMQlLFkmowIl8XEQ5nxze+toFH7b8wF5lSXEaBGJ+zU
 /1cxMeANd7qOuD9sj3MIRDZ/sLA5njWUz2teJ/BAe7WBfHRQXuC9tdnjh A==;
IronPort-SDR: vc57xsbyunVEAX4o9G1nbyOiquX4PmFp+Bu2vNXZaHzJCJ6txQM+jLInHEMdNA71tPR1azBD+C
 JocopYXglF972aqk6CrmSgS2EMVP/j6rmztti1tivO5sah3C/vcRy/Jf4/9hkUK9YhkeH2CMh/
 n/kp+Oluss7alPJyFR3YdnsgM9hNlkwa9684BD31ZFya/BoqNBUH0dxFwUTe7ho3LAUO7zhzRk
 KPdwo/nroV68Kd42J/4I47iQqdiZtysU5LiSlWFiEkSUlBqlMmdSANvUByAYngmSLta7QQOLkH
 Jig=
X-IronPort-AV: E=Sophos;i="5.72,399,1580745600"; d="scan'208";a="135618589"
Received: from mail-sn1nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.50])
 by ob1.hgst.iphmx.com with ESMTP; 18 Apr 2020 20:38:51 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NLB0UgVW0EVdfOEWOZYaAgb0J7WlVUGLAtzsxp6zsY8M9R2+2DEeSffZc87+mOTnzFyYC7lPP/diCHliFOFqB1sElv4yo7qt8bbV1ciTULZ3bKhjOxHtnrHH90pMgnK4kGT935nfLtM7ikVy9rhoaSznjT0/NNe05SIua/hrDT68eltK1k+Nt/Ujm+ThWQXRFWA7JcneAN0s4P290G03/+GmPTFfzxvogWTqZV74BjUiRBbMSt2NicQ55AY917raUnb3NgfbRH9PCcf9asj3a5G0MSUE0KVCIb8glLwi2HP+PnZS4AAwLWhbMUb0wN4iF3Un9D4lTJRo+ptPMXLUWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TiH9snXz0XEvk8v8qxtXR58X+4arid4AASGVYlL5WMM=;
 b=E+OVoZE1S6svvbNfShXNhPT3ZY+gxn/HtVsq6gXCUMb2vDNf8XWB8k3vTFy5NRi/apaSoieA6nXaB6P1h79InYhXCRjaGjw7CPew4rYcOFOWXyGVmE0yrMuJXWb1MOO2YwJ/AB2DGy9wx/kkZKdkRU0hZuuFywFd/GvS8Dl1SwIr4dSdKJ3sTcsmUfpDLQwAXzuyDOR2ctNPv0o9+KxTB7/kWYiq2wmZfm1dPjdpfjbMrQ94KAFspfoG7662LK46pN7krvHbxTONwHIQ9ZBpPHFn7pRWFO3iyiZaHi4oEQNCVfJXJDKiWnFtMvld+9uvSmqkH1NorwhAXuTeCK5NEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TiH9snXz0XEvk8v8qxtXR58X+4arid4AASGVYlL5WMM=;
 b=c9cXQNGe9S96aEI2CruBRId9O59yETS2v4lH9w1DK5J05yPOWpS6bXBkLBVCRw/NAxgrxypXkNb0XAh0HJrplQ0/FVClWlbmhnm/KUrlmkB/0yWXEt95SUyRBfD/AgQDV04SEuwcVurBS7QyCUvztbT3b0s7Id9vESpd85U2V6A=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4448.namprd04.prod.outlook.com (2603:10b6:805:33::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Sat, 18 Apr
 2020 12:38:49 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 12:38:49 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh@kernel.org" <robh@kernel.org>
Subject: RE: [PATCH v6 0/10] exynos-ufs: Add support for UFS HCI
Thread-Topic: [PATCH v6 0/10] exynos-ufs: Add support for UFS HCI
Thread-Index: AQHWFONyboJhjuJWAki6eibLTJAA36h+0jPw
Date: Sat, 18 Apr 2020 12:38:48 +0000
Message-ID: <SN6PR04MB46402211952BC3D427AADA00FCD60@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <CGME20200417181006epcas5p269f8c4b94e60962a0b0318ef64a65364@epcas5p2.samsung.com>
 <20200417175944.47189-1-alim.akhtar@samsung.com>
In-Reply-To: <20200417175944.47189-1-alim.akhtar@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fc5519b1-dc78-413a-af3d-08d7e3957185
x-ms-traffictypediagnostic: SN6PR04MB4448:
x-microsoft-antispam-prvs: <SN6PR04MB4448980B10780734E2CCEA44FCD60@SN6PR04MB4448.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(39860400002)(396003)(346002)(366004)(376002)(136003)(26005)(4326008)(186003)(55016002)(110136005)(54906003)(2906002)(52536014)(6506007)(316002)(9686003)(478600001)(7416002)(7696005)(66476007)(66446008)(4744005)(86362001)(64756008)(66946007)(76116006)(66556008)(5660300002)(71200400001)(8936002)(33656002)(81156014)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ygyG5LPPlSWbNn59FymYFrBite4r1fREZrZFTWQ2bY77RNV7Vn6sKOT/1SKbBdDVqWl/4i3ZmLxWyyufENzhVNKCJUZlQNKLKMgTiPil7VC+ASRBEtSFnYyAnQEkEHHL3in+Tok+RBNEFfsPlrWnbVCvOOeATh1kYaqMthJPqvlObfLJHeuGPTrNwfFSoCAwE/GNSr/od17eGxw3hSkgiF2RoiafzG/+UG7uCc7p1OAUm2fe6mwRP1WioltAcOUp89CE6GjNuQqKMcTIpCS115Hudcs4DMzfonAe8TLDZjwDZzAnuSk0pFIXC3clku45Pu9K+ptDWjhY6SQ90ccShmilNerLN13wuwvM4rrgG622ZrHONS0g6jiwJX121CzA8vFz5a3JT6m8DZT3VBtZmDTZArpoGhBsEyMPl0Dcj9OcOvjhCLm5K/vVWe/I1V/D
x-ms-exchange-antispam-messagedata: ZqpNu6Uo1hp3vE61PbCawyilmx8aUXyrXnYb5jmFdbMiTyDOWdp2+ggWr0w1yEpv0zFx+ABXzCT6/LWWvfWCzqyso3K6fg8EQgYX1wcqTMmv0Ax/NphWeE3Z4w+ehkCTwoLKDmn45d9OqT80e/ZO4Q==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc5519b1-dc78-413a-af3d-08d7e3957185
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 12:38:48.9144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HZJOEsjaEK1e+s+1kscXQ4/1KUUVOSH4G/PGSTQsezxhJaWcUQXocAwEQFAJ/AWZpWeVC2Vdv1EMp+0a+ivb7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4448
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_053854_144793_5B3B0D93 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "kwmad.kim@samsung.com" <kwmad.kim@samsung.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "stanley.chu@mediatek.com" <stanley.chu@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> 
> This patch-set introduces UFS (Universal Flash Storage) host controller
> support
> for Samsung family SoC. Mostly, it consists of UFS PHY and host specific
> driver.
> 
> - Changes since v5:
> * re-introduce various quicks which was removed because of no driver
> * consumer of those quirks, initial 4 patches does the same.
You forgot to add those quirks to ufs_fixups.
Each patch that introduces a quirk needs to introduce its users as well - 
This is the reason it was removed in the first place.

Thanks,
Avri
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
