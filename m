Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6301D000
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 21:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=4vRvBU/p/6rTPMLieLm5teUhPMV1xZdrXa22BQEBLOM=; b=I47THTzMvGxifb
	Ri/fvpp5NKd4ymmUOYpDmEoi9pS8as3smOo9+9qvZhG8tronJrNYaf7evEL9w4VWZF61vGi0E4oVT
	DX+vmcCSyBc4psBuRToHTAYfyNktSZQ01YUSkg13NQFYZDzZVBCw2mr0hQexT4c3qy60XcRnz5eD6
	ahjm+vetKYPXn+WkqXaGCCzXNl3AFZHjP5RJCqUMD2WI8bLDNyv6/7FT4KgBtOCSofyYzjlfnUXrY
	dbH+FXxcluLAplAmbecZOfq82872ippoGJGtGFrAckBYaOdIqtNSXjk3xhKqrm0VzmUfry8RFuGUA
	qt1SzhpgPvJehgsmRZeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdBw-0002kH-TU; Tue, 14 May 2019 19:34:24 +0000
Received: from mail-eopbgr30052.outbound.protection.outlook.com ([40.107.3.52]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdBn-0002fd-IL
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 19:34:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wjlb1F565UolY8iB+CdaT0Fa4CFl8wrCMHACaEWawDs=;
 b=bGKa/Zt6Sz7T74NDy+M+hswY82qqEPoAjVZvPpqiwrxr+vZ8typ90hPdF6lMB3jODIZP3V/FAZdvyFO5tQfj1bsXnPzUhfOwnYgduNBszDUQdUWm89jBqr8G/JLE99e051Cd7qToyTBYDdcMjEbGs1qMdQP2mSNxhPniuDmDJCU=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4034.eurprd04.prod.outlook.com (52.134.124.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Tue, 14 May 2019 19:34:10 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.010; Tue, 14 May 2019
 19:34:10 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Alexandre Bailon <abailon@baylibre.com>, Jacky Bai <ping.bai@nxp.com>
Subject: Re: [RFC PATCH 0/3] Add support of busfreq
Thread-Topic: [RFC PATCH 0/3] Add support of busfreq
Thread-Index: AQHU2dO+g7FtRU5+MUaLzLMJn01eLA==
Date: Tue, 14 May 2019 19:34:10 +0000
Message-ID: <AM0PR04MB643434FB6A26B4D70F52F350EE080@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <20190313193408.23740-1-abailon@baylibre.com>
 <CAEG3pNA+U1tw4sWq9i2cTni6QKQkLyd3qyZXd2i8M7WFDF4ZsQ@mail.gmail.com>
 <8af96425-a6f5-0114-7abb-c2a67b952e1b@baylibre.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b581bec-232e-4e02-5246-08d6d8a3234f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4034; 
x-ms-traffictypediagnostic: AM0PR04MB4034:
x-microsoft-antispam-prvs: <AM0PR04MB40348DFC8A9DAE6AA1C15C4CEE080@AM0PR04MB4034.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(376002)(396003)(346002)(189003)(199004)(446003)(316002)(110136005)(54906003)(74316002)(33656002)(71200400001)(71190400001)(4326008)(66946007)(25786009)(55016002)(68736007)(7696005)(476003)(86362001)(99286004)(486006)(9686003)(6506007)(53546011)(44832011)(76176011)(7416002)(6636002)(305945005)(26005)(229853002)(186003)(6436002)(66066001)(478600001)(14454004)(256004)(8936002)(52536014)(6246003)(53936002)(102836004)(5660300002)(8676002)(81156014)(73956011)(91956017)(66476007)(64756008)(81166006)(66556008)(66446008)(14444005)(76116006)(7736002)(6116002)(3846002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4034;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wPqGYTShWwbwZBwFTLFsyajA5OR4p+TDB+/sPgqTbWldVAU55kzWd/FsnmjqDj29B7mcV3piCEBXmb4L3BGkWV8yhjE+SnyHgmR1RJkBeXailv1EcAWX7VB4vFHMdYjtBknpFyGCOwWrrhQoaAXvczwoRggYroF0QaeSqgPfvM5MRI9jzU0GtUEM+8Qtr/IwHVNEXYfOld9zJgKXSv2memqlOI+Kco3fQqS6pBya23bN7DQ/dYK4bx/5N+V5bwyp3KyqHnOazRkH52AIfZz6fg/UsgLUC/wGjl0ILFpkQFifgHaHaAjCKK8ZY8Hlelf8J/G8cmazdLLkmyCDnXhmFXzk7VCC0DQwZxT5yW7AGbYOKCiexvjMFXKfarVNZS4f/XVdXQrg2wfzvhZ4isXkKrs7dJmgO7V3JVcUohS278s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b581bec-232e-4e02-5246-08d6d8a3234f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 19:34:10.2224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_123415_752803_64FD726F 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Emilio Lopez <emilio@elopez.com.ar>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Carlo Caione <ccaione@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, Zening Wang <zening.wang@nxp.com>,
 Hans de Goede <hdegoede@redhat.com>, dl-linux-imx <linux-imx@nxp.com>,
 Patrick Titiano <ptitiano@baylibre.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15.03.2019 18:55, Alexandre Bailon wrote:
>> On Wed, Mar 13, 2019 at 12:33 PM Alexandre Bailon <abailon@baylibre.com> wrote:

>>> As exemple, this series implements busfreq for i.MX8MM whose
>>> upstreaming is in progress. Because this relies on ATF to
>>> do the frequency scaling, it won't be hard make it work.
>>
>> It's not clear to me whether this series actual scales the dram
>> frequency based on what you said above. Is it just theoretical or do
>> you have it working with a pile of out-of-tree patches? Would be good
>> to include that pile of patches in your integration branch that I
>> suggested above.

> The current series only introduce busfreq generic driver, and the
> busfreq driver for the imx8mm.
> As is, the imx8mm driver will just be loaded, but do nothing because
> none of the drivers have been updated to request bandwidth using the
> interconnect framework.
> 
> My intent was to sent a first draft o busfreq, to get some feedback,
> before to send a more complete, and fully functional series.

It's been a while since this was first posted and imx8mm now boots fine 
in linux-next. Is there a more up-to-date WIP branch somewhere? 
Otherwise I can try to hack this series into a bootable form.

 > In addition, the current clock driver of imx8mm doesn't allow dram
 > frequency scaling, so if busfreq driver tries, it will fail (should be
 > harmless because any other clocks should restored to their previous
 > rate).

I'm confused about this. In NXP tree the actual DRAM switch is done 
inside ATF via SIP calls and involves corralling all CPUs. Do you want 
an "dram" clk which wraps the SIP calls required to changing dram 
frequency and root switching etc?

I've been looking at the busfreq implementation in the NXP tree and 
refactoring just the "dram freq switch" behind a clk might work nicely.

This would be similar to the imx_cpu clk used for cpufreq-dt and it 
might even be possible to upstream this separately from the rest of 
busfreq logic dealing with device requests.


I haven't done a very careful review but I noticed you're not using the 
OPP framework and instead redefined everything? It's not clear why.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
