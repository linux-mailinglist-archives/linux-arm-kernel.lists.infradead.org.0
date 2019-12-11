Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E4E11A9AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 12:11:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSwP7R8jcY09qXXfMCHn4d/28Z6yNDeyQ6WnUHPER1Y=; b=Kldag6vDe/4I+q
	QuoDJGo/2nOmZciNsO3eFzcRg0/lkmeJXMH+Mt4uXkMM8DNQGz5O0dc0ftUpwA2MVpd9MPBXOYH3n
	7U9FKv5luEolU1VFm9gzyb1JyAGeWojgxWx74wXjGXZOWgQpuk0CIdFfrZaDP1q60qdDcrDQi+oOf
	tIQDROPj1jeVwqixzD8elBOawg5TyqCpbfeJgFTBl8P8GssqtxmJxdbitzXexEh/enZvynhpA09Y5
	8UUHfTfuA7IFvVkaZ4TTkP16cJva+IY/glui0Us3Tu0lx/vuvMc9vSmCl5Ul9sU+v5GWRMHeqerVB
	zap30JH4eVA6Uu6lvdng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezu9-000425-RQ; Wed, 11 Dec 2019 11:11:41 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezu1-000412-66
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 11:11:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1576062693; x=1607598693;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F6fcjZXSymfVTTzKhizoyBBZp3M/jsP9O4cjmq3JhKw=;
 b=MaBQV6N76hGAz1f6L7auMIp2SI/aiyKSnchJOebxHQb3fhudiHscJyOi
 OQmFVgW+W0lUglw1pbZcDsiAMqxtY/jg0LU7lYcgwszZRA6Ry2YKBqsrZ
 ujqJByT8RbmxjETo1sbp8Iko9j4NZxJfYzJkvaDYWXLvlrXGH9WWGcgst
 NbOeCqCFpFFq3h4SFOrBD2s0wOGI3VjNB4HTZJpFse2HzK/f5vd+e+fnS
 U3/yyfMz71WNkZnfNvsjqheOOTAwsXXrnglAF5/1VuMbBKqKAPACv7Riz
 izNpeGFIlTQjxh09z4EvRZTZhRUzWaqbffK26/t0lRzlQpR+2MNG3u3Li A==;
IronPort-SDR: GKqMzr8tdsC8v3g4AgaXd3hFab9kLgOFe5tobZvP3YrUT+PeHQVCKHd8iL+SaCSGByvBVNYIw4
 fsN/F3ILPZ+nnTJJTUxw2eWi3bvYiYnmKhuKjHX5BKHqmpHRj6MiVrz4d99zQTZzVZilFk15Od
 w+SrKJ/+mBsgTm/pIdGTgmVjYYKgaH7oGPaEjiYDp2+iHHTaxvAqb7uC7rIteU8XdAFiKgCZIw
 UFzC7nUcFLfvvfRX6L5b37EcT0Mb223ibet68KQKgmdAWU0SjEQAWQiJjgfmcei077qDsuM/Ot
 Xkw=
X-IronPort-AV: E=Sophos;i="5.69,301,1571673600"; d="scan'208";a="125088031"
Received: from mail-sn1nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.53])
 by ob1.hgst.iphmx.com with ESMTP; 11 Dec 2019 19:11:28 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eG03D1BUyynttjxnvz5YYO2/t8uQX9sKTqR3hFj8PBMw+uBGNc7l6MnVhzLZZaUy12fhhJfqjJxaO/lg7suIrg4XpgXb/Ag/fUdyTxjKLir1UGX1qUeI37KSIg5zYQQeFa4evaO/LcD/0atpmgkTUUgzOWBoUKdd3ON/R0YsoB0RzW3BnAgZ6sFsjHqoqG5T9Fpg9hsqdPyuT2IboNMYvwdPZF5uh8Tx9vQB7vmiOgajyLRxoBWUyewJdLD+pGm/EW+XKfPEsV1M2j9Ktf35gqcC+WgNFTBEt/JkR3p6ZJ0i3JuV3NFp8CfN2RgTc+BMwNnHQf0monBpdfCKhCuPTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AI3rPJ4ZKfDq3iJHa8M6ZMhTmFZQSaPq9T7Zp/SnQMM=;
 b=VU+NkZiz9T2FVUSpRHZXmw8VXQ9qkiNmwRkjLPJJO5WQIKVDfjp9GPKJUpivrr/n1uKNovE311r/w4bf2jil5c764qAXn7PvCpbfdgTpInuR87OwMDxCTxHXqNtwS9Z5//58fyFaYt+HcDC1pfN+B95fBZgktD1JNjpheEmzTFNvrKE9o1s0sNKmUIe8A2yYu16Z7EF08vDLU5oGgk6Qs/1hUfeAMGxXKdDFHzSSGZmWuorR139Qh5qkNpY6S6X5jIWI6vfkZ7Js0Akb+w2nUt4SqLhmIsPd+lDoJiVx7H6JnFdChIX1MxWNiZ/MmLzRVY95qLRBVl6g5MhmfTMnSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AI3rPJ4ZKfDq3iJHa8M6ZMhTmFZQSaPq9T7Zp/SnQMM=;
 b=bFUpf2ypr+v/WZnn8j6QRnR5h6myrz7wb4Q0uJ7hjLGQTaVRlDAS7zHcYLCnc4DmGQ3FZDsdWDGyFz5oYbr6wLAXU/ZKTwAUb06qgi0VNrp1x4U9aT7ZHacK1AtUtgbNyz/9S6VbguDKb7s7sExbL8Jjsw0fcQ3dO2XrFyM/qBI=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB6078.namprd04.prod.outlook.com (20.178.248.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Wed, 11 Dec 2019 11:11:27 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9447:fa71:53df:f866]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9447:fa71:53df:f866%3]) with mapi id 15.20.2538.012; Wed, 11 Dec 2019
 11:11:26 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Can Guo <cang@codeaurora.org>, "asutoshd@codeaurora.org"
 <asutoshd@codeaurora.org>, "nguyenb@codeaurora.org" <nguyenb@codeaurora.org>, 
 "rnayak@codeaurora.org" <rnayak@codeaurora.org>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "kernel-team@android.com"
 <kernel-team@android.com>, "saravanak@google.com" <saravanak@google.com>,
 "salyzyn@google.com" <salyzyn@google.com>
