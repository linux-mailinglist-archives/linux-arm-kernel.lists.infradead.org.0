Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE30314F263
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 19:48:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rm3dtyRi9zseStTnNsEuBVaRGIZo5jj7bBHVl75bvhQ=; b=jgtm0KSjjbZqjt
	IOQAok3HhTQJTcyFLN2eVmInyuLgKCEAutEyNiO6ctEhKdEj6BxziCn93d7O/FClmcA7Ze+f2DHeT
	i8i3hLZdmSN/P5lLCXeZ5Rhs3vU0f+6+Mm3XGc9ictNNwYnFlf2E7Yznct0H1wcWgIOLL3RFS2UCf
	fvigjky6/v16W543+PeIYQWPDCQg3bEM+0n063QxGZbFtdrsz8sRLKMRo0ROkPop/qvEZ1+7fv2UK
	Nr4EEe8FV41vGKOL/6lwMeQ20Y+EGKq8G2igAjvPTkmjpdTGJ1YYe6EyZNp6kIY6w+EjBSY+YjVf8
	ojdHWcvn9xQrfarqERIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixbLL-00056k-DD; Fri, 31 Jan 2020 18:48:39 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixbL7-00054O-9G; Fri, 31 Jan 2020 18:48:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580496506; x=1612032506;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fN1CVSHRDKEA6r0Dxq2ZalnLQH9fwSR+D/wSfwSoaU4=;
 b=Rq0pk3CTSminEYoWACydytUOXeLgjO0j9YKFWnHI5+fXOO+xAzkL62S0
 cwdIkrHO5U8HXIN7s2eL9kficyjNtrpwORq+8i72YIeZQQ2EWtjHg3lQp
 RtsSEw//LeMAm0dosDVUcjhPMWHdZIHLfZrxGDKSk+/jSr1Nq0uoPQk/M
 ITL/68OPXw8kFdR5ju2+92cBflXv+3Dmxj5J91Mo5zwt7NukA2J/3BC7j
 sWzTk4xsVUJtav2S0DB7YbyDHmFuSn+/7oD+fiUgOOg5JG/HUnaUbUnnb
 eEUtD6mg+/lBUuF/4Q44NPIX6kgSy1O0nuXOXmZlBCV1TNEuvWCRBUN3D w==;
IronPort-SDR: 9hhgxNXtVeAssR5GVS/XjFuQ+CqBGPUwwYliebSdEsson58KB0H0wDrlSErI5GlWSy5I15tGJI
 7iOvp5j0BjFBu751fJwgJgtTaWB47iQw4/Dg0MOcPVvTvRgkGMFpj8jY2tgRjdjXcAkGPxrOEQ
 f5SPVX9RWYOoJl0BBsOky7fwz6LdSVgsuXvoE/YQJSISSzrWivwTKLCqW91Fz6MxKkeoXpFE/T
 vRtY71JhJ6ouHNk43anY15HTB4h0zMoIxJK+YBxxsr1BiCpHTcb+OlD6lfHUKagtwxWOSKIk6P
 w/0=
X-IronPort-AV: E=Sophos;i="5.70,386,1574092800"; d="scan'208";a="129407717"
Received: from mail-mw2nam10lp2107.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.107])
 by ob1.hgst.iphmx.com with ESMTP; 01 Feb 2020 02:48:22 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DL6ic5zMjv+GqJeKogidT7HzRIpfTrKHo6iCQyCliXz2JoYnz4t8jsvYSoPbaQ0c+vkNLFwUVBTBcsLs6TCyGQayh2sDeP6qRiDI5/HBX1RTayV0LSY2Rk4Dydik3GrRKQzvIMgPELAk9FZ/+gueHG31KR9Q30epmx5FDwuwMtm5JOCgyY6U/qWh+Rz8JHRE8vW+Fnzr1ZKtiL+F5nwV8m15b1Um2litQEYw572nB7Fvh4Qk/K2V3Y9n15jodKXVLpxuh1OqKHi3BrjnhXU3arewI3+9SVJfEWep9cBkp9eFPwm28m2Za563EgrODyJWjZiCzP18qi0Ppzt5+wRZdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xve3KMGkoYdCIcomZmbm60dhhHtqw19sglWiDXtc2go=;
 b=RGNOEwx/oPPAUgdnITbZZmuvPZBk+b6oPsDarLMdD0MEF/+LKpcftcxJIZt6DmvTrqcXoBawOfmvOTSSt8do9AuS+H01flNCMiv3A2p5+5MqSWwf4k1endCFDtqA1EX+vqcZ28ETPi7iaRsCP5UxCxqhcJ46C6DKbCcvme3MSb6O2+L/iQdk4wT8a4Im2Fpm+FZqlPr+vPgjvUOsc8HCjT7so2CfhrKGOyOjlePAIYYRIXawyrrs5DVvyDR1MNlHAvlNNWEASTXt6TMOcHWmxntsJBr/fHPKdPvegGq1EaaeoaQ1JjRZaMAqz3EWtYmUGi608KHVkDrAFbzcakPFhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xve3KMGkoYdCIcomZmbm60dhhHtqw19sglWiDXtc2go=;
 b=IV4LZK7LrYB/duVLcjF2DDaFWbsb/vHcPABaLpH4dhZ7FJFKN9iCG8BER1WQziYE8gyszS1kJEwHpIaqnUYzXOYoSmq0qyHGkd7xUXHhT+QVd6KdHemLgtXypeuCJgvYdn6S1WOEtjyi2503zgJhwd9Af+p9mqPRNHLRJeg+3ws=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB5758.namprd04.prod.outlook.com (20.179.22.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.26; Fri, 31 Jan 2020 18:48:20 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::b870:3f25:f3be:535d]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::b870:3f25:f3be:535d%2]) with mapi id 15.20.2686.025; Fri, 31 Jan 2020
 18:48:19 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Subject: RE: [PATCH RESEND v3 4/4] scsi: ufs-mediatek: gate ref-clk during
 Auto-Hibern8
