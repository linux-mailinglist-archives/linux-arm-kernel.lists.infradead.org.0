Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BA21F792A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPJjoumOkU6EMk0h7s26qgPGDXwiknW7GoOs/6iOL5Y=; b=KZIVlb1Ek5YNCR
	3dhJP+bfgxIL+DBHmssBB0hDsOHLU+BJE04Gb/Rpfy3zAvftIWwcpqbHF+LWtl1XWBHfXbh9SQYw2
	emhe6+BJ+ehGgnc+5Me3HlbtEjzMpqOkjYokYAHR7QCCCgxefk8rCvL2eyA2WILDTdpm6ls46mQIe
	/wFFtuokEO3ZNhqemOJy45YA0UmBSi8seHh2nTlPegCPDnypcupsZiT902gx/jC/LNhG44SbuCgz2
	Tf2P7IvOe+Qzv+ztxolDLkoNT8MhLho0NZcIq59czNO3+l3uEz1wN2qcLjv0HIiMFHmskrQAySOm9
	AGa4eLoQI4fCKV38K7aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkC5-0007jB-Sa; Fri, 12 Jun 2020 13:58:05 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjk9q-00062M-IE
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:55:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id t7so4168186pgt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jjd0AuUqDMS+kg7RMfFuNDT5WMCpvxZwxODMYSMGb1M=;
 b=AGm49oXOJa5zvbGQSmCtPupmqX/vK0ZW8yO+FtbKQdYZhs/qHaUS/YrDhFOr2Ohk2C
 vmm3wEH/np8fZhGqc4XNfrMnILSw+UvGZdh/wynEj63vaoMLII/YBTTwfnYG1oMkd4yi
 mTsaj9JZb9qzBuD1CwqYPNRWvT82p5TKFWey09Jyp+fc0NjpoYrOH9XkEmy19ojS8tJB
 bcm/JOqSpb+/aYnPpOBvKGsvTRzsD7FLRL86I+HhWCdtQgLN/F4Jn6yCLgjwWIuUGWh6
 EpgBun44z05r0/yWcQIBB+1WyCZrI2OfsoCxeHxH3rFDK+tZWE1El3KgmYVY7xldognU
 KF0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jjd0AuUqDMS+kg7RMfFuNDT5WMCpvxZwxODMYSMGb1M=;
 b=H+pzZ9/jnEdM8YrYvR57Qz+dmV/hwOGMILuW+H4TDi6R62H+9Nwddm4gb9y19/QDgF
 q17e0EHGCW3aLYSV7y1i9wEZu6JdP6R/TnWKcKdHfMofqNSvpWjY6DRwG6p6Qk7OWMBT
 8rih2XnHZ7QTXI/AOf5Emio2QTypb58YiuxRL+f81beW9k1zXMO2KWtUXwOfZAJ7x6xi
 gwkPWVs7qyNq3QpqdVyB7Nk5OJtBrCtMZLOE5jIgGR2R//EctO/rRJNFH70uKm8Jlr2o
 adhf9AfnTv3/3G3Srf0sp1Jh7QTUYakn5Kw4sJmtSNxgL00+fCV27QAFdSQXUmaWgLCS
 fPQQ==
X-Gm-Message-State: AOAM531AlB3BF+Ib01c3WxMuoQdfCQCc4NIaGLtuVPWpN70Fq4Jv9tcK
 T3ouxWvIVTxYA2+Cmj2OQxc=
X-Google-Smtp-Source: ABdhPJxZsluvfDXjcLYcixbYMCGaCMI0iW8Tje9KJtl2C3rbqpPHE3nY5bBWjfZrbopCFK5js/mV7w==
X-Received: by 2002:a63:7707:: with SMTP id s7mr10832085pgc.295.1591970145638; 
 Fri, 12 Jun 2020 06:55:45 -0700 (PDT)
