Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB907BB5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNF6gTjh2LUjQsSswhrtS4TQuPRqcVRALkyEiTskr48=; b=UqJMTMeMqr6dsP
	vbc7yvN7KQ0m/QV9jPWGt7VB2WLpJjC78euW9fidIo89qhDIClcr92zp2opW1oHuze8AdVfk0dEOp
	4rMChiG2Thwc0KSiQLmeBZtsluT3nNo0cGnmpYNOeiD65pxGDtSZBdNsACtCoIf4kGulbNEIq6YyI
	OeX/BhKTdfks6LngwnS0TnfZ56mF4GVt2z8Cm8G9bT/SjjmBIcOgQLdmYYcNuBNDZE0+xBaGm3uYg
	RT7Z6KjFnnU5szufjK46Ff9xje5Nnu1SvpMjvWaDhFHqtRsvp+XmyKP+4jBIPMSULREmpf92TdJEu
	DVXnyrZgv02kpfK93Zng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjmk-0002jZ-1C; Wed, 31 Jul 2019 08:16:34 +0000
Received: from mail-vi1eur04on0606.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::606]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjmP-0002j4-SX
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:16:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mk7AeiPHSDYfhDdtFKGB+viuFFnMsw9P1doOtMr/v8dN68mNKw5d6TPYsQoNeUB6uCOyP6pkq2w92vn2r5ubEg6GCzEK9qYd611bttbpYl0ze1Eu9tIiQmh7nVL2iNljmPIZUUSwWzGQ6xvggZJa03pB3pHXBt9CkrWtrNiFSQjH+a4jqjJTrhGc2djBC1HFam89sisg9dFfFRWBeEt/tDs4IRm5lc3+9YYUNbftnbre5bsvy/eN9loWCIolB6lkhJZua3gNbz1SlAd9aCAkauoUeso/XGUDN4c6OPP9LFaXpxcpmWAdy1ZKJR99knlSTDrdL0rVc3ckD7PiwdDrzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fx1KVMYKO1trawVI5z2JmWHTnGxHUJ9WgrabNZnpPWU=;
 b=OYh9D2An/lTPAsRxNXI07dCW2c/V6QuKcuIb8CXwIK8+xMhH2D1/ee0AlE5nmYFuB4jDcXNUT7Zi0uJ3txEIalBj2VuR66r8xbhDeVEATEPwuQzxOpSb52BFnKXuAAdQ7dOr+u72Exmd0jGBwWiBjZ3b+M/D/x2KoQ9IxqZ5//nO9Ir9Ca76tZBCWiId0vXJU6B56y4NxL8rV//qpm3nGpH1zF0Hnurqr+ZFnnDvWk730x0gekHYNVRT8bLEICSgiNjbT00v7OhenjG+EL60Oj33bmjKmmZi1omKrgPey+NC9EuA/zGJ/uWJgJFhwMLStEZo3nk+En/E5HbvvxdXkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fx1KVMYKO1trawVI5z2JmWHTnGxHUJ9WgrabNZnpPWU=;
 b=sOby1zx3kK7Rn3VYaJw6p8ynla2PFNwee6J+bNXrUds06/AXdCyxmHmOspbm5JP31pDPAFhPosZJ7cg9hUyFACw6LMHY1Ag7RjbLqYWjd/4ZU6te0066chKlBl64lYt9QI+M+NVsUqGgZGjcvkP0IIkv0kSDyd3vT1XhsW4/boo=
