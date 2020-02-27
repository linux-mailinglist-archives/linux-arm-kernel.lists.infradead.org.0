Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D271715DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjzlAawS93fHG/GBX1i+h1pYFDvWrZPeXwDfFgpHlJs=; b=CbwJx2UD9alojp
	W9T5P4nEt5Lrmv5vNAO5nVJoWGFDc2JFbBkdoyVPeno5F3u68ctDzMT0zKdhhTfEgohq6u/KO3RGm
	EVFt6jFsP/GqWdtbcO+afY+TOJ00tVrFvUx7H5PdLl3szwmksyMewqDNhU16jIocp92+XjceurQAI
	BTceVjd9LspigQdzCmBM9mhG9WwtKtLt5Wvy4am6ydelIrOEPlIRCaXMypglY881XQ/GwCb9wbTtg
	zKT0tAptCUld2wv2Xv+Kj56Vk5lZFme9CmTsvTXCnUz3ZazlFzOOR1Bah4HOujK+P3EfII7tOi0CK
	rWfCGJ+q24VETJ+RTmeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7HBt-00008w-Fh; Thu, 27 Feb 2020 11:18:53 +0000
Received: from mail-eopbgr80073.outbound.protection.outlook.com ([40.107.8.73]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7HBh-000083-JL
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:18:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DJpnuK8IhytarkQEoaTdKWjMeAYi4lBJLyaRoZ8JSWVqxkxmd99TAMrDDbmhNBLte1QGfOFtxuypNlzhk2xXBrTv2aK3bC61d8n+Gjbw0ajfzEdcFWrh3uMvevmjb+OvuufZ0VAns66pVqjYbLxZ38EbUDEMHsOfnhzRFhcSosAYFupv+aN7+ilrmyeclxSfxynYOGr2SdUL4XKWsHpOqVvGAgBxCD0/KI6UZwTeCuciZ34URbZySngF/IZ2GIAVpO0aMFvuRB2IkeGcaQNkXKmByLihtdCCq2li6YT67J7O+s39ZMIKB4zfJd1Ky5TzTuDZcF6ksncYy0ggTxlS6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YAgnf2o/pM5RXuXTvv7+5D+CVN6WFnMrNsVW2hqxjiE=;
 b=CJhefFHq6xlSRQ3auetlCYeBvdTRT89JHyg0Rz4qtBSVlm65JOe/MSPSzJQ8L2/fYh74gvt0fpc572GorQOrkfwshXD0ztiKNbFu1VVhv9gXMWE3SCmkolt8Q+eEzYBf/04Juf73XgG8d4czegPaPZVD720XX/aKSz5KUmmVMrpBExvpvOvS2rO9V/hHVCCOQ+7RgXg39aL1acUwwHLFAXGrGiXcyBIQXv9QCKPR+uS7DUKntRHY/bOcksG6nUFjBVclW7eLQvmShww8CJYtMC/iBbL1MvltNBw6KpMQ6SLqaq5qf/QnrlgtI5F4a1jhJ0FEHwF6INRdnPU80g3yhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YAgnf2o/pM5RXuXTvv7+5D+CVN6WFnMrNsVW2hqxjiE=;
 b=lRnQLLL4siX23nGiGn3aKgLSPu0ge9nQRVz+s4c+amkdnTFszug93Kkys4mQ0nwOr8HYZsjSP9HLYBJKBo2CevDUcEy32gd7Ll7vsdDZCTakOLOtncsLW1U61Co9xi1HSaYlXPrwa/8XwQ9bNC/yZt8h9pJ6B6PWYX6H1b7WuBI=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.51.23) by
 VI1PR04MB4256.eurprd04.prod.outlook.com (52.133.12.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Thu, 27 Feb 2020 11:18:37 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1%7]) with mapi id 15.20.2750.021; Thu, 27 Feb 2020
 11:18:36 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Thread-Topic: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Thread-Index: AQHV7VqVZ4BeDr6e5UuTM5ZPfBO9kqgu5JsA
