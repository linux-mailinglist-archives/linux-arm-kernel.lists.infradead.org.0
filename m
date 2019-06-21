Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77A54E639
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOulm/pqYS7p+lT1nhMD+UHMNKZZ87m2qTWs4iL/ym0=; b=HN/cy8joCW6Mj9
	gF6kYi4FHo7qtEZB+iv1U+f9veyGNU3Vp6seXsiY4xDp6tPX5tJcNrXXXDg8KIDkBSa492+fRU9nQ
	3duhpPCcxKDJqhPY2nu8wDdmyoMUsI2qr6OV/0uYG7Hg6fBmEmhrVw5hYYS/4F9K44cRd0K60cMpO
	b0as+VS/rjDdywGCsezOha9zyMrVOpHc1aFR3gbM75BhEGP5VhmKlqzd6z+iUoQrTCWrGxBFLwNo0
	QDPosU3YZ5Ec2FukAaNonRin639/HCcOpSg20GtBvZNiwu145B09N6OqBVL5kl9GyNdfPvII2rVCN
	mjdOBq7yerKxExG900PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGuV-0004HS-IE; Fri, 21 Jun 2019 10:36:47 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heGs8-0001Pk-OE
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:34:23 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,400,1557212400"; d="scan'208";a="36805013"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jun 2019 03:34:18 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 21 Jun 2019 03:34:16 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 21 Jun 2019 03:34:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j/wCKmvE3kjwA4VVpokNq5UAxZ39CuXL011VCOg2gsw=;
 b=CYp8tv4KGH3JNAL+vLp52Gbz4aA1Li/0Vl1IJnPR9EOx9g7lcgKdb3MUJvsG4m7PJM4eGq/FGHDt4yVe1VMK39riAPxz9G5xfLfouq8/YwtL5Qjbzg7+JhoeBnK0uOfdU4eOta67VjmMB41n76zXGymmvPCpASxDhRuYunSDXvQ=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1454.namprd11.prod.outlook.com (10.172.54.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Fri, 21 Jun 2019 10:34:14 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::7d59:2a2f:90f1:2720]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::7d59:2a2f:90f1:2720%9]) with mapi id 15.20.2008.014; Fri, 21 Jun 2019
 10:34:14 +0000
From: <Claudiu.Beznea@microchip.com>
To: <daniel.lezcano@linaro.org>, <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 2/5] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
Thread-Topic: [PATCH 2/5] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
Thread-Index: AQHVKBzfzQ0agx5KQ0Kl3LZf2951sA==
Date: Fri, 21 Jun 2019 10:34:14 +0000
Message-ID: <34574b0f-7d09-eb92-ea62-4199c293b0e7@microchip.com>
References: <1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com>
 <1552580772-8499-3-git-send-email-claudiu.beznea@microchip.com>
 <a738fce5-1108-34d7-d255-dfcb86f51c56@linaro.org>
 <20190408121141.GK7480@piout.net>
 <88ab46de-c3b6-6dd2-3fa2-f2d0075e969f@microchip.com>
 <7267f37b-4f80-97e3-7a8e-bc1a9a28b995@linaro.org>
 <5e3d783e-7bcc-64c1-c814-eaf99a6aa205@microchip.com>
 <845acd59-665a-4d0a-3da8-2ba605600928@linaro.org>
