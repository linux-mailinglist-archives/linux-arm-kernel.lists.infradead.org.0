Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE2D24A99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=793GmHKITGhj14BxwsMsbzEP5Ula28HbD8eoTPJpiv0=; b=ux3bFkRNUhcl1p
	3nLn2nP4m36dyVrQ0WFDJzi9nZls1h89uJqaP76OFGQsfeG5KzXVtYsUdyBfD4zz429dOat0cRzK1
	s6k8iXlIDMntODSsBf6fxp3dvP4FSHcDDYY8ZHYUrcZg2MmwvXr1/tOSkORnBZokSVVvzrtWa/RNb
	dI/VcqRZ1Q0ApH+KLOBlWayJwhR42tOJ9WgDn2y5halacHNiHY3u83kiAlq5c+dKKdkAzf+UfRWNZ
	6UX4puAodn1fLxvWyeGUoYTDKiO2bbw8ocDymDQPiBbabDLOiMOW8ZsY6NVqoz6MRerRRGGX4cExQ
	8qClwzgajOMEcQSwCGSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0LL-0005r9-Q2; Tue, 21 May 2019 08:41:55 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0L3-0005fs-GI; Tue, 21 May 2019 08:41:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558428097; x=1589964097;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yruSyDYojSfEQZ4GoktjasNAJ1225ZeBVdn4GOPPwDg=;
 b=K+tirRPjVfkiMeAZDiqppTJm6WaYZxN2J+w9LlnWvXPRb+ZOc+0OsKPX
 k1ORpGlSYkaqc5zLzSlLjgJZIcdxusIKBD4dNPHcDh5cX9VgMY6wxBjdp
 /LmNsROqu5f64zpvRKmKX0KQA58mKqx/nxyYaj3CFp+dPKVN1sTGGUKqL
 OywWaqMxH3191bJJbtxgZa2sPcUaeObcDvGFWihVkUnWbGhp4GW809iGs
 HSYJLXq9NtZ7eG7ze1to6+P2P8uDyVUkyV8DYP8LTKc4rB5pcr3xdPsC+
 7uupIfHu+RUBs2rm0UWZtjKxCwQgDlZ/DNUB/WjEL9sHRLFKxTPEQg4r3 Q==;
X-IronPort-AV: E=Sophos;i="5.60,494,1549900800"; d="scan'208";a="110418234"
Received: from mail-bn3nam01lp2055.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.55])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2019 16:41:35 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0W7hGmdA5KypAQTtphJVx0R91aCMuv1WoxwM2XnmSBQ=;
 b=uMqr/YuOItmZ1MRjZufSoXT8YQ/ItnMNID1xcKxDWqSi4OebFtM95Iuj1++9BxDLOmt5C7XhqhjuqZIhhbYNQKt0SyCoMnA1L2mwRyUWn5g3IdG82/GzTvUJ1mNl3fbEV7KD7Wp71tOE52PE8EKWNtfVKFIpaijEY3RBiyC9iAY=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB4255.namprd04.prod.outlook.com (52.135.71.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 21 May 2019 08:41:32 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530%6]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 08:41:32 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v5 0/3] scsi: ufs: Add error handling of Auto-Hibernate
