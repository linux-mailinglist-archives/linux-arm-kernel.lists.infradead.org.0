Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF3210BCD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 19:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxnl4m3ujdj7W9zPfxwsxz6jE17NQFeStNrFxG0bgAQ=; b=rkJdTE88m0MnA7
	eSFkd1qhQIJoOdkgfjIuh/i6lKaVtC84Oao1ZzR0DWm6qiAl99q4iySEPwIII7qRPLUri7ZqV+mV+
	h7JMBGLYRB29EQX60Xy5kJA9bgrPpHeMT4wOQ+NT7Jlc2xSDEN93bvI90l1eAjaCHkr3sK70npufA
	4EivYTQoy1n2bjrWH5/sQuK7qfoqlEEPxEyZHGX4O5NnMJ0GiVekCHj6t2brKKtJE6DCFXrDec09c
	LHv6NMzeypqDVwkk0Oy+c+RNMh4EDIOVDfFYKAjQjwA/uWhy/TPJEp95kjkG6N7Y2D4tcs31Ui+8r
	mhWBkWnEbdwDpbuoQq9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsm2-0004yv-Fq; Wed, 01 May 2019 17:12:02 +0000
Received: from mail-sn1nam02on071d.outbound.protection.outlook.com
 ([2a01:111:f400:fe44::71d]
 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLslu-0004xc-RH
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 17:11:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=impinj.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kojW7S+AlG1rx3CFD8ID9aPv2p0VvWWrcMoljH3m8Ik=;
 b=jNSlPJSYueMMqpo7dHLXaFUPCgdqrFHuXreClNhB3Z7G0ihqQFLpFXTIK/FIhyR/JIW8Dl2HXe/RPbBqCN4B0TQzvznh+sl6srsoZKHzSN5JFRJ5Kj0s4SXaCM/sdKFY18eZ226zKG2BiBMtcofFgi1tlOQjlgZNYS2E1oO/1VI=
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com (10.167.236.38) by
 MWHPR0601MB3596.namprd06.prod.outlook.com (10.167.236.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Wed, 1 May 2019 17:11:50 +0000
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::2d6d:7e4b:d2ff:5e29]) by MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::2d6d:7e4b:d2ff:5e29%3]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 17:11:44 +0000
From: Trent Piepho <tpiepho@impinj.com>
To: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] rtc: st-lpc: remove unnecessary check
Thread-Topic: [PATCH] rtc: st-lpc: remove unnecessary check
Thread-Index: AQHU/5H32hcx4X+jhEK8dI4HvkdrpqZVSbiAgAEKhICAAC6FgA==
Date: Wed, 1 May 2019 17:11:44 +0000
Message-ID: <1556730703.31309.53.camel@impinj.com>
References: <20190430201834.12634-1-alexandre.belloni@bootlin.com>
 <1556663479.31309.36.camel@impinj.com> <20190501142513.GK11339@piout.net>
