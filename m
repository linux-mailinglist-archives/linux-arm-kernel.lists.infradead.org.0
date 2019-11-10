Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFE2F6B9F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 22:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gx/MORhWWi2l1L5pAp0vti9jLF+FmmnDvoWrepfNVsg=; b=SRprOTRCzrk56e
	7I3Z8DqQSTjxr1+cRPYDiid2HRDIYgaM23FQXMGfgctMRcvDU5kXEtEtrkdRTekiq/ASdWpVN86hy
	4PD4ExIDp5GbKOUhn3DNkNeAZQ73sh9QrG6NKL+ePr9RGbdpCgmV3+71Z59cyOmMTynTzFzprkGvS
	yKzJVmdAjBpwzoxQdTcwTp9ze/ICLQ9hww5l/WO4SxhVC/2Yy4uRIObScyzSy+9N8kDRFupXW6cJC
	N/cTF5jdxgnvjKtsHROQKksCppGKb1LYbYLP7FCTQ3TJIHVxU185BnIQ1O6+0s8pvEJlz2GPxTZN/
	Zr0oxTC6v++ZI7gEi+dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTung-0006Rv-Ec; Sun, 10 Nov 2019 21:31:12 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTunY-0006RQ-FV
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 21:31:06 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Nov 2019 13:31:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,290,1569308400"; d="scan'208";a="405018231"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 10 Nov 2019 13:30:58 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iTunR-000Fxb-Sm; Mon, 11 Nov 2019 05:30:57 +0800
Date: Mon, 11 Nov 2019 05:30:49 +0800
From: kbuild test robot <lkp@intel.com>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v6 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <201911110540.8p3UoQAR%lkp@intel.com>
References: <20191107174622.61718-4-alex.kogan@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107174622.61718-4-alex.kogan@oracle.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_133104_532325_24FF7A11 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, kbuild-all@lists.01.org,
 arnd@arndb.de, peterz@infradead.org, dave.dice@oracle.com,
 jglauber@marvell.com, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, steven.sistare@oracle.com, linux-kernel@vger.kernel.org,
 rahul.x.yadav@oracle.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 alex.kogan@oracle.com, longman@redhat.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[cannot apply to v5.4-rc6 next-20191108]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Alex-Kogan/locking-qspinlock-Rename-mcs-lock-unlock-macros-and-make-them-more-generic/20191109-180535
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 0058b0a506e40d9a2c62015fe92eb64a44d78cd9
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-21-gb31adac-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   kernel/locking/qspinlock.c:450:14: sparse: sparse: incorrect type in assignment (different modifiers) @@    expected struct mcs_spinlock *[assigned] node @@    got ct mcs_spinlock *[assigned] node @@
   kernel/locking/qspinlock.c:450:14: sparse:    expected struct mcs_spinlock *[assigned] node
   kernel/locking/qspinlock.c:450:14: sparse:    got struct mcs_spinlock [pure] *
   kernel/locking/qspinlock.c:498:22: sparse: sparse: incorrect type in assignment (different modifiers) @@    expected struct mcs_spinlock *prev @@    got struct struct mcs_spinlock *prev @@
   kernel/locking/qspinlock.c:498:22: sparse:    expected struct mcs_spinlock *prev
   kernel/locking/qspinlock.c:498:22: sparse:    got struct mcs_spinlock [pure] *
>> kernel/locking/qspinlock_cna.h:141:60: sparse: sparse: incorrect type in initializer (different modifiers) @@    expected struct mcs_spinlock *tail_2nd @@    got struct struct mcs_spinlock *tail_2nd @@
>> kernel/locking/qspinlock_cna.h:141:60: sparse:    expected struct mcs_spinlock *tail_2nd
>> kernel/locking/qspinlock_cna.h:141:60: sparse:    got struct mcs_spinlock [pure] *
   kernel/locking/qspinlock.c:450:14: sparse: sparse: incorrect type in assignment (different modifiers) @@    expected struct mcs_spinlock *[assigned] node @@    got ct mcs_spinlock *[assigned] node @@
   kernel/locking/qspinlock.c:450:14: sparse:    expected struct mcs_spinlock *[assigned] node
   kernel/locking/qspinlock.c:450:14: sparse:    got struct mcs_spinlock [pure] *
   kernel/locking/qspinlock.c:498:22: sparse: sparse: incorrect type in assignment (different modifiers) @@    expected struct mcs_spinlock *prev @@    got struct struct mcs_spinlock *prev @@
   kernel/locking/qspinlock.c:498:22: sparse:    expected struct mcs_spinlock *prev
   kernel/locking/qspinlock.c:498:22: sparse:    got struct mcs_spinlock [pure] *