Date: Thu, 27 Feb 2020 11:18:36 +0000
Message-ID: <20200227111838.GA24071@b29397-desktop>
References: <20200227104212.12562-1-m.felsch@pengutronix.de>
In-Reply-To: <20200227104212.12562-1-m.felsch@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5fc3a947-48ff-4097-d090-08d7bb76c9da
x-ms-traffictypediagnostic: VI1PR04MB4256:|VI1PR04MB4256:|VI1PR04MB4256:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4256F92BB94819BB319350E48BEB0@VI1PR04MB4256.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(376002)(396003)(366004)(346002)(136003)(39850400004)(189003)(199004)(6506007)(8676002)(966005)(2906002)(26005)(6512007)(9686003)(8936002)(64756008)(1076003)(316002)(71200400001)(53546011)(4326008)(66556008)(66476007)(76116006)(91956017)(44832011)(66946007)(5660300002)(66446008)(6486002)(81166006)(81156014)(6916009)(33716001)(45080400002)(33656002)(54906003)(86362001)(478600001)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4256;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X/QW5UAb6jUuOp0ukcZ5UAlE4cxN5bCWcOWCDPY060kC7WBC7gTTS5zj53NPDn/J8IcxHk31yuIPZXx8mN72ejC1q2qZJzT62Hg2R1Rk0qiR9TXaUfXdL1W5XU28OwYHnrums38r/j/zkqNwngCEwj4V9D+Q6OtzBX8UeImQnexfZM/YhZ1WqdkHne5yZK/05x/8ZucFLzz+N0nyIkqC1u/Xm4jF4kM8Q1MOF++dBcsmQLw6O9C2/o/J/lxENR/dAtP2sCu3N0NvOdJ6daiB9PDJp0JOxMIEnqvgcC92eHVqucVznwGILnNkwMGbskg5Pvtv7rtWm5fKGrHcxblZ2adWkosPu/pqx01amlYYc3RBcJ7M+yqP7Qrq7VQm4qACE2qTuFQa69r+5vwqSw+Kzlo8+IBtb/3BBSlhFgcQ2q17wDR8dj1YmZ0FMkHiH8ruLH4b4K9KKkvv7VJTtg+VCVsgksMXXeXfAcOs0LbpGsjWqQ93ApPYTNcoMAKrEpvNWH+AREHhyQ7RKgea4RnDlA==
x-ms-exchange-antispam-messagedata: VyJzU7eKXAUQHeefeXC5/O0RtSMsXrSsLV7yQGsW/pG+Eg0XKcYiq+UnPkkS6ZGPYHnB7BrOUOni9hSR/PV3vS1HyVQ5x966AJ6EdCH6mHK5FVukUCo94cEntsa8jc3aGOygbBZGpHlZHMpuD0kLvw==
Content-ID: <D57EE805709FFD44B51BA171D2561C58@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fc3a947-48ff-4097-d090-08d7bb76c9da
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 11:18:36.1951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ew/Q0JJnXBuGtmSBp7SF2rKI/7/NPtx7WPV7ickBYFj/UG9JOngBmfacU02dwvA4aMJmykveGwJjU9isIWz16g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4256
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_031841_713102_63E3F256 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jun.li@freescale.com" <jun.li@freescale.com>,
 "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-02-27 11:42:09, Marco Felsch wrote:
> Hi,
> 
> the gpio-based port power is broken since commit [1,2]. I changed the
> core behaviour to to cleanup the code and avoid local workaround fixes.

Many i.mx series evk boards work well for gpio-based port power control,
what problem you have found, would you please list it detail?

Peter
> 
> With this series and [3] I'am now able to disable the port completely
> after I disbaled the pm_qos_no_power_off flag.
> 
> [1] 6adb9b7b5fb6 ("usb: chipidea: add a flag for turn on vbus early for host")
> [2] 659459174188 ("usb: chipidea: host: turn on vbus before add hcd if early vbus on is required")
> [3] https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2020%2F2%2F27%2F198&amp;data=02%7C01%7Cpeter.chen%40nxp.com%7Cc1b3094e826b49b572cb08d7bb71b6bc%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637183969379126557&amp;sdata=i7O7vBqiVCb2opVNva7ffxIdqFb%2BvGzV5Qsy5wwarbQ%3D&amp;reserved=0
> 
> Regards,
>   Marco
> 
> Marco Felsch (3):
>   USB: ehci-hub: let port_power() override the ehci_port_power()
>   Partially Revert "usb: chipidea: host: turn on vbus before add hcd if
>     early vbus on is required"
>   Revert "usb: chipidea: add a flag for turn on vbus early for host"
> 
>  drivers/usb/chipidea/ci_hdrc_imx.c | 10 ++--------
>  drivers/usb/chipidea/host.c        | 31 ++++++++++--------------------
>  drivers/usb/host/ehci-hub.c        |  6 +++---
>  include/linux/usb/chipidea.h       | 17 ++++++++--------
>  4 files changed, 23 insertions(+), 41 deletions(-)
> 
> -- 
> 2.20.1
> 

-- 

Thanks,
Peter Chen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
