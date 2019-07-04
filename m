Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D56525F626
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDYknkHq/dGwgCpzRIwZI2aLfiY9q36xtSzDhpmT6kY=; b=D6t9NqbL627qmy
	MlYWVyW+t5aJyjE0t3owNWoU9zAResditAdjox+chBzJIyOSVjUWMSbAte6QXCSmD4X6k3jaBewtT
	UkdVTpH8DcY4FjMZn61vkq/qqlIDIAxZODdBgwWnr40YGAZ9FbRVoo2c6qBYfEVgn2RyuBXNJj3WR
	eDGbMVDrgK/SL4+9sYzfyoxEetOLg+0tnOadj2cHUM0qVIKEpiOaAKi+YbGxz1dMftMH4JA66oouX
	d9XS2WcT3zC0PgBX9d02M4pwHo+QXufewYanbCb3v4GheGNePFAGVV7obrolu9dm425KDY21wCDfS
	x1AG0/vfp5khoOcCn3Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyX0-00085e-Fm; Thu, 04 Jul 2019 09:59:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyWn-00085B-NO
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:59:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 896F4344;
 Thu,  4 Jul 2019 02:59:43 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 09EDB3F703;
 Thu,  4 Jul 2019 02:59:42 -0700 (PDT)
Date: Thu, 4 Jul 2019 10:59:41 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190704095941.GC7227@e119886-lin.cambridge.arm.com>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-6-andrew.murray@arm.com>
 <13dde41d-5ef4-e9a0-7310-ed5ead5e8230@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13dde41d-5ef4-e9a0-7310-ed5ead5e8230@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_025945_856937_C0455E68 
