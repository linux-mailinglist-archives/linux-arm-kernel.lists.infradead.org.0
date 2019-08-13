Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA0E8B210
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 10:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMSXRw8S0UDqE5Ekjq1xsNT0h9yAo7ActoIbaLKt3G4=; b=WnhxJQY4L3a+JE
	JDvhCt1785TQcZx1i6J4KDVk3W1tFE+ALpYi521ENa1/gPxlvW8W5MtqSLt4qtNVggMPOwvvxYOby
	6pjM4KNMbrfwxnrgUkHJUwUYEe4q/84l9C9R4fUBN/En9RkoxhYS60MyR/SHnnODOPH/foeefJLDW
	89zwSJ6TH9ytZLROYlTyAspEBNaFgw7+W82fnbI/XNlEOU1fCXwwVvDhe/pTKp9GT74fL49pUYtjf
	ScU4Jp0kweImDjoMpfn2OAlNL87c6k3glslLzjQ6f8AmEopeSMz1XSnJ55h2tvHsH+Dath5kIHrpv
	wBRUQHG1VQPVFv6Js6ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRuC-0006Vp-6M; Tue, 13 Aug 2019 08:11:44 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRtx-0006Uz-GZ
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 08:11:33 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 8aiBLgcCt0u/CfENmEXdViJHIKsrwwPbd6eUOv4rcumIo012gwAZhk8sdGF0DG0LV5nK7LfQId
 Oe53LvhvDcvbvNlbwyBUjleQi79ZE9ZJNCi2LXIT6ydeZmCYZHeUOUJqU6hR1xVARxtMRf8O6I
 IfDvoX+IcwAjSdRCl3zCC+ZthLNYbx2aT7dq3We4ooyZ5QSfu7G7YFSix8Hp3f5FjJnRGuOn5G
 A2zzBqGLdXtrrJalYnMBy9Dal0PpyvO3YuDBkiSUZ0DMMihC6FzgTXt3xVNJi5+daaD+uI+wzx
 qDE=
X-IronPort-AV: E=Sophos;i="5.64,380,1559545200"; d="scan'208";a="43390086"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2019 01:11:26 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Aug 2019 01:11:25 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 13 Aug 2019 01:11:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=afUbixqIQEay0Lxg7uc0kJkJPkNYeiySUnvRGa8jLZtKBDdgWaY2YyLzdGszYOCvfyXpmwxWHFhLuxa/N8FNB+pbsf+C/Kj+7LElXM2lGTD8qkOSCS5iGMAwaRfIUVLj6H36NGTrhM24vyw2FgLpuRGmFBJALhda4bgd9/e43SL7Gf0R4FrRzUhejTvllEB1CIeV+P8qj0yYmOdkjozQYGkCfY3kImwMY/E7CKDlSPgyqwWzYnb4eXTQGy8T6Y8qs1toPULMz14gNTLQyHUPmPo3Wp7D4PHTBGvChXTKTpewyYgd5/ZAvLN+CdShpnM3yHLh+ssOnLcskmNaHYUCSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G/1drhDQL946oAOjfsT/qccxyzh6E59rDNg7ynQ5fYU=;
 b=P5SQuyJz90Gkxs3JeU7RHtCw4/EI+VS3VAHkj0VgrWADzjUDchxIFvjl/o/sTPrSEph++J6UdRKUkqDlibNoFa9l1E//KrUoNp8QrcZR4aNrJQYfAxtcXIGxi8tdzIZMFjRbtOGyfqAmU24BqMAmpNIzY02YtZtpHteglHMH+RB11NoTag920N/9SNgtfkXCgA/kyAWr49eYxm9MBk0tuvltsXXkRhYmh6BTSeDRWHXqJE7qe8B3BQJiOJvl7oepvUEcwmew2OpJHajOsrBTK6GuIr9oc+dkwL32bUFfrz8DIPz6WnyHMzzQQWQ/cE2CsRD7D3sf0K5+kmi0AEfP2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G/1drhDQL946oAOjfsT/qccxyzh6E59rDNg7ynQ5fYU=;
 b=f9G2Iym+21HmscW80vudQxIVstBmMgBvI6HlSPmXQe1EM/nlwQmfCNwLvhJcyijsSTOIaDHoEKkbOyovyxtg9qXpF5j7smFSx7L1oohTqBTXHl6j5ALrX1AF9qg3fDA9+e604LMx/RGVygplvY2OwZqkS/DCb3eUNR0PqdSGa1c=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1247.namprd11.prod.outlook.com (10.169.237.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Tue, 13 Aug 2019 08:11:23 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::410a:9d4b:b1df:2134]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::410a:9d4b:b1df:2134%12]) with mapi id 15.20.2157.022; Tue, 13 Aug
 2019 08:11:23 +0000
