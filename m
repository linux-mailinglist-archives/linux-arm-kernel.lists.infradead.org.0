Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF481D8DFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 05:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+R2U+UJ+DWkktWYr37mv2Dlw9JnIvNJy3Z2oPDH3Cg=; b=qzadnUVItzVNvF
	nEzSmilQTVZU5pc0Ln9R0L9umhw+wH68JE3dcqlXS6ZNS50OwVy2TYEiErk1tE/heFUmGPPGNx0Db
	pYUSS7JwZuK0EgA7DlbUdRa60LCcqf3qBbhsvA7L+4YAoNIT3yGv7B1x5lPK919Z/EiP9rjqRWsYZ
	1sfqZPKzR6FSqEZMd0ZHejBqN19GAnUpUxk8wrr2uuUoBUNwRSWX96i6aAMwruGJ4S3yizgfqnL+V
	ftpD7ZxyP75d94j5ZK7PcbuXGRxSljzA6yu6i0kkuGEyoz2ATQVyLdKwSZOU/YbbpNUmFWSjMqc6M
	dBX6V7kiUQYj4+KIszng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasVJ-0004aw-AH; Tue, 19 May 2020 03:01:17 +0000
Received: from mail-eopbgr10070.outbound.protection.outlook.com ([40.107.1.70]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasV8-0004a6-EA
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 03:01:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LAPW3tOfS7kZrv/oA7dz7JNQ0/UBsKBxzFgCIeZ6uLY6/Ae9+3Y/d6pYwM65IoC632W3cPeG1SkNWGLRsBsvOmRiODNsrGC9Do8tlOj99r6E8BvYC15YeT1H7G87PpDAAe8XO8b5QQfjtwZy4Ac1cj/1pGwz6AorhNIT2q5QwsbtGp1OqdlATYIsi4A9FP5VoyIdGCBBA+0FMxep0LkEHYpF+L3I6hpOCOsCzuiaWvv7Jb7cFQFwpF1Sh/GhqunURgbRPga73777ia05iYoldcsdIXFJ9dx/tS+Eln3O7JgoyYm72twyCSge9MA01qONxVggbVb/Ml9ljWc4OaN3/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ffxs/dQvLGe+D2wSt20QuDuAs+7d+fwwoFarBwtoCW0=;
 b=YfwQRYS/GnZ2nKuiJ9CH77QofYCrmi8oSXyI8u+uANOBPKd9QpIGrqsDAAivUJDcMYCk2XdOBqlrRdjtV2VYCY0WCuiO6wqV78SYKaufovm0cXIsTwj6HAKcXRybId9VfiHYbBXmc0sbcaMsfCuejbZWwRvcmtnIKEFogRfOxOYHyyMbqbD3D/I1EbD8z5aCTxHMYRO5iK5VFRZIowPGdoXWz5/+fnKTx1WSZBY771ZPUDY+K0aWMNF0l3sU8ObKB0QCDb1Fc1rdkHE8YrLpcGLjVkLwwFl1dFIgGj4YvKAbhYZcvSjwafr2tepA17SuivWp/Ay/s+5xYzw3ee2itg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ffxs/dQvLGe+D2wSt20QuDuAs+7d+fwwoFarBwtoCW0=;
 b=igOVSCPdqJTpQBXn1iONzo8b52ml3s3obtums/w3jt8dVMVQQ3JK7Ryqhn5RWYuWP5cWwkSnLe919ai84sKmKWs7OfCsUYGAIafRjKvxJEB9yr/BSusb3Fkn9sWiJqAJ8GU4wGhKFMl+okmYWHP85fQ2pR9icU9iPXhXjYEoEl4=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (2603:10a6:20b:10d::24)
 by AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Tue, 19 May
 2020 03:01:03 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b%6]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 03:01:03 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] arm64: dts: ls1043a-rdb: add compatible for board
