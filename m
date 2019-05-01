Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C20108E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 16:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90VAPiVEgQIFh7IjI+AcGqB8r03/L1dxi3DbirZo6fI=; b=Ip/gRE8SQZRtJM
	CgM2wiS9/UgYfpxyLnT+jJhEx896q+2DdlmT5ECIZ+1EZyQtiHDIC7lVNoVYrvgTy7vLJarNa6TF7
	f+LBlBgrClJvHsXFGC7EV1SWOGFKnFuXdy2aBrG0DK7Y5baYuT60h6YbMMrso4QAhEh4jx99BfJXK
	EbyAxe/Tdd3egm8mBZ30FLWTEaFeJAM6Yxu7+S937Hfb8F4LEHQtsda4ik3I/2rrSiFDNoylfOUcz
	tukO5Z7CPgCcXS9E0RTCPGvpwsNSbITEJRuRwLMvzOeU3Cb/UnR17tOu1L67z4lVPaYExN+BHTgXV
	7p317ZqRgyJCKRHIyIzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLq2B-0000qH-NT; Wed, 01 May 2019 14:16:31 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLq23-0000pi-7H
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 14:16:25 +0000
Received: by mail-pl1-x641.google.com with SMTP id ck18so3958827plb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 07:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VR2DNiRgwf0lQXr3QgxFJYwdVbnPKDbEGYCvG9UnK3A=;
 b=Vd/V3BW7WiI0qaTRHyiVL/1/uOckTGZ+H44TmiX8Wpb/KAuWvDaaOufpji0ZTEpujy
 /Xl/R/4MYxG3F/O9+29tfe880Myq57X7c3wanbwHX7EBoamwAtxrZhTv3Y6v5zsaOYF1
 sYi5XKWx9L7a6WVtEQQsCDcp4uWBZnImp3YpfkN6c56ZOXBzZtIEN7ShT1BT9zE6RtHK
 abCWH3nHfUEUNZtmFAkLnYotG/9v3blxJIVFxupnAxN6I94DEkvNHITXNpAC8oKN0Jx6
 3OHO7SP0eNzUiFJ+7ZoNT0eoWuW8M/ltodpecD86DTPD1dOAZolP2x6q3nXkbQsS484G
 5IrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VR2DNiRgwf0lQXr3QgxFJYwdVbnPKDbEGYCvG9UnK3A=;
 b=BCF9SNkVKLMTSWNP+lBDlStMzDnhLyxsONrF40qmMJqADPpYYkM9c4IdWzfNEc1CR3
 Gl+94BdaG+lBh6Zp+HUcu7ObZk+8Vb625FNHz6GEEcUKaRJqQWxot5UVxlvXoNokwhoG
 wSz4E0eQ5VtaQrI86QwchVMJWVK4d6/93Y/Aquu9AGpC5Ep5cYq/fWzF1eZRnb0W/nuP
 tNEJjUXGNR4jq/Wdf/vxQTwpH+UkFUBtu7nNsmtcd7ZDGuM2V2R9cMsrmRmxtlJMmXna
 G9nxasUQf5n1wi4KZUDc285A+gSc3WicIGKOuvBjK+XcdvMr8ysAr7fEkr3bRTE/7pI1
 ia8g==
X-Gm-Message-State: APjAAAX5PgBKt1H8lnQus+xTylJEo1Yl2TWGIOKPnLhd4h7subAcsjyx
 rmGxlsBWKkg36eUiosfrfGBf6J60HkQ0R01tEUc=
X-Google-Smtp-Source: APXvYqwb9eGkJZF2eh4tO1NmugW61dEt/pXt46a2TI7hRtJZQ5MfCxq/xn6YvQVukkttcU007pGNTNekJMPWRzjPs24=
X-Received: by 2002:a17:902:a585:: with SMTP id
 az5mr43076785plb.261.1556720182200; 
 Wed, 01 May 2019 07:16:22 -0700 (PDT)
MIME-Version: 1.0
References: <1556556252-22868-2-git-send-email-Frank.Li@nxp.com>
 <20190430185903.30661-1-andrew.smirnov@gmail.com>
 <CAHrpEqTCUY4_nT_N3PLehtAjpw6ipOkr8Cc53RPkzU=5un8Czg@mail.gmail.com>
 <CAHQ1cqGXFFPRaP7xPxUV3pGqE1_i0OaHQ9CN-DFkg8TSM8OWVQ@mail.gmail.com>