Thread-Topic: [PATCH RESEND v3 4/4] scsi: ufs-mediatek: gate ref-clk during
 Auto-Hibern8
Thread-Index: AQHV1pJJyxVd7c6bwEGDInsgF/50kKgFH/iA
Date: Fri, 31 Jan 2020 18:48:19 +0000
Message-ID: <MN2PR04MB699108FC14777CC364522069FC070@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <20200129105251.12466-1-stanley.chu@mediatek.com>
 <20200129105251.12466-5-stanley.chu@mediatek.com>
In-Reply-To: <20200129105251.12466-5-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [2a00:a040:19b:4327:5d1a:58d1:eef2:f80e]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a72847a0-8af7-432c-bcac-08d7a67e2438
x-ms-traffictypediagnostic: MN2PR04MB5758:
x-microsoft-antispam-prvs: <MN2PR04MB5758ACEC6457F6D1FB7AAE30FC070@MN2PR04MB5758.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:404;
x-forefront-prvs: 029976C540
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(366004)(396003)(136003)(376002)(199004)(189003)(81166006)(54906003)(316002)(71200400001)(8936002)(66476007)(8676002)(76116006)(66446008)(4326008)(66946007)(110136005)(64756008)(66556008)(81156014)(6506007)(33656002)(86362001)(52536014)(478600001)(7416002)(55016002)(4744005)(7696005)(186003)(2906002)(5660300002)(9686003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5758;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J0XgOHJGaO2zfIwGZuR+FrSpVZHNzqfL+5oJ2VBpGf95qYVvdaiiitm1ge+9o6YufzwM5BvOQhM0tm/Zqnl81HkWEIV6hk+2N9HCiQl+YQBn200BSzqW74QsR1bW+4e9kLA8Pfab8DeDbAwNFrAWkEpl0vLMumFhHnUPs920FadZYGlXUxCPsLzcNrnOZp5Bq2sgfG6FCl394wGtU/OsRe0WcQbvJlrrnNiSp4o/GGhZl+zaXT8pugbJzl6NGnkyPObFuWF9OpwGMmK6qXmca6WmZkaGf92MUlVbmXfvzkcP+cmrGvj7BtyN8gVgfSN6OB1nIpK52sgL0sH24N5dM744NeSBoT/Mmc5zH8y81wyLpG7CmlumijTKibcv2fVn7Ppm/fr7WfQ1SR7IjbEc7tEATYB2j8kKwBstrpV2FswuM64nMZIT80Ardi8yLVc8
x-ms-exchange-antispam-messagedata: 4atOS7QE1zXjzOxa9C1MUCdKUZQ05zKLV9Td55PfqKTVcJndgwQrKPXJGqlwMxf1qFxC5S8h8lNT+H9iS8zUlZFjJK9hq0/lKe99IQ8uagK5Txagj1nugaMMbnzJMngbMa3bW/Cty/eRWtCOREivm7IjRiaK42/xb6XpXt/eseUSiVuA4dxYk9vnFER3sdnJvLtp+qeoZIq9zd3S+vG3DA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a72847a0-8af7-432c-bcac-08d7a67e2438
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2020 18:48:19.8230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7TkZFSNb21E1KN30wKRYfzmzjSBK41QRzFCyz7Clax2fWZavE/9i/0MXWDfM88DOGRyDBiW7dpFlNfiv7Ic7FA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5758
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_104825_380516_68B69CC2 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> +static u32 ufs_mtk_link_get_state(struct ufs_hba *hba)
> +{
> +       u32 val;
> +
> +       ufshcd_writel(hba, 0x20, REG_UFS_DEBUG_SEL);
> +       val = ufshcd_readl(hba, REG_UFS_PROBE);
> +       val = val >> 28;
> +
> +       return val;
> +}
A little bit strange that you are relying on debug registers to setup your ref-clock.
Is this this debug info is always available?

Thanks,
Avri

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
