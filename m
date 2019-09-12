Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE8BB10FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 16:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DORMN5hA133E0wcBNgyTfVg5U6h38U20c1+EdipTGY=; b=GjULMfre5Qeqyv
	3UMTnkEsEk9sdlJSQ1aCZ9vfPnlGLQC1ijkBaV+gY+ahIx2UqP3NdAyW34YpXpallyfrqg7zkRYrR
	wufEJ0umv6Jt7QxgbuueoT5ivJ9mirWjTNhv09BQNEZ5fYUEOZcxZZSrZrytRq8N8zX+6kfMegvik
	z/qFOnng4lllyf7n90Q61/nxGf+3diq6JE1wKnJubshvsn9C3SSSabzGwb1ZLHBCBXDDKGG9wZkA0
	q9+KXTWwrzHWk2/UI2oSgayL7r4SuvA2JkwzwpZLC5nfLbPf+ipdAlKjhr2kBq7N9Z2fmg3UcY5Hk
	sakA/RncW6lpoTuUQaTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8PxM-0006T2-2B; Thu, 12 Sep 2019 14:20:20 +0000
Received: from mail-eopbgr30063.outbound.protection.outlook.com ([40.107.3.63]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Pwy-0006SS-9j
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 14:19:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GmyPeTM6S6H7NP93Fi1yuEl4jAMe4r6n1uutGJWzDuz8fVN7reZJtdO4okgQzNECUsQReoyd2k85LG5bcWLgOYWP2DztG4QIAz4t284UYa8MjQQBgpnqtYSbpiCxv/sGi6R/+6bPoPyomEoggr57g2qOdxUefNpKuUNZtQrSmiSo07f+nHpCOad0D8gT23UEL/WMCyk/8HXlXg58NEJmh5QtZnJVc0hcLnvki0VVuFugV5ORys6SHVUYhNBN1bkRIhtwbXva2Tn6ZpqgWjUWphE6khbnHWlFT+wkfjWfNQrnis0yw496KUJrF7hwjkg04l6PDFdfndwxFB3YaGaoTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IPEOotp1LnFzLYfk8piJs6YT252M24HCedEiChb6OYs=;
 b=IWFffd3vAcaXBfkLrtOF2oblWrWH4Ovp8qb1MVvVxnaq6kNcMMD2lkU9A1oxKdO7YqBG3noG2hn7UwIUanttjnjG7jj8gYKGFZrx3vJFBNThWw+KiXlWur8st1U1W3/ax72vk9ItBfg4wiZR3K7P1Qeih83xIFdXOeCuNk8SDmlw/Ni0pUrMK13MSvsfSoLj0GVA4A8k2qhCnxZeZ1Yj7phqVRVoRkVAIFOTiIesJ171CnUJHLfOGgv8PXwZN4MqcYwD5PM0UXBwT10n0qmI3kwR0ocyCxAAfDdcsXpmUP4Ejjorc1thMpBLYaA7fabjYkL93AS5LrOlfMnoi+mX7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IPEOotp1LnFzLYfk8piJs6YT252M24HCedEiChb6OYs=;
 b=QrJCjI/7OFgk8U7kDnINpq9Txy5fTNtlOmgQHrsSK6SXh2pEbzIuhYXNpG/7p7BAQIZNBQBkaXBiaq4fgVF/w3uORnLhBkK0eF3DdKFeKIIy7b+LpPDX9CjyQc7nn0CAZQnRPPE0MGxn0MGll7264NDqMR5a3BQirxA3m1iePN4=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6591.eurprd04.prod.outlook.com (20.179.234.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Thu, 12 Sep 2019 14:19:52 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365%7]) with mapi id 15.20.2241.022; Thu, 12 Sep 2019
 14:19:51 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>
Subject: RE: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVXNw+wzto4eeux06zQsdxRt35zKcQS7yAgABK/MCAARQlAIAH0cMggACSdICADU6HIIAAhmQAgAAo24CAACE7gA==
Date: Thu, 12 Sep 2019 14:19:51 +0000
Message-ID: <VE1PR04MB663817327D9A585F0C4A158589B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
 <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
 <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
 <VE1PR04MB66380D06DD2619493904B38B89B90@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <dc06392b-8242-7d09-e0fe-49fb04849ebb@televic.com>
 <VE1PR04MB66385122B55060CE7919014D89B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <9a48ca49-4c6f-f17e-3306-6af41d3b162c@televic.com>
 <5274ab9f-999a-9d11-35fa-43b57187607b@televic.com>
