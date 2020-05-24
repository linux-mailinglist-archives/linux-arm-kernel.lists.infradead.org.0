Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75921DFE1B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 12:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xa8YDxw0beHSpYmgMKfYXgM0kBvMI9h+3LrSxhvC3d8=; b=BySaBa8cvQ8dxO
	4kfcenP+vong6ztgI7Sv3FvMO/CvUegv/AVtRbKU1h/deQec/MtJRzyFADHEmn/zbtgnBnbRrOr/i
	zWxVTg14UDvt1qQqYh9jgZNuF6s3Mva9n9wYUJDBIcVdKK6W9uhN0zCQDf44SwpQAmM5wGWpiZrMS
	tK0r6HSE3HBANanbDgT9Q8a2tpV8Dx2fJq6wYlytjcTznS+p4N54IbGrIq3iK+lkt7FKgFnurrmfr
	KOGN90esilA9DPKO+wa2o7qJsb2xdQkZvRWHxBV1eUQZoWuQRt8W2MNPlnTBDIAuh576DMSmhqsxO
	moCzQu5GvJeqXw9/46NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcnRu-0005PU-0d; Sun, 24 May 2020 10:01:42 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcnRl-0005Oy-JZ
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 10:01:35 +0000
Received: by mail-oi1-x243.google.com with SMTP id m67so3263673oif.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 03:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oTajmnohfywFupxs957CWHHjqHcvTI6e5RfNGOZbkGc=;
 b=YhvL8fVdrbh3XfLrAXLRTb2lrsFdJKPZBC6VFogb/a+IDT4r6kXTNEpClNwyN8xzoX
 PovzcKVQCCTTp5jpI9t388nRIm2CpbShnPhMKTsl833/Zg4Q1qitewLWEkU2FdyShT0z
 QvgtbKq2j46QJSYyUHZ80XmbHJUMjmUBIqLlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oTajmnohfywFupxs957CWHHjqHcvTI6e5RfNGOZbkGc=;
 b=GdN5ERY05NrTtQQveJGZmvyx89F74LgRM5GaBRb0Z/UxxFy93q0iiX1jZrjYVuB6zC
 cFGIy9/pa2EUxxmLk4Q2g0nxONMR7YPH/+e8nwXVV2mUqZ7ga9r/Ieve3nY3lFTgL69J
 3BE9a9hNBRj0yphkFfC+QhmtSGniiqL+HaBOxCiNoZgcamTIaJAc31yDo2j1QukuHDij
 ELdmghXWXLOLUFLQkK90fHJzWNRJNP56ciMLTNbqy4ziFJSnqhkXKjzdaKtBp4sxDSEo
 Gx6Qyl03vhTeihKzmoj39P+32QWMlvpglq/RDDFdl9A3BUHgzmdW87R9OSQgmf0noNvH
 O/rg==
X-Gm-Message-State: AOAM531ttOYXxo0CKRj5OMJQ9iegREhzVjrq7S9qMTQmoSS9kZMxbNsg
 CCmrsOrJiHAaMv9Lp3mwjtyTCGwu+54uLjgrXlzf4w==
X-Google-Smtp-Source: ABdhPJyYQjQntruCcmBuzCOoJjVws8Uf/VrPmrDFHKD1uZxz3ratl/o/oUQNoQUQQuBO/mmCLqEaCqSuIRxVr4LZk2s=
X-Received: by 2002:aca:4b91:: with SMTP id y139mr7314961oia.128.1590314491735; 
 Sun, 24 May 2020 03:01:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200430161438.17640-2-alpernebiyasak@gmail.com>
 <20200513053529.GL413@jagdpanzerIV.localdomain>
In-Reply-To: <20200513053529.GL413@jagdpanzerIV.localdomain>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun, 24 May 2020 12:01:20 +0200
Message-ID: <CAKMK7uHO43-O+bPkJMhuv5HNh-PS7+wm6==n-7VQfRu2zq8xvQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 1/3] printk: Add function to set console to
 preferred console's driver
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_030133_645075_E60D4092 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, Arvind Sankar <nivedita@alum.mit.edu>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Alper Nebi Yasak <alpernebiyasak@gmail.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Feng Tang <feng.tang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 7:35 AM Sergey Senozhatsky
<sergey.senozhatsky@gmail.com> wrote:
>
> On (20/04/30 19:14), Alper Nebi Yasak wrote:
> [..]
> > +int update_console_to_preferred(void)
> > +{
> > +     struct console_cmdline *c = NULL;
> > +     struct console *con = NULL;
> > +     struct console *tmp = NULL;
> > +
> > +     if (preferred_console >= 0)
> > +             c = &console_cmdline[preferred_console];
> > +
> > +     if (!c || !c->name[0])
> > +             return 0;
> > +
> > +     for_each_console(con) {
> > +             if (!con->next || !(con->next->flags & CON_ENABLED))
> > +                     continue;
> > +             if (strcmp(c->name, con->next->name) != 0)
> > +                     continue;
>
> This matches the consoles by exact name. Consoles can have aliases,
> but matching by alias is rather complex and it has some side effects.
>
> Let me Cc more people on this. VT has a console takeover logic,
> I wonder if we can extend the takeover code somehow.
>
> Daniel, any thoughts?

Apologies for late reply, but nope, no thoughts. I have some ideas for
the locking in the console subsystem, but that's just to untangle it
from gpu drivers as much as possible. Otherwise I'm trying to stay
away from it as far as I can :-)

Cheers, Daniel

>
> https://lore.kernel.org/lkml/20200430161438.17640-1-alpernebiyasak@gmail.com
>
>         -ss



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