Subject: RE: [PATCH v2 3/3] arm64: defconfig: Compile ufs-bsg as a module
Thread-Topic: [PATCH v2 3/3] arm64: defconfig: Compile ufs-bsg as a module
Thread-Index: AQHVsANQIZ1l2EY9sk2jTqldL02xFKe0xiRQ
Date: Wed, 11 Dec 2019 11:11:26 +0000
Message-ID: <MN2PR04MB6991B27D797044D8FFDFAE8FFC5A0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <0101016ef43c56d3-c7064a44-6025-4349-afd4-a2c91a9d9ffe-000000@us-west-2.amazonses.com>
In-Reply-To: <0101016ef43c56d3-c7064a44-6025-4349-afd4-a2c91a9d9ffe-000000@us-west-2.amazonses.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bc6a3802-eeb2-4168-e924-08d77e2addb4
x-ms-traffictypediagnostic: MN2PR04MB6078:
x-microsoft-antispam-prvs: <MN2PR04MB6078B2DB1F5285676C33C75BFC5A0@MN2PR04MB6078.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(199004)(189003)(54906003)(26005)(2906002)(81166006)(8676002)(478600001)(8936002)(81156014)(6506007)(7696005)(9686003)(110136005)(55016002)(66476007)(71200400001)(33656002)(66946007)(186003)(66556008)(86362001)(4326008)(52536014)(316002)(76116006)(66446008)(4744005)(64756008)(5660300002)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6078;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IZd3RE466ZLj07r9gq3MFbRlR9Q183v939B1+bvszqVYNmm1E6vcr92+qBX+kmTU+EUnRe4F8Xu9oDaITIsNzS4NpwCa5C/pKs+DKu9D25/wf9mkZSRx8HSwA6ROV9kJ5PwoxA9DCwAsx6ElC/h5ii8kWaGTj5qCqPYO3hPvKYTkUvj2BGv5BE6YcqOAVn+xbFgUTpKU0PNLhldj/Cuyz6PmKRkOuVzFUBN+Qks5/lkhGOtzVOpLM3FMQ+MEoj3uppWB5NlsKrQwdRkTYJfVEPcpGDf1r7zkmg+wkpvMontpaGdPV+PMSkXd3lPoFZOoogz4PGCNWuS3gBs12PqYg0o4Yi7nYY91Fc8k2zFfB5gukE9iHgWqW37fqzRQ+AxZEucAZ+bQkmGHOK4DGQpdq3yLfVCQsIbCP0X0WYuulFZF5XQO47KAtCzkNTXNvRGX
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc6a3802-eeb2-4168-e924-08d77e2addb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 11:11:26.6624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SzgqeKd1kwH+YAJ1onq94n6Vgheph73PZYNH2xiDne8D8rtOMlLc2xBNz01DdPWEU2pRK1fklFum2dn2IHtxRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_031133_297489_2D4CB5E5 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 "moderated list:ARM64 PORT        \(AARCH64
 ARCHITECTURE\)" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> 
> Compiling ufs-bsg as a module to improve flexibility of its usage.
> 
> Signed-off-by: Can Guo <cang@codeaurora.org>
Not sure we want to make it loadable by default.
The platform vendor should decide if this module is available or not,
Don't you think?


> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig index
> 8e05c39..169a6e6 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -227,6 +227,7 @@ CONFIG_SCSI_UFSHCD=y
> CONFIG_SCSI_UFSHCD_PLATFORM=y  CONFIG_SCSI_UFS_QCOM=m
> CONFIG_SCSI_UFS_HISI=y
> +CONFIG_SCSI_UFS_BSG=m
>  CONFIG_ATA=y
>  CONFIG_SATA_AHCI=y
>  CONFIG_SATA_AHCI_PLATFORM=y
> --
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