In-Reply-To: <20190501142513.GK11339@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tpiepho@impinj.com; 
x-originating-ip: [216.207.205.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5f998f5b-d709-4b3a-6e6f-08d6ce58165b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR0601MB3596; 
x-ms-traffictypediagnostic: MWHPR0601MB3596:
x-microsoft-antispam-prvs: <MWHPR0601MB359624CB2F7E7F44721D9C8ED33B0@MWHPR0601MB3596.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(39850400004)(136003)(366004)(376002)(189003)(199004)(91956017)(68736007)(186003)(71190400001)(6246003)(478600001)(71200400001)(446003)(26005)(2501003)(86362001)(53936002)(229853002)(11346002)(6512007)(2616005)(476003)(76116006)(73956011)(66476007)(25786009)(8936002)(2906002)(486006)(54906003)(5640700003)(81156014)(66556008)(6916009)(36756003)(305945005)(6116002)(5660300002)(64756008)(66446008)(3846002)(99286004)(2351001)(66066001)(103116003)(6506007)(14454004)(14444005)(81166006)(102836004)(6486002)(8676002)(66946007)(256004)(7736002)(6436002)(316002)(4326008)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR0601MB3596;
 H:MWHPR0601MB3708.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: impinj.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CdNHVVc3M3BSSAHRBa9grt07cs2ZjPhftO1uO/+0uYkQPei6up/y+ihObIZGm0EqdY588gXnLBtSe4GydW8sim1scm58cRInN4FnSEZ8KKIoFMUrhsoOjp6hdK/xJUpv8p7arWHc0DY/BttQiC4AVyqT9RT/NtiGii4sNUNoSXiKf9/WlGSYqFXBpS78MiQvOdubKRksVnuIbxb+TlPghL1ai47nPH0IoHiEtgCepWbNPqTtJigZgn+h1hndMaTa+h2WBbfaKumCzPsLflsDkjxg+2p+YNavAGzC0BQVbnwGn7XEEfBr0tZ9TXNamnnTC4qauUn36hhwjMwK5DuUF5Stic3UaJ8rqn9g4B1MDAUNIXX7lKTi5kRzM0oFY0gUN7QG1qkYKhgTYB7ZdWwBgVjAXIwMCUBv9VzPOy/a3EA=
Content-ID: <49FCA81B3B0C5042BD02E5EC95515723@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: impinj.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f998f5b-d709-4b3a-6e6f-08d6ce58165b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 17:11:44.6117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6de70f0f-7357-4529-a415-d8cbb7e93e5e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0601MB3596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_101154_939675_64182E8B 
X-CRM114-Status: GOOD (  24.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe44:0:0:0:71d listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "patrice.chotard@st.com" <patrice.chotard@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-05-01 at 16:25 +0200, Alexandre Belloni wrote:
> On 30/04/2019 22:31:19+0000, Trent Piepho wrote:
> > On Tue, 2019-04-30 at 22:18 +0200, Alexandre Belloni wrote:
> > > The RTC core already ensures the alarm is set to a time in the future, it
> > > is not necessary to check again in the driver.
> > 
> > My reading of the rtc core code is that it checks if the alarm is in
> > the future *twice* before handing off the set call to the driver, which
> > possibly checks a 3rd time (as seen here).
> > 
> > However, all these checks are done *before* setting the alarm.  It
> > still possible to have a race and set the alarm after the time has
> > already passed, in which case the alarm will never fire.
> > 
> 
> I agree the core need to handle that possible race better and this is
> something I'm planning to work on.
> 
> > The way to fix the race would be to have the driver check the alarm
> > *after* setting it.  In precisely this order, do these steps:
> > 
> > 1. Set alarm in RTC, to Talarm
> > 2. Get time from RTC, as Tcurrent
> > 3. Get alarm status from RTC
> > 
> > If Talarm < Tcurrent, alarm was set to future time, no error
> 
> This should be Talarm > Tcurrent, right?

Yes.  I wrote that backward.

> > Else
> >   If status == fired, alarm was set and has since fired, no error
> >   Else status == not fired, alarm was set in past, EINVAL
> > 
> > This should be race free.
> > 
> > 
> > >  
> > > -	/* Invalid alarm time */
> > > -	if (now_secs > alarm_secs)
> > > -		return -EINVAL;
> > > -
> > >  	memcpy(&rtc->alarm, t, sizeof(struct rtc_wkalrm));
> > >  
> > >  	/* Now many secs to fire */
> > 
> >         alarm_secs -= now_secs;
> >         lpa = (unsigned long long)alarm_secs * rtc->clkrate;
> > 
> > While it's true the time wouldn't normally be in past, it still races,
> > as describe above. In that case, the math here underflows alarm_secs,
> > so it probably still makes sense to check.
> 
> I can't believe you can possibly have more than one second between the
> check in the core and the check in the driver, it doesn't make much
> sense to check, even in the current state of the core.

It's certainly possible to have multiple seconds pass.  For an external
device over SPI or I2C, one has to wait for the bus to become free. 
And on SPI that requires the kernel thread running the bus to be 
scheduled.  Just put in some real-time tasks and maybe a big transfer
to a flash chip and it could be a while before that happens.

I don't think this device has that issue as I don't think it's
external.  And ever for a device on an external bus, delays > 1 second
are unlikely.  Possible, but unlikely.

You can also get them when Linux is running under a hypervisor, i.e. a
Linux VM.  But also something like an NMI and ACPI BIOS.  If the Linux
guest is not scheduled to run for while anything that is supposed to be
based on real time, like the value returned by an RTC, will still
advance.  It is possible that multiple seconds elapse from the guest
CPU executing one instruction to the next.

But even ignoring that, does it require > 1 second to elapse.  Can't it
happen when the clock ticks from one second to the next, which happens
effectively instantly?

If the time from the check to the time when the alarm is set is 1
microsecond, and the time this call to set the alarm is made is
randomly done and not synchronized to the RTC, then isn't there a 1 out
of 1 million chance (1 microsecond / 1 second), that the once per
second clock tick will hit our 1 us window?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
