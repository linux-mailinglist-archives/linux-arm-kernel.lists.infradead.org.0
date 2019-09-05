Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC17A9F56
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GvbRXZge7ga59VNHzw5YPuNd7RYki/F8t+fMIT5/Fk=; b=ra8Plhx/6ctuoV
	Qff4p0Pt3AJBl009U5A7g5eqHeZNeuO99fDSGrUGw6PkHB9HIkcJhNr5uidzMUY786oRfgECVTWDl
	XlMRc8iF3eisk99ppxQSooB+3hd9/XB9heTU1MogskWrjZtOSrLv6KnhYCqHrFIdXGXFzFz/XsNug
	RcXSj1QjLkNdYfokj0KBMRTOQg+HIytOtaLfEzfkh4elEUZ2QW2MRoE56mxMlIMZYv9NAjhMVvVGf
	HPQ2L74P9TYcdJAQrN67xJk8C+JOrdboyzqDhRAcMX4Oys3dSfGGgPLuRfs2cXQ62d2xkecrMBfhK
	kJl6uWcH0kl5GnUjaFkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5omt-0003rg-P3; Thu, 05 Sep 2019 10:14:47 +0000
Received: from outbound4mad.lav.puc.rediris.es ([130.206.19.146]
 helo=mx01.puc.rediris.es)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5omg-0003nb-Q0
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:14:37 +0000
Received: from mta-out02.sim.rediris.es (mta-out02.sim.rediris.es
 [130.206.24.44])
 by mx01.puc.rediris.es  with ESMTP id x85ADag1012008-x85ADag3012008
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 5 Sep 2019 12:13:36 +0200
Received: from mta-out02.sim.rediris.es (localhost.localdomain [127.0.0.1])
 by mta-out02.sim.rediris.es (Postfix) with ESMTPS id 655BCC7BE2B;
 Thu,  5 Sep 2019 12:13:30 +0200 (CEST)
Received: from mta-out02.sim.rediris.es (localhost.localdomain [127.0.0.1])
 by mta-out02.sim.rediris.es (Postfix) with ESMTPS id 40229C7BE2C;
 Thu,  5 Sep 2019 12:13:27 +0200 (CEST)
Received: from lt-gp.iram.es (mrt-fw.iram.es [150.214.224.223])
 by mta-out02.sim.rediris.es (Postfix) with ESMTPA id 95D21C7BE2B;
 Thu,  5 Sep 2019 12:13:19 +0200 (CEST)
Date: Thu, 5 Sep 2019 12:13:15 +0200
From: Gabriel Paubert <paubert@iram.es>
To: Andreas Schwab <schwab@linux-m68k.org>
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to, from}_user
 helpers
Message-ID: <20190905101315.GA25637@lt-gp.iram.es>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
 <mvma7bj85yo.fsf@linux-m68k.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mvma7bj85yo.fsf@linux-m68k.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-FEAS-CONTENT-MODIFICATION: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_031435_109467_B7BC607F 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-mips@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Christian Brauner <christian@brauner.io>,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Oleg Nesterov <oleg@redhat.com>, Aleksa Sarai <cyphar@cyphar.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, linux-arm-kernel@lists.infradead.org,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-api@vger.kernel.org,
 Chanho Min <chanho.min@lge.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 11:09:35AM +0200, Andreas Schwab wrote:
> On Sep 05 2019, Aleksa Sarai <cyphar@cyphar.com> wrote:
> 
> > diff --git a/lib/struct_user.c b/lib/struct_user.c
> > new file mode 100644
> > index 000000000000..7301ab1bbe98
> > --- /dev/null
> > +++ b/lib/struct_user.c
> > @@ -0,0 +1,182 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + * Copyright (C) 2019 SUSE LLC
> > + * Copyright (C) 2019 Aleksa Sarai <cyphar@cyphar.com>
> > + */
> > +
> > +#include <linux/types.h>
> > +#include <linux/export.h>
> > +#include <linux/uaccess.h>
> > +#include <linux/kernel.h>
> > +#include <linux/string.h>
> > +
> > +#define BUFFER_SIZE 64
> > +
> > +/*
> > + * "memset(p, 0, size)" but for user space buffers. Caller must have already
> > + * checked access_ok(p, size).
> > + */
> > +static int __memzero_user(void __user *p, size_t s)
> > +{
> > +	const char zeros[BUFFER_SIZE] = {};
> 
> Perhaps make that static?

On SMP? It should at least be per cpu, and I'm not even sure
with preemption.

	Gabriel

> 
> Andreas.
> 
> -- 
> Andreas Schwab, schwab@linux-m68k.org
> GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
> "And now for something completely different."

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
