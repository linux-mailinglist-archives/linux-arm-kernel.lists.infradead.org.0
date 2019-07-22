Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7D27090F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 20:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:
	MIME-Version:References:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyGQNyO+Yk9Q1CiCHgq7QD4VgWEeWZ6Jw6ZdJ37/9aM=; b=nW5Nhtiszp2eTV
	BqvaUZEsRt7rs/CVsj6L8NbSQcZAaOXFOOWT/2Iv13C5R3G7drsWmhxCzpE0ZgpFgP8WYBH3Ak8oJ
	s7tm7TFbapgjRjnX32W6To2rNJ2r9mrZod8Cdbs9oiOGX9/7XSRIIWswFbo/zrOGNMaEn/5DTzXeF
	zixyND2UWxy4DhBtGBuzAHQrKDnqRyqmxl4LkIFV+xaUazsnMYS34Y2RKv8gHsoXEmeCLK9KGgfBk
	qWOhppPYgDU8jKZEn66rjB9lPC8gxy+NduZ3u4SgWe7jFrvtoNv1jVXlLNIrqrLrrUJw6vln18Lsl
	kawPKrr1r7ln8XH/IPHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdWr-0005sx-58; Mon, 22 Jul 2019 18:59:21 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdWK-0005sH-Qb
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:58:50 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6MIkH8s074643
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 14:58:47 -0400
Received: from e12.ny.us.ibm.com (e12.ny.us.ibm.com [129.33.205.202])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2twft6r9x3-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 14:58:47 -0400
Received: from localhost
 by e12.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <paulmck@linux.vnet.ibm.com>; 
 Mon, 22 Jul 2019 19:58:46 +0100
Received: from b01cxnp22036.gho.pok.ibm.com (9.57.198.26)
 by e12.ny.us.ibm.com (146.89.104.199) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 22 Jul 2019 19:58:38 +0100
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6MIwbR034996668
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jul 2019 18:58:37 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EF4E1B206B;
 Mon, 22 Jul 2019 18:58:36 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A7660B206E;
 Mon, 22 Jul 2019 18:58:36 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.85.189.166])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Mon, 22 Jul 2019 18:58:36 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id 61AF716C2A41; Mon, 22 Jul 2019 11:58:38 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:58:38 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
References: <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
 <20190721210837.GC363@bombadil.infradead.org>
 <20190721233113.GV14271@linux.ibm.com>
 <20190722151439.GA247639@google.com>
 <20190722114612-mutt-send-email-mst@kernel.org>
 <20190722155534.GG14271@linux.ibm.com>
 <20190722120011-mutt-send-email-mst@kernel.org>
 <20190722162551.GK14271@linux.ibm.com>
 <20190722123016-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722123016-mutt-send-email-mst@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
x-cbid: 19072218-0060-0000-0000-0000036406C2
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011476; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01235939; UDB=6.00651373; IPR=6.01017290; 
 MB=3.00027841; MTD=3.00000008; XFM=3.00000015; UTC=2019-07-22 18:58:44
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19072218-0061-0000-0000-00004A404C02
Message-Id: <20190722185838.GN14271@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-22_14:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907220206
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_115848_872769_6BDBB6A3 
X-CRM114-Status: GOOD (  35.59  )
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
Cc: mhocko@suse.com, peterz@infradead.org, jasowang@redhat.com,
 ldv@altlinux.org, james.bottomley@hansenpartnership.com, linux-mm@kvack.org,
 namit@vmware.com, Joel Fernandes <joel@joelfernandes.org>, mingo@kernel.org,
 elena.reshetova@intel.com, aarcange@redhat.com, davem@davemloft.net,
 Matthew Wilcox <willy@infradead.org>, hch@infradead.org,
 linux-arm-kernel@lists.infradead.org, keescook@chromium.org,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 christian@brauner.io, wad@chromium.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 akpm@linux-foundation.org, guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 12:32:17PM -0400, Michael S. Tsirkin wrote:
> On Mon, Jul 22, 2019 at 09:25:51AM -0700, Paul E. McKenney wrote:
> > On Mon, Jul 22, 2019 at 12:13:40PM -0400, Michael S. Tsirkin wrote:
> > > On Mon, Jul 22, 2019 at 08:55:34AM -0700, Paul E. McKenney wrote:
> > > > On Mon, Jul 22, 2019 at 11:47:24AM -0400, Michael S. Tsirkin wrote:
> > > > > On Mon, Jul 22, 2019 at 11:14:39AM -0400, Joel Fernandes wrote:
> > > > > > [snip]
> > > > > > > > Would it make sense to have call_rcu() check to see if there are many
> > > > > > > > outstanding requests on this CPU and if so process them before returning?
> > > > > > > > That would ensure that frequent callers usually ended up doing their
> > > > > > > > own processing.
> > > > > > 
> > > > > > Other than what Paul already mentioned about deadlocks, I am not sure if this
> > > > > > would even work for all cases since call_rcu() has to wait for a grace
> > > > > > period.
> > > > > > 
> > > > > > So, if the number of outstanding requests are higher than a certain amount,
> > > > > > then you *still* have to wait for some RCU configurations for the grace
> > > > > > period duration and cannot just execute the callback in-line. Did I miss
> > > > > > something?
> > > > > > 
> > > > > > Can waiting in-line for a grace period duration be tolerated in the vhost case?
> > > > > > 
> > > > > > thanks,
> > > > > > 
> > > > > >  - Joel
> > > > > 
> > > > > No, but it has many other ways to recover (try again later, drop a
> > > > > packet, use a slower copy to/from user).
> > > > 
> > > > True enough!  And your idea of taking recovery action based on the number
> > > > of callbacks seems like a good one while we are getting RCU's callback
> > > > scheduling improved.
> > > > 
> > > > By the way, was this a real problem that you could make happen on real
> > > > hardware?
> > > 
> > > >  If not, I would suggest just letting RCU get improved over
> > > > the next couple of releases.
> > > 
> > > So basically use kfree_rcu but add a comment saying e.g. "WARNING:
> > > in the future callers of kfree_rcu might need to check that
> > > not too many callbacks get queued. In that case, we can
> > > disable the optimization, or recover in some other way.
> > > Watch this space."
> > 
> > That sounds fair.
> > 
> > > > If it is something that you actually made happen, please let me know
> > > > what (if anything) you need from me for your callback-counting EBUSY
> > > > scheme.
> > > 
> > > If you mean kfree_rcu causing OOM then no, it's all theoretical.
> > > If you mean synchronize_rcu stalling to the point where guest will OOPs,
> > > then yes, that's not too hard to trigger.
> > 
> > Is synchronize_rcu() being stalled by the userspace loop that is invoking
> > your ioctl that does kfree_rcu()?  Or instead by the resulting callback
> > invocation?
> 
> Sorry, let me clarify.  We currently have synchronize_rcu in a userspace
> loop. I have a patch replacing that with kfree_rcu.  This isn't the
> first time synchronize_rcu is stalling a VM for a long while so I didn't
> investigate further.

Ah, so a bunch of synchronize_rcu() calls within a single system call
inside the host is stalling the guest, correct?

If so, one straightforward approach is to do an rcu_barrier() every
(say) 1000 kfree_rcu() calls within that loop in the system call.
This will decrease the overhead by almost a factor of 1000 compared to
a synchronize_rcu() on each trip through that loop, and will prevent
callback overload.

Or if the situation is different (for example, the guest does a long
sequence of system calls, each of which does a single kfree_rcu() or
some such), please let me know what the situation is.

							Thanx, Paul


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
