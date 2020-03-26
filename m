Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3B7194D3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 00:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Bb1rjUjI6SQDxyMKQJ9Y1746wTtTKNjBdp9SNFzu2M=; b=Uf1/Fb0bYNULea
	jt+Xq4vrsbBIC72C2k/05W6T/Bukcd3zqH2oUgsOuOb0mbUmuQ5V2l70htnYkGQwoz7s7CVe4ty5v
	r7DBJ5qpXx5D8rJ39Urr9y4bhx6kGf3jsTP2aPHKoYyv5HQMboDOOvowobUeOQ6I5hV4/BQuoXP+X
	WTe9clCu6hP0UpT4hqtkvhhm+Ul4BihWbC/xK1AuRNUDSnEImUi8i1js8Io2W7wZsL+/b71KHg86j
	w4CObrKH0kC12P68rzvKoIeLtcAl/OTjkLtjVIvp6hzQt7XqATsGMYaQoGVhd2hU72VQAaWn7wHCv
	ypJptGXS2RujAWrbkZZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHbwW-0004BX-5P; Thu, 26 Mar 2020 23:29:44 +0000
Received: from namei.org ([65.99.196.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbwO-0004BA-OH
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 23:29:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id 02QNSlWb015673;
 Thu, 26 Mar 2020 23:28:47 GMT
Date: Fri, 27 Mar 2020 10:28:47 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: Serge Hallyn <serge@hallyn.com>
Subject: Re: [Intel-gfx] [PATCH v7 00/12] Introduce CAP_PERFMON to secure
 system performance monitoring and observability
In-Reply-To: <20200302001913.GA21145@sl>
Message-ID: <alpine.LRH.2.21.2003271026290.14767@namei.org>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
 <3ae0bed5-204e-de81-7647-5f0d8106cd67@linux.intel.com>
 <20200302001913.GA21145@sl>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_162936_866827_E58A87B3 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-man@vger.kernel.org,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Stephane Eranian <eranian@google.com>,
 Paul Mackerras <paulus@samba.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, oprofile-list@lists.sf.net,
 Stephen Smalley <sds@tycho.nsa.gov>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Helge Deller <deller@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 1 Mar 2020, Serge Hallyn wrote:

> Thanks, this looks good to me, in keeping with the CAP_SYSLOG break.
> 
> Acked-by: Serge E. Hallyn <serge@hallyn.com>
> 
> for the set.
> 
> James/Ingo/Peter, if noone has remaining objections, whose branch
> should these go in through?
> 
> thanks,
> -serge
> 
> On Tue, Feb 25, 2020 at 12:55:54PM +0300, Alexey Budankov wrote:
> > 
> > Hi,
> > 
> > Is there anything else I could do in order to move the changes forward
> > or is something still missing from this patch set?
> > Could you please share you mind?

Alexey,

It seems some of the previous Acks are not included in this patchset, e.g. 
https://lkml.org/lkml/2020/1/22/655

Every patch needs a Reviewed-by or Acked-by from maintainers of the code 
being changed.

You have enough from the security folk, but I can't see any included from 
the perf folk.


-- 
James Morris
<jmorris@namei.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