Received: from localhost ([49.207.50.185])
 by smtp.gmail.com with ESMTPSA id e127sm6617854pfe.45.2020.06.12.06.55.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 12 Jun 2020 06:55:44 -0700 (PDT)
Date: Fri, 12 Jun 2020 19:25:38 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <20200612135538.GA13399@afzalpc>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_065546_678354_438C0F34 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 12, 2020 at 02:02:13PM +0200, Arnd Bergmann wrote:
> On Fri, Jun 12, 2020 at 12:18 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:

> > Roughly a one-third drop in performance. Disabling highmem improves
> > performance only slightly.

> There are probably some things that can be done to optimize it,
> but I guess most of the overhead is from the page table operations
> and cannot be avoided.

Ingo's series did a follow_page() first, then as a fallback did it
invoke get_user_pages(), i will try that way as well.

Yes, i too feel get_user_pages_fast() path is the most time consuming,
will instrument & check.

> What was the exact 'dd' command you used, in particular the block size?
> Note that by default, 'dd' will request 512 bytes at a time, so you usually
> only access a single page. It would be interesting to see the overhead with
> other typical or extreme block sizes, e.g. '1', '64', '4K', '64K' or '1M'.

It was the default(512), more test results follows (in MB/s),

                512     1K      4K      16K     32K     64K     1M

w/o series      30      46      89      95      90      85      65

w/ series       22      36      72      79      78      75      61

perf drop       26%     21%     19%     16%     13%     12%    6%

Hmm, results ain't that bad :)

> If you want to drill down into where exactly the overhead is (i.e.
> get_user_pages or kmap_atomic, or something different), using
> 'perf record dd ..', and 'perf report' may be helpful.

Let me dig deeper & try to find out where the major overhead and try
to figure out ways to reduce it.

One reason to disable highmem & test (results mentioned earlier) was
to make kmap_atomic() very lightweight, that was not making much
difference, around 3% only.

> > +static int copy_chunk_from_user(unsigned long from, int len, void *arg)
> > +{
> > +       unsigned long *to_ptr = arg, to = *to_ptr;
> > +
> > +       memcpy((void *) to, (void *) from, len);
> > +       *to_ptr += len;
> > +       return 0;
> > +}
> > +
> > +static int copy_chunk_to_user(unsigned long to, int len, void *arg)
> > +{
> > +       unsigned long *from_ptr = arg, from = *from_ptr;
> > +
> > +       memcpy((void *) to, (void *) from, len);
> > +       *from_ptr += len;
> > +       return 0;
> > +}
> 
> Will gcc optimize away the indirect function call and inline everything?
> If not, that would be a small part of the overhead.

i think not, based on objdump, i will make these & wherever other
places possible inline & see the difference.

> > +       num_pages = DIV_ROUND_UP((unsigned long)from + n, PAGE_SIZE) -
> > +                                (unsigned long)from / PAGE_SIZE;
> 
> Make sure this doesn't turn into actual division operations but uses shifts.
> It might even be clearer here to open-code the shift operation so readers
> can see what this is meant to compile into.

Okay

> 
> > +       pages = kmalloc_array(num_pages, sizeof(*pages), GFP_KERNEL | __GFP_ZERO);
> > +       if (!pages)
> > +               goto end;
> 
> Another micro-optimization may be to avoid the kmalloc for the common case,
> e.g. anything with "num_pages <= 64", using an array on the stack.

Okay

> > +       ret = get_user_pages_fast((unsigned long)from, num_pages, 0, pages);
> > +       if (ret < 0)
> > +               goto free_pages;
> > +
> > +       if (ret != num_pages) {
> > +               num_pages = ret;
> > +               goto put_pages;
> > +       }
> 
> I think this is technically incorrect: if get_user_pages_fast() only
> gets some of the
> pages, you should continue with the short buffer and return the number
> of remaining
> bytes rather than not copying anything. I think you did that correctly
> for a failed
> kmap_atomic(), but this has to use the same logic.

yes, will fix that.


Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
