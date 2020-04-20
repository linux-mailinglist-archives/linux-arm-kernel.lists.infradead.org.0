Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533CB1B040F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 10:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7NUrOIZ5vBLJ6cUtLarnxwktCWztHIGgB4tPZb2JQ0=; b=MZ1TxkfDGPhQG3
	qHjZ1wKj0YhjXqkdDHdu2HCUISmBCLITiKBbUD/+lpfbZZPC8kLynsDPGE8efM7UT3U676w0Zio0x
	YnsbFFwwmgMMOZraXlhJX6Hau3mItVx/vSasjxKv1JCpalVGMRlFpKWmOA/2X5sxdGSUj3eSXVLRp
	WmOfhYmCrO2aC6CuA+YdUc29u7hgLG0qgW64J2o7IR7gM7KYh4U4yYaU2XlQ3DFT0r73ZQ6/bRLMv
	GCtHNtxgTSSEWWbrwpuzRdT9hBsSPthE/1kUVL266JrevCMdjCYKwCtLu2PvAcEGQzcL69BHC4G0m
	S2UUOPM4vBOv1zdsx8Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQRZM-00005c-QY; Mon, 20 Apr 2020 08:14:20 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQRZA-0008Vs-Eo
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587370448; x=1618906448;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OgOvId5r7wzFPz4kD5E2QEgvcp+IDu1mpc/Y6eMKG3w=;
 b=k7MYfddp1yCyZctCi5PeWQg/TNHHvFbEITtifTUn27hVqxr7LTMCQGAT
 hv+AGA+aIzEpSOANMSZwLuxqPOq0eu2OJYUXwTww2hspevVPr/v2+ZJg+
 EpOMVmLGqzy31GDIOFmv1R+ljBdT0V1bzjRtFEH1aNkV8C1p2OYqWX6yU
 z3PCXBqbFR4IH2g13Yn2pZApT9nzL9xoSTF53OC17E3c+NnCdKhZTTVhV
 ZTW69uvzhvqZb/WMJtWSNpQ7iP6zegCzIOOetfcMz+wRshIo6v0w5TMjz
 dk1bhJAK0dTQixOQrVMkdrPhx34DHh6gBWMWjLSafF6IA4C2M/ZQTVa5d g==;
IronPort-SDR: pAJg5BR0hDDLuqXvr42wIoGjAfibe6ZOSBjuehaOr1gPWs/lGZNPCV+UPMRbZYdjDJ3a9qZXMX
 UBjv+/Pu61lSymehFEmJTNLwDsUz5CPkIJlJH2PT1S7CWaYGYqSTlIeKy6Ng49KHI6rOMPa61I
 Xy347gV1RG8Uqwv3tfPcYesfmcyfGBMHA3HQWjFjoHDuXjtYTGd5X6cg8HZA9Hs7SLvDre6dNu
 //QJRxCdb16mJ6qR4hOGBUWreKBiP/KPekNOr9iY8E6nAlvQ2yeRi/CcL+7Q4Ysr9qa2p3P6AR
 ilA=