>> kernel/locking/qspinlock_cna.h:107:18: sparse: sparse: incorrect type in assignment (different modifiers) @@    expected struct mcs_spinlock *tail_2nd @@    got struct struct mcs_spinlock *tail_2nd @@
   kernel/locking/qspinlock_cna.h:107:18: sparse:    expected struct mcs_spinlock *tail_2nd
   kernel/locking/qspinlock_cna.h:107:18: sparse:    got struct mcs_spinlock [pure] *
>> kernel/locking/qspinlock_cna.h:240:61: sparse: sparse: incorrect type in argument 2 (different modifiers) @@    expected struct mcs_spinlock *pred_start @@    got struct struct mcs_spinlock *pred_start @@
>> kernel/locking/qspinlock_cna.h:240:61: sparse:    expected struct mcs_spinlock *pred_start
   kernel/locking/qspinlock_cna.h:240:61: sparse:    got struct mcs_spinlock [pure] *
   kernel/locking/qspinlock_cna.h:252:26: sparse: sparse: incorrect type in assignment (different modifiers) @@    expected struct mcs_spinlock *tail_2nd @@    got struct struct mcs_spinlock *tail_2nd @@
   kernel/locking/qspinlock_cna.h:252:26: sparse:    expected struct mcs_spinlock *tail_2nd
   kernel/locking/qspinlock_cna.h:252:26: sparse:    got struct mcs_spinlock [pure] *
   kernel/locking/qspinlock.c:450:14: sparse: sparse: incorrect type in assignment (different modifiers) @@    expected struct mcs_spinlock *[assigned] node @@    got ct mcs_spinlock *[assigned] node @@
   kernel/locking/qspinlock.c:450:14: sparse:    expected struct mcs_spinlock *[assigned] node
   kernel/locking/qspinlock.c:450:14: sparse:    got struct mcs_spinlock [pure] *
   kernel/locking/qspinlock.c:498:22: sparse: sparse: incorrect type in assignment (different modifiers) @@    expected struct mcs_spinlock *prev @@    got struct struct mcs_spinlock *prev @@
   kernel/locking/qspinlock.c:498:22: sparse:    expected struct mcs_spinlock *prev
   kernel/locking/qspinlock.c:498:22: sparse:    got struct mcs_spinlock [pure] *