In-Reply-To: <CAHQ1cqGXFFPRaP7xPxUV3pGqE1_i0OaHQ9CN-DFkg8TSM8OWVQ@mail.gmail.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Wed, 1 May 2019 09:16:10 -0500
Message-ID: <CAHrpEqRSMZ_YGiWu=_cK8sU6sC1s4HH9DVuHbAVgeH28pXH=jg@mail.gmail.com>
Subject: Re: [PATCH V9 2/4] drivers/perf: imx_ddr: Add ddr performance counter
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_071623_295157_513A5D0C 
X-CRM114-Status: GOOD (  32.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lznuaa[at]gmail.com)
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Frank Li <frank.li@nxp.com>,
 Will Deacon <will.deacon@arm.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Mark Rutland <mark.rutland@arm.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 8:06 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> On Tue, Apr 30, 2019 at 1:08 PM Zhi Li <lznuaa@gmail.com> wrote:
> >
> > On Tue, Apr 30, 2019 at 1:59 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
> > >
> > > > Add ddr performance monitor support for iMX8QXP
> > >
> > > > There are 4 counters for ddr perfomance events.
> > > > counter 0 is dedicated for cycles.
> > > > you choose any up to 3 no cycles events.
> > >
> > > > for example:
> > >
> > > > perf stat -a -e ddr0/read-cycles/,ddr0/write-cycles/,ddr0/precharge/ ls
> > > > perf stat -a -e ddr0/cycles/,ddr0/read-access/,ddr0/write-access/ ls
> > >
> > > > Support below events.
> > >
> > > >   ddr0/activate/                                     [Kernel PMU event]
> > > >   ddr0/axid-read/                                    [Kernel PMU event]
> > > >   ddr0/axid-write/                                   [Kernel PMU event]
> > > >   ddr0/cycles/                                       [Kernel PMU event]
> > > >   ddr0/hp-read-credit-cnt/                           [Kernel PMU event]
> > > >   ddr0/hp-read/                                      [Kernel PMU event]
> > > >   ddr0/hp-req-nodcredit/                             [Kernel PMU event]
> > > >   ddr0/hp-xact-credit/                               [Kernel PMU event]
> > > >   ddr0/load-mode/                                    [Kernel PMU event]
> > > >   ddr0/lp-read-credit-cnt/                           [Kernel PMU event]
> > > >   ddr0/lp-req-nocredit/                              [Kernel PMU event]
> > > >   ddr0/lp-xact-credit/                               [Kernel PMU event]
> > > >   ddr0/mwr/                                          [Kernel PMU event]
> > > >   ddr0/precharge/                                    [Kernel PMU event]
> > > >   ddr0/raw-hazard/                                   [Kernel PMU event]
> > > >   ddr0/read-access/                                  [Kernel PMU event]
> > > >   ddr0/read-activate/                                [Kernel PMU event]
> > > >   ddr0/read-command/                                 [Kernel PMU event]
> > > >   ddr0/read-cycles/                                  [Kernel PMU event]
> > > >   ddr0/read-modify-write-command/                    [Kernel PMU event]
> > > >   ddr0/read-queue-depth/                             [Kernel PMU event]
> > > >   ddr0/read-write-transition/                        [Kernel PMU event]
> > > >   ddr0/read/                                         [Kernel PMU event]
> > > >   ddr0/refresh/                                      [Kernel PMU event]
> > > >   ddr0/selfresh/                                     [Kernel PMU event]
> > > >   ddr0/wr-xact-credit/                               [Kernel PMU event]
> > > >   ddr0/write-access/                                 [Kernel PMU event]
> > > >   ddr0/write-command/                                [Kernel PMU event]
> > > >   ddr0/write-credit-cnt/                             [Kernel PMU event]
> > > >   ddr0/write-cycles/                                 [Kernel PMU event]
> > > >   ddr0/write-queue-depth/                            [Kernel PMU event]
> > > >   ddr0/write/
> > >
> > > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > > ---
> > > > No change from V8 to V9
> > >
> > > > Change from v7 to v8
> > > >  * remove unused define
> > > >  * change total_events to active_events, change active_events to events
> > > >  * remove flags,
> > > >  * fix multi line comments code sytle
> > > >  * add pmu_enable\disable function
> > > >  * disable event at irq handle
> > > >  * remove counter check at ddr_perf_free_counter
> > > >  * remove pmu->irq check
> > > >  * add group check
> > >
> > > > Change from v6 to v7
> > > >  * added irq affinity handle, ref arm-ccn.c
> > > >  * added IRQF_NOBALANCING | IRQF_NO_THREAD
> > > >  * added ida_simple_remove at failure path
> > >
> > > > Change from v5 to v6
> > > >  * fix insmod\rmmod problem
> > > >  * remove randunt register read at irq handle
> > > >  * change u32 irq to int
> > > >  * devm_request_irq use default flags.
> > >
> > > > Change from v4 to v5
> > > >  * Remove AXI ID filter function
> > >
> > > > Change from v3 to v4
> > > >  * Change FSL_IMX8_DDR_PERF to FSL_IMX8_DDR_PMU
> > > >  * sort include
> > > >  * remove struct fsl_ddr_devtype_data
> > > >  * Added comment need disable control first
> > > >  * Added comment about must enable cycle counter
> > > >  * Added macro for EVENT_AXI_READ, remove hardcode 0x41 and 0x42
> > > >  * Added comment about cycle counter is fastest one
> > >
> > > > Change from v2 to v3
> > > >  * remove kfree
> > >
> > > > Change from V1 to V2
> > > >  * update Kconfig by use i.MX8 instead of i.MX8 QXP
> > > >  * remove gpl statememnt since SPDX tag
> > > >  * use dev_kzalloc
> > > >  * use dev_err
> > > >  * commit message show axi_read 0x41\axi_write 0x42
> > > >  * commit message show cycles must be enabled
> > > >  * Irq only issue at cycles overflow
> > > >  * use NUM_COUNTER
> > > >  * use devm_request_irq
> > > >  * add hotplug callback to handle context migration
> > >
> > > Hey Frank,
> > >
> > > I missed your effort to upstream this and ended up spening some time
> > > working on the same thing in parallel, so I have some comments below.
> > >
> > > > +PMU_EVENT_ATTR_STRING(cycles, ddr_perf_cycles, "event=0x00");
> > > > +PMU_EVENT_ATTR_STRING(selfresh, ddr_perf_selfresh, "event=0x01");
> > > > +PMU_EVENT_ATTR_STRING(read-access, ddr_perf_read_accesses, "event=0x04");
> > > > +PMU_EVENT_ATTR_STRING(write-access, ddr_perf_write_accesses, "event=0x05");
> > > > +PMU_EVENT_ATTR_STRING(read-queue-depth, ddr_perf_read_queue_depth,
> > > > +                     "event=0x08");
> > > > +PMU_EVENT_ATTR_STRING(write-queue-depth, ddr_perf_write_queue_depth,
> > > > +                     "event=0x09");
> > > > +PMU_EVENT_ATTR_STRING(lp-read-credit-cnt, ddr_perf_lp_read_credit_cnt,
> > > > +                     "event=0x10");
> > > > +PMU_EVENT_ATTR_STRING(hp-read-credit-cnt, ddr_perf_hp_read_credit_cnt,
> > > > +                     "event=0x11");
> > > > +PMU_EVENT_ATTR_STRING(write-credit-cnt, ddr_perf_write_credit_cnt,
> > > > +                     "event=0x12");
> > > > +PMU_EVENT_ATTR_STRING(read-command, ddr_perf_read_command, "event=0x20");
> > > > +PMU_EVENT_ATTR_STRING(write-command, ddr_perf_write_command, "event=0x21");
> > > > +PMU_EVENT_ATTR_STRING(read-modify-write-command,
> > > > +             ddr_perf_read_modify_write_command, "event=0x22");
> > > > +PMU_EVENT_ATTR_STRING(hp-read, ddr_perf_hp_read, "event=0x23");
> > > > +PMU_EVENT_ATTR_STRING(hp-req-nodcredit, ddr_perf_hp_req_nocredit, "event=0x24");
> > > > +PMU_EVENT_ATTR_STRING(hp-xact-credit, ddr_perf_hp_xact_credit, "event=0x25");
> > > > +PMU_EVENT_ATTR_STRING(lp-req-nocredit, ddr_perf_lp_req_nocredit, "event=0x26");
> > > > +PMU_EVENT_ATTR_STRING(lp-xact-credit, ddr_perf_lp_xact_credit, "event=0x27");
> > > > +PMU_EVENT_ATTR_STRING(wr-xact-credit, ddr_perf_wr_xact_credit, "event=0x29");
> > > > +PMU_EVENT_ATTR_STRING(read-cycles, ddr_perf_read_cycles, "event=0x2a");
> > > > +PMU_EVENT_ATTR_STRING(write-cycles, ddr_perf_write_cycles, "event=0x2b");
> > > > +PMU_EVENT_ATTR_STRING(read-write-transition, ddr_perf_read_write_transition,
> > > > +                     "event=0x30");
> > > > +PMU_EVENT_ATTR_STRING(precharge, ddr_perf_precharge, "event=0x31");
> > > > +PMU_EVENT_ATTR_STRING(activate, ddr_perf_activate, "event=0x32");
> > > > +PMU_EVENT_ATTR_STRING(load-mode, ddr_perf_load_mode, "event=0x33");
> > > > +PMU_EVENT_ATTR_STRING(mwr, ddr_perf_mwr, "event=0x34");
> > > > +PMU_EVENT_ATTR_STRING(read, ddr_perf_read, "event=0x35");
> > > > +PMU_EVENT_ATTR_STRING(read-activate, ddr_perf_read_activate, "event=0x36");
> > > > +PMU_EVENT_ATTR_STRING(refresh, ddr_perf_refresh, "event=0x37");
> > > > +PMU_EVENT_ATTR_STRING(write, ddr_perf_write, "event=0x38");
> > > > +PMU_EVENT_ATTR_STRING(raw-hazard, ddr_perf_raw_hazard, "event=0x39");
> > >
> > > You can really save quite a bit of boilerplate if you define those
> > > inplace with a custom macro and a custom show function:
> > >
> > > static ssize_t
> > > ddr_pmu_event_show(struct device *dev, struct device_attribute *attr,
> > >                    char *page)
> > > {
> > >         struct perf_pmu_events_attr *pmu_attr;
> > >
> > >         pmu_attr = container_of(attr, struct perf_pmu_events_attr, attr);
> > >         return sprintf(page, "event=0x%02llx\n", pmu_attr->id);
> > > }
> > >
> > > #define IMX8_DDR_PMU_EVENT_ATTR(_name, _id)                             \
> > >         (&((struct perf_pmu_events_attr[]) {                            \
> > >                 { .attr = __ATTR(_name, 0444, ddr_pmu_event_show, NULL), \
> > >                   .id = _id, }                                          \
> > >         })[0].attr.attr)
> > >
> > > static struct attribute *ddr_pmu_events_attrs[] = {
> > >         IMX8_DDR_PMU_EVENT_ATTR(cycles,              CYCLES_EVENT_ID),
> > >         IMX8_DDR_PMU_EVENT_ATTR(selfresh,                       0x01),
> > >         IMX8_DDR_PMU_EVENT_ATTR(read-access,                    0x04),
> > >         IMX8_DDR_PMU_EVENT_ATTR(write-access,                   0x05),
> > >         IMX8_DDR_PMU_EVENT_ATTR(read-queue-depth,               0x08),
> > >
> >
> > I don't think it make any difference.
> >
> > best regards
> > Frank Li
> >
> > > ...
> > >
> > > > +
> > > > +struct ddr_pmu {
> > > > +     struct pmu pmu;
> > > > +     void __iomem *base;
> > > > +     unsigned int cpu;
> > > > +     struct  hlist_node node;
> > > > +     struct  device *dev;
> > >
> > > This device pointer is used only once in ddr_perf_event_init() and
> > > even in that function not all error cases get a dedicated kernel
> > > message. I'd consider just dropping it and the message it is used in.
> > >
> > > > +     struct perf_event *events[NUM_COUNTERS];
> > > > +     int active_events;
> > >
> > > I'd very strongly encourage you to convert the driver to use a proper
> > > bitmask instead of this counter. E.g:
> > >
> > > DECLARE_BITMAP(active_mask, NUM_COUNTERS);
> >
> > I don't think it has big difference at these case.
> >
> > best regards
> > Frank Li
> >
> > >
> > > I'll comment more on that below.
> > >
> > > > +     enum cpuhp_state cpuhp_state;
> > > > +     int irq;
> > > > +     int id;
> > > > +};
> > >
> > > > +static struct attribute_group ddr_perf_events_attr_group = {
> > > > +     .name = "events",
> > > > +     .attrs = ddr_perf_events_attrs,
> > > > +};
> > > > +
> > > > +PMU_FORMAT_ATTR(event, "config:0-63");
> > > > +
> > >
> > > Event ID is really only 8-bits wide, AFAIK. Is there any reason to
> > > reserve all 64 for it in config?
> > >
> > > > +static struct attribute *ddr_perf_format_attrs[] = {
> > > > +     &format_attr_event.attr,
> > > > +     NULL,
> > > > +};
> > > > +
> > > > +static struct attribute_group ddr_perf_format_attr_group = {
> > > > +     .name = "format",
> > > > +     .attrs = ddr_perf_format_attrs,
> > > > +};
> > > > +
> > > > +static const struct attribute_group *attr_groups[] = {
> > > > +     &ddr_perf_events_attr_group,
> > > > +     &ddr_perf_format_attr_group,
> > > > +     &ddr_perf_cpumask_attr_group,
> > > > +     NULL,
> > > > +};
> > > > +
> > > > +static u32 ddr_perf_alloc_counter(struct ddr_pmu *pmu, int event)
> > > > +{
> > > > +     int i;
> > > > +
> > > > +     /*
> > > > +      * Always map cycle event to counter 0
> > > > +      * Cycles counter is dedicated for cycle event
> > > > +      * can't used for the other events
> > > > +      */
> > > > +     if (event == EVENT_CYCLES_ID) {
> > > > +             if (pmu->events[EVENT_CYCLES_COUNTER] == NULL)
> > > > +                     return EVENT_CYCLES_COUNTER;
> > > > +             else
> > > > +                     return -ENOENT;
> > > > +     }
> > > > +
> > > > +     for (i = 1; i < NUM_COUNTERS; i++) {
> > > > +             if (pmu->events[i] == NULL)
> > > > +                     return i;
> > > > +     }
> > >
> > > This is the first place where using a bitmap would simplify the
> > > driver. Here all you'd need to do is:
> > >
> > >
> > > if (event == CYCLES_EVENT_ID) {
> > >    ...
> > > } else {
> > >   i =  find_next_zero_bit(pmu->active_mask, NUM_COUNTERS,
> > >                           EVENT_CYCLES_COUNTER + 1);
> > >   if (i == NUM_COUNTERS)
> > >         return -EAGAIN;
> > >
> > > }
> > >
> > > set_bit(i, pmu->active_mask);
> > >
> > > ...
> > >
> > > > +
> > > > +     return -ENOENT;
> > > > +}
> > > > +
> > > > +static u32 ddr_perf_free_counter(struct ddr_pmu *pmu, int counter)
> > > > +{
> > > > +     pmu->events[counter] = NULL;
> > > > +
> > > > +     return 0;
> > > > +}
> > >
> > > Is this function even necessary? It is used only once in the code and
> > > it's return value is ignored
> >
> > It help improve code read. Generally allocate and free always a pair.
> > I change change to void.
> >
> > best regards
> > Frank Li
> >
> > >
> > > > +
> > > > +static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
> > > > +{
> > > > +     return readl(pmu->base + COUNTER_READ + counter * 4);
> > > > +}
> > >
> > > Would using readl_relaxed() be beneficial here?
> >
> > Maybe. But only few register read when run perf.
> >
> > best regards
> > Frank Li
> >
> > >
> > > > +
> > > > +static int ddr_perf_event_init(struct perf_event *event)
> > > > +{
> > > > +     struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> > > > +     struct hw_perf_event *hwc = &event->hw;
> > > > +     struct perf_event *sibling;
> > > > +
> > > > +     if (event->attr.type != event->pmu->type)
> > > > +             return -ENOENT;
> > > > +
> > > > +     if (is_sampling_event(event) || event->attach_state & PERF_ATTACH_TASK)
> > > > +             return -EOPNOTSUPP;
> > > > +
> > > > +     if (event->cpu < 0) {
> > > > +             dev_warn(pmu->dev, "Can't provide per-task data!\n");
> > > > +             return -EOPNOTSUPP;
> > > > +     }
> > > > +
> > > > +     if (event->attr.exclude_user        ||
> > > > +         event->attr.exclude_kernel      ||
> > > > +         event->attr.exclude_hv          ||
> > > > +         event->attr.exclude_idle        ||
> > > > +         event->attr.exclude_host        ||
> > > > +         event->attr.exclude_guest       ||
> > >
> > > You don't need any of the above if you pass:
> > >
> > > .capabilities = PERF_PMU_CAP_NO_EXCLUDE
> > >
> > > in your struct pmu initialization
> > >
> > > > +         event->attr.sample_period)
> > > > +             return -EINVAL;
> > > > +
> > > > +     /*
> > > > +      * We must NOT create groups containing mixed PMUs, although software
> > > > +      * events are acceptable (for example to create a CCN group
> > > > +      * periodically read when a hrtimer aka cpu-clock leader triggers).
> > > > +      */
> > > > +     if (event->group_leader->pmu != event->pmu &&
> > > > +                     !is_software_event(event->group_leader))
> > > > +             return -EINVAL;
> > > > +
> > > > +     for_each_sibling_event(sibling, event->group_leader) {
> > > > +             if (sibling->pmu != event->pmu &&
> > > > +                             !is_software_event(sibling))
> > > > +                     return -EINVAL;
> > > > +     }
> > > > +
> > > > +     event->cpu = pmu->cpu;
> > > > +     hwc->idx = -1;
> > > > +
> > > > +     return 0;
> > > > +}
> > >
> > > > +
> > > > +static void ddr_perf_event_enable(struct ddr_pmu *pmu, int config,
> > > > +                               int counter, bool enable)
> > > > +{
> > >
> > > This function doesn't really have anything to do with events (unlike,
> > > for example, ddr_perf_event_start() below). Maybe it would be better
> > > to rename it to ddr_perf_counter_enable()?
> > >
> > > > +     u8 reg = counter * 4 + COUNTER_CNTL;
> > > > +     int val;
> > > > +
> > > > +     if (enable) {
> > > > +             /*
> > > > +              * must disable first, then enable again
> > > > +              * otherwise, cycle counter will not work
> > > > +              * if previous state is enabled.
> > > > +              */
> > > > +             writel(0, pmu->base + reg);
> > > > +             val = CNTL_EN | CNTL_CLEAR;
> > > > +             val |= (config << CNTL_CSV_SHIFT) & CNTL_CSV_MASK;
> > >
> > > You can simplify the above with FIELD_PREP(CNTL_CSV_MASK, config)
> > >
> > > > +     } else {
> > > > +             /* Disable counter */
> > > > +             val = readl(pmu->base + reg) & CNTL_EN_MASK;
> > >
> > > This register will be blown away by the code in the other if branch
> > > next time the counter is enabled. What's the point of doing
> > > read-modify-write and trying to preserve all but EN bits as they were here?
> > >
> > > Why not just do:
> > >
> > > writel(CNTL_CLEAR, pmu->base + reg);
> > >
> > > ?
> > >
> > > > +     }
> > > > +
> > > > +     writel(val, pmu->base + reg);
> > > > +}
> > > > +
> > > > +static void ddr_perf_event_start(struct perf_event *event, int flags)
> > > > +{
> > > > +     struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> > > > +     struct hw_perf_event *hwc = &event->hw;
> > > > +     int counter = hwc->idx;
> > > > +
> > > > +     local64_set(&hwc->prev_count, 0);
> > > > +
> > > > +     ddr_perf_event_enable(pmu, event->attr.config, counter, true);
> > > > +}
> > > > +
> > > > +static int ddr_perf_event_add(struct perf_event *event, int flags)
> > > > +{
> > > > +     struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> > > > +     struct hw_perf_event *hwc = &event->hw;
> > > > +     int counter;
> > > > +     int cfg = event->attr.config;
> > > > +
> > > > +     counter = ddr_perf_alloc_counter(pmu, cfg);
> > > > +     if (counter < 0) {
> > > > +             dev_dbg(pmu->dev, "There are not enough counters\n");
> > > > +             return -EOPNOTSUPP;
> > > > +     }
> > > > +
> > > > +     pmu->events[counter] = event;
> > > > +     pmu->active_events++;
> > > > +     hwc->idx = counter;
> > >
> > > What about hw->state?
> > >
> > > > +
> > > > +     if (flags & PERF_EF_START)
> > > > +             ddr_perf_event_start(event, flags);
> > > > +
> > > > +     local64_set(&hwc->prev_count, ddr_perf_read_counter(pmu, counter));
> > >
> > > What's this local64_set() for? You already clear prev_counter and HW
> > > counter when event is started. This just seems redundant.
> > >
> > > > +
> > > > +     return 0;
> > > > +}
> > > > +
> > > > +static void ddr_perf_event_stop(struct perf_event *event, int flags)
> > > > +{
> > > > +     struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> > > > +     struct hw_perf_event *hwc = &event->hw;
> > > > +     int counter = hwc->idx;
> > > > +
> > > > +     ddr_perf_event_enable(pmu, event->attr.config, counter, false);
> > > > +     ddr_perf_event_update(event);
> > >
> > > hw->state isn't updated here either? I'm no expert on perf subsystem,
> > > so maybe it's OK, but most of the other drivers in this category do
> > >
> > > hw->state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
> > >
> > > > +}
> > > > +
> > > > +static void ddr_perf_event_del(struct perf_event *event, int flags)
> > > > +{
> > > > +     struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> > > > +     struct hw_perf_event *hwc = &event->hw;
> > > > +     int counter = hwc->idx;
> > > > +
> > > > +     ddr_perf_event_stop(event, PERF_EF_UPDATE);
> > > > +
> > > > +     ddr_perf_free_counter(pmu, counter);
> > > > +     pmu->active_events--;
> > > > +     hwc->idx = -1;
> > > > +}
> > > > +
> > > > +static void ddr_perf_pmu_enable(struct pmu *pmu)
> > > > +{
> > > > +     struct ddr_pmu *ddr_pmu = to_ddr_pmu(pmu);
> > > > +
> > > > +     /* enable cycle counter if cycle is not active event list */
> > > > +     if (ddr_pmu->events[EVENT_CYCLES_COUNTER] == NULL)
> > > > +             ddr_perf_event_enable(ddr_pmu,
> > > > +                                   EVENT_CYCLES_ID,
> > > > +                                   EVENT_CYCLES_COUNTER,
> > > > +                                   true);
> > > > +}
> > > > +
> > > > +static void ddr_perf_pmu_disable(struct pmu *pmu)
> > > > +{
> > > > +     struct ddr_pmu *ddr_pmu = to_ddr_pmu(pmu);
> > > > +
> > > > +     if (ddr_pmu->events[EVENT_CYCLES_COUNTER] == NULL)
> > > > +             ddr_perf_event_enable(ddr_pmu,
> > > > +                                   EVENT_CYCLES_ID,
> > > > +                                   EVENT_CYCLES_COUNTER,
> > > > +                                   false);
> > > > +}
> > >
> > > It seems that both of those functions will enable/disable cycles
> > > counter multiple times if "perf" is called with a list specifying
> > > multiple events but not cycles counter. Not sure if this is
> > > intentional, in case it is not, using a bitmask would allow you to
> > > avoid this by using bitmap_weight(), e.g:
> > >
> > > if (bitmap_weight(pmu->active_mask, NUM_COUNTERS) == 1 &&
> > >     ...
> > >
> > > > +
> > > > +static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
> > > > +{
> > > > +     int i;
> > > > +     struct ddr_pmu *pmu = (struct ddr_pmu *) p;
> > > > +     struct perf_event *event, *cycle_event = NULL;
> > > > +
> > > > +     /* all counter will stop if cycle counter disabled */
> > > > +     ddr_perf_event_enable(pmu,
> > > > +                           EVENT_CYCLES_ID,
> > > > +                           EVENT_CYCLES_COUNTER,
> > > > +                           false);
> > >
> > > The comment below says that IRQ is only raised when cycles counter
> > > overflow and when that happens all of the counters are stopped. What's
> > > the goal of the code disabling cycles counter above then?
> >
> > Mark suggest disable PMU at irq beginning.  The below is V7 review comments.
> >
> > "That's true (and I had forgotten this), but there's still a potential
> > problem depending on IRQ latency.
> >
> > For example, an overflow might occur just before we do some other
> > programming of the PMU (while the CPU has IRQs disabled) where we
> > restart the cycle counter (and the IRQ is de-asserted).
> >
> > Depending on when the interrupt controller samples the state of that
> > IRQ, and when the CPU takes a resulting interrupt, we may be able to end
> > up in the IRQ handler with the cycle counter enabled. Explicitly
> > disabling the cycle counter avoids that possibility.
> >
> > Regardless, we'll want to move the enable of the cycle counter last to
> > ensure that groups aren't skewed.
> > "
>
> Ah, I'd add this as a comment then.
>
> > >
> > > > +     /*
> > > > +      * When the cycle counter overflows, all counters are stopped,
> > > > +      * and an IRQ is raised. If any other counter overflows, it
> > > > +      * continues counting, and no IRQ is raised.
> > > > +      *
> > > > +      * Cycles occur at least 4 times as often as other events, so we
> > > > +      * can update all events on a cycle counter overflow and not
> > > > +      * lose events.
> > > > +      *
> > > > +      */
> > > > +     for (i = 0; i < NUM_COUNTERS; i++) {
> > > > +
> > > > +             if (!pmu->events[i])
> > > > +                     continue;
> > > > +
> > > > +             event = pmu->events[i];
> > > > +
> > > > +             ddr_perf_event_update(event);
> > >
> > > If you already reading this counter out, why not clear its value to 0
> > > to avoid having it overflow while at it?
> >
> > Clear counter need additional lock to make sure previous value is the
> > same as hardware one.
> > At this time, only cycle counter over flow, the other counter is not over flow.
> >
> > Overflow bit only work on cycle counter,  the other counter is free running.
> >
>
> I am not sure I follow. Sure the counter is free-running, but that
> doesn't change the fact that it will eventually overflow. What happens
> when during Nth interrupt the value of the given counter is
> 0xFFFF_FFFF and during N + 1 st interrupt it becomes 0? Perhaps I am
> just missing something.

it is not problem.
If previous value =0xFFFF_FFFF,  the current counter overflow into 0.
The difference is 0 - 0xFFFF_FFFF in 32bit unsigned int,
which is 1.  1 will be added into internal 64bit variable.

if cur - prev < 0x7FFF_FFFF,  the diff = cur-prev is always correct.

cycle increase speed > 4 times the other events.  so all other events
(cur->prev) always below 0x7FFF_FFFF.

the above method is popular.

>
> >
> > >
> > > > +
> > > > +             if (event->hw.idx == EVENT_CYCLES_COUNTER)
> > > > +                     cycle_event = event;
> > > > +     }
> > > > +
> > > > +     ddr_perf_event_enable(pmu,
> > > > +                           EVENT_CYCLES_ID,
> > > > +                           EVENT_CYCLES_COUNTER,
> > > > +                           true);
> > > > +     if (cycle_event)
> > > > +             ddr_perf_event_update(cycle_event);
> > >
> > > Using a bitmaks would allow you to simplify the above to:
> > >
> > > i = EVENT_CYCLES_COUNTER + 1;
> > > for_each_set_bit_from(i, pmu->active_mask, NUM_COUNTERS)
> > >    ddr_perf_event_update(pmu->active_events[i]);
> > >
> > > ddr_perf_event_enable(pmu,
> > >                       EVENT_CYCLES_ID,
> > >                       EVENT_CYCLES_COUNTER,
> > >                       true);
> > >
> > > if (test_bit(EVENT_CYCLES_COUNTER, pmu->active_mask))
> > >     ddr_perf_event_update(pmu->active_events[EVENT_CYCLES_COUNTER]);
> > >
> > > > +
> > > > +     return IRQ_HANDLED;
> > > > +}
> > >
> > > > +
> > > > +static int ddr_perf_probe(struct platform_device *pdev)
> > > > +{
> > > > +     struct ddr_pmu *pmu;
> > > > +     struct device_node *np;
> > > > +     void __iomem *base;
> > > > +     struct resource *iomem;
> > > > +     char *name;
> > > > +     char *hpname;
> > > > +     int num;
> > > > +     int ret;
> > > > +     int irq;
> > > > +
> > > > +     iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > > > +     base = devm_ioremap_resource(&pdev->dev, iomem);
> > > > +     if (IS_ERR(base))
> > > > +             return PTR_ERR(base);
> > > > +
> > > > +     np = pdev->dev.of_node;
> > > > +
> > > > +     pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> > > > +     if (!pmu)
> > > > +             return -ENOMEM;
> > > > +
> > > > +     num = ddr_perf_init(pmu, base, &pdev->dev);
> > >
> > > There's already a unique ID availible - IP block's physical address
> > > (iomem->start). Why not use that instead of setting up an IDA?
> >
> > We want to use 0 based sequence for ddr controller.
> > like ddr0/xxx, ddr1/xxxx
> >
> > If physical address, some user space test script have to update for
> > difference chips.
> >
>
> That's scheme isn't 100% deterministic and depends on order of
> initialization. But if you are dead set on using it, please replace

We don't care exactly DDR channel at all.
We just care total bandwidth like ddr0/read-cycles + ddr1/read-cycles.
and balance between ddr0 and ddr1.

if ddr0/read-cycles > ddr1/read-cycles,  it should be some interleave
setting wrong.

best regards
Frank Li

>
> iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> base = devm_ioremap_resource(&pdev->dev, iomem);
>
> with devm_platform_ioremap_resource()

Okay, will update at v11.


>
> then.
>
> Thanks,
> Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