From: <Nicolas.Ferre@microchip.com>
To: <efremov@linux.com>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] MAINTAINERS: Update path to tcb_clksrc.c
Thread-Topic: [PATCH] MAINTAINERS: Update path to tcb_clksrc.c
Thread-Index: AQHVUZ3nRcIHKUMCtUu8KXcGbJ0E86b4uhmA
Date: Tue, 13 Aug 2019 08:11:23 +0000
Message-ID: <efb86032-7547-dbc1-19ac-11dc9aff1521@microchip.com>
References: <7cd8d12f59bcacd18a78f599b46dac555f7f16c0.camel@perches.com>
 <20190813061046.15712-1-efremov@linux.com>
In-Reply-To: <20190813061046.15712-1-efremov@linux.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0149.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1b::17) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d737aa4-f485-474d-92ff-08d71fc5d459
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1247; 
x-ms-traffictypediagnostic: MWHPR11MB1247:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1247FDD147DDC2ADC7553F2EE0D20@MWHPR11MB1247.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(396003)(346002)(376002)(189003)(199004)(305945005)(2501003)(31696002)(36756003)(86362001)(5660300002)(7736002)(31686004)(71190400001)(71200400001)(6512007)(6436002)(99286004)(54906003)(316002)(110136005)(6486002)(81166006)(53936002)(8936002)(25786009)(486006)(8676002)(14444005)(229853002)(4326008)(2906002)(476003)(186003)(81156014)(66556008)(64756008)(446003)(26005)(11346002)(2616005)(66946007)(52116002)(6116002)(6246003)(386003)(6506007)(102836004)(76176011)(107886003)(14454004)(53546011)(256004)(15650500001)(478600001)(3846002)(66446008)(66066001)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1247;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wPTB4wHzfVOlNoWwjWaADKu7mLy3Dlu383XC01oHMlPDPIoql5xT6eweHfhYwtwPjjK2nKZBqki5rJ0VimHyrhyFYVbwJQL0iYzefctQ+3BywUirYIY0plEXcPKUT0N+EkdzO9doPIHr0UJIA5ButYyemx12ktparEww8RqVLBfNX60cIx5vmb3rtFzvRLdgwUbpXJnxlLa0ebTX13ZbUXyGADkE4sNkqvtt9yHD8ok/Na3C065bsFGXxs3sXwpPVLzekMjGtirGBTbMUjpmE9Ilm/s7t+NgR6aAL33g56U8YtcGwhMm2kso1VofiLLmCNAHurwJNbVgasVYLvBQLW1w63fzCi6Qhlg4WLSM3eWGhiyILISxfx9+lDqq1NyOUrUZEd1pg22Xh68R2fUd+GxmTngFa0AtNIz5ciTxOmc=
Content-ID: <7641C7C911F3044EB5B73D75BADAFE90@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d737aa4-f485-474d-92ff-08d71fc5d459
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 08:11:23.1581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UWQJrhR9uNU6qFlxMCTZY+ANXQ9PjblcyVgAzAP4GB3eLsvlJVF02P8h4/9odtZk8/4F99sqUnTdmBezm3rCZw7Z6s8TCUcZalyideeAL4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1247
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_011129_723973_D06004CC 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: joe@perches.com, alexandre.belloni@bootlin.com,
 Ludovic.Desroches@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/08/2019 at 08:10, Denis Efremov wrote:
> Update MAINTAINERS record to reflect the filename change
> from tcb_clksrc.c to timer-atmel-tcb.c
> 
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
But, while you're at it, I would add another line: see below...

> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Fixes: a7aae768166e ("clocksource/drivers/tcb_clksrc: Rename the file for consistency")
> Signed-off-by: Denis Efremov <efremov@linux.com>
> ---
>   MAINTAINERS | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c9ad38a9414f..3ec8154e4630 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10637,7 +10637,7 @@ M:	Nicolas Ferre <nicolas.ferre@microchip.com>

+M:      Alexandre Belloni <alexandre.belloni@bootlin.com>

But Alexandre have to agree, of course.

>   L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>   S:	Supported
>   F:	drivers/misc/atmel_tclib.c
> -F:	drivers/clocksource/tcb_clksrc.c
> +F:	drivers/clocksource/timer-atmel-tcb.c
>   
>   MICROCHIP USBA UDC DRIVER
>   M:	Cristian Birsan <cristian.birsan@microchip.com>

We could also remove this entry and mix it with:
"ARM/Microchip (AT91) SoC support"

But I prefer to keep it separated like this for various reasons.

Best regards,
-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
