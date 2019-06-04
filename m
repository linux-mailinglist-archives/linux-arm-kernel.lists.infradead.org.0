Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBED34217
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jt9kWHpRMgS/ph45Qf/NEhfhTymCvX8om8Uvd8h0bas=; b=XvoGVxl+7UKnms
	urTKVANaqNhkR+GZvbUi0U5G6OYukm1i6JCWpf6C2YtgUJ2VpbERSU+MFY9D6goTdsQGmMSy+onH3
	ekbW/Psv6/id8biBFWAjMpivRtD4kW1tOz1PrDLp4j3jVWeObYmmZ2c4OPJ4jTF2r7O63JaAuOrwX
	7kUFl6vYSZKfA7GY3EY5HXk+bkEKywQEtmp9hsEoWqd4nxHcWIcyiRvfFxNvqTIubOiN3S9kmP/U0
	YUSpiuyKbDsGSSPvzJbg+woHAape86A5y09axBK8kH6oKehyMzjA82JHbszTwvn7nEI/aut0aGg9A
	X47ROTqMJjW8pPdZvHGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY53S-0006wt-AV; Tue, 04 Jun 2019 08:44:26 +0000
Received: from mail-eopbgr30089.outbound.protection.outlook.com ([40.107.3.89]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY53I-0006ug-31
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hdf20Bp34g9IXFpkFBSGXHHQUhMbYYT9z6xsjQmdrN0=;
 b=lE4xLS2UW+yb7q1PWncRU6G2r9fbUONZRMwG96pE/nJoKXUxOKbKW7KM+XDqd/39tKBkWcDq77VO32+u0R3GFvEdQwOGoojgf8/HVfscwtTF0S5ofc27z4O9zYp8vyYGHlHH2xDcnEV2pSWn5eiLA8+J42Imrro3+PG9uRBmYWg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3690.eurprd04.prod.outlook.com (52.134.70.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Tue, 4 Jun 2019 08:44:10 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1943.018; Tue, 4 Jun 2019
 08:44:10 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Alexandre Bailon
 <abailon@baylibre.com>, Jacky Bai <ping.bai@nxp.com>
Subject: RE: [RFC PATCH 0/3] Add support of busfreq
Thread-Topic: [RFC PATCH 0/3] Add support of busfreq
Thread-Index: AQHVCowAYPsUDFKXNUq2eGEvBhKyoKaLTMDA
Date: Tue, 4 Jun 2019 08:44:10 +0000
Message-ID: <DB3PR0402MB39167B9EAE9A741AB0F20E30F5150@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190313193408.23740-1-abailon@baylibre.com>
 <CAEG3pNA+U1tw4sWq9i2cTni6QKQkLyd3qyZXd2i8M7WFDF4ZsQ@mail.gmail.com>
 <8af96425-a6f5-0114-7abb-c2a67b952e1b@baylibre.com>
 <AM0PR04MB643434FB6A26B4D70F52F350EE080@AM0PR04MB6434.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB643434FB6A26B4D70F52F350EE080@AM0PR04MB6434.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0dd8d03e-0101-4d90-f1a1-08d6e8c8d036
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3690; 
x-ms-traffictypediagnostic: DB3PR0402MB3690:
x-microsoft-antispam-prvs: <DB3PR0402MB3690247734C8A961D382B681F5150@DB3PR0402MB3690.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(346002)(366004)(136003)(189003)(199004)(52084003)(13464003)(86362001)(52536014)(44832011)(102836004)(6506007)(53546011)(6436002)(186003)(99286004)(14444005)(256004)(5660300002)(446003)(26005)(6246003)(71200400001)(71190400001)(6116002)(316002)(7696005)(3846002)(6636002)(66066001)(53936002)(7736002)(2906002)(486006)(7416002)(9686003)(4326008)(8936002)(11346002)(25786009)(229853002)(76176011)(478600001)(8676002)(33656002)(81166006)(81156014)(68736007)(66556008)(66946007)(55016002)(476003)(64756008)(73956011)(110136005)(14454004)(305945005)(66446008)(76116006)(74316002)(54906003)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3690;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iXQ8Q4MN2EpslZZxeiJn2xN9jsYL+d5IF6dud5GKFf3ynbVRSQ+39RAm+lHQMSCpn0pYiJTSTsemGQjq8cXQ+AvJqmKQjVg2t3orwcyl7AeYDstvY0cIQGLvSFqniIACXTwhyxnWa6ufBHcAulQ9lpXMadwJ5pd45ANiL6dcCPUt0zabbKVCmMrF/UtTZsDlt1d5GjWYiVvY3qkV0Gy6admgJiOuwP/xtCc9iMhYbLQunJJYgLQdhjVc/PMedO68MhyoLtdLCK6SOIezEALudYVpmEQs59nP9YwVPv33kFrluD76o8Ghd4yTSALcSGWxDUf4ND4PihSSnJnqsXb5zyznphbCudhqoc16Nl0Chz8FvDt7GtV4qzecSXEOQVjKi8rdCmSm2eQfZDiYglUodSd3lTCshitYl0YP0f5H1Kk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dd8d03e-0101-4d90-f1a1-08d6e8c8d036
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2019 08:44:10.3059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3690
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_014416_229641_8FAC57D3 
X-CRM114-Status: GOOD (  25.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
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

Hi, Alexandre

> -----Original Message-----
> From: Leonard Crestez
> Sent: Wednesday, May 15, 2019 3:34 AM
> To: Alexandre Bailon <abailon@baylibre.com>; Jacky Bai <ping.bai@nxp.com>
> Cc: Michael Turquette <mturquette@baylibre.com>; Linux PM list <linux-
> pm@vger.kernel.org>; Georgi Djakov <georgi.djakov@linaro.org>; Patrick
> Titiano <ptitiano@baylibre.com>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; Stephen Boyd <sboyd@codeaurora.org>; Emilio
> Lopez <emilio@elopez.com.ar>; Hans de Goede <hdegoede@redhat.com>;
> linux-clk <linux-clk@vger.kernel.org>; linux-arm-kernel <linux-arm-
> kernel@lists.infradead.org>; Zening Wang <zening.wang@nxp.com>;
> Aisheng Dong <aisheng.dong@nxp.com>; Kevin Hilman
> <khilman@baylibre.com>; Carlo Caione <ccaione@baylibre.com>; dl-linux-
> imx <linux-imx@nxp.com>; Anson Huang <anson.huang@nxp.com>; Viresh
> Kumar <viresh.kumar@linaro.org>
> Subject: Re: [RFC PATCH 0/3] Add support of busfreq
> 
> On 15.03.2019 18:55, Alexandre Bailon wrote:
> >> On Wed, Mar 13, 2019 at 12:33 PM Alexandre Bailon
> <abailon@baylibre.com> wrote:
> 
> >>> As exemple, this series implements busfreq for i.MX8MM whose
> >>> upstreaming is in progress. Because this relies on ATF to do the
> >>> frequency scaling, it won't be hard make it work.

I have similar question as previous reviewer, is there any branch that we can test
this series? 

And, from the patch, it has multiple levels description of fabric arch, while we ONLY
intend to scale "bus" frequency per devices' request, here "bus" includes DRAM, NOC and
AHB, AXI, should we make it more flatter, such as just a virtual fabric as a single provider, and then
all other devices as nodes under this provider?

Anson

> >>
> >> It's not clear to me whether this series actual scales the dram
> >> frequency based on what you said above. Is it just theoretical or do
> >> you have it working with a pile of out-of-tree patches? Would be good
> >> to include that pile of patches in your integration branch that I
> >> suggested above.
> 
> > The current series only introduce busfreq generic driver, and the
> > busfreq driver for the imx8mm.
> > As is, the imx8mm driver will just be loaded, but do nothing because
> > none of the drivers have been updated to request bandwidth using the
> > interconnect framework.
> >
> > My intent was to sent a first draft o busfreq, to get some feedback,
> > before to send a more complete, and fully functional series.
> 
> It's been a while since this was first posted and imx8mm now boots fine in
> linux-next. Is there a more up-to-date WIP branch somewhere?
> Otherwise I can try to hack this series into a bootable form.
> 
>  > In addition, the current clock driver of imx8mm doesn't allow dram  >
> frequency scaling, so if busfreq driver tries, it will fail (should be  > harmless
> because any other clocks should restored to their previous  > rate).
> 
> I'm confused about this. In NXP tree the actual DRAM switch is done inside
> ATF via SIP calls and involves corralling all CPUs. Do you want an "dram" clk
> which wraps the SIP calls required to changing dram frequency and root
> switching etc?
> 
> I've been looking at the busfreq implementation in the NXP tree and
> refactoring just the "dram freq switch" behind a clk might work nicely.
> 
> This would be similar to the imx_cpu clk used for cpufreq-dt and it might
> even be possible to upstream this separately from the rest of busfreq logic
> dealing with device requests.
> 
> 
> I haven't done a very careful review but I noticed you're not using the OPP
> framework and instead redefined everything? It's not clear why.
> 
> --
> Regards,
> Leonard
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
