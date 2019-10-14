Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC30D5C4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWwOtE4kadKqGKXkDAFTWwZ0HAI6QRI7iF7wc8hE09I=; b=Qo9c+zwKrnhAz5
	68KNmK55iwbWldpU7fKqA3JUtaHJu8Bz0c8nk/jH3U7aJBGF3/It3443JN+g8U6mSF/izKil68cjz
	gpqYsspCueMPqrXFkBioFeKk8PAsDVI6NDPgkdkRyt+TS6nS4sgv8X9DY6gNLgZ6rPtAPjy/JAHCc
	/mMKT7gadMEnHy5M6CTyYLwzJvU8YwxJV+MVnLCmIJtqqOW1cBKFimgphzZgrQm6HXofM+TJMmU59
	XsI4z4FvPo68+07tKC04fQLs/Z0vXC6f1TkNZ80SlgU0eGHcydP7eg5BMFs3nbmjVKv4ZBE/EShjz
	A5u1lWOnBt79SjW/dtjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJukC-00057A-6p; Mon, 14 Oct 2019 07:26:16 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuk0-00056f-AA
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:26:06 +0000
Received: by mail-qk1-f194.google.com with SMTP id p10so15016952qkg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 00:26:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RBbQ7AJ/stV479Rt04hsWNzYBmmUeW9a8wkE7BnGvkk=;
 b=i0NXNHIyJ+FTDwRlKr9MMZjD1SAYv3JdGcLv/Ifs4LOD3M3zik4Nb7sIiaVVjnIC3+
 jrzCMPxAt9W2B8VU1D/jybFf1BSjEvsJmG338YjxwzO1rMRvh4PhmXEWK/ZZieNXn4Z4
 atH90c5y9a7ZotmyQIfpDoc7UZP22UgrmJh37NlzoUja3qKiEREJGhYD1N68ARshuv2W
 kEJNVfFrtXbY5JckG6itvBLR868lQ17yeU8IcF7FuPpWMtdJxAjpEFHs5PVRnT6jLHes
 Ijq1tB3ajvrgdYPJ0V+QR+bS7gdff5r6XbL4Cn5+udvIOcP8Pb5ZCL45wUErNOfMMFqO
 ZKvQ==
X-Gm-Message-State: APjAAAVIaoUogIk4ItpjRbEbcYpidMdm45uz2fgjvVbtetJ5UP47RqV8
 gZNfCK89J/vicYx7YxuOXAq4O4gSXgqcMLIuCR0=
X-Google-Smtp-Source: APXvYqz2TOipLeJNoc6W1LT+iyQ+6UNf7hUSfkWUf8PsO/zIIpkBSzQ9geh2eCZiiNlHHW+TAbvlaEO4vlEOK5i7Q9M=
X-Received: by 2002:a37:a755:: with SMTP id q82mr15517562qke.394.1571037962634; 
 Mon, 14 Oct 2019 00:26:02 -0700 (PDT)
MIME-Version: 1.0
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191013221310.30748-2-sebastian@breakpoint.cc>
In-Reply-To: <20191013221310.30748-2-sebastian@breakpoint.cc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 14 Oct 2019 09:25:46 +0200
Message-ID: <CAK8P3a0q+03=uNcnnHrGqHGOcAO3-mytxSmoBWLtHY+5StMNOQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] sh: Move cmpxchg-xchg.h to asm-generic
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_002604_355583_6ACB9DF8 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Rich Felker <dalias@libc.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 12:13 AM Sebastian Andrzej Siewior
<sebastian@breakpoint.cc> wrote:
>
> The header file is very generic and could be reused by other
> architectures as long as they provide __cmpxchg_u32().
>
> Move sh's cmpxchg-xchg.h to asm-generic.
>
> Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
> Cc: Rich Felker <dalias@libc.org>
> Cc: Arnd Bergmann <arnd@arndb.de>

Acked-by: Arnd Bergmann <arnd@arndb.de>

Maybe change the "#ifndef __ASM_SH_CMPXCHG_XCHG_H"
to __ASM_GENERIC_*.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
