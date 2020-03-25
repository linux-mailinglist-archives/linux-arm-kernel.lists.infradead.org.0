Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F19D191E24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 01:34:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TD+Rz8ybv3XW2kCGBeHOyNVydxa2Fwt9VI/ppBm/tR8=; b=P03E3lYPeUTb4K
	gvI+K+DiucRogSdoQoYY0I6Q7SQC+4KOHpltzgXyRfI8SnP15ESX96q/9HW9qVgMFAdGoeDA9PThR
	l9lrvpuGEhTlb+WdcalnC8uPhqpnPSM9FWxStHrM5SHrGtnWjSpjeeJ5axsJH6sMQY/Pk3WwbFK/h
	vNRzwQHvsdGE+ufXKFAdNeOnzMvEfyTb/ywLnSkSka+98eBfNhPrqpzHJH+26HD9DP7O5WxAKoeet
	Kdt8ssYeh07gdlx1N9WkKscQ36WkulQiHchjj/y65GfB3RBPvz0eyN/dXhUMpo1d24Z8IqxXYpakE
	QlvNYPnGn/n8aS8fuKEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGu06-0004SZ-1N; Wed, 25 Mar 2020 00:34:30 +0000
Received: from mail-vi1eur05on2076.outbound.protection.outlook.com
 ([40.107.21.76] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGtzx-0004S4-Bl
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 00:34:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B+2Zbw7sLYd6E1doZpiEYoXz4HUyKxYaUaZ6/pFD8cOPKEWum6+oyh69X8Dd7SC56mvHbTVCo7o/V8uDi09sYL4/LjCVH2TVXYaJJ19fXzfn4ImlfAcIWXpDTGvzrTOOIprImGYwWxtTTdLJ1BdIIcSqpdTiqNlKYWdgCwfixRbjZhzr7kyUgxMKIxhzRqWjgIp8sBo6i7uo1Eb3XDKZQNEyGLXfogXYa256J8z1XfdT0Mn1zSkpTdC+B1VSMjBGXYkonV298o1NXGdWFIqoEtrAM9GrAOifxsJu3gqNFh/gypr0yrK/5FAaK/6QFQWcRCIkB2f08rF2rI0xZ2UJMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJ80jsi8n7OF1+QIDKfFGPXM5vE/RyJtvCyzBEXV5Hw=;
 b=cw/fo8+inNn9DXbB3xSBadKqcsGHxbtYfKAdr4eAMXEb5huIp6PpPiZNN1Rf+B/r8RrDrjs2blDqbu1hUXoGH2UtbjOZbgaDh611iE6sioSopyvZaHakVUilkjBY5jdasER+LJvI25WwTMp/DHSvF12XpW5813arXRUBp4AzakYDmA7tPwmljgSZWrK8cgHpu1hTGXsYq9ZjL3DQtoBFylMDlTiv8Xa1HHxHkcjS+kwgRZLRSTpyx1riGj2disG4qjOlCtOTlkVLd1LUOfe/axp0LET+UPZ6KF+Qi+vxIkgrTXl5IdVrt0u4LDM0K7LiRPkECYW88rmtJpVVnnWloA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJ80jsi8n7OF1+QIDKfFGPXM5vE/RyJtvCyzBEXV5Hw=;
 b=BNmHE66IybWkku2zl80HX4PrffuVdnjsHsWlQ+GxK4J0eXSXzJ4N86j3GKL433m0kmTQWFWD/lbVh0KjW30I7Z3KFooQOXsXr8JNGfXLRNo5fSXP5DQU/yvKssy9YuMMK0iqDgXM3dmNEDKdX2hSnbQi/wjQEHQiS3KxAb97API=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4946.eurprd04.prod.outlook.com (20.176.214.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.22; Wed, 25 Mar 2020 00:34:15 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2835.021; Wed, 25 Mar 2020
 00:34:15 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: RE: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable without
 EXPERT
Thread-Topic: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable without
 EXPERT
Thread-Index: AQHV9tsrS4nkBuxsuEaY66LPIEgB5ahYGTaAgABvteA=
Date: Wed, 25 Mar 2020 00:34:15 +0000
Message-ID: <AM0PR04MB44819E95EB1FABF09DEE682788CE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583844526-24229-1-git-send-email-peng.fan@nxp.com>
 <20200324174134.GH3901@mbp>
In-Reply-To: <20200324174134.GH3901@mbp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [121.239.103.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cc6d26de-6cdc-44f4-f05b-08d7d0543f6d
x-ms-traffictypediagnostic: AM0PR04MB4946:|AM0PR04MB4946:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4946C5691B37A227DE0C7C4F88CE0@AM0PR04MB4946.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0353563E2B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(346002)(39860400002)(376002)(54906003)(2906002)(5660300002)(9686003)(478600001)(4326008)(44832011)(316002)(6506007)(8936002)(8676002)(66476007)(81156014)(81166006)(52536014)(7696005)(55016002)(6916009)(66446008)(71200400001)(66556008)(33656002)(186003)(64756008)(76116006)(86362001)(66946007)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4946;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: szWmHy5CjW4yBwxaax9z7CbUnqtio6TBc5YIOEcpmyFxlgBSxScwjbL+kLl8SMwqWFCVjAOpGiuV8GsrBDSVxm5NWlj9cx4FfdnoyBNNz9meQXirgCZ/3c8E4Ly5gXrAquwS904/PD3/+9Sa+91KVDp6Dfce0TVVu6xbliw4HSGErySUnLJcGNUVbe3BZ89Na0ReY41ywYaifqqro2mNCGCXXC84HufSCS5RyjoK0GeCPtLv66vJqf3ED+j2u6kw9z1HlvCee9jHjlmU+N70NwOSPVuHUdDW2A4hhBskovpM4l1dk+g5hcZQ4BCgFsOfncqlqK9skQp5TBdKt2RkBMvsHBfmP97ZijExhl7a+ftdOWLyjNKb7PM8sdkCH3nooHRWDeP6JKQ3ARc2MPxNM+jU4iarW1SzyLcyVuRFlpuLB6iizRWOUfIgmbdIKjOd
x-ms-exchange-antispam-messagedata: gkjvvvWUjxdc0A+50rQKrWUUQiJo5rUHu6gFmzkuJfTAcdW8UUo9+TsKFuTwR8Gx7HltE/Dc9YILYEtAUvjGTmstaGe+S8J4f6yRQPVex+qprdQAOMXTPE3mjzIfNbRYLoU/C9RLRobj51FoB6YzMg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc6d26de-6cdc-44f4-f05b-08d7d0543f6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2020 00:34:15.4965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OS/PTADACCFgM2pbvffn76kSnc5Kmfj+3XdtQl18b2lV+Dv1EhvKWO+Go6ChyBHH2ePCN6Xo79xp+7wgGNpStA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_173421_470577_69A5ED50 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "will@kernel.org" <will@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "nsaenzjulienne@suse.de" <nsaenzjulienne@suse.de>,
 dl-linux-imx <linux-imx@nxp.com>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable
> without EXPERT
> 
> On Tue, Mar 10, 2020 at 08:48:46PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > commit 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
> > enables both ZONE_DMA and ZONE_DMA32. The lower 1GB memory will
> be
> > occupied by ZONE_DMA, this will cause CMA allocation fail on some
> > platforms, because CMA area could not across different type of memory
> > zones.
> >
> > Make CONFIG_ZONE_DMA configurable without EXPERT option could let
> > people build non debug kernel image with CONFIG_ZONE_DMA disabled.
> 
> While I see why you need to toggle this feature, I'd rather try to figure out
> whether there is a better solution that does not break the single kernel image
> aim (i.e. the same config works for all supported SoCs).
> 
> When we decided to go ahead with a static 1GB ZONE_DMA for Raspberry Pi
> 4, we thought that other platforms would be fine, ZONE_DMA32 allocations
> fall back to ZONE_DMA. We missed the large CMA case.
> 
> I see a few potential options:
> 
> a) Ensure the CMA is contained within a single zone. 

This will break legacy dts with new version kernel.

How large is it in
>    your case? 

It is 1GB

Is it allocated by the kernel dynamically or a fixed start
>    set by the boot loader?

We use alloc-ranges and size in kernel dts.

But there is only 2GB DRAM in the board.

> 
> b) Change the CMA allocator to allow spanning multiple zones (last time
>    I looked it wasn't trivial since it relied on some per-zone lock).
> 
> c) Make ZONE_DMA dynamic on arm64 and only enable it if RPi4.

Option c seems a bit easier to me :)

I will try to explore both, but if you have time to help, that would be
appreciated.

Thanks,
Peng.
> 
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