vim +141 kernel/locking/qspinlock_cna.h

    90	
    91	static inline bool cna_try_change_tail(struct qspinlock *lock, u32 val,
    92					       struct mcs_spinlock *node)
    93	{
    94		struct mcs_spinlock *head_2nd, *tail_2nd;
    95		u32 new;
    96	
    97		/* If the secondary queue is empty, do what MCS does. */
    98		if (node->locked <= 1)
    99			return __try_clear_tail(lock, val, node);
   100	
   101		/*
   102		 * Try to update the tail value to the last node in the secondary queue.
   103		 * If successful, pass the lock to the first thread in the secondary
   104		 * queue. Doing those two actions effectively moves all nodes from the
   105		 * secondary queue into the main one.
   106		 */
 > 107		tail_2nd = decode_tail(node->locked);
   108		head_2nd = tail_2nd->next;
   109		new = ((struct cna_node *)tail_2nd)->encoded_tail + _Q_LOCKED_VAL;
   110	
   111		if (atomic_try_cmpxchg_relaxed(&lock->val, &val, new)) {
   112			/*
   113			 * Try to reset @next in tail_2nd to NULL, but no need to check
   114			 * the result - if failed, a new successor has updated it.
   115			 */
   116			cmpxchg_relaxed(&tail_2nd->next, head_2nd, NULL);
   117			arch_mcs_pass_lock(&head_2nd->locked, 1);
   118			return true;
   119		}
   120	
   121		return false;
   122	}
   123	
   124	/*
   125	 * cna_splice_tail -- splice nodes in the main queue between [first, last]
   126	 * onto the secondary queue.
   127	 */
   128	static void cna_splice_tail(struct mcs_spinlock *node,
   129				    struct mcs_spinlock *first,
   130				    struct mcs_spinlock *last)
   131	{
   132		/* remove [first,last] */
   133		node->next = last->next;
   134	
   135		/* stick [first,last] on the secondary queue tail */
   136		if (node->locked <= 1) { /* if secondary queue is empty */
   137			/* create secondary queue */
   138			last->next = first;
   139		} else {
   140			/* add to the tail of the secondary queue */
 > 141			struct mcs_spinlock *tail_2nd = decode_tail(node->locked);
   142			struct mcs_spinlock *head_2nd = tail_2nd->next;
   143	
   144			tail_2nd->next = first;
   145			last->next = head_2nd;
   146		}
   147	
   148		node->locked = ((struct cna_node *)last)->encoded_tail;
   149	}
   150	
   151	/*
   152	 * cna_scan_main_queue - scan the main waiting queue looking for the first
   153	 * thread running on the same NUMA node as the lock holder. If found (call it
   154	 * thread T), move all threads in the main queue between the lock holder and
   155	 * T to the end of the secondary queue and return 0; otherwise, return the
   156	 * encoded pointer of the last scanned node in the primary queue (so a
   157	 * subsequent scan can be resumed from that node)
   158	 *
   159	 * Schematically, this may look like the following (nn stands for numa_node and
   160	 * et stands for encoded_tail).
   161	 *
   162	 *   when cna_scan_main_queue() is called (the secondary queue is empty):
   163	 *
   164	 *  A+------------+   B+--------+   C+--------+   T+--------+
   165	 *   |mcs:next    | -> |mcs:next| -> |mcs:next| -> |mcs:next| -> NULL
   166	 *   |mcs:locked=1|    |cna:nn=0|    |cna:nn=2|    |cna:nn=1|
   167	 *   |cna:nn=1    |    +--------+    +--------+    +--------+
   168	 *   +----------- +
   169	 *
   170	 *   when cna_scan_main_queue() returns (the secondary queue contains B and C):
   171	 *
   172	 *  A+----------------+    T+--------+
   173	 *   |mcs:next        | ->  |mcs:next| -> NULL
   174	 *   |mcs:locked=C.et | -+  |cna:nn=1|
   175	 *   |cna:nn=1        |  |  +--------+
   176	 *   +--------------- +  +-----+
   177	 *                             \/
   178	 *          B+--------+   C+--------+
   179	 *           |mcs:next| -> |mcs:next| -+
   180	 *           |cna:nn=0|    |cna:nn=2|  |
   181	 *           +--------+    +--------+  |
   182	 *               ^                     |
   183	 *               +---------------------+
   184	 *
   185	 * The worst case complexity of the scan is O(n), where n is the number
   186	 * of current waiters. However, the amortized complexity is close to O(1),
   187	 * as the immediate successor is likely to be running on the same node once
   188	 * threads from other nodes are moved to the secondary queue.
   189	 */
   190	static u32 cna_scan_main_queue(struct mcs_spinlock *node,
   191				       struct mcs_spinlock *pred_start)
   192	{
   193		struct cna_node *cn = (struct cna_node *)node;
   194		struct cna_node *cni = (struct cna_node *)READ_ONCE(pred_start->next);
   195		struct cna_node *last;
   196		int my_numa_node = cn->numa_node;
   197	
   198		/* find any next waiter on 'our' NUMA node */
   199		for (last = cn;
   200		     cni && cni->numa_node != my_numa_node;
   201		     last = cni, cni = (struct cna_node *)READ_ONCE(cni->mcs.next))
   202			;
   203	
   204		/* if found, splice any skipped waiters onto the secondary queue */
   205		if (cni) {
   206			if (last != cn)	/* did we skip any waiters? */
   207				cna_splice_tail(node, node->next,
   208						(struct mcs_spinlock *)last);
   209			return 0;
   210		}
   211	
   212		return last->encoded_tail;
   213	}
   214	
   215	__always_inline u32 cna_pre_scan(struct qspinlock *lock,
   216					  struct mcs_spinlock *node)
   217	{
   218		struct cna_node *cn = (struct cna_node *)node;
   219	
   220		cn->pre_scan_result = cna_scan_main_queue(node, node);
   221	
   222		return 0;
   223	}
   224	
   225	static inline void cna_pass_lock(struct mcs_spinlock *node,
   226					 struct mcs_spinlock *next)
   227	{
   228		struct cna_node *cn = (struct cna_node *)node;
   229		struct mcs_spinlock *next_holder = next, *tail_2nd;
   230		u32 val = 1;
   231	
   232		u32 scan = cn->pre_scan_result;
   233	
   234		/*
   235		 * check if a successor from the same numa node has not been found in
   236		 * pre-scan, and if so, try to find it in post-scan starting from the
   237		 * node where pre-scan stopped (stored in @pre_scan_result)
   238		 */
   239		if (scan > 0)
 > 240			scan = cna_scan_main_queue(node, decode_tail(scan));

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
