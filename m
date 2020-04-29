Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A261BEC63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 01:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkXbThT4DGC5kTPntIWTudymfZtNa639y6EkCyQfyzM=; b=ZrsQI2G1nRk1V1
	a/kM7hnrTMhbWIWf0SM6dCEiXLECRb3TW1r4UjERS5yaIWwr23SY+pvvyf+3VezOrg8oTD+a4PFFF
	9XhlzWZq/4iSdyA5uPxqCQ1lWqd9FVwpIumYcU1FAJaC272z3b8jXPy7x9YVUQ4/Z7QOFqm0LVTrD
	iKX+trQzHoV69uauC77qkHumPe2L/P7a2wcIu1HXZ5BsV0YYQnYgjpq7VHu4lfiwxdl5IruxE85Ir
	LLwkJ19LkkdS8ucf3+9DZS+yriRYU1YLLtD1qQ7pNoAm0s93iQTKd3wLX1mvls7GUlxqeRGjf6GZc
	Ozd06K5TGjSEB2xTEzAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTvkG-0001al-J9; Wed, 29 Apr 2020 23:04:00 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTvk8-0001ZL-8g
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 23:03:53 +0000
Received: by mail-lf1-x143.google.com with SMTP id b24so2517879lfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 16:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ur9jfHYBxvOMHwCSyzgCuO4pNPy1puU85FIa2ankgiI=;
 b=DrKHR3jwpIzSm+/wrDYjisbgySATaGLQu0oa0TojG2F2InX9rTKCVNl6/HZqurU3pj
 UJIyVXdxk5hO/DdTXuKDLWUrdoodxV3U8YTqMXkuAyOg5qLHqAdR8oZRRYrFIzlXyC4k
 sCR1zfwZ36sLzjhZCni2LVoS/XzTKFMv0dEak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ur9jfHYBxvOMHwCSyzgCuO4pNPy1puU85FIa2ankgiI=;
 b=k4dba8BDKBg6y8x2/A7YpdrW0NaAUDRkqG4mvwTP7GaZk3Y7p5aeAhSe4l24jeK2cp
 ub1iQa7aLAJCDw0oDdsX2awIivYpVeQfguRgItsOSFnMyzQsqQGWnoBOEzanooPfI453
 Sawcnyg6p4EN0QfZBF0PRoQ714NgtYfsV+xVIArvDiKgHZI8/9GWH8A0bTtFZfobFfO3
 QzCw681qYKb5dJ2Rj060CzplaFJpzhXnfEpA0mfcurvrz9vvomd/qxxwTN5jfFwedocA
 7uXkCzqNp5DAhB2lYddMD0IOyei+qiqM8KB/JvYI8UChXV444mRcKK1ZeXgdR8TygLuv
 oeIA==
X-Gm-Message-State: AGi0PubOqf/x+JInuodQ7rBvs0DExKnD5YfYwCboHFoseUVcmmHcnkCh
 LAChhBd//bnPEWYn7UGLovUPvfrYhCQ=
X-Google-Smtp-Source: APiQypIaKThUPLtvMMac9xhurXkprndPdOcg+ykuEKeqplXwKTakjIUgnRE7cxE4ohy2M3OR7maHuA==
X-Received: by 2002:a05:6512:3187:: with SMTP id
 i7mr89563lfe.101.1588201427072; 
 Wed, 29 Apr 2020 16:03:47 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com.
 [209.85.167.47])
 by smtp.gmail.com with ESMTPSA id t19sm3592653lfl.53.2020.04.29.16.03.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Apr 2020 16:03:46 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id y3so3147827lfy.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 16:03:45 -0700 (PDT)
X-Received: by 2002:a19:240a:: with SMTP id k10mr119932lfk.30.1588201425482;
 Wed, 29 Apr 2020 16:03:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
In-Reply-To: <20200429215620.GM1551@shell.armlinux.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 29 Apr 2020 16:03:29 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
Message-ID: <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Greg Ungerer <gerg@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_160352_311343_373FD804 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nicolas Pitre <nico@fluxnic.net>,
 Linux-sh list <linux-sh@vger.kernel.org>, Jann Horn <jannh@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Mark Salter <msalter@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 2:57 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> I've never had any reason to use FDPIC, and I don't have any binaries
> that would use it.  Nicolas Pitre added ARM support, so I guess he
> would be the one to talk to about it.  (Added Nicolas.)

While we're at it, is there anybody who knows binfmt_flat?

It might be Nicolas too.

binfmt_flat doesn't do core-dumping, but it has some other oddities.
In particular, I'd like to bring sanity to the installation of the new
creds, and all the _normal_ binfmt cases do it largely close together
with setup_new_exec().

binfmt_flat is doing odd things. It's doing this:

        /* Flush all traces of the currently running executable */
        if (id == 0) {
                ret = flush_old_exec(bprm);
                if (ret)
                        goto err;

                /* OK, This is the point of no return */
                set_personality(PER_LINUX_32BIT);
                setup_new_exec(bprm);
        }

in load_flat_file() - which is also used to loading _libraries_. Where
it makes no sense at all.

It does the

        install_exec_creds(bprm);

in load_flat_binary() (which makes more sense: that is only for actual
binary loading, no library case).

I would _like_ for every binfmt loader to do

        /* Flush all traces of the currently running executable */
        retval = flush_old_exec(bprm);
        if (retval)
                return retval;

   .. possibly set up personalities here ..

        setup_new_exec(bprm);
        install_exec_creds(bprm);

all together, and at least merge 'setup_new_exec()' with 'install_exec_creds()'.

And I think all the binfmt handlers would be ok with that, but the
flat one in particular is really oddly set up.

*Particularly* with that flush_old_exec/setup_new_exec() being done by
the same routine that is also loading libraries (and called from
'calc_reloc()' from binary loading too).

Adding Greg Ungerer for m68knommu. Can somebody sort out why that
flush_old_exec/setup_new_exec() isn't in load_flat_binary() like
install_exec_creds() is?

Most of that file goes back to pre-git days. And most of the commits
since are not so much about binfmt_flat, as they are about cleanups or
changes elsewhere where binfmt_flat was just a victim.

               Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
