Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D351760FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 18:26:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeFxd7dUwDaCPD1XTdD61zE/SgZVCPDDniM6D5jd9bw=; b=c+3NOAXmLZBRZe
	rIXRL3QTjPb1En/VTVCXHLQeUh3ehd8HU/Lj7X//a7iPPXramZBt8pYwWg608hAnpxbiC6wzb05u3
	YIexvqWhT0sdS9xs1HVa1QEkcuvIjfO4dAbIg6NqfcRY3ShFCbNnI6Bgv2gqeVZeWgPJu2k5t1ofn
	MkX7hnI5hK4F4Y6d1v5e6BxtuJ/eMUwpfKBMvwjMukc3MAih5Pjhp/p1nzrFKMU9WCkFMo37tkyrp
	+ESqEh/WpT7HP4g4A979ouFpoXJcwrBgTnjqZMwVjlVlTcPZfm9uT2JtOeJPqAeCuyAphfzlzq8tR
	mGObuWdBeG6a8UjDehBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8opV-0002R5-VJ; Mon, 02 Mar 2020 17:26:09 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8opO-0002Qf-6M
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 17:26:03 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 022HNPGX098653;
 Mon, 2 Mar 2020 17:25:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=ljzd0Xe5Fg4CocMgwn0S+I3dakdjPxi3oE8VRnoUYlA=;
 b=QD8LDPW4X4pP3Con9UBGU9spo1eN7BgyyLl2aaHLXXLnwzk0Qx4vdqZdf8ZMWkjjTeo4
 CMAQVzOkEBd0Y6TmMKsWVwsDp/sIBjRKPv/bGoEfSx16UpOs9oB8ciCwcVYfbrb4fuBu
 Nup7nbhTzspfk2D0qhMeC6RQ9NKfLsqajXyzsd8Kw31dERKjDye+JJCOepCaM5wwd9B0
 jwPGl0IHxIRzk4b4lTHcejqlVB+6RvmGiNeFiuMLmEuRL8nBvZoFfxpYT6XFwrBotfL3
 ZVrQ0Ah/pRiH61VjRTtuDnHv95rTjENPCWER6Qq/kWauhSD4Qkz4etN7scSEcfiQCoii Fg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2yghn2w29v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2020 17:25:51 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 022HNEF1072297;
 Mon, 2 Mar 2020 17:25:50 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2yg1rfy3qk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2020 17:25:50 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 022HPnkq015255;
 Mon, 2 Mar 2020 17:25:49 GMT
Received: from ca-dmjordan1.us.oracle.com (/10.211.9.48)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 02 Mar 2020 09:25:46 -0800
Date: Mon, 2 Mar 2020 12:25:10 -0500
From: Daniel Jordan <daniel.m.jordan@oracle.com>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200302172510.fspofleipqjcdxak@ca-dmjordan1.us.oracle.com>
References: <20200217204803.GA13479@Red>
 <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
 <20200220090350.GA19858@Red>
 <20200221174223.r3y6tugavp3k5jdl@ca-dmjordan1.us.oracle.com>
 <20200228123311.GE3275@willie-the-truck>
 <20200228153331.uimy62rat2tdxxod@ca-dmjordan1.us.oracle.com>
 <20200301175351.GA11684@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301175351.GA11684@Red>
User-Agent: NeoMutt/20180716
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9547
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999
 suspectscore=2 malwarescore=0 adultscore=0 spamscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003020116
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9547
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0 spamscore=0
 impostorscore=0 mlxscore=0 adultscore=0 mlxlogscore=999 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 suspectscore=2
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003020116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_092602_319781_C9596594 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Daniel Jordan <daniel.m.jordan@oracle.com>, linux-crypto@vger.kernel.org,
 tj@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 01, 2020 at 06:53:51PM +0100, Corentin Labbe wrote:
> I tried to bisect this problem, but the result is:
...
> # first bad commit: [81ff5d2cba4f86cd850b9ee4a530cd221ee45aa3] Merge branch 'linus' of git://git.kernel.org/pub/scm/linux/kernel/git/herbert/crypto-2.6
> 
> The only interesting thing I see in this MR is: "Add fuzz testing to testmgr"
> 
> But this wont help.

Hm, that merge commit has only a couple lines of powerpc build change, so maybe
there's something nondeterministic going on.

Does this fix it?  I can't verify but figure it's worth trying the simplest
explanation first, which is that the work isn't initialized by the time it's
queued.

thanks,
daniel

---8<---

Subject: [PATCH] module: statically initialize init section freeing data

Signed-off-by: Daniel Jordan <daniel.m.jordan@oracle.com>
---
 kernel/module.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/kernel/module.c b/kernel/module.c
index 33569a01d6e1..db0cda206167 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -88,8 +88,9 @@ EXPORT_SYMBOL_GPL(module_mutex);
 static LIST_HEAD(modules);
 
 /* Work queue for freeing init sections in success case */
-static struct work_struct init_free_wq;
-static struct llist_head init_free_list;
+static void do_free_init(struct work_struct *w);
+static DECLARE_WORK(init_free_wq, do_free_init);
+static LLIST_HEAD(init_free_list);
 
 #ifdef CONFIG_MODULES_TREE_LOOKUP
 
@@ -3501,14 +3502,6 @@ static void do_free_init(struct work_struct *w)
 	}
 }
 
-static int __init modules_wq_init(void)
-{
-	INIT_WORK(&init_free_wq, do_free_init);
-	init_llist_head(&init_free_list);
-	return 0;
-}
-module_init(modules_wq_init);
-
 /*
  * This is where the real work happens.
  *
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
