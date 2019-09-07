Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9B6AC7DE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:06:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=McXOvgnMTuVV6ra3n00wuEjhaL2jfdwuUap6NGZepOk=; b=alksMMgmoLpmpn
	IhSVfal3k+Fm2zWDtf0rS/5gSsN+QmwpJbrx4ZUq/pZMAzFRVlj6Q8jZxkColJj/vpE7Rxe6kBnGI
	YPRqghRQkgtbmN9rGQeBj0rq70C/0ukbV13sUzUz3MzmBQaNxfW8eQBSa7vLC4eAdKygMgKWqfLj6
	RU+kgmIsySn/inSQ8GLClzGGco+BwJbMNzSDMMZBcoJ7/THnGKe8AMWRnLydvTvmbgv89AsUw59nP
	U/y5ivPk57vi6f+wCWL4y5UktZE+/gjp2f+YhQy88bxIk9aCdg5LB/lz4s5PGiMyuQwr87BzJFnrM
	E2xQG/D5LGuYaIIzWjwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6eA2-0000Nm-Dg; Sat, 07 Sep 2019 17:06:06 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6e9n-0000Mo-IT
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:05:53 +0000
Received: by mail-lf1-x141.google.com with SMTP id c12so7446834lfh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VaxRwZcXIqBCeM77ijL8A1h5NduVbQyHYByckmz1gJk=;
 b=Ldlyq4Px8HcWw652TFUFBz92WQlbW6hSwxMlCjQQ7ArJ4KZCkRlTmS1rpYbWoVnDTP
 m2fPZeqordNjkxzXe2jf1KmkqKcGf1nJr407YEJX5jdvDfinEa81A2+g7kiafJJQtJkb
 2rcL8ecVWF8zjmoPoJgLSziuzeA0NFXkftsDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VaxRwZcXIqBCeM77ijL8A1h5NduVbQyHYByckmz1gJk=;
 b=TPEQc3xLHI5araA2FACc9PCY2m/Msrrw7IUbHmAxUeNIUlGE/+J8pF9laj62I0R0yz
 t3wBBKCEIZP8vyDEPXyQdO+kbi3N42JBR8Ox2RV7rcAAuX222yiqAlT3toDTw4ZKHHkX
 BOQP4MLktHzfUyEbwPuv+ZTsUHsItkWmZ7jcTyKFcdMmj9ZwsPnbnkIFp6HIo84/H9Qb
 w/nBGrW3e0CRVSSC//d2BNl4g7D3eQHFHGT9wRWnRn6R3Kc05BuBgB8MGiNs6FbWBN4+
 1oPd0UqS3k2dgY+LLeJshm8Nf3YGY5oFLl92boxIVEOfnrjy/13d9qASJGgC2yt7PQaV
 MIiw==
X-Gm-Message-State: APjAAAUK0w5tkwvEuWbqJvNs2J9AqgtJvGRemHBHvMgboEk8gMyjRKfU
 fJUXwEkLz/WCFolWp1JchFTUHRdUFaU=
X-Google-Smtp-Source: APXvYqwX/lDl7vk9UVUe0iHzXVLjsmaeLy78d/zqlqajQylFQjPhOnyJLS7fX4MdGgIMKbvnQ2s+wg==
X-Received: by 2002:ac2:4d18:: with SMTP id r24mr10578222lfi.34.1567875946296; 
 Sat, 07 Sep 2019 10:05:46 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id d14sm1787944lfi.14.2019.09.07.10.05.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Sep 2019 10:05:46 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id l11so7445193lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:05:45 -0700 (PDT)
X-Received: by 2002:a19:f204:: with SMTP id q4mr5583225lfh.29.1567875518853;
 Sat, 07 Sep 2019 09:58:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-12-cyphar@cyphar.com>
 <7236f382d72130f2afbbe8940e72cc67e5c6dce0.camel@kernel.org>
In-Reply-To: <7236f382d72130f2afbbe8940e72cc67e5c6dce0.camel@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 7 Sep 2019 09:58:23 -0700
X-Gmail-Original-Message-ID: <CAHk-=whZx97Nm-gUK0ppofj2RA2LLz2vmaDUTKSSV-+yYB9q_Q@mail.gmail.com>
Message-ID: <CAHk-=whZx97Nm-gUK0ppofj2RA2LLz2vmaDUTKSSV-+yYB9q_Q@mail.gmail.com>
Subject: Re: [PATCH v12 11/12] open: openat2(2) syscall
To: Jeff Layton <jlayton@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_100551_614192_1488E1A1 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Jiri Olsa <jolsa@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Aleksa Sarai <cyphar@cyphar.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 alpha <linux-alpha@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Linux Containers <containers@lists.linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 7, 2019 at 5:40 AM Jeff Layton <jlayton@kernel.org> wrote:
>
> After thinking about this a bit, I wonder if we might be better served
> with a new set of OA2_* flags instead of repurposing the O_* flags?

I'd hate to have yet _another_ set of translation functions, and
another chance of people just getting it wrong either in user space or
the kernel.

So no. Let's not make another set of flags that has no sane way to
have type-safety to avoid more confusion.

The new flags that _only_ work with openat2() might be named with a
prefix/suffix to mark that, but I'm not sure it's a huge deal.

                 Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
