Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46CD6FF00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 13:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:
	MIME-Version:References:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdyFOY9OMvjTHXiYPQ0XsHNeSC79ZzmSQA4HJ8pCq9E=; b=rP62WD+CR4pNPW
	OliYL0cSqO1Z13PtV+uimWu1FJfDy3rdo2bBL8rZjh3hAKi9HWPweMlBh4jvCxN3be9Gg/Ku+2DeX
	VC5qkFKqg4K3N2q7Uieh6zau3BGgynWD1JiTej2MCMxN2nEoiuFa5f5JfcQn4cvCq5fHUSTH2dyUt
	ruBQ4+9ybY5AL0bsrNHEDvDDXfecpqS4pR6s4nCvsx4FtZOhVBdtrNCuVfTL/1VvEBETyeCynxrb7
	BY9jrXXEN7+F1lNZmr9yzQ8ZfIQs+RfoN8OdQMzx+Dgw0rG8TKGuxX0LOQ0f/7jRwFzCaiUUYPxNg
	TWTnWExI4wdQNVxRU1AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpWrs-0001sA-MO; Mon, 22 Jul 2019 11:52:36 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpWrT-0001qy-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 11:52:13 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6MBlf3B005707
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 07:52:07 -0400
Received: from e14.ny.us.ibm.com (e14.ny.us.ibm.com [129.33.205.204])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2tw9qu856a-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 07:51:57 -0400
Received: from localhost
 by e14.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <paulmck@linux.vnet.ibm.com>; 
 Mon, 22 Jul 2019 12:51:55 +0100
Received: from b01cxnp22034.gho.pok.ibm.com (9.57.198.24)
 by e14.ny.us.ibm.com (146.89.104.201) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 22 Jul 2019 12:51:49 +0100
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6MBpmq544761478
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jul 2019 11:51:48 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3D4A8B206A;
 Mon, 22 Jul 2019 11:51:48 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DFD7EB2066;
 Mon, 22 Jul 2019 11:51:47 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.85.189.166])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Mon, 22 Jul 2019 11:51:47 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id 2B8E916C2E45; Mon, 22 Jul 2019 04:51:49 -0700 (PDT)
Date: Mon, 22 Jul 2019 04:51:49 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
 <20190721210837.GC363@bombadil.infradead.org>
 <20190721233113.GV14271@linux.ibm.com>
 <20190722035042-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722035042-mutt-send-email-mst@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
x-cbid: 19072211-0052-0000-0000-000003E3F8C7
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011474; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01235799; UDB=6.00651288; IPR=6.01017148; 
 MB=3.00027836; MTD=3.00000008; XFM=3.00000015; UTC=2019-07-22 11:51:55
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19072211-0053-0000-0000-000061CB4F70
Message-Id: <20190722115149.GY14271@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-22_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=666 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907220141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_045212_083300_083A6E3B 
X-CRM114-Status: GOOD (  32.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: mhocko@suse.com, peterz@infradead.org, jasowang@redhat.com,
 ldv@altlinux.org, james.bottomley@hansenpartnership.com, linux-mm@kvack.org,
 namit@vmware.com, mingo@kernel.org, elena.reshetova@intel.com,
 aarcange@redhat.com, davem@davemloft.net, Matthew Wilcox <willy@infradead.org>,
 hch@infradead.org, linux-arm-kernel@lists.infradead.org, keescook@chromium.org,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 christian@brauner.io, wad@chromium.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 akpm@linux-foundation.org, guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 03:52:05AM -0400, Michael S. Tsirkin wrote:
> On Sun, Jul 21, 2019 at 04:31:13PM -0700, Paul E. McKenney wrote:
> > On Sun, Jul 21, 2019 at 02:08:37PM -0700, Matthew Wilcox wrote:
> > > On Sun, Jul 21, 2019 at 06:17:25AM -0700, Paul E. McKenney wrote:
> > > > Also, the overhead is important.  For example, as far as I know,
> > > > current RCU gracefully handles close(open(...)) in a tight userspace
> > > > loop.  But there might be trouble due to tight userspace loops around
> > > > lighter-weight operations.
> > > 
> > > I thought you believed that RCU was antifragile, in that it would scale
> > > better as it was used more heavily?
> > 
> > You are referring to this?  https://paulmck.livejournal.com/47933.html
> > 
> > If so, the last few paragraphs might be worth re-reading.   ;-)
> > 
> > And in this case, the heuristics RCU uses to decide when to schedule
> > invocation of the callbacks needs some help.  One component of that help
> > is a time-based limit to the number of consecutive callback invocations
> > (see my crude prototype and Eric Dumazet's more polished patch).  Another
> > component is an overload warning.
> > 
> > Why would an overload warning be needed if RCU's callback-invocation
> > scheduling heurisitics were upgraded?  Because someone could boot a
> > 100-CPU system with the rcu_nocbs=0-99, bind all of the resulting
> > rcuo kthreads to (say) CPU 0, and then run a callback-heavy workload
> > on all of the CPUs.  Given the constraints, CPU 0 cannot keep up.
> > 
> > So warnings are required as well.
> > 
> > > Would it make sense to have call_rcu() check to see if there are many
> > > outstanding requests on this CPU and if so process them before returning?
> > > That would ensure that frequent callers usually ended up doing their
> > > own processing.
> > 
> > Unfortunately, no.  Here is a code fragment illustrating why:
> > 
> > 	void my_cb(struct rcu_head *rhp)
> > 	{
> > 		unsigned long flags;
> > 
> > 		spin_lock_irqsave(&my_lock, flags);
> > 		handle_cb(rhp);
> > 		spin_unlock_irqrestore(&my_lock, flags);
> > 	}
> > 
> > 	. . .
> > 
> > 	spin_lock_irqsave(&my_lock, flags);
> > 	p = look_something_up();
> > 	remove_that_something(p);
> > 	call_rcu(p, my_cb);
> > 	spin_unlock_irqrestore(&my_lock, flags);
> > 
> > Invoking the extra callbacks directly from call_rcu() would thus result
> > in self-deadlock.  Documentation/RCU/UP.txt contains a few more examples
> > along these lines.
> 
> We could add an option that simply fails if overloaded, right?
> Have caller recover...

For example, return EBUSY from your ioctl?  That should work.  You could
also sleep for a jiffy or two to let things catch up in this BUSY (or
similar) case.  Or try three times, waiting a jiffy between each try,
and return EBUSY if all three tries failed.

Or just keep it simple and return EBUSY on the first try.  ;-)

All of this assumes that this ioctl is the cause of the overload, which
during early boot seems to me to be a safe assumption.

							Thanx, Paul


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
