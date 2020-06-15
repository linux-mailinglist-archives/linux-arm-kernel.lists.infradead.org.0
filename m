Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A3F1F8F16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfJosPCtGVjw1g0dgW/zMrIMgYCBwKTSY2P44HIsXdA=; b=HOP9qQ/Md+9F4y
	dxuPM41358czS7MD2RUQv5CgRgy8WW2yzHDh50o9ZXil8Jol85nmeJm8vRyyZ8G3odlzHWttBCXEI
	B/BjY7F3v4jRN3aT8P9qmWnOqMEjsOAfIH7NZC+Z9E+qMsI5dM/L7xTq5rB2LcqpDqdPfgN/elIgV
	VDrjmvrSgT793/hkGgjWgzxiVsdrguIThJddEWdHwoeJ5M3U2ghhfJqdAR7uJXQIR3eTVFuOtf7HW
	k+Ev2XO82nc0xPKKugtYZDP6cHjbgLxa/w1mQ0USwMlpbW3ZWzNpcH0pu50lHIydKg+3hAFRMDh3z
	iEBSIt4CzmigqepnG6sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjJ3-0003wc-OH; Mon, 15 Jun 2020 07:13:21 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjIt-0003ut-PP; Mon, 15 Jun 2020 07:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592205192; x=1623741192;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XrXQePVHQh8XpeC51qYFRMHa2ZO4E84iBpr4QqIfKvE=;
 b=eKzNpmrVuxo8fi37FlZEhLCs24PHmGga6J1FqrIAoL15i/jlx0kerh7x
 4sTl5RUs+wtE79hsOX82lFM71wj/E8FkFtO80Tos/zyQJUBrCBxfQtcyP
 gD2H9li1OKK0BxV/eyU8ybguAT+8hBDQXzA+CSwki4EXD0fqLw9uup+w9
 ke5B/WDvovSkC/Ksb8IMZY2u363Om5AMcsNPdusV/VQ4/awb5IC9ql1DQ
 IsxKF9dkUo0vz0y+ofS5xbfmnxWhMgCFyHRaCzMM+W2uxX4v/XNAeikbt
 qXICQ4qW/HW+sLobHXcDoy3+0WmoWsXtCHUnzj0LoVVVO5OTNjs6swnzq Q==;
IronPort-SDR: V6F6tanRWsI22vjGKM0iFubq3FktLsSqdLJ5gYxyyVJmIWq0GwVYEOJELlvfbHPdzwCsYXVtXy
 9XvO4zVy8uil30Rd82oysPHLUwzwu3Ik3usCM30n69whwIJIgc5mWsk00anwMgek5+jI4L1T0n
 fTYWTlTy3NCSBI6mk6mHBVsKeqtat5I4d3+WeSiyMzc/DMerJgMYYfDnwigY8gOHQyTFE/n2cS
 Lu4PQ7pBWMqY5TMqmvEu45xl8bu3Apq94Lw7ExtKKYOOMWpq4380eBCdOlhGx3wjUug5OtaGTd
 0Ao=
X-IronPort-AV: E=Sophos;i="5.73,514,1583164800"; d="scan'208";a="141394461"
Received: from mail-mw2nam10lp2107.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.107])
 by ob1.hgst.iphmx.com with ESMTP; 15 Jun 2020 15:13:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ccoDHVjRUDPmZkSvo0yDV7zuaYlgVtxTTqKLkdDoC8Ie2e6EG8F5muJz+mJ4mHOMB7AHRnSEqFeDPLh5eAVTWojmsQ66pzYHNrq6+xWiZa4yXZuJf0+xgVnT2IEhhyl4fxu98orRFH9rJEhENCeM8lMPkm4WovtW5LK8cWR9HY/sqRcQPFymgLtqE9PoU9s8gpGZs2zb1Nj/87lbSKmb7IP/WSOv404xEepfjw6rt6gB/0rYp34BpzXW+pIYFK1EP+m0mG+IjObQtGY61UPZQBgOg696Q5TXRrrRo/Z6dF95SKJqb99ZRs5voosxaN00sJNMaKcSlqYVCqz12ZVwyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HDjza1bFlTensGY0L822yDbavh470DuLXjk7QvBLp7s=;
 b=XKSqKxzVLfRsKqY3kL6wIYd2z9eQ5EFB1m9eV43Y16QgIuVTy3OlHwO+t2CULEk8+czL8dElI+baqwaegY7g8wvImyFdcil37KvFxAy1vUsLWj6UzDFUs6B1UMc1DVb6OMBPyZ+Wi42XaBf1/OroiP/cDIycGf5N7wlApstCUTKFlI5fPlvQjOvURoDf6OsnHc1b00iOUplv7tbXSefobJjHtywsqzh0OO36x304wzEB23DQfdrzXS1E/teFkS0DjjTFux7iAQdDaXjvxKZ9zuD9G2IMobr5yRxwAGNozgYjF3h94V+d+K7HLJDNnm+99chdo/uTsXVIr3K1bojF2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HDjza1bFlTensGY0L822yDbavh470DuLXjk7QvBLp7s=;
 b=ndD77+6x8Gj9/w5HTom1w8yIrV2RDO647+/TeYuhMPRYqqedl/M9kk6dYumE7zUzEr0YgRXwf6meF4mYIner1GYLI1c9uCwKZsYK5pEEN02vlVOPVZcotgbSHK0//HL69Fe48VUSSLyG1QK0Mgulni8H3fApPQEcCLPO7aa2FKw=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (52.135.119.19) by
 SN6PR04MB4574.namprd04.prod.outlook.com (52.135.120.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18; Mon, 15 Jun 2020 07:13:04 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 07:13:04 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v2 2/2] scsi: ufs: Add trace event for UIC commands
