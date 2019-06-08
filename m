Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AD239FB2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 14:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=N+5NIhVqK16BKBcqW+wBtF0BDT6ohy1YuehlVAiGPqA=; b=pMHfX6mqTv5LFp
	U0y/uDwZ8LnEBxBGR/m9nzdtbDPtnV4qBtpCjf0IzUxFor4aPJYp81HTwr4sIniuQGnou+YJiEpSl
	UQXXToCpAhkdb11znijH0+H16exmf1PicmfdNxJz7fDkjsQl6Wmeg94SRMgegY3wkkUSsPgieQv4r
	+ffnEz1VAzUJ6VjHTYRue0pDffM7EizDqw7TALVhRlUvpoM2nStC+f/ztWh2zj7dUCJO21nb3A1VW
	o/9A3w1TdO8KBqcs446MvBaRYcIboMq1+0/SWJchGZnupA7xEgFGOaqeQ3cbnOUpsBweJFolwVV3c
	y6+D10mPlMpZ7LNmw/Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZamR-0005f3-0f; Sat, 08 Jun 2019 12:49:07 +0000
Received: from mail-eopbgr140071.outbound.protection.outlook.com
 ([40.107.14.71] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZamI-0005eh-M4
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 12:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J84ZCyTCB+NcZC5aMY5kD6mv80XNaQb5OnZrVx8kTAo=;
 b=n7ndUj4hwr5QgWLngUE/kHkoJTHJnIgKe9TlTNBt5GRrrhSztC07rtWZzEhj0WVxaIcTS9KhneunozpUua6vB31tMueMbuItdNjss+XJJAJAiUa/9+iwL3A15VSYl7v16SCFWBXtUX7xqiiKVYVl7xxxnE0eHn3FeJnxYYNEFpg=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5614.eurprd04.prod.outlook.com (20.178.125.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.13; Sat, 8 Jun 2019 12:48:51 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1965.017; Sat, 8 Jun 2019
 12:48:51 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: Add clk_parent entry in debugfs
Thread-Topic: [PATCH] clk: Add clk_parent entry in debugfs
Thread-Index: AQHVEgo8VzXmpj/WDkGGgiXI1N3a1Q==
Date: Sat, 8 Jun 2019 12:48:51 +0000
Message-ID: <VI1PR04MB505581139250C1B58B5C07FDEE110@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <057720844e78e615e46de34a73b16ffaf7dbfc10.1558686047.git.leonard.crestez@nxp.com>
 <20190607190522.D276520868@mail.kernel.org>
 <VI1PR04MB5055A1DBAC2C4AAC515CB494EE110@VI1PR04MB5055.eurprd04.prod.outlook.com>
 <CAMuHMdW=AmTWZ-_KexHOj2HJS0TRcqONMVo7HLEd19VzAbTZZw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [2a04:241e:504:3000:e6e7:49ff:fe63:c221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4e6b936-e42d-4627-7264-08d6ec0fa844
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5614; 
x-ms-traffictypediagnostic: VI1PR04MB5614:
x-microsoft-antispam-prvs: <VI1PR04MB56148DB9ADF9D75B89E08B15EE110@VI1PR04MB5614.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(396003)(346002)(376002)(199004)(189003)(256004)(52536014)(6246003)(71200400001)(71190400001)(8936002)(81166006)(74316002)(305945005)(8676002)(316002)(7736002)(2906002)(81156014)(14454004)(86362001)(33656002)(6116002)(5660300002)(476003)(446003)(76176011)(44832011)(99286004)(46003)(25786009)(4326008)(478600001)(7696005)(486006)(73956011)(76116006)(68736007)(102836004)(66476007)(54906003)(110136005)(55016002)(66946007)(6506007)(6436002)(186003)(53546011)(9686003)(229853002)(64756008)(66446008)(53936002)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5614;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: voUJSrBESWAVEU+CgX2MSNYqDy4KS6Xsv2eJPqJaeIR4/tDqms4dxugOGITylKp8zHYQQM8ytiN5ioJqkwKFR9pDb/mFLIXxi7vuP1oMptapFGlIHNOLhGYkssOdwpHGwm6qYB3AWtrBkHAOTtvuWZ06PnzXfWlSiO3xYw1D1Gt7oA9CnjRTKTGCOZsPbH8AaNU+G/yytD6VYiQ22umeQx/ZQ/BzP6eJGeTrFZKl5DEjYV1D2KYKh+E9rcdPU/ESr0z2lK9A/uwMlU9PWjV9w43nc0MXLyaSZxedjMKVmWPpFODAedMB2oe7ldlBh5y78H6XUcqVlJNPMBmdqQquOhNGWTsXcgdNHeTHY3C28j0yfzCNUICFyF/BKuO00dklWoF1bTb68yhSSrI44LmUWOrU9bRRgW7r6KcgdCh0qbI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4e6b936-e42d-4627-7264-08d6ec0fa844
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 12:48:51.0276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_054858_793978_4582CAB7 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peter De Schrijver <pdeschrijver@nvidia.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/8/19 3:19 PM, Geert Uytterhoeven wrote:
> Hi Leonard,
> 
> On Sat, Jun 8, 2019 at 9:26 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>> On 6/7/19 10:05 PM, Stephen Boyd wrote:
>>> Quoting Leonard Crestez (2019-05-24 01:25:25)
>>
>>>> @@ -3040,10 +3051,11 @@ static void clk_debug_create_one(struct clk_core *core, struct dentry *pdentry)
>>>>           debugfs_create_u32("clk_enable_count", 0444, root, &core->enable_count);
>>>>           debugfs_create_u32("clk_protect_count", 0444, root, &core->protect_count);
>>>>           debugfs_create_u32("clk_notifier_count", 0444, root, &core->notifier_count);
>>>>           debugfs_create_file("clk_duty_cycle", 0444, root, core,
>>>>                               &clk_duty_cycle_fops);
>>>> +       debugfs_create_file("clk_parent", 0444, root, core, &current_parent_fops);
>>>
>>> Shouldn't we skip creation of this file if core->num_parents == 0? So
>>> put this under the if condition below?
>>
>> It's still useful to determine clk tree structure from debugfs fields,
>> otherwise you'd have to extract by parsing other files.
>>
>> Would you hide clk_rate for fixed-rate? I'd rather have everything
>> available for uniformity, even if it's otherwise constant at runtime.
> 
> Unless I' missing something, there's a big difference here: all clocks
> have a rate, but not all clocks have a parent.

Sorry, I got confused and thought that condition checked for muxes so 
the parent of intermediate clk nodes will be hidden. But intermediate 
nodes have num_parents == 1.

Will fix in v2.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
