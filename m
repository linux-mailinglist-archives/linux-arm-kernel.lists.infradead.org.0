Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB07B116A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 16:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKK0US3j3Idu9LTt6+RR9j13QlcZL/OF/xOfgULheBA=; b=VXdX8PQUPwsWAp
	3Du0X06nihd5rD25CY4YsAWR8OhLo4867mN1a48dvL9eMGfvFSCYek0YfSqmz0K/9n6uYEqNAzoQK
	FE8GTxsePKHETtsHvdNmIttHfNJj2lNGdcG3H/r/6UB/5fUAP2w9AjDgva2jwAIEwnRxqx7Xa9Byx
	L6Grw1+4ohIlDro94zf/ElmcfSVu1+1IW2WOfOviM/iilxG/w4JLIBAdPMiseqD280j/Je8RJH07a
	9BmRYXVB1W8fVeZnpTkUJ+z1eK5hIGcqWkzV5LsCjfGXpz5LgW6HKNflhSq7JBV7WMH/Y196dAX4L
	RK1XMCt23XZp5UonQuog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8QOR-0007bp-Hn; Thu, 12 Sep 2019 14:48:19 +0000
Received: from mail-eopbgr140042.outbound.protection.outlook.com
 ([40.107.14.42] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8QO3-0007bV-Pr
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 14:47:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ea1jSFx3nP0RaFtiQ412DTbgtjkEF2cp9vQZDujfUoSt89sj8su/454eR7vo3f1hDurBTcIM7qOtqAUWTJhzNIbg5FsYArpuq316TqycYjt7+Fc513HWAx/7CpRM+emjUPg8O32pPxlm3I2QprcOFr6R5KuriKrE9rjXXoIqfz33NOvA2+raZ2DQGmLCUXWXwEgMwOTUFYS48ej5p9EOIxnmurJ04a818n8afLdSm9o8ebHbVavfKM/q1S+BxOa49BhIt77rCqioOEieSisdWKpxvVWdYLADxfvSP9g8pEN1XumS7DGD+DQ7ZnN2J6nP523Zei10fpC6qI9YWuV2tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B2dkLJ8d12hl1LrhgErARR7sfye+zOIzbg5U+PQEewA=;
 b=kTGLhfC+O0f8fy/CG51sZaz2VIbnnyridLInAvG5200ybHPYz996REgDZUL5YSKUgFbcQj3B254wJiItIldzHCZ4YS9oyiejQiPbZbSJhZMgihdIYVq0mBS9olJUy/YaVBBb0HZDVXvPO1aRGnj4A7qp4C9glvCjTDpeey9P8aZKKwC6hu4NDcHz4LIbl8ZBo+tJdZVUV06gn9NM5YlmbJPFUzGhAL1q3UAzt6vXLLbId1XUG0rhuUq0gbT7bVy376b9bSTalEnNfY1L0JqnzRts3X2L0HorHdhHZlZ8k+7ijirVciZtSMME2fwH8LMoN4b7UzH4D5cP4gCblbjiUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B2dkLJ8d12hl1LrhgErARR7sfye+zOIzbg5U+PQEewA=;
 b=HOdjjY088GejQJK2DNpylsH8a0RnkLtWk2aLk2YXJghXdPCoBpwQkfEOFZHP1K9OOYN2rYiPc8mMR16lUNhcjRUJruRpZdvC/UOw1n3A3WXCyYoREL7eMtR+qbOyhjPxNEeu6PvUufKZAaf3QbpWsO837Mh3Frp9eKUEo02a1Kc=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6429.eurprd04.prod.outlook.com (20.179.232.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Thu, 12 Sep 2019 14:47:52 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365%7]) with mapi id 15.20.2241.022; Thu, 12 Sep 2019
 14:47:52 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: RE: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVXNw+wzto4eeux06zQsdxRt35zKcQS7yAgABK/MCAARQlAIAH0cMggACSdICADU6HIIAAhmQAgAAo24CAACE7gIAACDaAgAAASpA=