X-CRM114-Status: GOOD (  28.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, Sudeep.Holla@arm.com,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 02:15:49PM +0100, Suzuki K Poulose wrote:
> 
> 
> On 27/06/2019 09:35, Andrew Murray wrote:
> > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > to hardware that power should not be removed from the trace unit.
> > Let's mitigate against this by conditionally saving and restoring
> > the trace unit state when the CPU enters low power states.
> > 
> > This patchset introduces a firmware property named
> > 'arm,coresight-needs-save-restore' - when this is present the
> > hardware state will be conditionally saved and restored.
> > 
> > A module parameter 'pm_save_enable' is also introduced which can
> > be configured to override the firmware property. This can be set
> > to never allow save/restore, to conditionally allow it, or to
> > do as the firmware indicates (default).
> > 
> > The hardware state is only ever saved and restored when the claim
> > tags indicate that coresight is in use.
> > 
> 
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > index 86945f054cf8..eff317cd3a03 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > @@ -18,6 +18,7 @@
> >   #include <linux/stat.h>
> >   #include <linux/clk.h>
> >   #include <linux/cpu.h>
> > +#include <linux/cpu_pm.h>
> >   #include <linux/coresight.h>
> >   #include <linux/coresight-pmu.h>
> >   #include <linux/pm_wakeup.h>
> > @@ -26,6 +27,7 @@
> >   #include <linux/uaccess.h>
> >   #include <linux/perf_event.h>
> >   #include <linux/pm_runtime.h>
> > +#include <linux/property.h>
> >   #include <asm/sections.h>
> >   #include <asm/local.h>
> >   #include <asm/virt.h>
> > @@ -37,6 +39,16 @@ static int boot_enable;
> >   module_param(boot_enable, int, 0444);
> >   MODULE_PARM_DESC(boot_enable, "Enable tracing on boot");
> > +
> > +#define PARAM_PM_SAVE_DISABLE	0
> > +#define PARAM_PM_SAVE_ENABLE	1
> > +#define PARAM_PM_SAVE_FIRMWARE	2
> > +
> > +static int pm_save_enable = PARAM_PM_SAVE_FIRMWARE;
> > +module_param(pm_save_enable, int, 0644);
> > +MODULE_PARM_DESC(pm_save_enable, "Save/restore state on power down: "
> > +				  "0 = disabled, 1 = enabled, 2 = firmware");
> 
> nit: Please could you add a comment to explain the implications of "firmware"
> and how this interacts with "disabled" as it is explained in your thread with
> Leo. That will be quite helpful for someone looking to use the parameter.

Sure.

> 
> > +
> > +static int etm4_cpu_pm_register(struct etmv4_drvdata *drvdata)
> > +{
> > +	drvdata->nb.notifier_call = etm4_cpu_pm_notify;
> > +	return cpu_pm_register_notifier(&drvdata->nb);
> > +}
> 
> Do we need to tie the notifer_block to etmv4_drvdata ? We could simply
> use a static one for the entire driver, given we don't rely on the
> "drvdata". Also, we register for only one ETM device at the moment, which
> is problematic if that CPU goes down and we decide to unregister the ETM
> device (in the future).

Yes there is no reason to tie this up with drvdata, it can be static to the
driver. I'll make this change and ensure there is no issue if any CPU goes
down.

> 
> > +
> > +static void etm4_cpu_pm_unregister(struct etmv4_drvdata *drvdata)
> > +{
> > +	if (drvdata->nb.notifier_call)
> > +		cpu_pm_unregister_notifier(&drvdata->nb);
> > +}
> > +#else
> > +static int etm4_cpu_pm_register(struct etmv4_drvdata *drvdata) { return 0; }
> > +static void etm4_cpu_pm_unregister(struct etmv4_drvdata *drvdata) { }
> > +#endif
> > +
> > +static inline bool etm4_needs_save_restore(struct device *dev)
> > +{
> > +	return fwnode_property_present(dev->fwnode,
> > +				       "arm,coresight-needs-save-restore");
> > +}
> > +
> >   static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
> >   {
> >   	int ret;
> > @@ -1095,6 +1386,8 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
> >   	dev_set_drvdata(dev, drvdata);
> > +	drvdata->pm_save_enable = etm4_needs_save_restore(dev);
> > +
> >   	/* Validity for the resource is already checked by the AMBA core */
> >   	base = devm_ioremap_resource(dev, res);
> >   	if (IS_ERR(base))
> > @@ -1126,6 +1419,10 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
> >   		if (ret < 0)
> >   			goto err_arch_supported;
> >   		hp_online = ret;
> > +
> > +		ret = etm4_cpu_pm_register(drvdata);
> > +		if (ret)
> > +			goto err_arch_supported;
> >   	}
> 
> >   /**
> >    * struct etm4_drvdata - specifics associated to an ETM component
> >    * @base:       Memory mapped base address for this component.
> > @@ -336,6 +396,8 @@ struct etmv4_config {
> >    * @atbtrig:	If the implementation can support ATB triggers
> >    * @lpoverride:	If the implementation can support low-power state over.
> >    * @config:	structure holding configuration parameters.
> > + * @save_state:	State to be preserved across power loss
> > + * @nb:		CPU PM notifier
> >    */
> >   struct etmv4_drvdata {
> >   	void __iomem			*base;
> > @@ -367,6 +429,7 @@ struct etmv4_drvdata {
> >   	u8				q_support;
> >   	bool				sticky_enable;
> >   	bool				boot_enable;
> > +	bool				pm_save_enable;
> >   	bool				os_unlock;
> >   	bool				instrp0;
> >   	bool				trcbb;
> > @@ -381,6 +444,9 @@ struct etmv4_drvdata {
> >   	bool				atbtrig;
> >   	bool				lpoverride;
> >   	struct etmv4_config		config;
> > +	struct etmv4_save_state		save_state;
> 
> We may potentially reduce the memory usage by dynamically allocating this
> structure the variable below. So you may make this a ptr instead.

Sure.

> 
> > +	bool				state_needs_restore;
> 
> Rest looks good to me.

Thanks,

Andrew Murray
> 
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
