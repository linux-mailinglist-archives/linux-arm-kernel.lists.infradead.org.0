Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8F012EAFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 22:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgXkc7un9VjSZYLMQ6SLOrX3WfKUl3168U8hRs/ApUs=; b=ZS0XKcKw2p61dx
	Dfd8NNTrtzt/pzIUFfi2b4YZiKd+pY9AT+DzSrgWUUdiKpnMqXk2+GAzjmFUmdW9H1l3oqofjKTKj
	P3kkXivwxBdwTiiD41Mj3t1sEblApyPksoXCBYnGZQVv/Q2Q9baFk6sf1TgKSF/1J/2Eug3N5zknw
	wCUJhsgJAnU7JG6myXptHx7wJRT6e/5Gam0CHgoaugHqgt1eKQZCxJL5u8SE/pRD/+9I5OIq7eQ+N
	2uqU45uHDFw45N0GgV+t3wpuvM7erz5nTodmalbDqTfLxpWC0rfjRyJ6rCqv+OTkhMPFZVJsjoF92
	Au3XtmA9eQCzA1rj7Q4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in7bf-0000tn-4P; Thu, 02 Jan 2020 21:02:11 +0000
Received: from mail-mw2nam12on2076.outbound.protection.outlook.com
 ([40.107.244.76] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in7bY-0000tB-Mr
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 21:02:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kDdI1SOwq4FsBHMhljtCh8ShUhhS8wr9geWjlFktxKbWu2hPccms3iOTGeW9Tu8cobTrPSg66QcA6LcEkdiFAuwMkjY0VdjlwGNcRfoFKtzNzta2zwey7/VzX92RaotsS6K+cEwMK6fF/eYmNNADNXEzwrzejIBAS/IAikweafu2XmrI3LuXH4nIGEIsCVhJrqrJeN2mYoWuFsm2N+6oxy33/8FyHoS51Q+814/qnSSXCp84dm4//d2igN7KIcElK5ELoEoEVAK4ZwEVX8JZIj10PvsHmKsOaf/suJUlOfzzA3mWhyTZelUpmAlkWrgzFQAQ2Cngifjvz4/pkVgfDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oghFSQSAIMjgHUV5V8r916IZPMm815GOssLB6Bzt3Co=;
 b=ObXAeP6EPMQsB2rIcRYKS6U3LhyqWkr4Q+wjmaqMEXD8OQydlUqfWQJJKKdHXS2n+n/BBCEofaX9OwEmOmetLHHMUcdvZbZ3GIpHo1hbN42oQzT+BuH9P+JIQSifqO4pl1BDdVbRq72bQacUmyFZKu1q19wMv+5CpYmiGlp7k3TPXZwbKiQT4yrjMOn5qK4Us1m7mquRjGGBUtgRPEfah/Bariz+FJot+CeD7vGwMwi83/5jviRnhAN2igJ7oiQrNYiYmGJ5LjTjW95nrRj3KxBLWN2YFVJ6jqxD4fxOeVzycyOmivjAhn9J/qXF4amvwDRU4zRGuT7fUxDoDzNCzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oghFSQSAIMjgHUV5V8r916IZPMm815GOssLB6Bzt3Co=;
 b=n+owhPuDgPOLfLrDE7xZHnPhS9QjEcO11BVmml1tB50epeMFu2a3Q2pi1xbiZvY7KOlVpV4QOIHAoSSjmA9jfLnvReaV5MHEjPLMMLSWGZG1IkZRoc3q57Qb/q2g+qkB5xGFF69D1yeX7HiY0e+PiS3lnLGgVmOvFgQ/0lLnzRw=
Received: from BYAPR02MB5992.namprd02.prod.outlook.com (20.179.89.80) by
 BYAPR02MB4438.namprd02.prod.outlook.com (52.135.237.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11; Thu, 2 Jan 2020 21:01:58 +0000
Received: from BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::f5fd:4723:4a89:3ed9]) by BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::f5fd:4723:4a89:3ed9%7]) with mapi id 15.20.2602.010; Thu, 2 Jan 2020
 21:01:58 +0000
