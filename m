Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB8B1953DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 10:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZ3YuY4lnOv33Der3x7PCKjRMJibuPSR4RkkCD6L7E8=; b=eVbqUfGYa/cgIS
	zMfihFOx09EWQMdlxVPAHp7jCEIMFiV9eWN2mr+zJ0U9LTaVHxs3a59tzFv2d23GeSFq77HQo2nkg
	ajc0mLO/mcKHK/OjH4PwP8dVIpQ0/WHy2sIgIfERq/vP3Z7cJxbmSycK/BbeHkWysnBsV5JWu3LAz
	J1Yr2YZ14GHMUqEzj0Ait2uSS44ghYNIesYvySYGPNpx+OyeN6GrBEt1EPAW93YvIxWSPwIQF6c6t
	2NpzkZliuh3X+H7vmQc9wFGriPQJhudl7ixErfBxOHy2JqEEkTYbHHdulfLKNfEvDt/l/iWihowzM
	dk3qYRvTd2vnHyvbwT7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHlD2-00025w-0r; Fri, 27 Mar 2020 09:23:24 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHlCp-00024S-HH; Fri, 27 Mar 2020 09:23:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1585301012; x=1616837012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mNQ1BYUdVc5K/V95K01VyKYqIl9Wxp3HozvKdePhMBU=;
 b=U3g1ScWzuaPTVStaBW/B8M/lJyvh4PwI2k8vYq5LJv+7Zr/Q98tjwd60
 xHD63/f6VDIrp4sIkMfGzKZSSXRw8CQKn2F7uwOVNsdkklt998Wx17edU
 XUYMJHWaHMaZHwUf7rOQZygofFcqoh0NE2mmOmUMrodvtzJLUPLgwAuOt
 tNCW5CGfT9gDNtgrlgvTAvnJJ/ouxKiyut+CRZc4ZZOKri3VmR7x9nCGm
 lnwnYB1MBpDQQzmYOCq61IpN54uiUfGfBV76elcDhY58nosdE+Bbdy9WN
 XhanNdHNVlJTvKhVAufciC6z8PIhBsbhmysCZOnwU/Fp/Jr25Eu/6Htvj g==;
IronPort-SDR: SBohh3zQ8ZHpbHeKlods0yKvt0GOCuL/IZja0t9g54s2mcmkE6HpfgYILH9nyfQFvuG0vLQ5mh
 tE6n3Foa2STlqo2ud8imr3wmlOYyB9LfmKUkuFxB7KDQzSDCFpy0dfLwsfRCMtcPQ4LtPAbAXa
 r/ikkr7rtjOFnLCBIIcVzv0cCIwXqGNlbnULu8k5mfWakc0kTnX6o7upz0eTRUnSQwkSD1CU9y
 8Q0Vvt8oPG3e1AuVbQNL1obI8vSEI1vvbSLNvi8ye8vW/LmJVYbMoHmG0qExjLi4l/oEIXrtpN
 aPw=
