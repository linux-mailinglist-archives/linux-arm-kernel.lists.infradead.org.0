Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53252B06B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 04:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWeAeKzAO3ibiUaPdU+XTcaEPsyG98lwVD3zUEp3AZY=; b=IealaqLWL2lMkp
	lq19QoRGu3LrWE1FjjYuNHAz1qvIsX0tfVmB/6Aiy5RpT/G2gpJG9qDv40mAgmqvDq/KJfflw4YOi
	vnq+vX57Mq7YY30NQrG3PMNbcOiZF2Ry0fViVaA4B0J1sMiY1WNbM98CwxymVRSHZyjPEk2FoWBE9
	wfGw9kKs+06HUwfdVcivPHO+61AH8gENBpzBT5fdzF/u+5OLTnk5S6wFQezKkWSyLPzI9B6DAJlaK
	1OdSX3X5UqXegPOXq9rlVR1dzfDBjnklPOcUKfPa8Ke8yqulpJC30EPstsVz/kAOsZk7HgCdMAYvT
	NvLhW+9W5h5+XIkIE2Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8EVM-0003jj-H7; Thu, 12 Sep 2019 02:06:40 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8EV2-0003j5-KE
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 02:06:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FEnOJvveNILiM9gXuEszjiMZ27l0WSIgbJ90Bol80ayOei0uTBzeaGrhCNZMjQbjA3aHM1BoEMOCY2m6qsf8QpRv0j+lqSRbt01Phu6o4+Kq+nyEI1Z5TKZsivEVAfhYekBD7OJ08o8mpAhW8FQJm5uVMNFVB7c0FG7osVZ9BErn5okHKA8dS1SrndyAYrdGHknSB73nGH4k+M0e+G7Op9j3ubH4aRNiFEjrodBzGS3rndg7ZCkwju4yJNAz0jIFD7RfJ/N9Wfmb+UTUqnZhM7iEO7BmA4qyZZVEG93O7NKgqOyqH7V26q6uTo9Fgfz/TpkWecgBlJ1JiU6R0NyHfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tqpsfVkiEoHSHGy1r9nLd1k3FNbDPVusNvx537NS0zw=;
 b=CSZcXIgVQQT/6Ejrwdk/xNWKnbzEL1kc6TH/Wtk5Y7NXlS/Y00zdzSJZbf3s+H4JHUo/8f3rliprQ4d4i20PzevMHQUJNOI19MgYXji0OVlAiGI6S3ICpSSvzbamzV+0moZgmLLpjumAO347M4QvhiPT/Zy7r2f+fQPGhXeI/LhXoQCU9snApcMlnflZh+zW2AIO9Jx0ylc45mf3LXPGwVth92oBUAlD7zSa8VFWcS9pEAWww4Dtmy9ZZ3D5M7L5vmEepL4Op3V0vedhotNbcR8vuSM6HbtE+OvXRD48MxKLng9xA5OyNldAuDMNZ7beqReK6cdSE8VbxBt9gcdLdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tqpsfVkiEoHSHGy1r9nLd1k3FNbDPVusNvx537NS0zw=;
 b=Cmh5272p2XTLTQWEUDfiQyI66mXF7UjIC07pp0lBaOSbLZZTaSuscotbl8Eo+/tuKjXqKS8Y1nZ3h7kFgxPL1c7iTHhKg7pgKbHYT4cKVKlkJiKRn3MnN5O44AGranoXPsBhH/bMVaY04AEhvA+NKoyd3nSlT4avaHUR4xlu1oI=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6384.eurprd04.prod.outlook.com (20.179.232.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Thu, 12 Sep 2019 02:06:08 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365%7]) with mapi id 15.20.2241.022; Thu, 12 Sep 2019
 02:06:08 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>
Subject: RE: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVXNw+wzto4eeux06zQsdxRt35zKcQS7yAgABK/MCAARQlAIAH0cMggACSdICADU6HIA==
Date: Thu, 12 Sep 2019 02:06:08 +0000
Message-ID: <VE1PR04MB66385122B55060CE7919014D89B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
 <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
 <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
 <VE1PR04MB66380D06DD2619493904B38B89B90@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <dc06392b-8242-7d09-e0fe-49fb04849ebb@televic.com>
