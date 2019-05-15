Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB7D1F74F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 17:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rG/cD1lgixYe2OEYcagwevIy+WGXqQRk0cyEZIXy9FA=; b=e4vE5ZbeyhoBn0
	G883XJjQhsGtVOCVHnDK7WIjfFLG5Lju96/fwyEeXibcbkenolnn28/BW9sDKmFYqKkmbsGsMOQZm
	uCsgH4m24b9kSD+HnUO7DbO7Ecl/+pZjpkpzTy86CeHTJZGO3kP9f0FcrtfaBAROWuqK7fmNE8HSr
	VqSnyykY3XCxQqS460/oXuS6sPtpUzh7Fdmyxl8hlaikW5G267EBMRRpwxM22qy0A36AagmDT7Luv
	U0UIAjDlLAyVxsFrSZKnGivz5d5A5Wr5xwmG9MHhlZKZ1RydHTaQ3sAejN+hSz/0GPYw4EjkTwzm4
	U84K+sLiJ4HS1t7Q8ogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvgn-00029O-UE; Wed, 15 May 2019 15:19:29 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvgh-000293-4T
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 15:19:24 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1942D301A3E1;
 Wed, 15 May 2019 15:19:22 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id AC9925D9C0;
 Wed, 15 May 2019 15:19:16 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Wed, 15 May 2019 17:19:19 +0200 (CEST)
Date: Wed, 15 May 2019 17:19:13 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
Message-ID: <20190515151912.GE18892@redhat.com>
References: <20190515100400.3450-1-christian@brauner.io>
 <20190515143857.GB18892@redhat.com>
 <20190515144927.f2yxyi6w6lhn3xx7@brauner.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515144927.f2yxyi6w6lhn3xx7@brauner.io>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 15 May 2019 15:19:22 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_081923_198961_DB547AEC 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-mips@vger.kernel.org, dhowells@redhat.com,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-api@vger.kernel.org, elena.reshetova@intel.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, cyphar@cyphar.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/15, Christian Brauner wrote:
>
> On Wed, May 15, 2019 at 04:38:58PM +0200, Oleg Nesterov wrote:
> >
> > it seems that you can do a single check
> >
> > 	tsk = pid_task(p, PIDTYPE_TGID);
> > 	if (!tsk)
> > 		ret = -ESRCH;
> >
> > this even looks more correct if we race with exec changing the leader.
>
> The logic here being that you can only reach the thread_group leader
> from struct pid if PIDTYPE_PID == PIDTYPE_TGID for this struct pid?

Not exactly... it is not that PIDTYPE_PID == PIDTYPE_TGID for this pid,
struct pid has no "type" or something like this.

The logic is that pid->tasks[PIDTYPE_XXX] is the list of task which use
this pid as "XXX" type.

For example, clone(CLONE_THREAD) creates a pid which has a single non-
empty list, pid->tasks[PIDTYPE_PID]. This pid can't be used as TGID or
SID.

So if pid_task(PIDTYPE_TGID) returns non-NULL we know that this pid was
used for a group-leader, see copy_process() which does

	if (thread_group_leader(p))
		attach_pid(p, PIDTYPE_TGID);


If we race with exec which changes the leader pid_task(TGID) can return
the old leader. We do not care, but this means that we should not check
thread_group_leader().

Oleg.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