X-IronPort-AV: E=Sophos;i="5.72,311,1580745600"; d="scan'208";a="235910982"
Received: from mail-cys01nam02lp2055.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.55])
 by ob1.hgst.iphmx.com with ESMTP; 27 Mar 2020 17:23:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZASq4tjdP7UgF3YzRG3BppYNqjGopjWq4Zlbq+gOdPTjzdY3dI+r6muQqL2IEdoEZgzV0Um9CXWPjm8GbW77xQ67crQoqQoHQAv8mZn1gAj3ZJnTRYU7uSubWXFm/0ODeW0lq3+bXNMIJa7Gr0rydrHJZis/OKbFvgAivNbx0wtcsrVIExeJqTIkhSvOTn2nb1ngGKArgFbTe34sQSNebL5cL9g94bBBUuP3TBTM/reLpdQ+PCFxJ5zUqKc4Rpu9MinmswSrJUQlmJkG9qIAM6BaSr0KX9APLPZL2Su7YAUCec/hNgyAkYG1yWh68jbWh26AT1uQPByjNscBgw9Adg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mNQ1BYUdVc5K/V95K01VyKYqIl9Wxp3HozvKdePhMBU=;
 b=TuGty5oReKL9baFXWGdqYYIo5pVipJFf0zCcwVusO8Xz4h0XcfB3l9ljdoDWA4pIuYwmecKXbJUfeJUkKWZBg8nVN2322C7TatDknkOy/HIGk3d3YHmv5usHxGlvaD9yXZmdcqPa/VCbXWSk5cr/hE33m+Vo/gm3uKjNusopKLV5QwH7/l4BT/qGre2yMRYI9I1lISJXBCCFBX0G/BA4S56A75713udWxXPgjDrFfiYLjTy3uuOFs+JNAH9ki/NVTc3L/5H6eUQtxg0NustYnwgVZG3MMtSO6+rFSHGQ9gq064M9Y2KTcU6/9oJmB9zLAy27R5ir+IQxS/2L7mNemw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mNQ1BYUdVc5K/V95K01VyKYqIl9Wxp3HozvKdePhMBU=;
 b=DxMuYOjuATdbzpYYx4WPYJUEE5SB0cynG/gSiZAeQF5R5D7GH8zC/5jgXyxk4mCZxVx2etQTa50/evkfNMGY3BGoqFtK301PSqnonRFQNIX2uyGeLfuISvWijjgWDrzyc2nqAqByJtu9LDoUiOUgrKCh9Z05FyuOSBscfi4gnt8=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4061.namprd04.prod.outlook.com (2603:10b6:805:47::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.22; Fri, 27 Mar
 2020 09:23:06 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2856.019; Fri, 27 Mar 2020
 09:23:06 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>
Subject: RE: [PATCH v2 2/2] scsi: ufs-mediatek: add error recovery for suspend
 and resume
Thread-Topic: [PATCH v2 2/2] scsi: ufs-mediatek: add error recovery for
 suspend and resume
Thread-Index: AQHWA4BdOgNxOg5M0Ea6RKkNMXHuBKhcKyNg
Date: Fri, 27 Mar 2020 09:23:05 +0000
Message-ID: <SN6PR04MB4640191B1F648C3D43BD9AF8FCCC0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200326150747.11426-1-stanley.chu@mediatek.com>
 <20200326150747.11426-3-stanley.chu@mediatek.com>
In-Reply-To: <20200326150747.11426-3-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [2a00:a040:188:9054:d519:d5ac:475d:740a]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1cf26652-61a5-4582-82e3-08d7d230750c
x-ms-traffictypediagnostic: SN6PR04MB4061:
x-microsoft-antispam-prvs: <SN6PR04MB4061F9C8DA4602FFDE317B3BFCCC0@SN6PR04MB4061.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(346002)(366004)(39860400002)(376002)(396003)(136003)(6506007)(66476007)(9686003)(66946007)(66446008)(86362001)(4744005)(110136005)(52536014)(66556008)(186003)(64756008)(7696005)(316002)(5660300002)(76116006)(4326008)(2906002)(54906003)(55016002)(478600001)(8676002)(33656002)(81166006)(71200400001)(15650500001)(8936002)(7416002)(81156014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FB99npHAb/A/B0ZOhEgCDDOxIxrykPzJCMMlN0v03/DgkRKpqyMVqPbo9befSSpvunB8yLjEkxBCXdjrxUByIQEuwfw/EC3/CQmAEGxfV/Ol8bNZDHNkRmiyhL2jv02dW2Tqu5YMzPGqBa2a1F0qfMgxYqA3/F9G2xrgGS+5XZAvXxMhd/eodid/0g0SEuXYwyc6p1Pz4MZGwG1FnpxHaU0kbbzji9YHDUPJXY3REV5EfZx0h4nthxOtcGLNzdyW7H6AUsnVnjCNAEzmOTPV+9tMcLfdcnQm3TQNk8f9FnK8+R++jdMQVG3Z18oPty0jntdmwkSz5iP8td5DOHjuyi59O7tI2VLGDbRJ7FN5/PhLMzz8x9peMlWgxshpv0u0wFsqL5FD30DtRZaksEOL8m4T7fPGORm+COYFh/1x7fsTywTI5DcvSNaSMK8i9gwS
x-ms-exchange-antispam-messagedata: 3aPsCig9xS1X1VouMycVfzyAPADgSiV6SuqBi3+MPoAA9J7IOkiCs80p3hs5jNeEkfKcz59kOcaeXi4No6rrcVS03oA5HzgH4RnqQnEr5/uJkoglqib9AAqe56PU7lCnfu2/zPHr0uika4pMCwAzG8mx04tbhPFOD1XCOKm9b7qWWTJE4UVg+bnazNI28nVcKNObnLacf30Oy2NGdjxCyQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cf26652-61a5-4582-82e3-08d7d230750c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 09:23:05.8802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: prFj0KJF3ihxTNTmQ0HOUG5pj41snkO2ALLOrglxfzLk/q/jDXV5bPzi5bRAS/mONUL1WMD8HQOzkcSzSGOMNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_022311_701034_6566A031 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> 
> Once fail happens during suspend and resume flow if the desired low
> power link state is H8, link recovery is required for MediaTek UFS
> controller.
> 
> For resume flow, since power and clocks are already enabled before
> invoking vendor's resume callback, simply using ufshcd_link_recovery()
> inside callback is fine.
> 
> For suspend flow, the device power enters low power mode or is disabled
> before suspend callback, thus ufshcd_link_recovery() can not be directly
> used in callback. To leverage host reset flow during ufshcd_suspend(),
> set link as off state enforcedly 
Not sure this is a proper English, but I'm not sure.

to let ufshcd_host_reset_and_restore()
> be executed by ufshcd_suspend().
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