Date: Thu, 12 Sep 2019 14:47:51 +0000
Message-ID: <VE1PR04MB6638E1FD68E7B4F5D4F7AED789B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
 <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
 <VE1PR04MB66380D06DD2619493904B38B89B90@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <dc06392b-8242-7d09-e0fe-49fb04849ebb@televic.com>
 <VE1PR04MB66385122B55060CE7919014D89B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <9a48ca49-4c6f-f17e-3306-6af41d3b162c@televic.com>
 <5274ab9f-999a-9d11-35fa-43b57187607b@televic.com>
 <VE1PR04MB663817327D9A585F0C4A158589B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20190912144023.GZ13294@shell.armlinux.org.uk>
In-Reply-To: <20190912144023.GZ13294@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f45f8c2-473a-4752-ff55-08d73790304c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6429; 
x-ms-traffictypediagnostic: VE1PR04MB6429:|VE1PR04MB6429:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6429546CB2D077EF7A3968D789B00@VE1PR04MB6429.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01583E185C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(366004)(396003)(346002)(376002)(189003)(199004)(13464003)(9686003)(71190400001)(14454004)(99286004)(55016002)(66066001)(6916009)(5660300002)(4326008)(7696005)(8676002)(66946007)(966005)(305945005)(76116006)(64756008)(66476007)(66556008)(81166006)(52536014)(81156014)(8936002)(66446008)(25786009)(102836004)(186003)(54906003)(6116002)(256004)(26005)(486006)(45080400002)(14444005)(5024004)(6506007)(7736002)(53546011)(71200400001)(53936002)(3846002)(74316002)(229853002)(33656002)(86362001)(76176011)(6306002)(476003)(11346002)(6246003)(6436002)(446003)(478600001)(2906002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6429;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 374Q4+lyh5tg3PnGF9lR64nEVM2g6YvEgxF6pSTTTkuGpe2wui4AtAFHmXSwHCYv4jKlsw6vsEN0SHM28lyxuXF3AyqBqVt1ZEHAgUR+cMft+/NmoCUFrNwKTmRiCNxZ+kckmr8TUMVTJVTG1t7f+Zt1Lq/hdr8XdxsrGpM73b0l4hhm5skvPK9V7S9Xrfgy9rZAl7G9bK2mDmQyoOPjKyhJQ9iezWHBs+JJolxnSvG1wGRwIk8AiBuY/XqludXSThR1ybVG3Rr//ahsLJy2r7IIouyiS1l7dUJhpDvFxIJ269Tp5Rau0GSIajsfU7RBhXMrRInFlkpeF/ee4UQJ3XO1YHOb72CsyPjKEjgTjgw/M7eqSGtnDgvYUf1kIdqY9QZOoVkLKOiG0a/EXSO9dAxie7uwOAx1SMTN6Vr/EgM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f45f8c2-473a-4752-ff55-08d73790304c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2019 14:47:51.6128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j739MnOPP2IB3feJYPaSCEw5MEssgZiHVxZbRLOF5/3p26kY/PKT7M42i1zqsapiJTu8rvEsZ92fjJCzI+EGTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6429
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_074755_845967_2857896A 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.42 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>, dl-linux-imx <linux-imx@nxp.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/9/12 22:40 Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> On Thu, Sep 12, 2019 at 02:19:51PM +0000, Robin Gong wrote:
> > > -----Original Message-----
> > On 2019/9/12 20:12 Jurgen Lambrecht <J.Lambrecht@TELEVIC.com> wrote:
> > >
> > > On 9/12/19 11:45 AM, Jurgen Lambrecht wrote:
> > > > CAUTION: This Email originated from outside Televic. Do not click
> > > > links or
> > > open attachments unless you recognize the sender and know the
> > > content is safe.
> > > >
> > > >
> > > > On 9/12/19 4:06 AM, Robin Gong wrote:
> > > >>> (this looked the most interesting commit)
> > > >> I identified this issue which caused by
> > > >> SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3 (41)exceed the structure
> > > >> sdma_script_start_addrs(40) so that illegal memory touch, such as
> > > >> slob block header, thus kernel trap into while() loop forever in
> slob_free().
> > > Please see the below code piece in sdma_add_scripts().
> > > >>           for (i = 0; i < sdma->script_number; i++)
> > > >>                   if (addr_arr[i] > 0)
> > > >>                           saddr_arr[i] = addr_arr[i]; That issue
> > > >> was brought by commit a572460be9cf (dmaengine: imx-sdma:
> > > >> Add support for version 3 firmware) because the
> > > >> SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
> > > >> (38->41 3 scripts added) not align with script number added in
> > > >> sdma_script_start_addrs(2 scripts). Please have a try with the
> > > >> below
> > > >> patch:
> > > >> diff --git a/include/linux/platform_data/dma-imx-sdma.h
> > > >> b/include/linux/platform_data/dma-imx-sdma.h
> > > >> index 6eaa53c..30e676b 100644
> > > >> --- a/include/linux/platform_data/dma-imx-sdma.h
> > > >> +++ b/include/linux/platform_data/dma-imx-sdma.h
> > > >> @@ -51,7 +51,10 @@ struct sdma_script_start_addrs {
> > > >>           /* End of v2 array */
> > > >>           s32 zcanfd_2_mcu_addr;
> > > >>           s32 zqspi_2_mcu_addr;
> > > >> +       s32 mcu_2_ecspi_addr;
> > > >>           /* End of v3 array */
> > > >> +       s32 mcu_2_zqspi_addr;
> > > >> +       /* End of v4 array */
> > > >>    };
> > > >>
> > > > Yes, this patch solves it! I can now use SLOB slab allocator. I
> > > > tried several reboots and power cycles.
> > > > I tried with different dts (without earlycon, without sdma on uart
> > > > and ecspi).
> > > > I did not try other kernels, only 4.19.66+fscl with our patches
> > > > and sdma
> > > > v3.5 built-in.
> > > I tried again v5.3 rc6 with SLOB, but it still booted OK, then took
> > > latest v5.3 rc8 from mainline, and it also boots OK - tried several times also
> with power cycle.
> > >
> > > Then I added your patch, and it "still" boots :-). So OK:
> > >
> > > Linux imx6ul-33927318 5.3.0-rc8-dirty #3 PREEMPT Thu Sep 12 13:54:25
> > > CEST
> > > 2019 armv7l GNU/Linux
> > Thanks for your test on v5.3. Yes, that potential memory corrupt only
> > happen on one word, most time it may hid well during kernel bootup,
> > and it's so luck for us that your 'SLOB + firmware built in' case
> > could expose it :).Thanks for your report, I'll post a formal patch for review
> later.
> 
> It sounds like this code is very fragile, and it seems like this mistake could
> easily happen again in the future.
> 
> How about ensuring that sdma->script_number * sizeof(u32) < sizeof(struct
> sdma_script_start_addrs), since sdma_add_scripts() has no protection against
> overrunning the structure size.
Yes, that's what my thought: add conditional checking, and warning log triggered 
if sdma->script_number * sizeof(u32) > sizeof(struct sdma_script_start_addrs).
> 
> --
> RMK's Patch system:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.
> armlinux.org.uk%2Fdeveloper%2Fpatches%2F&amp;data=02%7C01%7Cyibin.
> gong%40nxp.com%7C45c63241e494447ce5b508d7378f28d5%7C686ea1d3bc
> 2b4c6fa92cd99c5c301635%7C0%7C0%7C637038960316627129&amp;sdata=d
> QRdAxrau8EL2X7etr9MlKxNccoe70jM2dsMeUM3%2BbY%3D&amp;reserved=
> 0
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps
> up According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
