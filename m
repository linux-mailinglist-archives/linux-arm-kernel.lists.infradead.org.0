Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E34B412612C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 12:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z571v4JGsJqKHXVTdzfNK1TTTBEE3BMmt47FFJSBeFw=; b=Azy2BPnAmCbbgV
	ebA1C6SRYtu80ImDk94HkXpL07b/2FpJpCKdoQzao33Jr2ZSd5tQQb/mVCFIkSW/BkMZAGD4ZbDRM
	eTV5ywV9y1L4BKI6Glwx8zf4MVal2LZR39UwSCmZGU1Kw/r0lYJ5mWVbBrxAUoe1JimH/4qy/SFIb
	dMyVadPman+DDughv4zkz36eX+81KJjooGxVaWfQpUOl6Wm6NrmVPCjDAiYESpewS3nfMDsHwi/QI
	AY01ZteLigi0c909zCcnJW+da/LpYRY5mInl7e48ptY8GY4Krwlnj9Ck3bUjsvQWE5CynJx7K8Evv
	1EiIR7dh2fVk41B02ttQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihuGc-0007Ls-9v; Thu, 19 Dec 2019 11:46:54 +0000
Received: from mail-eopbgr80078.outbound.protection.outlook.com ([40.107.8.78]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihuGS-0007Kv-3l
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 11:46:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MvsPQln/JKm3lK0R5f3egqOVjuYn7+yoiBPfhdQVdI4KiC0PrDDtV2+w6ev5dFhCgJuQu77nhctzCIS9m65Nm9dNi3U20JQWlFpifNV7K308Jmu8dDc4i/GnQu6+cC2yV7TecuBwr8XquXIj0ga4FRy+hcZJebfUzMmHbnUnjYCwA8iJqxKpJveqoTaYcHSfKihZ/+cdKwJBf9TiiycPrzLtW35f6paUUa07RBND6th2yDyDRHBpZck4r3685GfuduGvtF9eGXx5vK3LFVfZQhT86rrKMKFhTJi6dnupfVc8+HebbRI3Jx0BSKlVuI2A9G2pTKVozd7Ub3xep39hlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Op8kVPTHZexfBO1CM7jAErGS6+66AhOKMNaWjAg2mzQ=;
 b=H9P5fj2pf2VfP9AYDEON4g//hZutnq9lKUZPjKjU4xEf4DEnvRepBQefFCWxgO6D9Y73vk+lLAFdKo0u52OY6UwSiqBL4XhlC5fei2kqqFminnbzzj43P8el0U+zbtwKOhtiyDEhu3B2L+P7ZAtVlzTuMyuMKiozYL23FI+kPB30cO+5wvT0wpwkWIsZeEkSLPpIxl47OYBxQiu+X62OhHKr0TqTOYtGxyMTHiqOaB/RoB3efGRJwVBW/W0f6G+1oBnqJ4RAzHf0YJYf5jF7njU7VqTI/cK7DxNAmsJSJT5VkvHW93EiGWQgYzq1FwbEUxKBvLNbFZITsQRPxaiRlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Op8kVPTHZexfBO1CM7jAErGS6+66AhOKMNaWjAg2mzQ=;
 b=H0GtN4RghjsxyNzRLa+wSvBOVw9jTOfLs/FHVc2ZFCYqg/jzcwtcTmdq9tjc9IKN3q9FWFcbbkDfrl+QuwxqXp27MLt9cFqrOwrAj+z+SKxMVYsxCJqBh6F5a2KRpiKVLNHjfckaTpo8tbRQ/RCSMsR1rb8feXdW9XqXDtMFqBg=
Received: from VI1PR04MB4480.eurprd04.prod.outlook.com (20.177.53.80) by
 VI1PR04MB5504.eurprd04.prod.outlook.com (20.178.124.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Thu, 19 Dec 2019 11:46:39 +0000
Received: from VI1PR04MB4480.eurprd04.prod.outlook.com
 ([fe80::58a6:d929:99a8:117f]) by VI1PR04MB4480.eurprd04.prod.outlook.com
 ([fe80::58a6:d929:99a8:117f%7]) with mapi id 15.20.2538.022; Thu, 19 Dec 2019
 11:46:38 +0000
From: Nipun Gupta <nipun.gupta@nxp.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Kernel memory depletion when application running with RT priority
Thread-Topic: Kernel memory depletion when application running with RT priority
Thread-Index: AdW2TAgQRuOaPS9MQsS3CtWzV9rwvw==
Date: Thu, 19 Dec 2019 11:46:38 +0000
Message-ID: <VI1PR04MB4480C07836FC31F113A31C6CE6520@VI1PR04MB4480.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nipun.gupta@nxp.com; 
x-originating-ip: [92.120.1.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 28078915-bc94-42d1-7d34-08d784791bd7
x-ms-traffictypediagnostic: VI1PR04MB5504:|VI1PR04MB5504:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5504D93F73B0F58B0BCEFF9DE6520@VI1PR04MB5504.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0256C18696
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(136003)(366004)(396003)(189003)(199004)(44832011)(5660300002)(2906002)(316002)(76116006)(6506007)(66946007)(66556008)(64756008)(52536014)(26005)(66476007)(186003)(66446008)(71200400001)(7696005)(6916009)(4326008)(478600001)(55016002)(8676002)(81166006)(8936002)(86362001)(81156014)(9686003)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5504;
 H:VI1PR04MB4480.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R6WyqyAwEwAyuZDCFVpl7uGSkfElVq2HgO9r5utmEoLm8/onsV8GFamK4M4eEyTJWoKfcDjOuErWXQemp3lY6mCo3jyTx+b81p/E088s64Bgb78Yc50SKHrP8e/RMdUUpNQlOyY+2TrLywd+yJqJXxoY1c86j2ye66vHvyyXOMkH9Ny0cnCjVppRhEbnkqBZfKhSxCn7yAazKn1riH+yN6TzEvzYlAXhNW9JvTA+QtjIKDvwZa+0UrDsmgm2nA3/JQHgxz4C4D/D/ar6YBSeORRCpj6F1jmN/BZ/PWxI7XNAU51ZiT/H8jGMmLZHOREuEPDc9FHA0qqjEznJWpuc7oEc6wNRHxx4ea+nC9fBh19ZOOaOFGPD0P64c81d/GFP5eKJLH6xnjUaQpnj/WtHD8cFhkvWV9HIDPOsyF++UHIxQny27aDqf0TCCftX745S
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28078915-bc94-42d1-7d34-08d784791bd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 11:46:38.7219 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7sEGT6l+pUOmc7vuZ3PTg1h6XGaew5uGUPMhS39mNwDGqo/v3PiAc1GkRpxN38IjUA7YOxFducpA9e1d/Va9pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_034644_230994_685016A5 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Poonam Aggrwal <poonam.aggrwal@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I have a query related to memory depletion when running application with real-time priority.

We are running User-Space polling application (DPDK) with real time priority on one of our ARM based NXP platform with Kernel 5.4. We have set isolcpus for all the cores except core 0.
The application (DPDK l2fwd) is running on 'core 1', taking complete CPU using command (chrt --rr 99 l2fwd -c 2 -n 1 -- -p 0x20 -T 0).

We have observed that the kernel memory continuously decreases when any command like 'cat' is run on the kernel. These commands like 'cat' are running only on 'core 0' as isolcpus is used (also confirmed using ftrace).
Further observation is that when priority of ksoftirqd process running on 'core 1' is increased more than the application, the memory which was depleted gets freed.

Kmemleak has shown that after each command there is memory allocation done by the kernel in the system calls made by the commands.
This only gets freed when ksofirqd running on 'core 1' gets some time-slice to run.

Is this an expected behavior? My query is that why is ksofirqd process running on 'core 0' not freeing the memory; or is it waiting for ksofirqd process to run on 'core 1'?
In case anything is running with RT priority and consuming all the CPU, should ksoftirqd process have higher priority than that process?

Please note: We are not using RT kernel.

Thanks,
Nipun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