From: Jolly Shah <JOLLYS@xilinx.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH 0/5] firmware: xilinx: Add xilinx specific sysfs interface
Thread-Topic: [PATCH 0/5] firmware: xilinx: Add xilinx specific sysfs interface
Thread-Index: AQHVqvq1JwhYL7MFCk+eRE7vaPSY36fADb6AgBf7GVA=
Date: Thu, 2 Jan 2020 21:01:58 +0000
Message-ID: <BYAPR02MB5992099D8B87745DB7661C13B8200@BYAPR02MB5992.namprd02.prod.outlook.com>
References: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
 <20191218144555.GA12525@bogus>
In-Reply-To: <20191218144555.GA12525@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=JOLLYS@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b2df98db-32fd-491a-c643-08d78fc70193
x-ms-traffictypediagnostic: BYAPR02MB4438:|BYAPR02MB4438:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB44389D88A4865B0932117D4FB8200@BYAPR02MB4438.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0270ED2845
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(346002)(376002)(136003)(13464003)(51914003)(189003)(199004)(52536014)(54906003)(81166006)(81156014)(8936002)(4326008)(55016002)(8676002)(186003)(316002)(5660300002)(2906002)(9686003)(86362001)(76116006)(6916009)(66476007)(66946007)(6506007)(66556008)(71200400001)(478600001)(64756008)(66446008)(7416002)(53546011)(33656002)(26005)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4438;
 H:BYAPR02MB5992.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xm0r8FZ1y7HV1YF+ssTCmBd2VRHwRiLBkSMo/DO9dZ8UlMHYmAJVluDSD3UHu3lUDPt16P18mf1LMpBcSDN5s5ylnkzAwPc9nK3Ww7TwP+/YFbw2EYjTgJ3CwAn0RCqwi8mBshEFXflZds5DmHuBN/k3RAndi8RODi8jlg1Qt5uw4cnLCVd+u2IIIMJoXiZ3akw8Saee55Hglhify0CYYeEmhLTQ0kf9YGH5Gj9Vwevsk1s0+yKCeKYTOTsloFJeF08FhOZWozAdi0OsGo+cOxPmIdOYCAwjtL4SnnWXqMfHvP7oNZQf1gwgtGK3QWca552GKiODWbw54EtCcnNF3agkINmuZ5+gaTPn9I8nV6eouQ+Ciz6DM8TyPzvyBdpTddCWNuzBelo60wUX+6hWiibbetRoRNWr2HPGpZizjeYhp2PhjPHVJE0JT2JCEuW+bzWTQ1gVNgAB59Kw7V1sQ2lhuOV+mqmqzVKNuj/KzF0rHqptyirkwz5btqSyVec0u5oY20gvHUiW/E8nYXANlw==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2df98db-32fd-491a-c643-08d78fc70193
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2020 21:01:58.1781 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N2quDRw4iZJ2ZDXi0Q2jsW1Nt9IuI6AKo+/yKnGruqAy3ekVY+fZgxyxYG05oGLSc8md98NwnFAmQB+fGIc/BQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4438
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_130204_792172_282F3662 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

Thanks for the review.

> -----Original Message-----
> From: Sudeep Holla <sudeep.holla@arm.com>
> Sent: Wednesday, December 18, 2019 6:46 AM
> To: Jolly Shah <JOLLYS@xilinx.com>
> Cc: ard.biesheuvel@linaro.org; mingo@kernel.org;
> gregkh@linuxfoundation.org; matt@codeblueprint.co.uk;
> hkallweit1@gmail.com; keescook@chromium.org;
> dmitry.torokhov@gmail.com; Michal Simek <michals@xilinx.com>; Rajan Vaja
> <RAJANV@xilinx.com>; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; Sudeep Holla <sudeep.holla@arm.com>
> Subject: Re: [PATCH 0/5] firmware: xilinx: Add xilinx specific sysfs interface
> 
> On Wed, Dec 04, 2019 at 03:29:14PM -0800, Jolly Shah wrote:
> > This patch series adds xilinx specific sysfs interface for below
> > purposes:
> > - Register access
> > - Set shutdown scope
> > - Set boot health status bit
> 
> This series defeats the whole abstraction EEMI provides. By providing
> direct register accesses, you are allowing user-space to do whatever it
> wants. I had NACKed this idea before. Has anything changed ?
>

Firmware checks for allowed accesses only and rejects rest. 
 
> If you need it for testing firmware, better put them in debugfs which is
> off on production builds.

Sure. Will reanalyze use cases and move to debugfs only if that suffices.

Thanks,
Jolly Shah


> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
