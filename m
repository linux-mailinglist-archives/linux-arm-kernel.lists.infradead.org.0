Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B26E5FBA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 18:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NK/vNSAgNi6TK9TLMTcmNn3msQ3zziRaEWajwrRFze0=; b=rvXai7OdHrrXTz
	HvKrafgnTqzhQAsMntxh7QpIUyXInVN9kah5pZDuOhf3FQCgCdicY/LY08LTv7l5hLGqRa6i+gMV+
	+XaQrA7/SDOFhQ2RruwLwTecS465NJqFS5xslhZocTX3LN6fDDpwmcFecrteRWWPMQ6RZdc08FJpD
	b2y+FG6BTS21CjX0C11zq8d21ZEm85xvYXmGfjCNKcgFgvd7GtGID1nvwCRm4A3cnofXaEC3OIsJG
	4G5ntCSAgITqFhWtckgvCO9amREIHGCvqrIO6CO/AvczwtQMaHy8LAWUG/Wy52PXlSwvwe1IlQQno
	PaJ2k/fWd5t+5dL6Yirg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj4SN-0005sv-A8; Thu, 04 Jul 2019 16:19:35 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj4SB-0005rx-Cj
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 16:19:25 +0000
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hj4S8-0005Xs-96; Thu, 04 Jul 2019 18:19:20 +0200
Date: Thu, 4 Jul 2019 18:19:18 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Shijith Thotton <sthotton@marvell.com>
Subject: Re: [PATCH] genirq: update irq stats from NMI handlers
In-Reply-To: <a4ce3800-22f4-72dc-6ff8-75dfed1c377b@marvell.com>
Message-ID: <alpine.DEB.2.21.1907041818360.1802@nanos.tec.linutronix.de>
References: <1562214115-14022-1-git-send-email-sthotton@marvell.com>
 <6adfb296-50f1-9efb-0840-cc8732b8ebf9@arm.com>
 <a4ce3800-22f4-72dc-6ff8-75dfed1c377b@marvell.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_091923_577379_A6E29AF1 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 4 Jul 2019, Shijith Thotton wrote:
> On 7/4/19 12:13 AM, Julien Thierry wrote:
> > Looking at handle_percpu_irq(), I think this might be acceptable. But
> > does it make sense to only have kstats for percpu NMIs?
> > 
> 
> It would be better to have stats for both.
> 
> handle_fasteoi_nmi() can use __kstat_incr_irqs_this_cpu() if below 
> change can be added to kstat_irqs_cpu().
> 
> diff --git a/kernel/irq/irqdesc.c b/kernel/irq/irqdesc.c
> index a92b33593b8d..9484e88dabc2 100644
> --- a/kernel/irq/irqdesc.c
> +++ b/kernel/irq/irqdesc.c
> @@ -950,6 +950,11 @@ unsigned int kstat_irqs_cpu(unsigned int irq, int cpu)
>                          *per_cpu_ptr(desc->kstat_irqs, cpu) : 0;
>   }
> 
> +static bool irq_is_nmi(struct irq_desc *desc)
> +{
> +       return desc->istate & IRQS_NMI;
> +}
> +
>   /**
>    * kstat_irqs - Get the statistics for an interrupt
>    * @irq:       The interrupt number
> @@ -967,7 +972,8 @@ unsigned int kstat_irqs(unsigned int irq)
>          if (!desc || !desc->kstat_irqs)
>                  return 0;
>          if (!irq_settings_is_per_cpu_devid(desc) &&
> -           !irq_settings_is_per_cpu(desc))
> +           !irq_settings_is_per_cpu(desc) &&
> +           !irq_is_nmi(desc))
>              return desc->tot_count;
> 
>          for_each_possible_cpu(cpu)
> 
> 
> Thomas,
> Please suggest a better way if any.

Looks good.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