In-Reply-To: <845acd59-665a-4d0a-3da8-2ba605600928@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0150.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9::18) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190621133409524
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7cfc4f77-860b-446a-3265-08d6f6340161
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1454; 
x-ms-traffictypediagnostic: MWHPR11MB1454:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <MWHPR11MB145406A08AAF502BA456A6DE87E70@MWHPR11MB1454.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(39860400002)(366004)(136003)(189003)(199004)(66066001)(53936002)(110136005)(68736007)(52116002)(486006)(26005)(6436002)(14444005)(81166006)(25786009)(71200400001)(3846002)(2616005)(71190400001)(72206003)(99286004)(4326008)(11346002)(66556008)(73956011)(81156014)(66446008)(66946007)(476003)(102836004)(5660300002)(76176011)(6246003)(8676002)(8936002)(66476007)(86362001)(6512007)(31696002)(6306002)(316002)(229853002)(186003)(305945005)(54906003)(2906002)(6116002)(386003)(6506007)(446003)(256004)(53546011)(6486002)(31686004)(64756008)(478600001)(14454004)(2501003)(966005)(7736002)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1454;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DcW1889NVEFdLV6Ge4PpjcoAkAoCOUevNMdqcFt1nFQm5dV8h/bxE69PHgexakk7oWTyEEKDzOBr1dwqZs2Fm/x6JefFFkYBJd3+p+nFiQVdZO2uSygZQiHfu92jlt9jZOJWO1y52V84JvGJg0qY+9JziLAV0dOgZ7obeOqR5OwxrEkJTQVd97CjcfqTIqMEDGyGQ5joPVMhV5HgRDEgroB7rGieiCpRCFDEUrbAOGSrWf1GTtYwuz7MrWKO5j6XBSrU+2Wr+oupuMFwhAkS0z5bpAZP6mhpJy5pVkCWQWDNga9h6k6a/c8lTo8aEV315hPov70RLmkkBZtJEZ96UH6UtBKoEhvFe09BsGnZiAvdE8/QjRP7nzOZ7/F7lvIzVyu7ntJ8X3PnK8P0FGBVQr/2je0/UfaNo6QqlSFBCbs=
Content-ID: <959C1AE612C11047995D122050E5B477@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cfc4f77-860b-446a-3265-08d6f6340161
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 10:34:14.3725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1454
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033420_977849_F888E047 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, tglx@linutronix.de, arnd.bergmann@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On 20.06.2019 11:53, Daniel Lezcano wrote:
> Hi Claudiu,
> 
> sorry for the late reply.

No problem, I understand.

> 
> 
> On 13/06/2019 16:12, Claudiu.Beznea@microchip.com wrote:
>> Hi Daniel,
>>
>> On 31.05.2019 13:41, Daniel Lezcano wrote:
>>>
>>> Hi Claudiu,
>>>
>>>
>>> On 30/05/2019 09:46, Claudiu.Beznea@microchip.com wrote:
>>>> Hi Daniel,
>>>>
>>>> Taking into account the discussion on this tread and the fact that we have
>>>> no answer from Rob on this topic (I'm talking about [1]), what do you think
>>>> it would be best for this driver to be accepted the soonest? Would it be OK
>>>> for you to mimic the approach done by:
>>>>
>>>> drivers/clocksource/timer-integrator-ap.c
>>>>
>>>> with the following bindings in DT:
>>>>
>>>> aliases {
>>>> 	arm,timer-primary = &timer2;
>>>> 	arm,timer-secondary = &timer1;
>>>> };
>>>>
>>>> also in PIT64B driver?
>>>>
>>>> Or do you think re-spinning the Alexandre's patches at [2] (which seems to
>>>> me like the generic way to do it) would be better?
>>>
>>> This hardware / OS connection problem is getting really annoying for
>>> everyone and this pattern is repeating itself since several years. It is
>>> time we fix it properly.
>>>
>>> The first solution looks hackish from my POV. The second approach looks
>>> nicer and generic as you say. So I would vote for [2]
>>> flagging approach proposed by Mark [3].
>>
>> With this flagging approach this would mean a kind unification of
>> clocksource and clockevent functionalities under a single one, right? So
>> that the driver would register to the above layers only one device w/ 2
>> functionalities (clocksource and clockevent)? Please correct me if I'm
>> wrong? If so, from my point of view this would require major re-working of
>> clocksource and clockevent subsystems. Correctly if I wrongly understood,
>> please.
> 
> Well, actually I was not expecting to change all the framework but just
> pass a flag to the probe function telling if the node is for a
> clocksource, a clockevent or both.
> 

