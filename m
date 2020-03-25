Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6907192BBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 16:04:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1erdjSMGgpaZTNs9Q5UwBuZmZ0y4LkKdQfD44/T+sXQ=; b=isQOJD8S2rJ8FK
	Zb1rojv3jmhKDtMydH5oilKVPgee+tiVFQKpKc+seqWofDiyFfRgtgVHxE0eWlNg3569ewyFHdSUA
	aXx3FcaYS8fGNHT0Le+VHGlJOL4MR9i4vRySmt7cbLB6o3kskPt0MCzF8YncMo9bZhkGsgTvJ2ObX
	G+a1G6XN811cvRx4DmXoTZPIIXikWdx87g1N08FCAUjIj/VTfmZ4cWabA5VcfYFeriTwOJ4IqEZCw
	e64htrVxMCENc2sIisQ9jyWDewapFxDMWWz65WAnYjDT3fL81hsYdl+RpOiNTEjYuSezbYFC9Skkc
	FufrSonkhhrM2dhun+9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH7ZW-0001PY-CF; Wed, 25 Mar 2020 15:03:58 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH7ZM-0001NT-T2
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 15:03:51 +0000
IronPort-SDR: +tq5UOjQLY5dJ8neMc3qlSoThvBTrjEXQDHC13N+Oe0n5JP4vM0ZySZ2ByzTdvbgsz6P+4W6KA
 FzfrrZrMZsf77HtJrnD5gDuOZ5Ks/xFZ0mKe1mfxFuS9587J5AGB3gDY/Zu8IW9aPYMsRP0uYT
 9O8obwpwk6tf/2FUnUSuX/jRYH+3MYtD2C+XHOJ3dGqUgaL98ci0KAV9phnpSZP/N3aiwwMN72
 0HgcnxzudFq5VXAZ58dI/+LHR2vNRZ6Ex68KKMT9lfc8PtSsFzeuSBaFF3y/OGEiUt+1dsj55d
 tmY=
X-IronPort-AV: E=Sophos;i="5.72,304,1580799600"; d="scan'208";a="68350373"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Mar 2020 08:03:35 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Mar 2020 08:03:34 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 25 Mar 2020 08:03:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cjkGGz8ABvkMbhnie91nUi+0AKxsW/rGUSqT+JWGoXVW/ldHYWxCF9DOfinkU2nWi1A0mAJ0DXVpBanEbdsSzrW8ZPrjFZU4tXxDkpYOS0WlbAnD0ptAaw4rT9Ybi7rJWLoPzdf+JfH1gjeb/1VUYCF9IbvO9VGkLPSm1VBFG+Ru6cWcZOFQt1spJCnnZjiBQLRJVzI/Q/Ov/HajKAU9RTBv0WULboNMsndOu8tu+UN0ekzKElhy/I90AHZoFAoaQXWZFymuEauqpc/LFUd+2ZWXKs+vz/jVXrQ7fgbIFIHpsoG5DSfS4vYQE5mq4+MG74MHQE8+r+uJezB6tWoN2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xagPh31+B75x1pdbi0jhQhC0iACfTr7CqS6WXcz6hwM=;
 b=KSRrqRxq9DZmt8lAexEf7hjPVVsprCLDpYRX1VvvsROcQwvlxAHimR84t4lmhzZ16WAOk46z2Ukfj6TrR1+298LuFcSQneE444Nd3TJdt50wYt4hw2bVT+QR/mSZTWnXDdAWSsqB0sTo2lOP0EC/UimtCptnsF74qel0LZQsRZiyoQgFU6YgqDLKRLaxGvmUTaYiByCXDX70RiOX3J8tybYzAT3k5bv1vF7CQyXqc47pVsq7L9xdHHUhQXA83pFU39beUqj4eBIb500bw8vCHfqxedVEIc/QKM9lslBHzC1YalU2dN/ecDy2h1zquYZUtteYcvloG6QxvZr2Lb4sYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xagPh31+B75x1pdbi0jhQhC0iACfTr7CqS6WXcz6hwM=;
 b=s2xSwAShAVQVydIDkF5++edGSdEz7u2LaPMq9aKDz+lQk53gCV4ERJq88x63Tt/qS7d+mqenpfC4S7J3JuVRYoMYoU5xkz48LUATHalwJSB+Ahk8Y8dUh4fvvtBt8Eh6i+WOTrs4XPR206ixSI++Q2c8WygOiZb8PpVUwABNibw=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (2603:10b6:a03:1cc::28)
 by BY5PR11MB3943.namprd11.prod.outlook.com (2603:10b6:a03:185::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.18; Wed, 25 Mar
 2020 15:03:33 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::114b:fdb3:5bf5:2694]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::114b:fdb3:5bf5:2694%5]) with mapi id 15.20.2835.023; Wed, 25 Mar 2020
 15:03:33 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <colin.king@canonical.com>, <lgirdwood@gmail.com>, <broonie@kernel.org>,
 <perex@perex.cz>, <tiwai@suse.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <alsa-devel@alsa-project.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ASoC: mchp-i2s-mcc: make signed 1 bit bitfields unsigned