In-Reply-To: <5274ab9f-999a-9d11-35fa-43b57187607b@televic.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9de85f2c-94db-480f-dd6a-08d7378c46d1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6591; 
x-ms-traffictypediagnostic: VE1PR04MB6591:|VE1PR04MB6591:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6591A199FFA7C07AA6274AE689B00@VE1PR04MB6591.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01583E185C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(376002)(346002)(366004)(13464003)(199004)(189003)(5024004)(256004)(5660300002)(102836004)(6246003)(305945005)(476003)(6436002)(11346002)(64756008)(52536014)(2906002)(53936002)(76116006)(446003)(66446008)(66556008)(99286004)(7736002)(74316002)(55016002)(26005)(86362001)(9686003)(66946007)(66066001)(229853002)(66476007)(76176011)(7696005)(53546011)(71190400001)(71200400001)(8936002)(316002)(6506007)(110136005)(54906003)(186003)(33656002)(81156014)(14444005)(6116002)(486006)(81166006)(3846002)(478600001)(25786009)(4326008)(8676002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6591;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8SiDp6+dQsoEdPMhpIwkIPsLHHSFZHZiVigReMkcv71Fgp798kgG2vbyoJibUD219fRKMgGiwlDvdZXMt+okuK7Yjszk87DjH2WBZzl/pOh4M9HOD7tgQUKWcYUfjrJ8BkAYxhaKnh8EGR8dAYeJnuSMtFSJO8Z92Ih6vfyGb4IxBbE44bIbiji/fdisl8Ff0oB0xwQ8e2I9NsUzrpYHhGE2DTU+vDdfoQ4wpSpXratAbKn23sZ9EmqG7zerqKzLge67NXzjP267Vkce1Rude/z019MQHrD6S/ImpIXP8Qyd+HrHO24qzxb73UXuJqxsKFPkaK049H+/sBCkQry4iC9fnVTVs2sg2RLsMKAyQg3EfsaLqupTNzjQ8fci7GduVPUYpBC3f85tMFNQdW9CvWeFPKadNyVmNPXi1VYSkjs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9de85f2c-94db-480f-dd6a-08d7378c46d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2019 14:19:51.7813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zo0VGiu4P2hP4tx7Pk9FLaegkmdsiiYflsOyr/VCieHajvfPGTtAbnmRlNB/Ddq2XJncue1VfZyfosKDcXP2Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6591
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_071956_440761_3B16BD50 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
On 2019/9/12 20:12 Jurgen Lambrecht <J.Lambrecht@TELEVIC.com> wrote:
> 
> On 9/12/19 11:45 AM, Jurgen Lambrecht wrote:
> > CAUTION: This Email originated from outside Televic. Do not click links or
> open attachments unless you recognize the sender and know the content is
> safe.
> >
> >
> > On 9/12/19 4:06 AM, Robin Gong wrote:
> >>> (this looked the most interesting commit)
> >> I identified this issue which caused by
> >> SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3 (41)exceed the structure
> >> sdma_script_start_addrs(40) so that illegal memory touch, such as
> >> slob block header, thus kernel trap into while() loop forever in slob_free().
> Please see the below code piece in sdma_add_scripts().
> >>           for (i = 0; i < sdma->script_number; i++)
> >>                   if (addr_arr[i] > 0)
> >>                           saddr_arr[i] = addr_arr[i]; That issue was
> >> brought by commit a572460be9cf (dmaengine: imx-sdma:
> >> Add support for version 3 firmware) because the
> >> SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
> >> (38->41 3 scripts added) not align with script number added in
> >> sdma_script_start_addrs(2 scripts). Please have a try with the below
> >> patch:
> >> diff --git a/include/linux/platform_data/dma-imx-sdma.h
> >> b/include/linux/platform_data/dma-imx-sdma.h
> >> index 6eaa53c..30e676b 100644
> >> --- a/include/linux/platform_data/dma-imx-sdma.h
> >> +++ b/include/linux/platform_data/dma-imx-sdma.h
> >> @@ -51,7 +51,10 @@ struct sdma_script_start_addrs {
> >>           /* End of v2 array */
> >>           s32 zcanfd_2_mcu_addr;
> >>           s32 zqspi_2_mcu_addr;
> >> +       s32 mcu_2_ecspi_addr;
> >>           /* End of v3 array */
> >> +       s32 mcu_2_zqspi_addr;
> >> +       /* End of v4 array */
> >>    };
> >>
> > Yes, this patch solves it! I can now use SLOB slab allocator. I tried
> > several reboots and power cycles.
> > I tried with different dts (without earlycon, without sdma on uart and
> > ecspi).
> > I did not try other kernels, only 4.19.66+fscl with our patches and
> > sdma
> > v3.5 built-in.
> I tried again v5.3 rc6 with SLOB, but it still booted OK, then took latest v5.3 rc8
> from mainline, and it also boots OK - tried several times also with power cycle.
> 
> Then I added your patch, and it "still" boots :-). So OK:
> 
> Linux imx6ul-33927318 5.3.0-rc8-dirty #3 PREEMPT Thu Sep 12 13:54:25 CEST
> 2019 armv7l GNU/Linux
Thanks for your test on v5.3. Yes, that potential memory corrupt only happen
on one word, most time it may hid well during kernel bootup, and it's so luck
for us that your 'SLOB + firmware built in' case could expose it :).Thanks for
your report, I'll post a formal patch for review later. 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