X-IronPort-AV: E=Sophos;i="5.72,406,1580745600"; d="scan'208";a="137123042"
Received: from mail-mw2nam10lp2107.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.107])
 by ob1.hgst.iphmx.com with ESMTP; 20 Apr 2020 16:14:02 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PjRCvEKOoNOXB5Xcmps535mW3tvWgrs2z9K4ymVfhFl/ks3RcY5RrZ6T49WjYqgQ1j7AU4aCqRlCBJtQVyQJLlDzFMqyAaPB3l2e1m8eeXezTI/75b9Ryb4supnNjOKLR4jJ+H6pSZTBqFokaDqoWqTToC5pp9yWdUGejMZwh32WMvTlsAMo1cvsou1MBbfZQdR2c2RmIrn3pydhb2TaMOLPybtnVBUVjfFfUmC8iGvNFI346RjKyjMMyjbeVL2HEJETbWap584qGBkA/mQhyNZjwm/LyMJ7UjkgU0e6RXM7nZ2G5DdwVykeAKjqO0QU7GsYNHrxIV9+dfTLx1/VGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OgOvId5r7wzFPz4kD5E2QEgvcp+IDu1mpc/Y6eMKG3w=;
 b=jHZOMJ2B1fOk2lFQxIc0ObiJXUHb41Sp2I4Z7Tk4X8FK0imVxvmTknf6uYLqxidwIXtjQJieKs4P+Wzj8xD6I0JsU+kUbTZa+djslPckjy3iqg9tvaumgGbXvXi84i4Fn8PSBHzZqXpWom6VuwCxCmiGPDgO9zarus7uXNawxQSeGN/vXQFwyrH+v2aiTkOEgYdMovoWoOXr4jIi0u5vPv6k9RvJ5i8vgWKB4vtUBSdKfQbZPSRwwkP4JwqA1bVt4La+sX4CqpqZ3hN7nt1+OwHY+WbNnnf1q6Tjj5zZP6R5ixhVoNERuNSBLt2wmL82tRTJNUaxpscygYZeKH3khA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OgOvId5r7wzFPz4kD5E2QEgvcp+IDu1mpc/Y6eMKG3w=;
 b=Gs8BDLk8t1P8eGy+QqROA6NA2ThpXLvzZC7UkMREHJaW26wl9o4VD0I9TrwwUJ/pWEIjoD94k/cb7sAL79SbVQbAdnjzEU4CB99hJi0eqLBoEoKklwzeYyhuYfC6FXXNTUrSkcPGXdVfEkmGFDM5ok5/VOhPO332YRH+a5ccLFE=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB3919.namprd04.prod.outlook.com (2603:10b6:805:4a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 08:14:00 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 08:14:00 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh@kernel.org" <robh@kernel.org>
Subject: RE: [PATCH v6 04/10] scsi: ufs: introduce UFSHCD_QUIRK_PRDT_BYTE_GRAN
 quirk
Thread-Topic: [PATCH v6 04/10] scsi: ufs: introduce
 UFSHCD_QUIRK_PRDT_BYTE_GRAN quirk
Thread-Index: AQHWFON3oXMw2fFRh0ylLEswVoKPnKiBrVGw
Date: Mon, 20 Apr 2020 08:13:59 +0000
Message-ID: <SN6PR04MB4640E9D18F9FB283B6458A90FCD40@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181014epcas5p1343bc81fb246133cc332d3fc7a394c15@epcas5p1.samsung.com>
 <20200417175944.47189-5-alim.akhtar@samsung.com>
In-Reply-To: <20200417175944.47189-5-alim.akhtar@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f0b4cded-a6e2-4582-1fa4-08d7e502c7e0
x-ms-traffictypediagnostic: SN6PR04MB3919:
x-microsoft-antispam-prvs: <SN6PR04MB3919B483AEDE69C59C0C978CFCD40@SN6PR04MB3919.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(39860400002)(396003)(366004)(376002)(346002)(8676002)(316002)(478600001)(81156014)(54906003)(110136005)(2906002)(33656002)(7696005)(5660300002)(55016002)(8936002)(86362001)(4326008)(66556008)(64756008)(66446008)(7416002)(76116006)(66476007)(186003)(66946007)(558084003)(6506007)(26005)(9686003)(71200400001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uNh93VgnoXCymn4S2/CbMjW0cjgo2RLRJtUa0fzYduko7RRvLf2hRjwwxZQm90BNBQ5CThQxyWrywQXd1il/5q3pz3b+AXwx3mFXjUZDOgLFZXV3xzkaCsupufMdFVg1Nt/0wy5bHYAWEk3GOYIMtU5e4a9L+cR56G10DLxoztyIzAs7WSjG8MadQJ1Nw4wVgXfeguKUyLtzXuB4ukt4lQQBWnCT7e9gSObWNi7AjGyFcHAPi/+O3t+/xdX+NviHswqh4y4IZMGynEGdgEvDRwjh8SVdZtU/hX9gooQNmQICZjq6xSA5xkGlCk3LLQTe8MpFBfNvFxF81ILPtsqUhq75f2l6S3qFxYPfgXp7Tej1YXp5yYy4B/e1NPmgIu79uVUu4wRBrbCtNvc3OelwVOdNwV1vhg6EEW4O78dTkgIGasUotkEZkKCKEWr6xUsZ
x-ms-exchange-antispam-messagedata: 2sR4ZJxfmnvtQMIU8cXXyOzFD5hK7YhN7F2089ab5W+3FOD9RqngiH8x/G9EHvGjrwgqcKY1ajbKoDRkwEtU9xhlpfQQM3TzbRMBBiZ7rPWc9VS48BUUwcjxASYte0Z8zWO2wfMk8EAEL3plXR4K2A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0b4cded-a6e2-4582-1fa4-08d7e502c7e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 08:14:00.0505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s6fWgUQW+XJBYsZ10ixRJvJvZzdcpNcHaHdjVyx+e94NZzEawrLp01Z6ZozMMfHJBL1/0UmUJn8Hu080E8RB3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3919
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_011408_619972_D9890A61 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [212.25.79.133 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
> Some UFS host controllers may think granularities of PRDT length and
> offset as bytes, not double words.
> 
> Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