In-Reply-To: <dc06392b-8242-7d09-e0fe-49fb04849ebb@televic.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26111441-4a13-48b2-2d22-08d73725c6e2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6384; 
x-ms-traffictypediagnostic: VE1PR04MB6384:|VE1PR04MB6384:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB63844D61C1EBC6176BF1B21D89B00@VE1PR04MB6384.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 01583E185C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(136003)(346002)(376002)(189003)(199004)(81166006)(110136005)(14444005)(71200400001)(486006)(52536014)(74316002)(6116002)(99286004)(53936002)(4001150100001)(76176011)(7736002)(71190400001)(3846002)(81156014)(6506007)(66066001)(8936002)(5660300002)(478600001)(11346002)(4326008)(8676002)(25786009)(14454004)(6246003)(186003)(54906003)(33656002)(446003)(55016002)(76116006)(316002)(5024004)(102836004)(53546011)(256004)(305945005)(2906002)(229853002)(64756008)(9686003)(66446008)(6436002)(66476007)(86362001)(66556008)(7696005)(26005)(66946007)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6384;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SSQrx8TV0595b4N3qZM4YLdJmtOHEB0rDByxJQSeH1hJPM+k/BNX3bsTSTXdfTzuH3zKZ6C46y6bPRbR+CB3bwNle52zM1oHy1wJKEWnx6rPEIctNujQsntIxSOsXkyFuS7igKL0ZO0dcGRNhOshINPv6j+WDBGFoloTW/0PZJBMgtufcbQxtNblSzbIedkk9Sa6IpfJXGTEuV17pT9Mweg0z98WlJuHIPGtKdTfMMolzGc4/mYJZnOO4j1RAmMdFPCyrx+w48J1TVs9zHqGX9xZeikz+2J7jXnneMZZfHeo3tIOvVzFc7mgEZbxKpAKTzUHuNLQpitSkNcod1Iz2JgFAQgAHV7SRtNsLVaOq6jllb4muuyhbQ9hOPi4ZdYS2qQ0NJbE/12AZKKnsrAIKLn/26zSQKXULVFf9OCzD1E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26111441-4a13-48b2-2d22-08d73725c6e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2019 02:06:08.5204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZAGpTRUQ6hpUITdoYxYFDxm7mx29JfFQ6IuLFlpkslRSeCgJkOD7+Afbtce9Ha0M3cmxQrE6jFvNEptXdSB/8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6384
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_190620_773505_4F43AC1B 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.82 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-9-3 22:32 Jurgen Lambrecht <J.Lambrecht@TELEVIC.com> wrote
> On 9/3/19 7:57 AM, Robin Gong wrote:
> > CAUTION: This Email originated from outside Televic. Do not click links or
> open attachments unless you recognize the sender and know the content is
> safe.
> >
> >
> > On 2019-8-29 14:24, Jurgen Lambrecht wrote:
> >> On 8/28/19 4:05 PM, Robin Gong wrote:
> >>> Could you help check if below commit in your side?
> >>> commit ebb853b1bd5f659b92c71dc6a9de44cfc37c78c0
> >>> Author: Lucas Stach<l.stach@pengutronix.de>
> >>> Date:   Tue Nov 6 03:40:28 2018 +0000
> >> yes, it's in.
> >>
> >> Also the 2 follow-up commits of Lucas Stach:
> >> 9063f5a99ea76f85935e3e453422d15e7be89b9e and
> >> 374f384bc66f7a928f11eb20c0518f0f3fc1ffd6.
> I had also already cherry picked your commit
> 3f5de4c7e16164a344a905649f08e8a90a68ff9f "dmaengine: imx-sdma:
> remove BD_INTR for channel0".
> 
> But also then kernel hangs at loading sdma FW.
> 
> (this looked the most interesting commit)
I identified this issue which caused by SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
(41)exceed the structure sdma_script_start_addrs(40) so that illegal memory
touch, such as slob block header, thus kernel trap into while() loop forever
in slob_free(). Please see the below code piece in sdma_add_scripts().
        for (i = 0; i < sdma->script_number; i++)
                if (addr_arr[i] > 0)
                        saddr_arr[i] = addr_arr[i];
That issue was brought by commit a572460be9cf (dmaengine: imx-sdma:
Add support for version 3 firmware) because the SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
(38->41 3 scripts added) not align with script number added in
sdma_script_start_addrs(2 scripts). Please have a try with
the below patch:
diff --git a/include/linux/platform_data/dma-imx-sdma.h b/include/linux/platform_data/dma-imx-sdma.h
index 6eaa53c..30e676b 100644
--- a/include/linux/platform_data/dma-imx-sdma.h
+++ b/include/linux/platform_data/dma-imx-sdma.h
@@ -51,7 +51,10 @@ struct sdma_script_start_addrs {
        /* End of v2 array */
        s32 zcanfd_2_mcu_addr;
        s32 zqspi_2_mcu_addr;
+       s32 mcu_2_ecspi_addr;
        /* End of v3 array */
+       s32 mcu_2_zqspi_addr;
+       /* End of v4 array */
 };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
