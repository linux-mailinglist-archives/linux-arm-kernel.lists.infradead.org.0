Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B964139B87
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 09:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=uArbVrwbqcrc9TrJN0xQ5bwXliYdl9DeYxIcILH/wWM=; b=qSjQd4BKt7UUlr
	dTz6fgND1YMyu+SQw+u/KgkntddbRAq6TmleEGdbcorIMrxSjojmYmLz7Mi79JNB+YtAikwMJvhKT
	iW4swPwGWGjUaMuXnaitGpMWZPLN2HBdK5s1++FvbY3SOCpEPQwezhsF1eZXPZ12Y5qGpcZ7c92oZ
	0+TcuXcVAijaIdvALaD9W0jrI/mNokKALPAipEeAbBQgaWmU0ZaUpeqBx7WigqlSrfFYRR3uAES74
	X2Atrcx4qArQJlyNrBlp17MLupCo8DUzE18dcljx3NbDItvNgKGkU6tp+w5De3ckXpoMJ9Xx/nRdY
	ljs/+H5Eco3aCOQ99KEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZVkG-0001Zo-Qp; Sat, 08 Jun 2019 07:26:32 +0000
Received: from mail-eopbgr140050.outbound.protection.outlook.com
 ([40.107.14.50] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZVk2-0001Yo-1b
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 07:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EOhtXOfOKXuRdNodB75bmf2sWe/Wd42LrJbBPvDrS+c=;
 b=TRWVuUpUl7J1mHAk70mj4bTlxTr7BqgVpGSwXGpMkXx9NsBJoUdQCKpauMiIvMB4SQhz50YaRGqCv95donYWQG+xV8dCOhdGO/KtgFgkdr9wye9HePl+0el/+PGSBr1loEg7pSA3T1hF3KO2soyddRRN05QkxffepCTX/hqWTtc=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5599.eurprd04.prod.outlook.com (20.178.125.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Sat, 8 Jun 2019 07:26:11 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1965.011; Sat, 8 Jun 2019
 07:26:11 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: Add clk_parent entry in debugfs
Thread-Topic: [PATCH] clk: Add clk_parent entry in debugfs
Thread-Index: AQHVEgo8VzXmpj/WDkGGgiXI1N3a1Q==
Date: Sat, 8 Jun 2019 07:26:11 +0000
Message-ID: <VI1PR04MB5055A1DBAC2C4AAC515CB494EE110@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <057720844e78e615e46de34a73b16ffaf7dbfc10.1558686047.git.leonard.crestez@nxp.com>
 <20190607190522.D276520868@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [2a04:241e:504:3000:e6e7:49ff:fe63:c221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a898073-9783-4127-cfd4-08d6ebe29511
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5599; 
x-ms-traffictypediagnostic: VI1PR04MB5599:
x-microsoft-antispam-prvs: <VI1PR04MB5599EBCB02A0781FA2E1A081EE110@VI1PR04MB5599.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(136003)(39860400002)(346002)(396003)(199004)(189003)(2906002)(6116002)(7696005)(4326008)(52536014)(55016002)(25786009)(76176011)(256004)(102836004)(229853002)(4744005)(476003)(478600001)(54906003)(486006)(44832011)(6916009)(316002)(9686003)(305945005)(7736002)(14454004)(86362001)(71200400001)(71190400001)(6246003)(33656002)(81156014)(53936002)(68736007)(46003)(76116006)(186003)(73956011)(66446008)(64756008)(66556008)(66476007)(66946007)(81166006)(8936002)(446003)(53546011)(99286004)(6436002)(5660300002)(6506007)(74316002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5599;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LS61RIcA24PwEirLmqhw+wZzGlLcMlSdtMR4I2ea7CtNJ87YnCuPKCyw/ovphRnhMmZqFSSyt6KTnEEYRBnJUADKVqANy8TBf2LDuvLfai4e4NP+RiIsjlEnCtOwtYpw87ZBZpbAphffsjpfyWxKub5mYzIoqgBD7DN8B2LldYytcd6A5/Q8QmyXI7lOManuyterXFGe9u2b2yQtxiXOjyLuCcbvm4/9Xn5ZnZ0D4XPTc9vuyk/IHBrzVus7vpHXI/Syz4QbEMqtTra+qyh+frxDNthwO9rHUpKuoMA+1b8NpTo3CgzSNhW/gKR+EGvGy3xuqo9iqMWggdcOFb49eeulJi9RhW1SWb3G8ZcrgB85gjW3CYOZs6PwDNizK7JZpYXBLuH7EKNPZct6SQ1M69aAvHIVBV7MCL7+xePRr0I=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a898073-9783-4127-cfd4-08d6ebe29511
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 07:26:11.4693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5599
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_002618_178419_E4CA9171 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.50 listed in list.dnswl.org]
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 6/7/19 10:05 PM, Stephen Boyd wrote:
> Quoting Leonard Crestez (2019-05-24 01:25:25)

>> @@ -3040,10 +3051,11 @@ static void clk_debug_create_one(struct clk_core *core, struct dentry *pdentry)
>>          debugfs_create_u32("clk_enable_count", 0444, root, &core->enable_count);
>>          debugfs_create_u32("clk_protect_count", 0444, root, &core->protect_count);
>>          debugfs_create_u32("clk_notifier_count", 0444, root, &core->notifier_count);
>>          debugfs_create_file("clk_duty_cycle", 0444, root, core,
>>                              &clk_duty_cycle_fops);
>> +       debugfs_create_file("clk_parent", 0444, root, core, &current_parent_fops);
> 
> Shouldn't we skip creation of this file if core->num_parents == 0? So
> put this under the if condition below?

It's still useful to determine clk tree structure from debugfs fields, 
otherwise you'd have to extract by parsing other files.

Would you hide clk_rate for fixed-rate? I'd rather have everything 
available for uniformity, even if it's otherwise constant at runtime.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