Giving so, whit these proposals I'm thinking at having something like this,
using Alexandre's new macros from [2] and passing a bitmask to timer's
probing functions (in the above example adapted only for pit64b driver
introduced in this thread):

diff --git a/drivers/clocksource/timer-microchip-pit64b.c b/drivers/clocksource/timer-microchip-pit64b.c
index 62339d8187ce..b283d51ad4c7 100644
--- a/drivers/clocksource/timer-microchip-pit64b.c
+++ b/drivers/clocksource/timer-microchip-pit64b.c
@@ -377,7 +377,7 @@ static int __init mchp_pit64b_dt_init_clkevt(struct mchp_pit64b_common_data *cd,
        return ret;
 }
 
-static int __init mchp_pit64b_dt_init(struct device_node *node)
+static int __init mchp_pit64b_dt_init(struct device_node *node, u32 props)
 {
        struct mchp_pit64b_common_data *cd;
        u32 irq, freq = MCHP_PIT64B_DEF_FREQ;
@@ -426,7 +426,11 @@ static int __init mchp_pit64b_dt_init(struct device_node *node)
                        goto pclk_unprepare;
        }
 
-       if (!data.ced) {
+       if (props & TIMER_OF_PROPERTY_CLOCKSOURCE) {
+               if (data.ced)
+                       goto gclk_unprepare;
+
                irq = irq_of_parse_and_map(node, 0);
                if (!irq) {
                        pr_debug("%s: Failed to get PIT64B clockevent IRQ!\n",
@@ -437,7 +441,13 @@ static int __init mchp_pit64b_dt_init(struct device_node *node)
                ret = mchp_pit64b_dt_init_clkevt(cd, irq);
                if (ret)
                        goto irq_unmap;
-       } else {
+       }
+
+       if (props & TIMER_OF_PROPERTY_CLOCKEVENT) {
+               if (data.csd)
+                       goto gclk_unprepare;
+
                ret = mchp_pit64b_dt_init_clksrc(cd);
                if (ret)
                        goto gclk_unprepare;
diff --git a/drivers/clocksource/timer-of.h b/drivers/clocksource/timer-of.h
index a5478f3e8589..faf95c98b6d2 100644
--- a/drivers/clocksource/timer-of.h
+++ b/drivers/clocksource/timer-of.h
@@ -8,6 +8,10 @@
 #define TIMER_OF_CLOCK 0x2
 #define TIMER_OF_IRQ   0x4
 
+#define TIMER_OF_PROPERTY_CLOCKSOURCE  BIT(0)
+#define TIMER_OF_PROPERTY_CLOCKEVENT   BIT(1)
+
 struct of_timer_irq {
        int irq;
        int index;
diff --git a/drivers/clocksource/timer-probe.c b/drivers/clocksource/timer-probe.c
index 028075720334..69c45f7d198c 100644
--- a/drivers/clocksource/timer-probe.c
+++ b/drivers/clocksource/timer-probe.c
@@ -18,6 +18,8 @@
 #include <linux/init.h>
 #include <linux/of.h>
 #include <linux/clocksource.h>
+#include <linux/interrupt.h>
+#include "timer-of.h"
 
 extern struct of_device_id __timer_of_table[];
 
@@ -28,8 +30,9 @@ void __init timer_probe(void)
 {
        struct device_node *np;
        const struct of_device_id *match;
-       of_init_fn_1_ret init_func_ret;
+       of_init_fn_2_timer_ret init_func_ret;
        unsigned timers = 0;
+       u32 props = TIMER_OF_PROPERTY_CLOCKSOURCE | TIMER_OF_PROPERTY_CLOCKEVENT;
        int ret;
 
        for_each_matching_node_and_match(np, __timer_of_table, &match) {
@@ -38,7 +41,12 @@ void __init timer_probe(void)
 
                init_func_ret = match->data;
 
-               ret = init_func_ret(np);
+               if (timer_of_is_clocksource(np) &&
+		    !timer_of_is_clockevent(np))
+                       props = TIMER_OF_PROPERTY_CLOCKSOURCE;
+               if (timer_of_is_clockevent(np) &&
+		    !timer_of_is_clocksource(np))
+                       props = TIMER_OF_PROPERTY_CLOCKEVENT;
+
+               ret = init_func_ret(np, props);
                if (ret) {
                        pr_err("Failed to initialize '%pOF': %d\n", np, ret);
                        continue;
diff --git a/include/linux/clocksource.h b/include/linux/clocksource.h
index 308918928767..5c4de4833ed8 100644
--- a/include/linux/clocksource.h
+++ b/include/linux/clocksource.h
@@ -255,7 +255,7 @@ extern int clocksource_mmio_init(void __iomem *, const char *,
 extern int clocksource_i8253_init(void);
 
 #define TIMER_OF_DECLARE(name, compat, fn) \
-       OF_DECLARE_1_RET(timer, name, compat, fn)
+       OF_DECLARE_2_TIMER_RET(timer, name, compat, fn)
 
 #define CLOCKSOURCE_OF_DECLARE(name, compat, fn) \
        TIMER_OF_DECLARE(name, compat, fn)
diff --git a/include/linux/of.h b/include/linux/of.h
index 99b0ebf49632..50a3c27f7717 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1258,6 +1258,7 @@ static inline int of_get_available_child_count(const struct device_node *np)
 #endif
 
 typedef int (*of_init_fn_2)(struct device_node *, struct device_node *);
+typedef int (*of_init_fn_2_timer_ret)(struct device_node *, u32);
 typedef int (*of_init_fn_1_ret)(struct device_node *);
 typedef void (*of_init_fn_1)(struct device_node *);
 
@@ -1267,6 +1268,8 @@ typedef void (*of_init_fn_1)(struct device_node *);
                _OF_DECLARE(table, name, compat, fn, of_init_fn_1_ret)
 #define OF_DECLARE_2(table, name, compat, fn) \
                _OF_DECLARE(table, name, compat, fn, of_init_fn_2)
+#define OF_DECLARE_2_TIMER_RET(table, name, compat, fn) \
+               _OF_DECLARE(table, name, compat, fn, of_init_fn_2_timer_ret)
 
 /**
  * struct of_changeset_entry   - Holds a changeset entry


The only downside of this is that we're parsing these new DT bindings before
calling probe function, then we're checking the result of parsing again, in
probe function, and I'm thinking if it wouldn't be simpler to just parse these
binding in timer's probe function as all the other DT bindings are parsed
(moreover all timers probing functions should be changes to get this new argument).

More than this I see that there is one timer driver which is not probed via
timer_probe() (I'm pointing to drivers/clocksource/numachip.c).

Please let me know what do you think about it.

Thank you,
Claudiu Beznea

> 
> 
>> At the moment we register different functionalities (clocksource and
>> clockevent) to the above layers for hardware blocks (e.g. with
>> clocksource_register_hz() or clockevents_config_and_register()). If
>> hardware can support clocksource and clockevent we register both these
>> functionalities, if only one is supported we register only one of these.
>> The above layers would choose the best clocksource/clockevent device from
>> the available ones based on rating field for each clocksource/clockevent we
>> register. In all this current behavior I don't see how these flags would
>> interact with clocksource/clockevent subsystem. Could you please let me
>> know how do you see these and the way these new flags would interact with
>> the layers above the drivers?
>>>
>>> I added Arnd in Cc in order to have its opinion.
>>>
>>> [3]
>>> https://lore.kernel.org/lkml/20171215113242.skmh5nzr7wqdmvnw@lakrids.cambridge.arm.com/
>>>
>>>> [1]
>>>> https://lore.kernel.org/lkml/20190408151155.20279-1-alexandre.belloni@bootlin.com/#t
>>>> [2]
>>>> https://lore.kernel.org/lkml/20171213185313.20017-1-alexandre.belloni@free-electrons.com/
>>>>
>>>
>>>
>>>
>>>
>>>
>>>
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
