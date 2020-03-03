Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BBD1784EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 22:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ngclhj6/CXMxEqOLLbCrtOZChbs8x0DV6ZzFVkAyn8Y=; b=psM2xqHq5sdAya
	wfRFaKJKG7lF6Yd+1rVHMQ+OBwhtVIxHPDqNPr8a9MRHeEvdARa3dR0kLbAZT+uvFTkXh/QM5dR6O
	l/dpuEBVgcxFxt/ORqnVN4Xicw+IaCqju+pU0Cv2NKKO27OUmJBN8RV0PbSkG3t7z9RVETYDChWag
	A3UpTLwtyd7UPEnyEG3BlEgbKSjJbFKSwbnEfSKKJpi5F9obGxmjERZP5CdPYewQc8r1c41iVsNoL
	5V2ATfVdEi8tHGzgfqsl8KAHLNTpizFy9CuaHajXxk7pYqJM657qv3m5PxoYgpH9XFYDqQU0/n8kw
	QsE42i2ntwBf33W+mcnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9F9F-00081E-CB; Tue, 03 Mar 2020 21:32:17 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9F97-00080F-No
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 21:32:11 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 023LS1go036975;
 Tue, 3 Mar 2020 21:32:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=AnKlCnsZKbhYJBc8etzmr5N2OwYTT8txAPj6KkeXERo=;
 b=j9nk4PVPkIxtzadAwWsgGAlZZsgIQ2sAqZ5uHhR0VG1IQwEC1X4uKIA9uQ+4O6fEcTIs
 sKVg2X39iXVBjuZwfcgcLNOe+zYmZlf+IOAIo67cqSLxq8LymK0C7ydoHfKojkV5NMB2
 EK6b2TAVx0x7OWodpUqGvuOOSQUJg7rDMW9AK4/lPxpFeePhNOGzHkyRL8JrQTlKtXH6
 OE4FX6l591SgfU741aeBHwwXkO0Itjl8EqTP/bOezR74EMlMKGwIrSW5jt3ug/pEGyyp
 9YevRnnIjb17MByx1Eyea6QrXSkHWlsEMetg9bGv2+3kZOfgdX5+ObvwE9KyT4oyik05 RQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2yffcuj7c9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Mar 2020 21:32:02 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 023LQaoT008213;
 Tue, 3 Mar 2020 21:30:02 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2yg1emtngg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Mar 2020 21:30:01 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 023LU0BL019460;
 Tue, 3 Mar 2020 21:30:00 GMT
Received: from ca-dmjordan1.us.oracle.com (/10.211.9.48)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 03 Mar 2020 13:30:00 -0800
Date: Tue, 3 Mar 2020 16:30:17 -0500
From: Daniel Jordan <daniel.m.jordan@oracle.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200303213017.tanczhqd3nhpeeak@ca-dmjordan1.us.oracle.com>
References: <20200217204803.GA13479@Red>
 <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
 <20200220090350.GA19858@Red>
 <20200221174223.r3y6tugavp3k5jdl@ca-dmjordan1.us.oracle.com>
 <20200228123311.GE3275@willie-the-truck>
 <20200228153331.uimy62rat2tdxxod@ca-dmjordan1.us.oracle.com>
 <20200301175351.GA11684@Red>
 <20200302172510.fspofleipqjcdxak@ca-dmjordan1.us.oracle.com>
 <e7c92da2-42c0-a97d-7427-6fdc769b41b9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e7c92da2-42c0-a97d-7427-6fdc769b41b9@arm.com>
User-Agent: NeoMutt/20180716
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9549
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=2 spamscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 mlxscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003030136
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9549
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 bulkscore=0
 adultscore=0 suspectscore=2 spamscore=0 malwarescore=0 impostorscore=0
 priorityscore=1501 mlxlogscore=999 lowpriorityscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003030136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_133209_812427_185D1BB8 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, jiangshanlai@gmail.com, linux-kernel@vger.kernel.org,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 tj@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 06:00:10PM +0000, Robin Murphy wrote:
> On 02/03/2020 5:25 pm, Daniel Jordan wrote:
> Something smelled familiar about this discussion, and sure enough that merge
> contains c4741b230597 ("crypto: run initcalls for generic implementations
> earlier"), which has raised its head before[1].

Yep, that looks suspicious.

The bisect didn't point to that specific commit, even though my version of git
tries commits in the merge.  I'm probably missing something.

> > Does this fix it?  I can't verify but figure it's worth trying the simplest
> > explanation first, which is that the work isn't initialized by the time it's
> > queued.
> 
> The relative initcall levels would appear to explain the symptom - I guess
> the question is whether this represents a bug in a particular test/algorithm
> (as with the unaligned accesses) or a fundamental problem in the
> infrastructure now being able to poke the module loader too early.

I'm not familiar with the crypto code.  Could it be that the commit moved some
request_module() calls before modules_wq_init()?

And, is it "too early" or just "earlier"?  When is it too early for modprobe?

Barring other ideas, Corentin, would you be willing to boot with

    trace_event=initcall:*,module:* trace_options=stacktrace

and

diff --git a/kernel/module.c b/kernel/module.c
index 33569a01d6e1..393be6979a27 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -3604,8 +3604,11 @@ static noinline int do_init_module(struct module *mod)
 	 * be cleaned up needs to sync with the queued work - ie
 	 * rcu_barrier()
 	 */
-	if (llist_add(&freeinit->node, &init_free_list))
+	if (llist_add(&freeinit->node, &init_free_list)) {
+		pr_warn("%s: schedule_work for mod=%s\n", __func__, mod->name);
+		dump_stack();
 		schedule_work(&init_free_wq);
+	}
 
 	mutex_unlock(&module_mutex);
 	wake_up_all(&module_wq);

but not my earlier fix and share the dmesg and ftrace output to see if the
theory holds?

Also, could you attach your config?  Curious now what your crypto options look
like after fiddling with some of them today while trying and failing to see
this on x86.

thanks,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
