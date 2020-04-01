Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C3019AAD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 13:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PfOiyrvkWauUcK/0i3qdtoMlAD4VE0FJ+SdMW0ujyAo=; b=rl9OcAtzzN8ViQ/LCb47rgAQL
	w2d6KTE3Zrgzu6z9QJ3/gqMn/oMesBkjC5LvLhHUAzOkc71tozckPnqoQ76h1/YhuEhsTZAJp4fFA
	PCeI3fdYtbtNRVVa7+/UNeqtUNfviWU7lKmS7/L4D9gaBagUuXR7p0iEgk+Lt7azsq8BLWcBLgIqH
	jahPjqJbU9pN52LPZYdnhUZpkyzDycf3p6Pnl0E/sgFayr3V/27OlLd0o7EEsyOLEciUxsdCmHiUe
	zQ6DQ70hguZ/OhEgssxfAC1ip9mRaU0s/iEqdh46MoUyyFqk+1jyH9zXxBzehPFp//pImHUEIiZlG
	tMmZ/c7Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJbd8-0002JP-LG; Wed, 01 Apr 2020 11:33:58 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJbd1-0002Ip-Ms
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 11:33:53 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id BB3D35B8AFF02906AFFA;
 Wed,  1 Apr 2020 12:33:40 +0100 (IST)
Received: from [127.0.0.1] (10.47.2.170) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 1 Apr 2020
 12:33:39 +0100
Subject: Re: [PATCH v3 0/2] irqchip/gic-v3-its: Balance LPI affinity across
 CPUs
From: John Garry <john.garry@huawei.com>
To: Marc Zyngier <maz@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <9171c554-50d2-142b-96ae-1357952fce52@huawei.com>
 <80b673a7-1097-c5fa-82c0-1056baa5309d@huawei.com>
Message-ID: <f2971d1c-50f8-bf5a-8b16-8d84a631b0ba@huawei.com>
Date: Wed, 1 Apr 2020 12:33:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <80b673a7-1097-c5fa-82c0-1056baa5309d@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.47.2.170]
X-ClientProxiedBy: lhreml743-chm.china.huawei.com (10.201.108.193) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_043351_893086_BDEC9875 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 Will Deacon <will@kernel.org>, "luojiaxing@huawei.com" <luojiaxing@huawei.com>,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

> But I would also like to report some other unexpected behaviour for 
> managed interrupts in this series - I'll reply directly to the specific 
> patch for that.
> 

So I made this change:

diff --git a/drivers/irqchip/irq-gic-v3-its.c 
b/drivers/irqchip/irq-gic-v3-its.c
index 9199fb53c75c..ebbfc8d44d35 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -1539,6 +1539,8 @@ static int its_set_affinity(struct irq_data *d, 
const struct cpumask *mask_val,
         if (irqd_is_forwarded_to_vcpu(d))
                 return -EINVAL;

+       its_dec_lpi_count(d, its_dev->event_map.col_map[id]);
+
         if (!force)
                 cpu = its_select_cpu(d, mask_val);
         else
@@ -1549,14 +1551,14 @@ static int its_set_affinity(struct irq_data *d, 
const struct cpumask *mask_val,

         /* don't set the affinity when the target cpu is same as 
current one */
         if (cpu != its_dev->event_map.col_map[id]) {
-               its_inc_lpi_count(d, cpu);
-               its_dec_lpi_count(d, its_dev->event_map.col_map[id]);
                 target_col = &its_dev->its->collections[cpu];
                 its_send_movi(its_dev, target_col, id);
                 its_dev->event_map.col_map[id] = cpu;
                 irq_data_update_effective_affinity(d, cpumask_of(cpu));
         }

+       its_inc_lpi_count(d, cpu);
+
         return IRQ_SET_MASK_OK_DONE;
  }

Results look ok:
	nvme.use_threaded_interrupts=1	=0*
Before	950K IOPs			1000K IOPs
After	1100K IOPs			1150K IOPs

* as mentioned before, this is quite unstable and causes lockups. JFYI, 
there was an attempt to fix this:

https://lore.kernel.org/linux-nvme/20191209175622.1964-1-kbusch@kernel.org/

Thanks,
John


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