Received: from VE1PR08MB4638.eurprd08.prod.outlook.com (10.255.27.16) by
 VE1PR08MB4909.eurprd08.prod.outlook.com (10.255.113.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Wed, 31 Jul 2019 08:16:08 +0000
Received: from VE1PR08MB4638.eurprd08.prod.outlook.com
 ([fe80::bdda:4594:b41f:c84c]) by VE1PR08MB4638.eurprd08.prod.outlook.com
 ([fe80::bdda:4594:b41f:c84c%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 08:16:08 +0000
From: Mike Leach <Mike.Leach@arm.com>
To: Andrew Murray <Andrew.Murray@arm.com>, Mathieu Poirier
 <mathieu.poirier@linaro.org>
Subject: RE: [PATCH v4 5/6] coresight: etm4x: save/restore state across CPU
 low power states
Thread-Topic: [PATCH v4 5/6] coresight: etm4x: save/restore state across CPU
 low power states
Thread-Index: AQHVRtXACmzAuWQrJEOqMw6sl0NeV6bjqnSAgAAIJoCAAK85YA==
Date: Wed, 31 Jul 2019 08:16:08 +0000
Message-ID: <VE1PR08MB4638FFA34F7AFDDE907F43388CDF0@VE1PR08MB4638.eurprd08.prod.outlook.com>
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730125157.884-6-andrew.murray@arm.com> <20190730211633.GB4878@xps15>
 <20190730214542.GH56241@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190730214542.GH56241@e119886-lin.cambridge.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: ae826c3e-6149-4ec0-aa60-b1afc24080f8.1
x-checkrecipientchecked: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Mike.Leach@arm.com; 
x-originating-ip: [217.140.106.32]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 798d005d-0dbb-44f8-795b-08d7158f5764
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR08MB4909; 
x-ms-traffictypediagnostic: VE1PR08MB4909:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VE1PR08MB49090369AB92C447257D62B48CDF0@VE1PR08MB4909.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(189003)(199004)(40434004)(13464003)(110136005)(54906003)(74316002)(81166006)(66946007)(478600001)(66446008)(81156014)(66066001)(64756008)(66556008)(966005)(14454004)(53546011)(305945005)(7736002)(5660300002)(99286004)(8936002)(76116006)(102836004)(33656002)(6506007)(53946003)(30864003)(9686003)(5024004)(2906002)(53936002)(3846002)(486006)(256004)(66476007)(6436002)(7696005)(11346002)(76176011)(25786009)(186003)(26005)(6246003)(86362001)(316002)(476003)(71200400001)(14444005)(446003)(68736007)(8676002)(52536014)(6116002)(71190400001)(55016002)(229853002)(4326008)(6306002)(32563001)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4909;
 H:VE1PR08MB4638.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4+48BTZI/TbXr96Q1EX9KoWiQJ4tmrI4u6W/TFib3CTH+iABmRtyotugpZuFb8l1s5kaOz+mu0Ahxm0Sfx+EgYBtSa41lN3X+nweHTZmF6+DLsEq1G7pjsi+CiyeuxMIOrheTTS1hQ5mEaIj89JrxnyqUFuLcZkrZM3a1yekOB3Etbm9+317+Cpu36yinO7fyo2gub/UIHDRgZJZHeBPjq228Qdl0FfIGA+dm9KgqD1Jteh01Ea0076KF0s8zi5BMwAw5vwGNQ4tQGHZGL8W3uYS4BeU5FTbrebu0M8X/VsVIkJQ7CV7iBuaN/c5Rz4CHK7mPU2uY7q6OHV2f4ebi4akH18RHyYOCAiFFf/diga94IR6Vd6A2UXV7QFGSbLmSCeCGb0fRF4rZsxuE9KBdWDPzRZpeSTkHpDfy5MjP6A=
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 798d005d-0dbb-44f8-795b-08d7158f5764
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 08:16:08.4864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mike.Leach@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4909
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_011614_157566_5D26D315 
X-CRM114-Status: GOOD (  28.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:606 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "coresight@lists.linaro.org" <coresight@lists.linaro.org>,
 Mike Leach <mike.leach@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <Sudeep.Holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Since the decision has apparently been made to ignore the needs of external debug agents, then the "state" struct & variable used in this and the previously mentioned issues around allocating it are un-necessary complication. Simply use the existing config in the driver that contains all of the values that you need - and save on additional memory usage by the drivers.

Regards

Mike


> -----Original Message-----
> From: CoreSight <coresight-bounces@lists.linaro.org> On Behalf Of Andrew
> Murray
> Sent: 30 July 2019 22:46
> To: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>;
> coresight@lists.linaro.org; Sudeep Holla <Sudeep.Holla@arm.com>; linux-
> arm-kernel@lists.infradead.org; Mike Leach <mike.leach@linaro.org>
> Subject: Re: [PATCH v4 5/6] coresight: etm4x: save/restore state across CPU
> low power states
>
> On Tue, Jul 30, 2019 at 03:16:33PM -0600, Mathieu Poirier wrote:
> > On Tue, Jul 30, 2019 at 01:51:56PM +0100, Andrew Murray wrote:
> > > Some hardware will ignore bit TRCPDCR.PU which is used to signal to
> > > hardware that power should not be removed from the trace unit.
> > > Let's mitigate against this by conditionally saving and restoring
> > > the trace unit state when the CPU enters low power states.
> > >
> > > This patchset introduces a firmware property named
> > > 'arm,coresight-needs-save-restore' - when this is present the
> > > hardware state will be conditionally saved and restored.
> > >
> > > A module parameter 'pm_save_enable' is also introduced which can be
> > > configured to override the firmware property. This can be set to
> > > never allow save/restore, to conditionally allow it, or to do as the
> > > firmware indicates (default).
> > >
> > > We avoid saving the hardware state when coresight isn't in use to
> > > reduce PM latency - we can't determine this by reading the claim
> > > tags (TRCCLAIMCLR) as these are 'trace' registers which need power
> > > and clocking, something we can't easily provide in the PM context.
> > > Therefore we rely on the existing drvdata->mode internal state that
> > > is set when self-hosted coresight is used (and powered).
> > >
> > > As we do not have a simple way of determining if an external agent
> > > is using coresight, we don't save/restore for this use case.
> > >
> > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > ---
> > >  drivers/hwtracing/coresight/coresight-etm4x.c | 322
> > > ++++++++++++++++++  drivers/hwtracing/coresight/coresight-etm4x.h |
> > > 64 ++++
> > >  2 files changed, 386 insertions(+)
> > >
> > > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c
> > > b/drivers/hwtracing/coresight/coresight-etm4x.c
> > > index a128b5063f46..30f118792289 100644
> > > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > > @@ -18,6 +18,7 @@
> > >  #include <linux/stat.h>
> > >  #include <linux/clk.h>
> > >  #include <linux/cpu.h>
> > > +#include <linux/cpu_pm.h>
> > >  #include <linux/coresight.h>
> > >  #include <linux/coresight-pmu.h>
> > >  #include <linux/pm_wakeup.h>
> > > @@ -26,6 +27,7 @@
> > >  #include <linux/uaccess.h>
> > >  #include <linux/perf_event.h>
> > >  #include <linux/pm_runtime.h>
> > > +#include <linux/property.h>
> > >  #include <asm/sections.h>
> > >  #include <asm/local.h>
> > >  #include <asm/virt.h>
> > > @@ -37,6 +39,15 @@ static int boot_enable;
> > > module_param(boot_enable, int, 0444);
> MODULE_PARM_DESC(boot_enable,
> > > "Enable tracing on boot");
> > >
> > > +#define PARAM_PM_SAVE_NEVER0 /* never save/restore state
> */
> > > +#define PARAM_PM_SAVE_ALWAYS1 /* always save/restore
> state */
> > > +#define PARAM_PM_SAVE_FIRMWARE2 /* only save/restore if
> firmware flag set */
> > > +
> > > +static int pm_save_enable = PARAM_PM_SAVE_FIRMWARE;
> > > +module_param(pm_save_enable, int, 0444);
> > > +MODULE_PARM_DESC(pm_save_enable,
> > > +"Save/restore state on power down: 0 = never, 1 = always, 2 =
> > > +firmware");
> > > +
> > >  /* The number of ETMv4 currently registered */  static int
> > > etm4_count;  static struct etmv4_drvdata *etmdrvdata[NR_CPUS]; @@
> > > -54,6 +65,14 @@ static void etm4_os_unlock(struct etmv4_drvdata
> *drvdata)
> > >  isb();
> > >  }
> > >
> > > +static void etm4_os_lock(struct etmv4_drvdata *drvdata) {
> > > +/* Writing 0x1 to TRCOSLAR locks the trace registers */
> > > +writel_relaxed(0x1, drvdata->base + TRCOSLAR);
> > > +drvdata->os_unlock = false;
> > > +isb();
> > > +}
> > > +
> > >  static bool etm4_arch_supported(u8 arch)  {
> > >  /* Mask out the minor version number */ @@ -1085,6 +1104,294
> @@
> > > static void etm4_init_trace_id(struct etmv4_drvdata *drvdata)
> > >  drvdata->trcid = coresight_get_trace_id(drvdata->cpu);
> > >  }
> > >
> > > +#ifdef CONFIG_CPU_PM
> > > +static int etm4_cpu_save(struct etmv4_drvdata *drvdata) {
> > > +int i, ret = 0;
> > > +struct etmv4_save_state *state;
> > > +struct device *etm_dev = &drvdata->csdev->dev;
> > > +
> > > +/*
> > > + * As recommended by 3.4.1 ("The procedure when powering down
> the PE")
> > > + * of ARM IHI 0064D
> > > + */
> > > +dsb(sy);
> > > +isb();
> > > +
> > > +CS_UNLOCK(drvdata->base);
> > > +
> > > +/* Lock the OS lock to disable trace and external debugger access */
> > > +etm4_os_lock(drvdata);
> > > +
> > > +/* wait for TRCSTATR.PMSTABLE to go up */
> > > +if (coresight_timeout(drvdata->base, TRCSTATR,
> > > +TRCSTATR_PMSTABLE_BIT, 1)) {
> > > +dev_err(etm_dev,
> > > +"timeout while waiting for PM Stable Status\n");
> > > +etm4_os_unlock(drvdata);
> > > +ret = -EBUSY;
> > > +goto out;
> > > +}
> > > +
> > > +state = drvdata->save_state;
> > > +
> > > +state->trcprgctlr = readl(drvdata->base + TRCPRGCTLR);
> > > +state->trcprocselr = readl(drvdata->base + TRCPROCSELR);
> > > +state->trcconfigr = readl(drvdata->base + TRCCONFIGR);
> > > +state->trcauxctlr = readl(drvdata->base + TRCAUXCTLR);
> > > +state->trceventctl0r = readl(drvdata->base + TRCEVENTCTL0R);
> > > +state->trceventctl1r = readl(drvdata->base + TRCEVENTCTL1R);
> > > +state->trcstallctlr = readl(drvdata->base + TRCSTALLCTLR);
> > > +state->trctsctlr = readl(drvdata->base + TRCTSCTLR);
> > > +state->trcsyncpr = readl(drvdata->base + TRCSYNCPR);
> > > +state->trcccctlr = readl(drvdata->base + TRCCCCTLR);
> > > +state->trcbbctlr = readl(drvdata->base + TRCBBCTLR);
> > > +state->trctraceidr = readl(drvdata->base + TRCTRACEIDR);
> > > +state->trcqctlr = readl(drvdata->base + TRCQCTLR);
> > > +
> > > +state->trcvictlr = readl(drvdata->base + TRCVICTLR);
> > > +state->trcviiectlr = readl(drvdata->base + TRCVIIECTLR);
> > > +state->trcvissctlr = readl(drvdata->base + TRCVISSCTLR);
> > > +state->trcvipcssctlr = readl(drvdata->base + TRCVIPCSSCTLR);
> > > +state->trcvdctlr = readl(drvdata->base + TRCVDCTLR);
> > > +state->trcvdsacctlr = readl(drvdata->base + TRCVDSACCTLR);
> > > +state->trcvdarcctlr = readl(drvdata->base + TRCVDARCCTLR);
> > > +
> > > +for (i = 0; i < drvdata->nrseqstate; i++)
> > > +state->trcseqevr[i] = readl(drvdata->base + TRCSEQEVRn(i));
> > > +
> > > +state->trcseqrstevr = readl(drvdata->base + TRCSEQRSTEVR);
> > > +state->trcseqstr = readl(drvdata->base + TRCSEQSTR);
> > > +state->trcextinselr = readl(drvdata->base + TRCEXTINSELR);
> > > +
> > > +for (i = 0; i < drvdata->nr_cntr; i++) {
> > > +state->trccntrldvr[i] = readl(drvdata->base +
> TRCCNTRLDVRn(i));
> > > +state->trccntctlr[i] = readl(drvdata->base + TRCCNTCTLRn(i));
> > > +state->trccntvr[i] = readl(drvdata->base + TRCCNTVRn(i));
> > > +}
> > > +
> > > +for (i = 0; i < drvdata->nr_resource * 2; i++)
> > > +state->trcrsctlr[i] = readl(drvdata->base + TRCRSCTLRn(i));
> > > +
> > > +for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> > > +state->trcssccr[i] = readl(drvdata->base + TRCSSCCRn(i));
> > > +state->trcsscsr[i] = readl(drvdata->base + TRCSSCSRn(i));
> > > +state->trcsspcicr[i] = readl(drvdata->base + TRCSSPCICRn(i));
> > > +}
> > > +
> > > +for (i = 0; i < drvdata->nr_addr_cmp * 2; i++) {
> > > +state->trcacvr[i] = readl(drvdata->base + TRCACVRn(i));
> > > +state->trcacatr[i] = readl(drvdata->base + TRCACATRn(i));
> > > +}
> > > +
> > > +/*
> > > + * Data trace stream is architecturally prohibited for A profile cores
> > > + * so we don't save (or later restore) trcdvcvr and trcdvcmr - As per
> > > + * section 1.3.4 ("Possible functional configurations of an ETMv4 trace
> > > + * unit") of ARM IHI 0064D.
> > > + */
> > > +
> > > +for (i = 0; i < drvdata->numcidc; i++)
> > > +state->trccidcvr[i] = readl(drvdata->base + TRCCIDCVRn(i));
> > > +
> > > +for (i = 0; i < drvdata->numvmidc; i++)
> > > +state->trcvmidcvr[i] = readl(drvdata->base +
> TRCVMIDCVRn(i));
> > > +
> > > +state->trccidcctlr0 = readl(drvdata->base + TRCCIDCCTLR0);
> > > +state->trccidcctlr1 = readl(drvdata->base + TRCCIDCCTLR1);
> > > +
> > > +state->trcvmidcctlr0 = readl(drvdata->base + TRCVMIDCCTLR0);
> > > +state->trcvmidcctlr0 = readl(drvdata->base + TRCVMIDCCTLR1);
> > > +
> > > +state->trcclaimset = readl(drvdata->base + TRCCLAIMCLR);
> > > +
> > > +state->trcpdcr = readl(drvdata->base + TRCPDCR);
> > > +
> > > +/* wait for TRCSTATR.IDLE to go up */
> > > +if (coresight_timeout(drvdata->base, TRCSTATR, TRCSTATR_IDLE_BIT,
> 1)) {
> > > +dev_err(etm_dev,
> > > +"timeout while waiting for Idle Trace Status\n");
> > > +etm4_os_unlock(drvdata);
> > > +ret = -EBUSY;
> > > +goto out;
> > > +}
> > > +
> > > +drvdata->state_needs_restore = true;
> > > +
> > > +/*
> > > + * Power can be removed from the trace unit now. We do this to
> > > + * potentially save power on systems that respect the TRCPDCR_PU
> > > + * despite requesting software to save/restore state.
> > > + */
> > > +writel_relaxed((state->trcpdcr & ~TRCPDCR_PU),
> > > +drvdata->base + TRCPDCR);
> > > +
> > > +out:
> > > +CS_LOCK(drvdata->base);
> > > +return ret;
> > > +}
> > > +
> > > +static void etm4_cpu_restore(struct etmv4_drvdata *drvdata) {
> > > +int i;
> > > +struct etmv4_save_state *state = drvdata->save_state;
> > > +
> > > +CS_UNLOCK(drvdata->base);
> > > +
> > > +writel_relaxed(state->trcclaimset, drvdata->base + TRCCLAIMSET);
> > > +
> > > +writel_relaxed(state->trcprgctlr, drvdata->base + TRCPRGCTLR);
> > > +writel_relaxed(state->trcprocselr, drvdata->base + TRCPROCSELR);
> > > +writel_relaxed(state->trcconfigr, drvdata->base + TRCCONFIGR);
> > > +writel_relaxed(state->trcauxctlr, drvdata->base + TRCAUXCTLR);
> > > +writel_relaxed(state->trceventctl0r, drvdata->base +
> TRCEVENTCTL0R);
> > > +writel_relaxed(state->trceventctl1r, drvdata->base +
> TRCEVENTCTL1R);
> > > +writel_relaxed(state->trcstallctlr, drvdata->base + TRCSTALLCTLR);
> > > +writel_relaxed(state->trctsctlr, drvdata->base + TRCTSCTLR);
> > > +writel_relaxed(state->trcsyncpr, drvdata->base + TRCSYNCPR);
> > > +writel_relaxed(state->trcccctlr, drvdata->base + TRCCCCTLR);
> > > +writel_relaxed(state->trcbbctlr, drvdata->base + TRCBBCTLR);
> > > +writel_relaxed(state->trctraceidr, drvdata->base + TRCTRACEIDR);
> > > +writel_relaxed(state->trcqctlr, drvdata->base + TRCQCTLR);
> > > +
> > > +writel_relaxed(state->trcvictlr, drvdata->base + TRCVICTLR);
> > > +writel_relaxed(state->trcviiectlr, drvdata->base + TRCVIIECTLR);
> > > +writel_relaxed(state->trcvissctlr, drvdata->base + TRCVISSCTLR);
> > > +writel_relaxed(state->trcvipcssctlr, drvdata->base + TRCVIPCSSCTLR);
> > > +writel_relaxed(state->trcvdctlr, drvdata->base + TRCVDCTLR);
> > > +writel_relaxed(state->trcvdsacctlr, drvdata->base + TRCVDSACCTLR);
> > > +writel_relaxed(state->trcvdarcctlr, drvdata->base + TRCVDARCCTLR);
> > > +
> > > +for (i = 0; i < drvdata->nrseqstate; i++)
> > > +writel_relaxed(state->trcseqevr[i],
> > > +drvdata->base + TRCSEQEVRn(i));
> > > +
> > > +writel_relaxed(state->trcseqrstevr, drvdata->base + TRCSEQRSTEVR);
> > > +writel_relaxed(state->trcseqstr, drvdata->base + TRCSEQSTR);
> > > +writel_relaxed(state->trcextinselr, drvdata->base + TRCEXTINSELR);
> > > +
> > > +for (i = 0; i < drvdata->nr_cntr; i++) {
> > > +writel_relaxed(state->trccntrldvr[i],
> > > +drvdata->base + TRCCNTRLDVRn(i));
> > > +writel_relaxed(state->trccntctlr[i],
> > > +drvdata->base + TRCCNTCTLRn(i));
> > > +writel_relaxed(state->trccntvr[i],
> > > +drvdata->base + TRCCNTVRn(i));
> > > +}
> > > +
> > > +for (i = 0; i < drvdata->nr_resource * 2; i++)
> > > +writel_relaxed(state->trcrsctlr[i],
> > > +drvdata->base + TRCRSCTLRn(i));
> > > +
> > > +for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> > > +writel_relaxed(state->trcssccr[i],
> > > +drvdata->base + TRCSSCCRn(i));
> > > +writel_relaxed(state->trcsscsr[i],
> > > +drvdata->base + TRCSSCSRn(i));
> > > +writel_relaxed(state->trcsspcicr[i],
> > > +drvdata->base + TRCSSPCICRn(i));
> > > +}
> > > +
> > > +for (i = 0; i < drvdata->nr_addr_cmp * 2; i++) {
> > > +writel_relaxed(state->trcacvr[i],
> > > +drvdata->base + TRCACVRn(i));
> > > +writel_relaxed(state->trcacatr[i],
> > > +drvdata->base + TRCACATRn(i));
> > > +}
> > > +
> > > +for (i = 0; i < drvdata->numcidc; i++)
> > > +writel_relaxed(state->trccidcvr[i],
> > > +drvdata->base + TRCCIDCVRn(i));
> > > +
> > > +for (i = 0; i < drvdata->numvmidc; i++)
> > > +writel_relaxed(state->trcvmidcvr[i],
> > > +drvdata->base + TRCVMIDCVRn(i));
> > > +
> > > +writel_relaxed(state->trccidcctlr0, drvdata->base + TRCCIDCCTLR0);
> > > +writel_relaxed(state->trccidcctlr1, drvdata->base + TRCCIDCCTLR1);
> > > +
> > > +writel_relaxed(state->trcvmidcctlr0, drvdata->base +
> TRCVMIDCCTLR0);
> > > +writel_relaxed(state->trcvmidcctlr0, drvdata->base +
> > > +TRCVMIDCCTLR1);
> > > +
> > > +writel_relaxed(state->trcclaimset, drvdata->base + TRCCLAIMSET);
> > > +
> > > +writel_relaxed(state->trcpdcr, drvdata->base + TRCPDCR);
> > > +
> > > +drvdata->state_needs_restore = false;
> > > +
> > > +/*
> > > + * As recommended by section 4.3.7 ("Synchronization when using
> the
> > > + * memory-mapped interface") of ARM IHI 0064D
> > > + */
> > > +dsb(sy);
> > > +isb();
> > > +
> > > +/* Unlock the OS lock to re-enable trace and external debug access
> */
> > > +etm4_os_unlock(drvdata);
> > > +CS_LOCK(drvdata->base);
> > > +}
> > > +
> > > +static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long
> cmd,
> > > +      void *v)
> > > +{
> > > +struct etmv4_drvdata *drvdata;
> > > +unsigned int cpu = smp_processor_id();
> > > +
> > > +if (!etmdrvdata[cpu])
> > > +return 0;
> > > +
> > > +drvdata = etmdrvdata[cpu];
> > > +
> > > +if (!drvdata->save_state)
> > > +return NOTIFY_OK;
> >
> > The problem here is that if no memory was allocated for ->save_state
> > at boot time and someone does:
> >         $ echo 1 >
> > /sys/module/coresight_etm4x/parameters/pm_save_enable
> >
> > then they will be mislead in thinking that save/restore operations are
> > taking place.  To avoid the problem I suggest to use module_param_cb()
> > where memory can be allocated and freed as the functionality is requested
> by users.
>
> Actually notice the permissions of pm_save_enable:
>
> > > +module_param(pm_save_enable, int, 0444);
>
> I changed this to be readonly after boot. I initially started down the track of
> module_param_cb, but allocating memory ahead of when it is needed was
> slightly complex as the module_param_cb callback doesn't have drvdata and
> so you'd have to figure out which of the etmdrvdata's to allocate for
> (perhaps all those that are not NULL). You'd also have to allocate on probe as
> well.
>
> Besides the benefit of changing the param via sysfs for testing, I'm not sure
> that this is all that useful to anyone - especially as we currently don't support
> save/restore for external debug. Unless there are potential coresight users
> that don't have the ability to change the kernel command line or device tree?
>
> Thanks,
>
> Andrew Murray
>
> >
> > Thanks,
> > Mathieu
> >
> > > +
> > > +if (WARN_ON_ONCE(drvdata->cpu != smp_processor_id()))
> > > +return NOTIFY_BAD;
> > > +
> > > +switch (cmd) {
> > > +case CPU_PM_ENTER:
> > > +/* save the state if self-hosted coresight is in use */
> > > +if (local_read(&drvdata->mode))
> > > +if (etm4_cpu_save(drvdata))
> > > +return NOTIFY_BAD;
> > > +break;
> > > +case CPU_PM_EXIT:
> > > +case CPU_PM_ENTER_FAILED:
> > > +/* trcclaimset is set when there is state to restore */
> > > +if (drvdata->state_needs_restore)
> > > +etm4_cpu_restore(drvdata);
> > > +break;
> > > +default:
> > > +return NOTIFY_DONE;
> > > +}
> > > +
> > > +return NOTIFY_OK;
> > > +}
> > > +
> > > +static struct notifier_block etm4_cpu_pm_nb = {
> > > +.notifier_call = etm4_cpu_pm_notify, };
> > > +
> > > +static int etm4_cpu_pm_register(void) {
> > > +return cpu_pm_register_notifier(&etm4_cpu_pm_nb);
> > > +}
> > > +
> > > +static void etm4_cpu_pm_unregister(void) {
> > > +cpu_pm_unregister_notifier(&etm4_cpu_pm_nb);
> > > +}
> > > +#else
> > > +static int etm4_cpu_pm_register(void) { return 0; } static void
> > > +etm4_cpu_pm_unregister(void) { } #endif
> > > +
> > > +static inline bool etm4_needs_save_restore(struct device *dev) {
> > > +return fwnode_property_present(dev->fwnode,
> > > +       "arm,coresight-needs-save-restore");
> > > +}
> > > +
> > >  static int etm4_probe(struct amba_device *adev, const struct
> > > amba_id *id)  {
> > >  int ret;
> > > @@ -1101,6 +1408,15 @@ static int etm4_probe(struct amba_device
> > > *adev, const struct amba_id *id)
> > >
> > >  dev_set_drvdata(dev, drvdata);
> > >
> > > +if (pm_save_enable == PARAM_PM_SAVE_ALWAYS ||
> > > +    (pm_save_enable == PARAM_PM_SAVE_FIRMWARE &&
> > > +     etm4_needs_save_restore(dev))) {
> > > +drvdata->save_state = devm_kmalloc(dev,
> > > +sizeof(struct etmv4_save_state),
> GFP_KERNEL);
> > > +if (!drvdata->save_state)
> > > +return -ENOMEM;
> > > +}
> > > +
> > >  /* Validity for the resource is already checked by the AMBA core */
> > >  base = devm_ioremap_resource(dev, res);
> > >  if (IS_ERR(base))
> > > @@ -1135,6 +1451,10 @@ static int etm4_probe(struct amba_device
> *adev, const struct amba_id *id)
> > >  if (ret < 0)
> > >  goto err_arch_supported;
> > >  hp_online = ret;
> > > +
> > > +ret = etm4_cpu_pm_register();
> > > +if (ret)
> > > +goto err_arch_supported;
> > >  }
> > >
> > >  cpus_read_unlock();
> > > @@ -1185,6 +1505,8 @@ static int etm4_probe(struct amba_device
> > > *adev, const struct amba_id *id)
> > >
> > >  err_arch_supported:
> > >  if (--etm4_count == 0) {
> > > +etm4_cpu_pm_unregister();
> > > +
> > >
> cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_STARTI
> NG);
> > >  if (hp_online)
> > >  cpuhp_remove_state_nocalls(hp_online);
> > > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h
> > > b/drivers/hwtracing/coresight/coresight-etm4x.h
> > > index 4523f10ddd0f..546d790cb01b 100644
> > > --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> > > +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> > > @@ -175,6 +175,7 @@
> > >   ETM_MODE_EXCL_USER)
> > >
> > >  #define TRCSTATR_IDLE_BIT0
> > > +#define TRCSTATR_PMSTABLE_BIT1
> > >  #define ETM_DEFAULT_ADDR_COMP0
> > >
> > >  /* PowerDown Control Register bits */ @@ -281,6 +282,65 @@ struct
> > > etmv4_config {
> > >  u32ext_inp;
> > >  };
> > >
> > > +/**
> > > + * struct etm4_save_state - state to be preserved when ETM is
> > > +without power  */ struct etmv4_save_state {
> > > +u32trcprgctlr;
> > > +u32trcprocselr;
> > > +u32trcconfigr;
> > > +u32trcauxctlr;
> > > +u32trceventctl0r;
> > > +u32trceventctl1r;
> > > +u32trcstallctlr;
> > > +u32trctsctlr;
> > > +u32trcsyncpr;
> > > +u32trcccctlr;
> > > +u32trcbbctlr;
> > > +u32trctraceidr;
> > > +u32trcqctlr;
> > > +
> > > +u32trcvictlr;
> > > +u32trcviiectlr;
> > > +u32trcvissctlr;
> > > +u32trcvipcssctlr;
> > > +u32trcvdctlr;
> > > +u32trcvdsacctlr;
> > > +u32trcvdarcctlr;
> > > +
> > > +u32trcseqevr[ETM_MAX_SEQ_STATES];
> > > +u32trcseqrstevr;
> > > +u32trcseqstr;
> > > +u32trcextinselr;
> > > +u32trccntrldvr[ETMv4_MAX_CNTR];
> > > +u32trccntctlr[ETMv4_MAX_CNTR];
> > > +u32trccntvr[ETMv4_MAX_CNTR];
> > > +
> > > +u32trcrsctlr[ETM_MAX_RES_SEL * 2];
> > > +
> > > +u32trcssccr[ETM_MAX_SS_CMP];
> > > +u32trcsscsr[ETM_MAX_SS_CMP];
> > > +u32trcsspcicr[ETM_MAX_SS_CMP];
> > > +
> > > +u64trcacvr[ETM_MAX_SINGLE_ADDR_CMP];
> > > +u64trcacatr[ETM_MAX_SINGLE_ADDR_CMP];
> > > +u64trccidcvr[ETMv4_MAX_CTXID_CMP];
> > > +u32trcvmidcvr[ETM_MAX_VMID_CMP];
> > > +u32trccidcctlr0;
> > > +u32trccidcctlr1;
> > > +u32trcvmidcctlr0;
> > > +u32trcvmidcctlr1;
> > > +
> > > +u32trcclaimset;
> > > +
> > > +u32cntr_val[ETMv4_MAX_CNTR];
> > > +u32seq_state;
> > > +u32vinst_ctrl;
> > > +u32ss_status[ETM_MAX_SS_CMP];
> > > +
> > > +u32trcpdcr;
> > > +};
> > > +
> > >  /**
> > >   * struct etm4_drvdata - specifics associated to an ETM component
> > >   * @base:       Memory mapped base address for this component.
> > > @@ -336,6 +396,8 @@ struct etmv4_config {
> > >   * @atbtrig:If the implementation can support ATB triggers
> > >   * @lpoverride:If the implementation can support low-power state
> over.
> > >   * @config:structure holding configuration parameters.
> > > + * @save_state:State to be preserved across power loss
> > > + * @state_needs_restore: True when there is context to restore
> > > + after PM exit
> > >   */
> > >  struct etmv4_drvdata {
> > >  void __iomem*base;
> > > @@ -381,6 +443,8 @@ struct etmv4_drvdata {
> > >  boolatbtrig;
> > >  boollpoverride;
> > >  struct etmv4_configconfig;
> > > +struct etmv4_save_state*save_state;
> > > +boolstate_needs_restore;
> > >  };
> > >
> > >  /* Address comparator access types */
> > > --
> > > 2.21.0
> > >
> _______________________________________________
> CoreSight mailing list
> CoreSight@lists.linaro.org
> https://lists.linaro.org/mailman/listinfo/coresight
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