Thread-Topic: [PATCH] arm64: dts: ls1043a-rdb: add compatible for board
Thread-Index: AQHWHpuZKxwUXSZdo0i/l4JSxTnuIqiu1iKw
Date: Tue, 19 May 2020 03:01:03 +0000
Message-ID: <AM7PR04MB6885C236B9154E694B1D7C0BF8B90@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20200430025646.16766-1-yangbo.lu@nxp.com>
In-Reply-To: <20200430025646.16766-1-yangbo.lu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 07d7bb04-687a-44a4-63b9-08d7fba0de15
x-ms-traffictypediagnostic: AM7PR04MB7046:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB7046418DA45C89420A2ECC98F8B90@AM7PR04MB7046.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /Cxaw9VvyoLBuhOzWNwFuUqsujvYM52703gshpQCkkASP7c1tUxYN4Oa2nwce8VXO9UiV9Il5PRWpuMh8LXSVCMO7CUC5MPQ4PQlIxV2WpImtsEfQQXykn9gnZ2NXK4UsnqrS+K4kQqEvA2tXc83Gt75mFGvx2Ik1SF+zDF+w77B1oFfzg8JTIF1io2IQwSIVspri8oJn6R5PgRUToXHe4/1y0rKjVV3ZzNPuUz+swlsYghkrX+SQPS7Z7KkHXHB0X5e1kRUh0pDUxMsAfmvvGgCj0gkFkPH1KozumcUtKgASSbT4rYNbyPXTiSDU2lh1y8uOEEa5l9KxjQg1zqrMeVDXAtaOXkdeBLAoukIXGDGh/j863GfGDlKNpuIgDAWqgn2MkbqFa1w3lQzgB8/fbruwgsVFzL3ppx306VX4L7k+XGNfYSXD1aIXpMqlLsq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6885.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(366004)(346002)(136003)(39860400002)(4744005)(6916009)(4326008)(478600001)(86362001)(2906002)(5660300002)(52536014)(9686003)(8936002)(33656002)(26005)(186003)(55016002)(7696005)(316002)(64756008)(66446008)(8676002)(6506007)(66476007)(53546011)(76116006)(66556008)(66946007)(54906003)(71200400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: PXWwhbXAIP5FGGmZx6SjXtBV36nUKbrLs//bMWdZ+ilPzQwPlKcvpNZlQfdRuwqQVJI3LTya+VMTO2dLkLtYZU2QWl1Dea0DcQNu2mGfAIjct7bE9nBDSAdNADtxG1yIhb8R5tJC/UjYA8M2JuFWiQpwKtB5mTTqthB9A9K/K+QYFNontXHNcuis5ysnvXNFKk+rGcM5VuczNPBhtrMQChtMqP6nlXYsi6nEuZg8m40pMmxx7OUCCmN2vdNeXsKhiNm6l17AU9wgd+tPCbAgF0WdB353kretpHV38tHa9rF1KwthaOeHvI67FImnCa6DJiOu1HZDzwS1NMh6dMx89xEUanxHtYPo4Jmg0YWFWsrR4X8ajgvmsptDGnWoMFBLINI/ckaiTN5qnZRDi4mAYQNsavzq4n4PaydMyWqR2awhfihiBaGuwCa3FCEvKYoghDdhKd1xwV4MAN7y8C5aGhrRwvTcTwWpFyQdWhj6KNM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07d7bb04-687a-44a4-63b9-08d7fba0de15
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 03:01:03.4750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dhEvB5KaEMSB9TA1wEYVpSEK0ssl8aBZosB3Pax4dD3NrTQfRLqm/YgNnGuXfXTX1JfMxfuUpwCdIP3+QLV0rQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_200107_391021_F5F0B735 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.70 listed in wl.mailspike.net]
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
Cc: Shawn Guo <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Any comments?
Thanks!

> -----Original Message-----
> From: Yangbo Lu <yangbo.lu@nxp.com>
> Sent: Thursday, April 30, 2020 10:57 AM
> To: linux-arm-kernel@lists.infradead.org
> Cc: Y.b. Lu <yangbo.lu@nxp.com>; Shawn Guo <shawnguo@kernel.org>; Leo Li
> <leoyang.li@nxp.com>
> Subject: [PATCH] arm64: dts: ls1043a-rdb: add compatible for board
> 
> Add compatible for board to identify.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
> b/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
> index dde50c8..9a93e9a 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
> @@ -13,6 +13,7 @@
> 
>  / {
>  	model = "LS1043A RDB Board";
> +	compatible = "fsl,ls1043a-rdb", "fsl,ls1043a";
> 
>  	aliases {
>  		serial0 = &duart0;
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
