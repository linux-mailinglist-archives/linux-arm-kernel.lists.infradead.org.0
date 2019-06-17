Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D6C4837D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9wQ/V1DDN5s9+kmUgvRNVZ3zakDw/j9eGU9tud4mRE=; b=h++7HRUDBDkIY9
	U4oormo6NO8h+LjKjrJs7FmkGL+i2NNL5OvRmdiQ1F1dI+IZdsyEuuIVzQ3puu9HU0Udc2KteWKeI
	HPhWwuw13QIZGTfz+HLEgvqFoXEzN8vlEhj7YJ6tMP8gJ6ROS4/uVNZfvNQJqNiqCSj1626GxZzAk
	TPproarm8dTsYPOkcM73YN9RkRTWMTueH10mQO+FYSFxlIyKbdsxaTqn2I2LyrwB8vQJAGK98rc3/
	zEBsIIRMeZvH586vPC+dJgZ6G6WN3ai1hj5OU22rTYzuupReqqg/56Mob6jeCQ0gGs3DPglFPNSzM
	/cQxX9M1OSrFXkw5bQOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrM5-0006Hf-Ay; Mon, 17 Jun 2019 13:07:25 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrLr-0006En-04
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:07:12 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5HD09mS077636; Mon, 17 Jun 2019 09:06:56 -0400
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com
 [169.55.85.253])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2t69mpcmxg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 17 Jun 2019 09:06:56 -0400
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
 by ppma01wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x5HD2nlr017232;
 Mon, 17 Jun 2019 13:06:56 GMT
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com
 [9.57.198.24]) by ppma01wdc.us.ibm.com with ESMTP id 2t4ra6ddyn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 17 Jun 2019 13:06:56 +0000
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5HD6sxS18284920
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Jun 2019 13:06:54 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0E70BB2066;
 Mon, 17 Jun 2019 13:06:54 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E1D6EB205F;
 Mon, 17 Jun 2019 13:06:53 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.85.132.58])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Mon, 17 Jun 2019 13:06:53 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id 5A87016C17E5; Mon, 17 Jun 2019 06:06:57 -0700 (PDT)
Date: Mon, 17 Jun 2019 06:06:57 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH arm] Use common outgoing-CPU-notification code
Message-ID: <20190617130657.GL26519@linux.ibm.com>
References: <20190611192410.GA27930@linux.ibm.com>
 <20190617115809.GA3767@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617115809.GA3767@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-17_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906170119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_060711_173506_1D3B1E3A 
X-CRM114-Status: GOOD (  25.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Reply-To: paulmck@linux.ibm.com
Cc: linux@arm.linux.org.uk, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 12:58:19PM +0100, Mark Rutland wrote:
> On Tue, Jun 11, 2019 at 12:24:10PM -0700, Paul E. McKenney wrote:
> > This commit removes the open-coded CPU-offline notification with new
> > common code.  In particular, this change avoids calling scheduler code
> > using RCU from an offline CPU that RCU is ignoring.  This is a minimal
> > change.  A more intrusive change might invoke the cpu_check_up_prepare()
> > and cpu_set_state_online() functions at CPU-online time, which would
> > allow onlining throw an error if the CPU did not go offline properly.
> > 
> > Signed-off-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: Russell King <linux@arm.linux.org.uk>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Tested-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
> 
> FWIW:
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> 
> On the assumption that Russell is ok with this, I think this should be
> dropped into the ARM patch system [1].
> 
> Paul, are you familiar with that, or would you prefer that someone else
> submits the patch there? I can do so if you'd like.

I never have used this system, so please do drop it in there!  Let me
know when you have done so, and I will then drop it from -rcu.

							Thanx, Paul

> Thanks,
> Mark.
> 
> [1] https://www.armlinux.org.uk/developer/patches/info.php
> 
> > 
> > diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
> > index ebc53804d57b..8687d619260f 100644
> > --- a/arch/arm/kernel/smp.c
> > +++ b/arch/arm/kernel/smp.c
> > @@ -267,15 +267,13 @@ int __cpu_disable(void)
> >  	return 0;
> >  }
> >  
> > -static DECLARE_COMPLETION(cpu_died);
> > -
> >  /*
> >   * called on the thread which is asking for a CPU to be shutdown -
> >   * waits until shutdown has completed, or it is timed out.
> >   */
> >  void __cpu_die(unsigned int cpu)
> >  {
> > -	if (!wait_for_completion_timeout(&cpu_died, msecs_to_jiffies(5000))) {
> > +	if (!cpu_wait_death(cpu, 5)) {
> >  		pr_err("CPU%u: cpu didn't die\n", cpu);
> >  		return;
> >  	}
> > @@ -322,7 +320,7 @@ void arch_cpu_idle_dead(void)
> >  	 * this returns, power and/or clocks can be removed at any point
> >  	 * from this CPU and its cache by platform_cpu_kill().
> >  	 */
> > -	complete(&cpu_died);
> > +	(void)cpu_report_death();
> >  
> >  	/*
> >  	 * Ensure that the cache lines associated with that completion are
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
