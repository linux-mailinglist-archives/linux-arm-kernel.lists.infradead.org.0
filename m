Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D02031B9916
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 09:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7WDg/TE42Dfbev+ysEk6fUbxZrkHAj096TW4xvFqLU=; b=l8T20yX6aGt7l1
	C10Ms1FBkXYv4I/Zu3ePNCjkwWDJC22ZwPDps0E14DjGfFiEJYGvFXcV37QDisJPabky3iEn4KTwJ
	FwufgZj+EwOli+xuck0pKVQsDP1fSnDauC7NvoyZYmaP2WhCMz1cGz1K7OR4u95bTKBzKKfn8hoQa
	+Tow2Qkq3fdjpCeUVnW6mMH8pLNsuETIo7Rr6nQerQDRYPgcZE9pkLWKurp5jON28ouxG3Dp8Ccco
	7PvUPQ+oyTpf2L1X8wbflZ0SSTrXKi2yJOJ7K6YpgC8QIJcHRt8d6kAeCkCdLjmz7pu4mOA7N2fJE
	PTAJ+bi1sKeby0sihzTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyao-0007yR-9O; Mon, 27 Apr 2020 07:54:18 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyaf-0007xQ-D2
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 07:54:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587974050; x=1619510050;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zmgEn75UXI3Eo9CxotkYz/LHdIrkG9iy3UP7Pr6t4y8=;
 b=KjpMXqbelVWu7wEIiHOI1QivmrPok0jkHsB/7EATeXGp//VnHgRpdXMn
 7IXVH1uZOr/zayvB1W4uzrpa3NHTuWt1RfzFX3ATNZCqPUeIYT8KjWOLy
 jDIiDs+gaYNFKhMAYfaNXoOOSkitJEJ+uCvEpan0IRbmj5Iu17M83YlQZ
 HiOWN3M6k+l7ElBntf3l44k8jtKAVrf02gPXO1hPLQZ/OoOp9ps1hunhN
 G53q+Tjou5Q5soBn0Yp0mt78zURYGTQ57KVD5F+Jyz0e36Enig+5sapCv
 PnOyi8KdHm2FZxjhCNGoF3hQr+SE5UQUr9pUjGJRPYZDanYV3S1vsXuJe A==;
IronPort-SDR: Y2GQf0DjvDr81bZfAR4neNUIQ1qZJ7JVAm3EU72pgBF0kdZZ/cgdie3nfB1sOIXKVzUY9nhrdJ
 m0Fo3+QwzW+Et2tO+VuYBFb5DOEY9NHFzKS7dywhSvZPvcmvqBYvNOqe2k4eahAxemogjkj74L
 uB4bcdMmqKz/4ISYU7QxZeblkHMIaKZVNTw4vqUEhfx0wyWBV7eaTPWhKYVICP/Dy1WxI1sFpe
 DcCGQxugLLEqxiI3hMT4J0BOFIP91qOTMOZn1yGYZPieLYhGScI3m+1p4VpfY86WUy3Aly8YXs
 vP8=
