Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F01A8676B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=wGWa5s3PwrqDHvwHN1UAzYKu/jsxmbT/lm1jAQVaqYY=; b=WNd96VCR7Sm8A5
	nZKRQhycnQyAvXhVLS/cKDMw1OSfWx6n3O5mZdsVv25ZKhE/wYsm0nlOEiiVHUwb3o+fgbnDNLate
	hJnzS4qZJ5PQv/exyY4L5Re/Jtqbb/1tWs3r2mR0Craf9/Lhr4Mne2yFBXAboE7HrEgRD0YkT9gYX
	Y7jRo9MisGLBA4PqdUOoE0S+5hkQTqrZS9WqTCA0/1iWTKJrN76lJCQChzjGQnBJi6rxfP72uVJDl
	FBURHq6s8ZvyMhzQH5fEP9ii1q1tyO/sqGdM46dyxMhPVdxUivTY+VMZ/tIvG1ukH6lthLxrAdzvR
	lJ8nWGN8hi2f0Vx0FDLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlZ6-00036G-PX; Thu, 08 Aug 2019 16:47:00 +0000
Received: from mail-eopbgr60062.outbound.protection.outlook.com ([40.107.6.62]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlYx-00035T-LM
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:46:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cBeD0lXwdVBRQM6m1OchkuD2i9RNRA/Q4e8vgpUlPbZ55l/WTwPCyFP14gDwE2G0ktHndmSFaTCW4V8Yqy9OJu8nIMbSKWCH0mfatYCiF14Wpa+H1rQ6Kz16cxzp1/lLbI23DUPgMSB1GWp6egVtr9UaB2l8RVK6tcmAPybESo00gojI7l3KD1/NyCb3kyp6ZRuV6137r30kPdPyZktUCEsLszpLa27o/ui+m5EVpqiTracPf6wWaLqsavmQI4ysVaykndxHaniiMh4Ew/3dSvhTad77vUfpp3qtB2Uj8kAFrcFAMDu7fogdjt7zNXZ85NFUbKZCaFJ0o82QEYxlRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=89gyf+bubo9ODlDykcslOmaUDYIz+Q9T4mnOpFe3EdY=;
 b=RS/qggNCtoGeJdCzUkKjIIqZhzdp01yWS36JEfB2hRQbYFWg+SEsrFPympLPWuHqvtxVNjoeo0KG6KYINrtrdzja4txLvLAe835sMD/pAd1a67yhRWPf9Z5aYPX0XKRUo13IKnwscGhgcq2jrlFZDNAuC1tB0Dslggl3WtIopY3/sOsqyDT+//oFM9y34GGPtq8inE9lLnoc7Kv2uW4inHcXuVx2ynIk+aqRvnEPommW9eKk3QssNEIqhN31o7ERLSrjO52KuABZhVHsMN0MtJxmKTX3EmXOdMKbQJVGt0ZT0jyRQoZOvtJZr5Ejbv2mOMc1lgEYmz7n6y19oBEL8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=89gyf+bubo9ODlDykcslOmaUDYIz+Q9T4mnOpFe3EdY=;
 b=WrIjnxXL2O7WSZNR3TqRvuVCR4UKDYo0zQrEmBD9fYyCwDiZdUG+rfg38gBij2ALy+CjL4FDd9pCoXVYPvQHtFf5KIEqIpXHvIYWADaygQwxXitk9XBziRKPmJSqqkcV0CQHaAzUBxndcGlhBEUx2EbJjfo3vTbtVzOf+L/DXvQ=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4557.eurprd04.prod.outlook.com (20.177.55.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Thu, 8 Aug 2019 16:46:48 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::e53d:e6a9:79bd:f970]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::e53d:e6a9:79bd:f970%2]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 16:46:48 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v3 1/2] clk: Add clk_min/max_rate entries in debugfs
Thread-Topic: [PATCH v3 1/2] clk: Add clk_min/max_rate entries in debugfs
Thread-Index: AQHVTfoGXeMGdmRTE0G0NHpNjfznmw==
Date: Thu, 8 Aug 2019 16:46:48 +0000
Message-ID: <VI1PR04MB7023C8A78321E34492290E56EED70@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <68e96af2df96512300604d797ade2088d7e6e496.1562073871.git.leonard.crestez@nxp.com>
 <20190808150028.0BC1F217D7@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33e44622-d231-4747-20e8-08d71c200146
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4557; 
x-ms-traffictypediagnostic: VI1PR04MB4557:
x-microsoft-antispam-prvs: <VI1PR04MB4557EEE9F0B55455288F7382EED70@VI1PR04MB4557.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(396003)(376002)(366004)(189003)(199004)(229853002)(74316002)(25786009)(71200400001)(2906002)(71190400001)(66066001)(66446008)(52536014)(486006)(76176011)(7696005)(9686003)(55016002)(4326008)(44832011)(53546011)(53936002)(186003)(478600001)(6506007)(8676002)(6246003)(8936002)(102836004)(476003)(81166006)(446003)(33656002)(26005)(7736002)(66946007)(81156014)(256004)(66476007)(91956017)(64756008)(66556008)(99286004)(14454004)(6436002)(76116006)(305945005)(86362001)(3846002)(6116002)(110136005)(54906003)(4744005)(316002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4557;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2+f84Ue9wfJGnABiGJs6t9Jgkc5/KreJrfSPR13/OI34f5xoqvEVA9ngZmB+VYfQqniB4r5uAezs95OkDm3yMJy7+iAZt+vuclDwDeqOPacUb5bCONs4Ta1nJ9zRfUeSgoc5zZF3xTeR3cdxwbGR4tkj3rkkCswfLrbVHgp7kTLUDwHJESUJRo1NAGDK/o/k65F+oPr4mMphg2Vsbh7WELwfOkM7KIIt2nT9p2Tr143Z+LfuLz7AFH4Uv4l2BQ1TFX+/sDozpQTyu42r5AJE79i4aLpuE79jK+6d0fIfqBoqRS7v53ajcrkJYYmWngKjbhCyFZCGc9V4V6Qa/6nCdMx44CCsi8nDHVqQYZRcfgkEVtXY/6GON3gldyBPuCg/mmmJkaisAGpQuxmM0r6SI+m1nPK6ZJQXWwV8fa7lTAA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33e44622-d231-4747-20e8-08d71c200146
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 16:46:48.0647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f2Bkq9W3Tl39MTyXT/yBo8QljNd4e/kf/2EMZzD+0vaVXIEmnGps5HC6qYdDnI5wsdFxX75f57SzvoZMqtDpeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4557
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_094651_772813_DFFBF9CB 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.62 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michael Turquette <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/8/2019 6:00 PM, Stephen Boyd wrote:
> Quoting Leonard Crestez (2019-07-02 06:27:09)
>> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c

>>   static void clk_dump_one(struct seq_file *s, struct clk_core *c, int level)
>>   {
>> +       clk_core_get_boundaries(c, &min_rate, &max_rate);
>> +       if (min_rate != 0)
>> +               seq_printf(s, "\"min_rate\": %lu,", min_rate);
>> +       if (max_rate != ULONG_MAX)
>> +               seq_printf(s, "\"max_rate\": %lu,", max_rate);
> 
> What are the if conditions about? We always output the values in the
> individual files, but for some reason we don't want to do that in the
> json output?

These if conditions are an easy way to avoid spamming "min_rate": 0, 
"max_rate": 18446744073709551615 in json. If you object to the 
inconsistency a nice solution would to be show "null" in both debugfs 
and json.

Outright hiding min/max files from debugfs is impractical, it would 
require filesystem calls from clk_set_min_rate

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