Thread-Topic: [PATCH v5 0/3] scsi: ufs: Add error handling of Auto-Hibernate
Thread-Index: AQHVD6DGIM/lpURAaUuuCZWM2A74F6Z1QowA
Date: Tue, 21 May 2019 08:41:32 +0000
Message-ID: <SN6PR04MB4925604BFAF0A66D54F65E3EFC070@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1558421094-3182-1-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1558421094-3182-1-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9159af8-7cf2-4d17-fb38-08d6ddc82067
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4255; 
x-ms-traffictypediagnostic: SN6PR04MB4255:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB42559F240996374849D0D2E9FC070@SN6PR04MB4255.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(136003)(396003)(346002)(39860400002)(189003)(199004)(71200400001)(102836004)(478600001)(53936002)(25786009)(4326008)(66066001)(2201001)(26005)(14454004)(86362001)(54906003)(76176011)(71190400001)(9686003)(5660300002)(6506007)(52536014)(14444005)(256004)(7416002)(110136005)(6246003)(186003)(7696005)(6436002)(99286004)(72206003)(55016002)(229853002)(476003)(74316002)(3846002)(6116002)(2501003)(316002)(68736007)(2906002)(76116006)(8676002)(73956011)(66946007)(81156014)(81166006)(446003)(8936002)(11346002)(7736002)(66446008)(66556008)(64756008)(66476007)(33656002)(486006)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4255;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pj486WJFKEwx49OxmokeD5rJSNhrgqiTD0wpOsn8xw5MH9/hUoJWIMRdrqHAli4sQIXORjHFecGkOPaQmwR4FNn/jAerMgfNxJYXWKpqqMQK0VKt+NWsUcuCIxO1WuMoj0xKBF8PbCg3KD20jTTlORnYsslF0RgeorArqIiy1p9/T8NGBuxP72+HOsrq884AYNgK5JD+YS8vMt/6HjWN19zaOw7KbJXZSmF3JrOFiiYlBwEBpQBHkYNmIMrpCu/nJDU+tSiSzglj0xE5q4s+c23/+deuK9JrYQZL1y2uwBgagswM84Y5K5Athkn6s47/WTUo3C3ANJE2b1x5In8f6I7fQ4J6Gf2u6RPVoQFvl0cSzaqsG3lXIrCIBsdOSH1RoUW1xRGi6MPciNr+Y1RKeGJLO6Kage164P/RXoOtRPo=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9159af8-7cf2-4d17-fb38-08d6ddc82067
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 08:41:32.4578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_014137_583723_1B7DDC9F 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series looks fine to me.

Thanks,
Avri

> 
> Currently auto-hibernate is activated if host supports
> auto-hibern8 capability. However error-handling is not implemented,
> which makes the feature somewhat risky.
> 
> If either "Hibernate Enter" or "Hibernate Exit" fail during
> auto-hibernate flow, the corresponding interrupt
> "UIC_HIBERNATE_ENTER" or "UIC_HIBERNATE_EXIT" shall be raised
> according to UFS specification.
> 
> This patch adds auto-hibernate error-handling:
> 
> - Monitor "Hibernate Enter" and "Hibernate Exit" interrupts after
>   auto-hibernate feature is activated.
> 
> - If fail happens, trigger error-handling just like "manual-hibernate"
>   fail and apply the same recovery flow: schedule UFS error handler in
>   ufshcd_check_errors(), and then do host reset and restore
>   in UFS error handler.
> 
> v5:
>  - Also re-factor checking of Auto-Hibernation support in other places, e.g., in
> ufshcd_auto_hibern8_enable() and in ufs-sysfs (Avri Altman)
>  - Change order of patch "scsi: ufs: Introduce
> ufshcd_is_auto_hibern8_supported()" to #1 as a preparation patch of whole
> series
> 
> v4:
>  - Replace original patch "[3/3] scsi: ufs: Use re-factored Auto-Hibernate
> function" by a new preparation patch "[2/3] scsi: ufs: Introduce
> ufshcd_is_auto_hibern8_supported()" for re-factoring
> ufshcd_is_auto_hibern8_supported (Avri Altman)
>  - Refine UIC mask definitions (Avri Altman)
> 
> v3:
>  - Fix typo in patch "scsi: ufs: Do not overwrite Auto-Hibernate timer" (Avri
> Altman)
>  - Rebase to Linux 5.2-rc1
> 
> v2:
>  - Fix sentences in commit message (Marc Gonzalez)
>  - Make "Auto-Hibernate" error detection more precise (Bean Huo)
> 
> Stanley Chu (3):
>   scsi: ufs: Introduce ufshcd_is_auto_hibern8_supported()
>   scsi: ufs: Do not overwrite Auto-Hibernate timer
>   scsi: ufs: Add error-handling of Auto-Hibernate
> 
>  drivers/scsi/ufs/ufs-sysfs.c |  6 +++---
>  drivers/scsi/ufs/ufshcd.c    | 35 +++++++++++++++++++++++++++++++++--
>  drivers/scsi/ufs/ufshcd.h    |  5 +++++
>  drivers/scsi/ufs/ufshci.h    |  6 ++++--
>  4 files changed, 45 insertions(+), 7 deletions(-)
> 
> --
> 2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