X-IronPort-AV: E=Sophos;i="5.73,323,1583164800"; d="scan'208";a="140579903"
Received: from mail-bl2nam02lp2052.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.52])
 by ob1.hgst.iphmx.com with ESMTP; 27 Apr 2020 15:54:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RqTdOa9cqqk7k/cp2zHHryEFawLvshhE3/kahReUQHt74Xo3SZ4ZlaGBnX9SoBDn1zBhwkcKMQqxUIRi8mB0IZu1fbcK6JLCZs91oXi4cd3gqQOu4qedBbNZpy6hEeB9o7BM7O/q8F2lSuPq0vnxxRUx7BAyspJit445uvW+6hz8OdwvXguKreukxWKtZt7FOfU3GUEbVOMGRLyd6hfLaNy6VULBp8RMNWFowebN/qNYTQrW5yMHS/1a3shbEo/cpHYziOLom7yE0wr8pARIiLE2zwbkqqQMRpksYtsDLa8T2KzK2qArJ02DBZ9gFXZ9tiMH7Cd6wYCW/vIGOnK/UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zmgEn75UXI3Eo9CxotkYz/LHdIrkG9iy3UP7Pr6t4y8=;
 b=CfrMcBHah9/BcSHnniDfg2mWsNtCjPhLPrFjKXSowovqUzFzu0l9l32mf9FXPKZUkiT5jj4KSzvbtqI0fuHNt9v+0Nx94IvCH7Bv0EUQvgMhxlL1Fu/nz4+ixaHN4mhSquUJzdEld4KXFrn1qY2MLmFmrDwEVq+zUqzanvjmJM8KQ/tllUfwo5QRZZq7O2mMEcUqC9TTjTW+DS9wJsbN6kNnUUgBWL7ngknZuAIivc99p0LuCf1ev8WlwEdY5gjaEjcmnaTqpxHFwUttEwBGO2M0THlzdHGgcd7KpBxlSfsTxmAaTtTpp6O1aG6uLUp5bqQUmVydLR7fIERzOTy5FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zmgEn75UXI3Eo9CxotkYz/LHdIrkG9iy3UP7Pr6t4y8=;
 b=AP6a+OuhkH53UAttsjzz47j8JR98VO0kltaoauo+iyZLYE0aSn4iH8EFPWe8t+zpx9HoJfpfBdJ2mv97kotvDSFxH2PjTx0VOEtcLuREU52po+Z+yzd89+7pCbixdLjCdCW5onhbOMMrRC5C78fR42/Tdg7g4H75KzYrZHxMM8g=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (52.135.119.19) by
 SN6PR04MB5184.namprd04.prod.outlook.com (20.177.253.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.22; Mon, 27 Apr 2020 07:54:03 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2937.023; Mon, 27 Apr 2020
 07:54:03 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh@kernel.org" <robh@kernel.org>
Subject: RE: [PATCH v7 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal
 error
Thread-Topic: [PATCH v7 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal
 error
Thread-Index: AQHWG/IMeK6/8LgtMEaLxBE20AY1VqiMmdEQ
Date: Mon, 27 Apr 2020 07:54:03 +0000
Message-ID: <SN6PR04MB4640687552E59ABDE613BB1AFCAF0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174213epcas5p3f5b403eafe77d98cbe0b92ccb3fd56b2@epcas5p3.samsung.com>
 <20200426173024.63069-6-alim.akhtar@samsung.com>
In-Reply-To: <20200426173024.63069-6-alim.akhtar@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2712f33f-2ddd-4409-6dd2-08d7ea802790
x-ms-traffictypediagnostic: SN6PR04MB5184:
x-microsoft-antispam-prvs: <SN6PR04MB5184D368BA4A49B5B4F19D01FCAF0@SN6PR04MB5184.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(376002)(346002)(136003)(366004)(9686003)(186003)(5660300002)(86362001)(7416002)(6506007)(478600001)(26005)(316002)(2906002)(33656002)(110136005)(54906003)(52536014)(8676002)(81156014)(8936002)(7696005)(66946007)(66476007)(66556008)(64756008)(66446008)(76116006)(55016002)(4744005)(71200400001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GpIX13RDIoPXU9RGx01eJuRCwXywtmgeiMyr2VavsUAUnKJwXXqiZV/qwbYKzuz3U9396z8k2wxa/eZ3pJWAk4cDiowPbbVdb6vr+Z8OQdiqsHi7HWMZo5U68Zs9f094YTk45qkVe7AfUSmEJ4Bw+QqIiK5gGF40EAmPlT6dbKGkdc8wiyshkn39+iuZX8ZOofG0LYDSKljFr3jAmPSFmbdNNiNK4GfPeK9d/Drpl//yr61cMJACKH2A17r6EF0IgAjCxGxd1hHHEcRQoENb1/SWF/K1zvXz+o670o7RhkDAmOS2YH8uByOs7c66vRwn1Cj+famLeU2rjaLxm73XlesKXDbExVyH1mJxb5fvxfY9FsTfM19fecTr886YQxj4iSVBtJbmuRMWQVVW80+lIJfgVWS8vom1VY2L+DUgLy28Y8kpFe4o52vny5zrn1Dt
x-ms-exchange-antispam-messagedata: 70lCKAuZp0uIfe6gbQjtnq/zwWTF6NiBbwoz+197GZBqepTY0hV+1gcb7M/yXP7PneRsBU/vhOr1HrP6VPxVlk/deHiLC2Fb5y9F2gi1c+luovTcOG/3z+Kt1ho1Qots4s4Ew7963d+Nua2DxTzXhIMYPGWX5mmOId8mZzz4WIkYmtINA1RvjMAZ2MlKpuKB8OwH5MDJpT12EifcQXfh2EyT/bUArLuD/ol2xh8yFDT2OoxEA0oCudlScwMJO9JQUOTdJVNYK3+zr2X5aAJoidDOvOzrhTiXNaFIcazMyseThoaTozkLVgSPHw4auE+Sp3r5rqMk3inmOTBkK9gtWkfx4bg0S+qXG5RXVBvDzUxeiFbOYJ4DxjmmZoWdRGIL8hWTF30Y3HDU5N3QC338+hFwm0ziohaxxAs2foD3bOfEiFL8gST7HjMPf8gx3dIwsE/uD3jSxeRWNf1d6PiE7fWLx5oGnOnzHY8S9Ns7MFBID4qgCfRUrt+JDOE10JSVJtnGmznYGH3VMdwEaUPyZvLSfuuaEdGrblWn7I8Q3QvkY7LzsRZmEt0WwYexPje0w3KxrlxI4kuZxHj7PD7bWlVArWI3Njsf2uaSXcFwcrQ8ksTjkKYiQzNKxPtC1wVKg+PoL23cSLY/D65FO9kbfZZtyE8LkKjNHB6zOrkkdZjJdoX1fsIUBmC1ixBaxtQS0ScBvU3Cui7j1hoDJRXaNkkTbvpcPbB+B6Ey9zm/+ORmhd0bgjPlv6jtVi45O1+NDRqHnA1/fwumCbCCHYmJiqdMh5c3BgUnPjcvao7zUBI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2712f33f-2ddd-4409-6dd2-08d7ea802790
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 07:54:03.5595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RlwgEWUbrTTNBQJRj9dGz/SKWVmxx0tgrNENbzNy4HRxm/nMhjbg8RQVTD552LP3iEwHxFDw/7OO/8BdF4Ay8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_005409_528769_FB196C79 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

 
> From: Kiwoong Kim <kwmad.kim@samsung.com>
> 
> Some controller like Exynos determines if FATAL ERROR (0x7)
> in OCS field in UTRD occurs for values other than GOOD (0x0)
> in STATUS field in response upiu as well as errors that a
> host controller can't cover.
> This patch is to prevent from reporting command results in
> those cases.
> 
> Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
