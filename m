Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985CE1BB4D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 05:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7DHwJqTOFuZgiKZOWk9PW0sas3581Ts1VxikHrDlOs=; b=eZeX/ELr63rIAk
	NfPGRstKwsw8ZeMQsCafS2/allaUB+80/T3ImPkbjZpNEsCFiQHJRz22oVzTLwz0HeNCfbWtGUvcI
	sQL8cTPuiH5J04CxCkJc0FMPekWbj/zxVltbY4jhY1BvkCTSh7nSS4PiTB8nu/EJhhTzPdk+8ZF9V
	EY83PceSdkuOGB4FqotVFKrIqxWgBGRlxFy7LKmxE6jRdUajg5o9tc3VAOt1mjSHbAXxZba/jvSnF
	eYkbqaD6BoCK0ca9jPx2Py39skuLw+3zHUecfZclp4SRZyQVrQF2NZpq3h0D2zXAa/2I4ySl1eSq/
	WZApBtri0x3+e7qvgUcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTHH6-0000tk-Pn; Tue, 28 Apr 2020 03:51:12 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTHGy-0000t9-Bi
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 03:51:05 +0000
Received: by mail-lj1-x241.google.com with SMTP id u6so19896833ljl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 20:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VVBS2zR8u10QnId+SjIws+E/mbDlgxt11FVLpUCy9Fk=;
 b=fSI/ijUiq7Zsrz+mYpIid9wBMr+ufvXZJdEGYfYAV6Wa7WrfJcI8pP8JyJG39ryg8H
 oS3R8qQuk5cLe0fU2CCWNj05+kTTXNRrrHruAKyDUm0TOEQcvdS9B6OBB0/HcU2kGNsZ
 OclGbGyiNhfGDIr+gFIj8hC2fmRzB7XJRVfjs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VVBS2zR8u10QnId+SjIws+E/mbDlgxt11FVLpUCy9Fk=;
 b=KrrU+ogUi2LgwbqstaB1xvZXpjCFEy6mdNdvV1nmab0Y0xFfwZsmsYFIHxDZH/FrVo
 mBudPdpvJa4YMO8rPmga2nmaSBqA3FWBNf/N45iHnEacT4F/EL4fA0TtLDBPk+UxptLi
 VsWcOy4eQoymqaLJ5W2lH6yYgFOETriFOowW4PnO9Mh3mCDi7q9Q/KqEjcDpen3OHTd5
 FXCVt27gnqi87GUvWPFyiNsIunI6ZFfFENpFhgDxe6by0oOYMpqdiXDW5uDIvWII/VYe
 AYChBjf9O/A1DTQMqqCfH9O7LL9SPP5iZqixSIugtQZEu5NZUJuywxLQiGhVd7E133+Q
 ulXA==
X-Gm-Message-State: AGi0PubBWbNp9MMWkKCjNTGxqHaxA1OiirtBSYFtZIsPbTGiSx2xSqOc
 CZGPoun4aB3PfF3T1uvzRChKSN5Pwl0=
X-Google-Smtp-Source: APiQypLK4Z0THTWWtvrW6wCFtQbuIETwxfARho6EuezWINbvfDP/5+eL3w9bwXS3Zgov9VxqzceQlA==
X-Received: by 2002:a2e:9acc:: with SMTP id p12mr16442228ljj.68.1588045858234; 
 Mon, 27 Apr 2020 20:50:58 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
 [209.85.208.172])
 by smtp.gmail.com with ESMTPSA id j14sm13120312lfm.73.2020.04.27.20.50.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 20:50:57 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id a21so19924094ljb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 20:50:56 -0700 (PDT)
X-Received: by 2002:a2e:7308:: with SMTP id o8mr16201494ljc.16.1588045856507; 
 Mon, 27 Apr 2020 20:50:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200428032745.133556-1-jannh@google.com>
 <20200428032745.133556-6-jannh@google.com>
In-Reply-To: <20200428032745.133556-6-jannh@google.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 27 Apr 2020 20:50:40 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgBNSQhH1gyjo+Z2NFy4tOQnBQB4rra-jh+3XTpOjnThQ@mail.gmail.com>
Message-ID: <CAHk-=wgBNSQhH1gyjo+Z2NFy4tOQnBQB4rra-jh+3XTpOjnThQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] mm/gup: Take mmap_sem in get_dump_page()
To: Jann Horn <jannh@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_205104_402339_F1C6519E 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Mark Salter <msalter@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 8:28 PM Jann Horn <jannh@google.com> wrote:
>
> Properly take the mmap_sem before calling into the GUP code from
> get_dump_page(); and play nice, allowing __get_user_pages_locked() to drop
> the mmap_sem if it has to sleep.

This makes my skin crawl.

The only reason for this all is that page cache flushing.

My gut feeling is that it should be done by get_user_pages() anyway,
since all the other users presumably want it to be coherent in the
cache.

And in fact, looking at __get_user_pages(), it already does that

                if (pages) {
                        pages[i] = page;
                        flush_anon_page(vma, page, start);
                        flush_dcache_page(page);
                        ctx.page_mask = 0;
                }

and I think that the get_dump_page() logic is unnecessary to begin with.

               Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
