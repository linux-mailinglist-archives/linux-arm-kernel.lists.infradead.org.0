Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C921BB8A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fr2HmgiKAHhFIi3FGsncAwSNC4oUu1U12nlSyLhObkw=; b=uqC29lP/lvWrbC
	p2B6wKZjHeuekDoBgJ98JGHSIH6l9BJdHVMCn9HbUsvKeA7MrVhygIlvkKZAou/3+m3c02+jwxqK/
	yiMnz/ONgMHezInaCGu2J41N76dO2jsp89GcnRHCtDq1V0uxhzD06fr+9BQicOMchJq4yoVY48/fo
	aC1/RsUF+O8JhWwC5CY2neOOQEWyics9nFgy3Iq0jGLaqbQKgIxyQl64ehA+KsmwiAWynWlX1iNIf
	pbUaiIuMMaUTpgPMMlPvKbdkQcNlx2hCrZPD2N0+feqTjmSZcVsM+4lkCdH2feob9dHiInESSHNSP
	7AWzrg9R5OFeD+mdTNEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLPV-0003Mh-U8; Tue, 28 Apr 2020 08:16:09 +0000
Received: from mail-eopbgr70075.outbound.protection.outlook.com ([40.107.7.75]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLPM-0003K9-7z
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:16:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B9h/RVczCr4AX5L0UMnHhgS4yoWNI7IMSF6GU4JgRxS/2EdQjMeWjRu4+K28bGjrv0YVpoGFm2WFd9xokAQdHARfcVoDMPQwRWHXBsib+FD0ZmQXg6NUcxsLMaIIHOBdTP+zVLUJIBwDEvxX9Cw+5u/FowRNu/CR33TqFkBu5I3FkMg9NGgGFoQvncf/N/SDd/9vZaNBNMIQEcXPyRDglRKZ8iBWrFA994J+K/gHus9nrjl9v+XiOVDUHc65kuSOOgpGQmhHax0Yz04Imt5u9MoLQeZ+gfmZI5p/ges1SazNUKmKr7dmUOiNz1hxck1Y+GxpvxxGUQ+oYpfORf1BYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cets+4zYkj7zEWx/JJCY/GYxLX+PWqdNIOHeKWVD1xE=;
 b=PVnNpR6r8I6Edcp27KwHDm9snu8XA0U76QeImWN3nnktx/X8LfxZ/NxpWaaMzvZYPO2kEQkNCwRdRpVNdIDaXcb6cQ5A3xwd60WokZXABJ+RfInels+DGlJm3DbdiioJ6J3qWG9GfuSqgt1cCjCWbHKNnz1l0TcPiYtPaM9Xbk3k84kSzcy8/u+TGOdrHlkWCTSPaNjnQeJ4/hp5JYHwZLRLG9NFzMyvhA+/0TGVmR75md3Z0/V6vE7Uq/PJcS+TjCCup3Hm8pQ78l90bKjgdEHJN8eoREBv/rII6fdL9tP3PKZUlof9cDyswBTN4bq94V1WBV9EqOxhMfFso+EmOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cets+4zYkj7zEWx/JJCY/GYxLX+PWqdNIOHeKWVD1xE=;
 b=I5v627nqArd6ekJ8k9ljCMYEy9ykE05q0YlOoBD66JBNq2lEZXDz2F1fL/3QnbQJtk64165D5ZJHQyNIE/dig7g1sbwygYVPTC4oxB5iLRI9gJrGWmZR4QrBLWefYOiMu4R7D03uj0p9YJA9Na/4EGobRjfw5KH6cjhZ+0t1ONg=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5573.eurprd04.prod.outlook.com (2603:10a6:20b:94::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Tue, 28 Apr
 2020 08:15:51 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 08:15:51 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Mike Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Shawn
 Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] clk: imx8mp: Set the correct parent for audio_root_clk
Thread-Topic: [PATCH] clk: imx8mp: Set the correct parent for audio_root_clk
Thread-Index: AQHWHKYh3Me+nRhH7UyIwPCZLBjcm6iOLDKA
Date: Tue, 28 Apr 2020 08:15:51 +0000
Message-ID: <AM6PR04MB49663A072F56397BE55FF3C480AC0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1588000281-6594-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1588000281-6594-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0370aed9-6379-46d7-86fe-08d7eb4c5d7d
x-ms-traffictypediagnostic: AM6PR04MB5573:|AM6PR04MB5573:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB55730415004C571AFBDEE6E480AC0@AM6PR04MB5573.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0387D64A71
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(346002)(136003)(366004)(376002)(8936002)(71200400001)(66556008)(81156014)(66476007)(478600001)(66446008)(8676002)(76116006)(54906003)(52536014)(316002)(110136005)(5660300002)(64756008)(66946007)(4326008)(7696005)(2906002)(186003)(44832011)(86362001)(33656002)(6506007)(55016002)(9686003)(26005)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 27fMUXCvH7ubqY6qGuHz3/uGPFOvJBJNYrA9qMkBbV/Jp6uLVg+Wi6dxoE8KleATV87C8wZB5j25620jZgB0AU9nDvV9CSsXlOj8dLkq+LxNAVL5SmRYNjeuHFRjdElxKSuctVom9y89Bprm2TR3q0uAItLBBEkFAX85Xmwx1aTG/6/UzisBl9f74P/kDHRmZiBjQ03SPe8cuwoUXk6ZVIaU+VcjoALtopi3bsB9lsRV6jyEejItSIJ1Ce9eojUSZmHOlLmnwA5JhAeNF0KpRZOGdfxnL4qe9e9FnTfFXdcnaBuvuWzUxQebeeXpDGsaztukdsKRRM4did+3Iyx6jXmt7kieiRynaPDC1sj03eugvHCzyg0PYi8b7fZZ2CgA91J+qNG/412HVDdLXcDuvttt+/YV94ITpPdwfj5FFQXzuMfmpFmjtJ0hsPwL3lvujT5SiKm8QTg/OF0/3ZlosqtJafRH4CmlUpl/uXIv6wJSavW4P/lE0rI7bgTTCpJs
x-ms-exchange-antispam-messagedata: TaqxIVYW/5UVHVPAijbF+WGndx+Y9aI69M7fx8LAe2zH+eBHaT0qT+BLaNHukv9xg7ok7qT7coTTniGe38bCWewQ/1JD5UZRVJxPilqGkhD270Rzk1S33DcKgqOMmB6biUf0ZG/AoO3+kAaB36vFofldvx8gKSJfoO5FHNLEnyO1COzboK7RlTlaLRvdVlhm2x7Ycew64KKT64TN+T3K0bacNRxWRkSNsUckb7IeFl/o3l+FCHCidzQchg9g+11fVnu5miwffVaHXM9WHk5AT5FxO77+K9GiKi4BpT1Y8/ShJuz7qZ/8gFatzcQ21/12urifBEhfGoU/RMz4e4ZUAaAmx9cE8V69kbLLtv0C0VcBkcOcPOCCfqYm2SsQRF31h67XZ502NfoHYxr+tmVQMhXEESbl8e9b6El9d0P4ZdohgGM2R+Y1U7eRHZSoneZdSySbF9pO7Fv4P3Wlz3sjSmEadeanpLhl+QcfWiZmlN2vF9hMNXQq+YBfl3Q28Wsf395NtKboGAt+5cRJiwRXnWJ3BumqI8X3eG8lnocPURvY/PlhnEULEA8hyXz2ww9Ed34vCXlaERuNBYlRKu9e/FUkjOtqWExU4W0fQeAbRapxqKlZGd/gkvta9r5svE2BT7uAgsdUZ8pUoZcE4QnrGpnxUI45X/oVhLZkRKY12E37vLymkYg/btqOXvHUiXUwxWRpbqWjrg4chLlDWCbihv+5WD/Pk0V3iCzy7qjU1aFpSsoY3m/iQCTEG42L6v1bcGZPU6qaMiEVEiwZMfudd0EEIXyZHVyobi/oBRGwOH8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0370aed9-6379-46d7-86fe-08d7eb4c5d7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2020 08:15:51.4374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QzgIg8OdcNGRDe8spIzJ/Im50v79OxmXSFsKPLaWaAB2QzmatilulkJgpgjIGdYlIUTQ0Ep8HqNC7cZA8prHDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5573
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_011600_285871_AAFE89AE 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.75 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Abel Vesa <abel.vesa@nxp.com>
> Sent: Monday, April 27, 2020 11:11 PM
> 
> Instead of ipg_root, the parent needs to be ipg_audio_root.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>

I have a few doubts about this patch:
1. From latest RM, it seems CCGR101 (0x4650) is a shared gate for many audio instances.
2. If this patch is about AUDIO_AHB_CLK_ROOT, then it's parent is AHB[POST_PODF] from the clock tree in RM.
Not quite understand why this patch changes to IPG[POST_PODF]. Is this RM incorrect issue?

BTW, if this patch is taken from someone else, we usually better keep the original author if not fundamental changes.

Regards
Aisheng

> ---
>  drivers/clk/imx/clk-imx8mp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c index
> 41469e2..dcdfc9d 100644
> --- a/drivers/clk/imx/clk-imx8mp.c
> +++ b/drivers/clk/imx/clk-imx8mp.c
> @@ -727,7 +727,7 @@ static int imx8mp_clocks_probe(struct platform_device
> *pdev)
>  	hws[IMX8MP_CLK_HDMI_ROOT] = imx_clk_hw_gate4("hdmi_root_clk",
> "hdmi_axi", ccm_base + 0x45f0, 0);
>  	hws[IMX8MP_CLK_TSENSOR_ROOT] =
> imx_clk_hw_gate4("tsensor_root_clk", "ipg_root", ccm_base + 0x4620, 0);
>  	hws[IMX8MP_CLK_VPU_ROOT] = imx_clk_hw_gate4("vpu_root_clk",
> "vpu_bus", ccm_base + 0x4630, 0);
> -	hws[IMX8MP_CLK_AUDIO_ROOT] = imx_clk_hw_gate4("audio_root_clk",
> "ipg_root", ccm_base + 0x4650, 0);
> +	hws[IMX8MP_CLK_AUDIO_ROOT] = imx_clk_hw_gate4("audio_root_clk",
> +"ipg_audio_root", ccm_base + 0x4650, 0);
> 
>  	hws[IMX8MP_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
>  					     hws[IMX8MP_CLK_A53_CORE]->clk,
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