Thread-Topic: [PATCH v2 2/2] scsi: ufs: Add trace event for UIC commands
Thread-Index: AQHWQuDrRUZ57LvD6kiE43KBKdsIrajZQg/Q
Date: Mon, 15 Jun 2020 07:13:04 +0000
Message-ID: <SN6PR04MB46400CE00A5CAF16CE4D4367FC9C0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200615064753.20935-1-stanley.chu@mediatek.com>
 <20200615064753.20935-3-stanley.chu@mediatek.com>
In-Reply-To: <20200615064753.20935-3-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a1ea8bc6-3310-421d-90dd-08d810fb8c0d
x-ms-traffictypediagnostic: SN6PR04MB4574:
x-microsoft-antispam-prvs: <SN6PR04MB457447B792F0ED634E2F58C0FC9C0@SN6PR04MB4574.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 04359FAD81
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Eizy1Ex9jEY46HVldKsKB7r6rbPtlNTxkYHKq9KlhDiyC5Hxy+5kyBLZIcG3XstvXkI/RZm4c320gzOw/qm1qU3u2UalKiwHOLCw6eCPEnx6d4RvphVs1gQIaybQbAQF5ldNQvGWPYecvgeZXTpmss/TVO1FC0UqGqHXlXmoTBExp3FvFf76TS8sHwAbLfg5zMx9RMmNa75JfF8fX8PuJd4nYs6Si3AM6GurwaDVPV7M3e0XQqS+8slAt6lEGy00X0EzPUuja+mbBB60n4nqbV3AZhb5Fr2cHIzdHF/zniFp0uOrsUS9to6qpGS69o8ED1r4L0SzaaTaB8VL4xr9eA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(4744005)(86362001)(7416002)(9686003)(52536014)(5660300002)(55016002)(4326008)(478600001)(110136005)(54906003)(33656002)(316002)(2906002)(7696005)(186003)(6506007)(26005)(66446008)(8676002)(66476007)(8936002)(66946007)(71200400001)(76116006)(66556008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: bDCGYeHlK9I0yEPEXZG8XcsMyM7h102qMEcxN4AIEgVh+1mmGwulJFzn2VL+QJfjjDLGKefG54oqcVNDvyCmikfUd/hll15XHyIs1CqAAvw73RcWzxpYHxE4kimKL9f8t8F4yQUzWNPHPQd2Z75gIUjaO51N9/aM+Qx977U24oFE4DFlIC/zgR9LIBxp8Gl65D94I5t5I7cjQvefQ491c5sZ4GpgaiRwC0kavnoC2xrMyE5Y55Alffw1smsv9Yvorxz1M03t/XAbJbolUO+v+22An5xVIX2n+FPRwWBKc1rCMNCEa91kdBxcHBTJHrXoc5IiWngnLz0ceixMqHvl1O/cqaohM2lPqLhnTqxsry4ziwxWOuwsK54W+21+vnvFNWhoG5olRJctTMe6F641Zg2JsTGILZ4L7Ayt3By8DXnpWpfcyXHYH+KFxih2D3FNKZBMUh3Kd7jAoOjHQdbb+YCu4rdEX65YnqlOPJpQCX8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1ea8bc6-3310-421d-90dd-08d810fb8c0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2020 07:13:04.4060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CYUqtGUueEYCxrSz2Ykj3KVC+FXeAOQ7jUWkGN5ZqTr7nb1B9dN2uOrkf6OhEDsj39Ki7dmd61/QXBqWk6aqPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4574
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_001311_977583_162BAC18 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "cc.chou@mediatek.com" <cc.chou@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "chaotian.jing@mediatek.com" <chaotian.jing@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>         /* Write UIC Cmd */
>         ufshcd_writel(hba, uic_cmd->command & COMMAND_OPCODE_MASK,
>                       REG_UIC_COMMAND);
> @@ -4825,11 +4847,15 @@ static irqreturn_t ufshcd_uic_cmd_compl(struct
> ufs_hba *hba, u32 intr_status)
>                         ufshcd_get_uic_cmd_result(hba);
>                 hba->active_uic_cmd->argument3 =
>                         ufshcd_get_dme_attr_val(hba);
> +               ufshcd_add_uic_command_trace(hba, hba->active_uic_cmd,
> +                                            "complete");
>                 complete(&hba->active_uic_cmd->done);
>                 retval = IRQ_HANDLED;
>         }
> 
>         if ((intr_status & UFSHCD_UIC_PWR_MASK) && hba->uic_async_done) {
> +               ufshcd_add_uic_command_trace(hba, hba->active_uic_cmd,
> +                                            "complete");
>                 complete(hba->uic_async_done);
>                 retval = IRQ_HANDLED;


Why not call ufshcd_add_uic_command_trace once if retval == IRQ_HANDLED?
Is it that the exact timestamp?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
