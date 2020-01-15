Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED4613BACF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:20:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jlG/FGA8hQQ12HH1jBCwskVoRxQ7RgAN7f8uFI6r2Xs=; b=hKG40+ZdBQ/Ij8
	EHL4+VViGMfIA6bJj8KW6ADx4Zk0E4FyDfYqrs5Xj4XVAwinsv/fwOSoTQTdzVwQGN9goWjDMczFe
	GT6NcEvTk5urrOoR8XMDdWIX1zPFeSgDfKbrahI/Qs3P2QKuYaF3Aev8+8uipon/TbGzcbDYkUIL4
	GSSSFlfcGl9J+lRmIZI/GkV9bdyaxTuCjmZOgKV7/YXAPusCd23LnTmRiErNgJtygMS/jDoVq6F3s
	oBPA791D1iM4gbcADyYKBhUg17+52skoTUZOiCBxVSSVJ/XTZ9pWMt3y+SxtijQlSIRLYESuVtEJ/
	qGJUyAbqi5SNSo4dRk1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irdus-0002vC-KB; Wed, 15 Jan 2020 08:20:42 +0000
Received: from mail-eopbgr60056.outbound.protection.outlook.com ([40.107.6.56]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irdui-0002uN-4V
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 08:20:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ns3a1+jenXkR21DDTorj5n6NaIPqwgge9jD2mta1K9YRlNe/XjXgzb2X4PJIQkWVSoMm031QDDU9g7xfDCW1ztQgbB8dJnSBNI3Q8bt3JtAtWv5H38Z+GtWg7zzzbfb8Zx2JLrEkZlBoNXH01v+XEfffxVWCqtvrMCvwrw1Vvc1s+1D6M/qaZRP90Z+m0FVt9KC0wJFRGLB6Rpv2Cbo2lwXg6cXf+DnWdMe9bJgmkzQXSojKIHv9OHZk9pdJT1CuMehmHzceI5QnhoeKXG2WXoXsTuYwE9/M5bv12R0sooATy2nxzAiSCcK8CBZ2f96Hnw6KAGa1k/elj2lSIKClzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8P/1bBsMizf18xKGUvsl7n50Tlwh3qk5JowztDRWSPo=;
 b=Ed/IIyVSUYVm1Q4Xi5I8EVkSOnEvngkG35X251ZQy7H04yL0rTE3cpZw6JhQIoOzGtkmNBK9vYRfXxSzl1vpCK4aC4G2P+9L7TPxjICXAnnhmykadNAG9MbwKWCSbH7Xsm8+uyUQZEDmuFyM46hgUOGEAHO2h66aRzlQ4kfwm2mPZ5HsXDxCcQPlymE4+I3THisAlrlRrJLYJJ4RMFHmVz8tG55pr55LzmyusZKZJvtdVttdJoyLWkWFSl9LRygvS/qtSPclO7OryCQgWr7+AHGs4MmgDgg5cC7Yqnpv4lXPliaCmtDX1tDoHBb/VHFF58TZ3EGcToqwxqEgRz7G6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8P/1bBsMizf18xKGUvsl7n50Tlwh3qk5JowztDRWSPo=;
 b=EL9i9GO6BstgOPlbV7CGt0jC7A6UJ8NU7ByhPSIWr9lkZ3ZSsiKG/WOuwuu4UayVozm2Nldx6pk1mG0hAT1VPTBfZ6A+5JSDoieWr+YPJHkQev6/1HY8ib9ZlLKKX/PAiK/LNPh6H95AJgAEuEEGiqn/Falxfy/IYX1YZoqjkhI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5748.eurprd04.prod.outlook.com (20.178.117.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.12; Wed, 15 Jan 2020 08:20:26 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Wed, 15 Jan 2020
 08:20:26 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>, Viresh Kumar <viresh.kumar@linaro.org>
Subject: RE: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
Thread-Topic: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
Thread-Index: AQHVx5pwG3O6xvtPWkmuLxJSz4SzNKfjv3MAgARqcACAAFI/AIABbf+AgAAIYwCAABTtAIAAAcMAgAFgVLA=
Date: Wed, 15 Jan 2020 08:20:26 +0000
Message-ID: <AM0PR04MB448109C21B4C6A2C923FF4D988370@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
 <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
 <20200113064156.lt3xxpzygattz3he@vireshk-i7>
 <CAK8P3a2u6s4MAM_9bOqSt5NwVc4XrXs9W36tp-7rWWTXx0+pRg@mail.gmail.com>
 <20200114092615.nvj6mkwkplub5ul7@vireshk-i7>
 <CAK8P3a0jXyJArzQFd+u68iRvXNnXb_oHbWF9-abvvFuqhpi-NA@mail.gmail.com>
 <20200114111110.jhkj2y47ncp5233r@vireshk-i7>
 <CAK8P3a1cByQrhKV=8gRASNy74p8=WKfi1ZU13S2OpFQRjohUsg@mail.gmail.com>
In-Reply-To: <CAK8P3a1cByQrhKV=8gRASNy74p8=WKfi1ZU13S2OpFQRjohUsg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d8b22db7-c830-4d57-fb7c-08d79993c692
x-ms-traffictypediagnostic: AM0PR04MB5748:
x-microsoft-antispam-prvs: <AM0PR04MB57481D30FE80C0078E2C18AC88370@AM0PR04MB5748.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(376002)(396003)(39860400002)(199004)(189003)(52536014)(5660300002)(966005)(45080400002)(8936002)(478600001)(71200400001)(316002)(81156014)(54906003)(9686003)(44832011)(110136005)(55016002)(8676002)(81166006)(4326008)(186003)(7696005)(53546011)(26005)(86362001)(76116006)(2906002)(66556008)(66476007)(66446008)(6506007)(33656002)(66946007)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5748;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IQCYCVIcllljiKpsiounXCD/3cyu9Jw6oTNBe+pLNyOlj/tMkt7YVOgjNByMB85FSQnPlPUtJMhIaWGzu0zyVsm6FCDtZtJoTzNrYDyBW9+7ZQ8MgyRI1ZkgrcG3imSp4I1h7njkiDWMDL+eCdPgQsEOXu/+1usSzetPFV5QPlCdWXL+lzsfl6SQUQTL6+ISUEc+eR0gYMF4D5pk87YT/7cSsZRaIIxYjhLLIngu7w+Ua+gEtbdNUNv/FfosBZCPM+vr8W/92siT6lcuAQ9oByXAbOH6ASly6fe/WOK8Xox/gabS5qWjQTfpbLmXOYRmcPUdoAOYRqzZ1C9e/3TxUf7KdCcmIGGOrcbiAVXrCo8PqOh/yBjOXgYzjy1TNW5yblnXzuF+srWCRg3iNGlq4rdfjc6h43MXLRN5v+59BS517cJWAIrN7P61zb4ZtFazNvYnIPgkrr3WTHdKTBpnrzUcXgD7ADb7gxbfamodIg4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8b22db7-c830-4d57-fb7c-08d79993c692
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 08:20:26.4519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZZTPiKwkSVvuuNWtOtC+vuOvuqjQs1SbGrNfRzvGdUlrZxFuX1TC6LWGHAnURXKCXaCHRmS1xDJWD7D2HRkatQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5748
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_002032_181771_6AD749F4 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.56 listed in list.dnswl.org]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cristian.marussi@arm.com" <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
> transport type
> 
> On Tue, Jan 14, 2020 at 12:11 PM Viresh Kumar <viresh.kumar@linaro.org>
> wrote:
> >
> > On 14-01-20, 10:56, Arnd Bergmann wrote:
> > > My point was that you cannot mix __iomem accesses with pointer
> > > accesses. As I understood it, the current version uses a pointer to
> > > a
> >
> > The current version is stupid as I misunderstood the whole __iomem
> > thing and just dropped it :)
> >
> > > hardware mailbox with structured data, so you have to use ioremap()
> > > to get a token you can pass into ioread(), but (some of) the new
> > > transport types would just be backed by regular RAM, on which this
> > > is not a well-defined operation and you have to use memremap() and
> > > memcpy() instead.
> >
> > Okay, I think I understand that a bit now. So here are the things
> > which I may need to do now:
> >
> > - Maybe move payload to struct scmi_mailbox structure, as that is the
> >   transport dependent structure..
> >
> > - Do ioremap, etc in mailbox.c only instead of driver.c
> >
> > - Provide more ops in struct scmi_transport_ops to provide read/write
> >   helpers to the payload and implement the ones based on
> >   ioread/iowrite in mailbox.c ..
> >
> > Am I thinking in the right direction now ?
> 
> That sounds about right. What I'm still not sure about is whether the current
> kernel code is actually correct and should use iomeap() in the first place. Can
> you confirm that all current hardware implementations actually use MMIO
> type registers here rather than just rely on a buffer in RAM?

i.MX8(alought not use SCMI) use MU(message unit) to transfer data between
Acore and Mcore firmware, not using shared memory.

Thanks,
Peng.

> 
>       Arnd
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infr
> adead.org%2Fmailman%2Flistinfo%2Flinux-arm-kernel&amp;data=02%7C01
> %7Cpeng.fan%40nxp.com%7C1b3e0ec89bde469abfd008d798e36c89%7C686
> ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637145974848395212&a
> mp;sdata=PKDDHvz0M45%2B31vSfWCxwxiDEEY8tQxkmL9AzfzRoSM%3D&a
> mp;reserved=0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
