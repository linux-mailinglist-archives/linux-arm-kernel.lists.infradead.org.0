Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AE61A9698
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gw7llZ0dJMlS73Bn8NHMoGRWl0pb5GFFKsEEVNN28dU=; b=nFpmRoQC7H+cuv
	LI7s2pz2WOEenS3D5CZs0OrENWjkARL2kObJORxSWQfMulU0KptR0iQX1VCbYq8wpuj4jK+kOkhfm
	HdJD3nQ77WJ2Imy8055lszoRK8/ytqC561a35sjr+3S/2MIy9+JjyBjsIfxfaiIpBjDS8xjD+32xR
	HHMWBV9RR2Lvc6u3rB6QhckVUz+5j46jpJa/NXqaPaW606jLh16v2s1mVzZ1mBgVulFbl+PYcqHhm
	4N1EULGObGZ6UVxP+m7VvwBmnOJATXa0nfSUwoxK619G8AdkRwN3lYa5WzU0+Xy9m2YlBHbSTN6JU
	8y94kuRTDTjmvfwsHAYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdV1-0004TF-BU; Wed, 15 Apr 2020 08:34:23 +0000
Received: from m17617.mail.qiye.163.com ([59.111.176.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdUt-0004SV-Dl
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:34:17 +0000
Received: from wangqing-virtual-machine.localdomain (unknown [157.0.31.122])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id AC17A2623E5;
 Wed, 15 Apr 2020 16:34:10 +0800 (CST)
From: Wang Qing <wangqing@vivo.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] [V2 1/2]sched:add task_running_oncpu
Date: Wed, 15 Apr 2020 16:34:05 +0800
Message-Id: <1586939645-2470-1-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586779466-4439-2-git-send-email-wangqing@vivo.com>
References: <1586779466-4439-2-git-send-email-wangqing@vivo.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSVVLTk5CQkJCQk9JTExCTllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nhw6CDo6NzgyKAlLD0MxP0sP
 Ix0aCixVSlVKTkNNQkhCTU5LQ0hMVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZSk5M
 VUtVSEpVSklJWVdZCAFZQUlJS0g3Bg++
X-HM-Tid: 0a717cf962af9375kuwsac17a2623e5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013415_603955_EC2DD736 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.17 listed in list.dnswl.org]
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>On Tue, Apr 14, 2020 at 09:20:57AM +0200, Vincent Guittot wrote:
>> On Mon, 13 Apr 2020 at 14:04, Wang Qing <wangqing@vivo.com> wrote:
>> >
>> > We have no interface whether the task is running,
>> > so we need to add an interface and distinguish CONFIG_SMP.
>> >
>> > Signed-off-by: Wang Qing <wangqing@vivo.com>
>> > ---
>> >  include/linux/sched.h | 10 ++++++++++
>> >  1 file changed, 10 insertions(+)
>> >
>> > diff --git a/include/linux/sched.h b/include/linux/sched.h
>> > index 4418f5c..13cc8f5 100644
>> > --- a/include/linux/sched.h
>> > +++ b/include/linux/sched.h
>> > @@ -1843,6 +1843,11 @@ static inline unsigned int task_cpu(const struct task_struct *p)
>> >
>> >  extern void set_task_cpu(struct task_struct *p, unsigned int cpu);
>> >
>> > +static inline int task_running_oncpu(const struct task_struct *p)
>> 
>> This function name is too close from task_running_on_cpu() and can be
>> misleading as the difference is only "_"
>> Also, how task_running_oncpu() is different from task_running() ?
>
>It doesn't have the (arguably superfluous) rq argument. But yes, agreed,
>if anything lift that thing (without the argument).

I think task_running() should be renamed to task_running_on_rq() like
the naming of task_running_on_cpu(), this is what it originally mean,
and add task_running() (with the task argument only).

I updated the patch for that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