Thread-Topic: [PATCH] ASoC: mchp-i2s-mcc: make signed 1 bit bitfields unsigned
Thread-Index: AQHWAqluo8Epior2o0KE9euqviFOj6hZZ8YA
Date: Wed, 25 Mar 2020 15:03:32 +0000
Message-ID: <130efce3-5a04-a813-062b-79f8b4284db8@microchip.com>
References: <20200325132913.110115-1-colin.king@canonical.com>
In-Reply-To: <20200325132913.110115-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Codrin.Ciubotariu@microchip.com; 
x-originating-ip: [86.121.14.3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b0ea2b4-cf85-4e6d-0945-08d7d0cdafb2
x-ms-traffictypediagnostic: BY5PR11MB3943:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB3943972DCDD95D7D52C02C24E7CE0@BY5PR11MB3943.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:530;
x-forefront-prvs: 0353563E2B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(39860400002)(366004)(136003)(478600001)(6512007)(8936002)(81156014)(81166006)(6486002)(6506007)(8676002)(53546011)(4744005)(36756003)(2906002)(2616005)(31696002)(26005)(71200400001)(91956017)(76116006)(31686004)(66476007)(66446008)(186003)(4326008)(54906003)(110136005)(66946007)(64756008)(7416002)(316002)(5660300002)(66556008)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB3943;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Rs4zLEOPKiRryYJdqSh0/9ucEe1Q3WTw/84CfyhUce+6iy6avIGURAq/u/RAcjQlcpqSlLpQFpwJ4px74RiBDQ70UD9RsKTAWkeHm0j717L2MoyeBUQMw1QEoAJSv0w+MrK150oKHEiiyCYi43dj21M7tVH2krcigjaD8wjozfR3l8h7hwIBLD/Tpq9JCOnWNONXoDWRe9DKphJKZUB39l5LNZbCf0N2jyM1LZnAD1331edx3p7MddvBxe7u4Hj83Oksjtz21eTYMhtgi1BODA5/z5y5ZMt0XfX2dWQc/6KeVj3x1MKpaouZ3wHeqafaMJh+HN3l759o50O8vaFZ3KuykMjvyTR5LshhYoCxT+AW6+B/HkFPrxFNkyZd/RCZ4ACGAOUJPIdmvGPzMHiqHgGag3MyGYXzdNDVAir/bj83NaR7Lu5csfB3thIR7rVtMUsQ2Rdi9XNyBnhYXl8dwCzAkwg+mVr05+QQWU+PXmBcNhCfx4OxFZdxFBHnTAG
x-ms-exchange-antispam-messagedata: YepDUms8wh/4mTrWnG1OGtrx0ncT/P8OeSwiwvL/TvB+A1iLMWixZi5lZ4/OtZOFVeBPbuq9OIS7Qky3ue0D/yVICnB+k4SnR7s2b8QUlQq9YFKWoZcuttCyOptYg6HXImXahPZiwTRKKrSJnT9aOA==
Content-ID: <35594FF49A90AA4DA6C85EB2FDC5F5D8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b0ea2b4-cf85-4e6d-0945-08d7d0cdafb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2020 15:03:32.8869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: piFdO9lOTY66XuOgBot0jcDzYLW29jeqxGwg5vm3cz4qZL3enTiZUryXFV5DVpo56Nu6hNld5kQUuCi0MT0PfsKnnOi7Ekor+8nVqSrmY+k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3943
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_080349_172454_C582C050 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25.03.2020 15:29, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The signed 1 bit bitfields should be unsigned, so make them unsigned.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

Thanks!

> ---
>   sound/soc/atmel/mchp-i2s-mcc.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/sound/soc/atmel/mchp-i2s-mcc.c b/sound/soc/atmel/mchp-i2s-mcc.c
> index befc2a3a05b0..3cb63886195f 100644
> --- a/sound/soc/atmel/mchp-i2s-mcc.c
> +++ b/sound/soc/atmel/mchp-i2s-mcc.c
> @@ -239,10 +239,10 @@ struct mchp_i2s_mcc_dev {
>          unsigned int                            frame_length;
>          int                                     tdm_slots;
>          int                                     channels;
> -       int                                     gclk_use:1;
> -       int                                     gclk_running:1;
> -       int                                     tx_rdy:1;
> -       int                                     rx_rdy:1;
> +       unsigned int                            gclk_use:1;
> +       unsigned int                            gclk_running:1;
> +       unsigned int                            tx_rdy:1;
> +       unsigned int                            rx_rdy:1;
>   };
> 
>   static irqreturn_t mchp_i2s_mcc_interrupt(int irq, void *dev_id)
> --
> 2.25.1
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
