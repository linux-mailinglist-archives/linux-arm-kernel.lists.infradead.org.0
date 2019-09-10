Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA38AE3D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 08:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5pt4UqpgmKd7lVjRi+NEqddnmVHEYCiueawV+Qa/vQ=; b=gR8QlOtjTrC0rW
	+LwPE1uLwG4/RYFKwMC2EIf8DMBPX/spa7O4+EUTXR5I76Laz1JZeVmfA6DJVH0fsSmRnIlEMJloR
	rdWnBOyImFYngl9+oeLo1HA8I5P9es+iip9FqHSM07oV08ReOvybYzwifurg4PbJ/RO4l5fMZG8mM
	VLzLcjVlLJR1qKWAqRlJR3hyPaR+1zkKc8jw/jRro6zC0NeMZHlCiNyUOVZ3u/O6Y8ZHWC1DliRcU
	PHgw9m2dloA0sCeGaFkzX1u5+o+byvG5M8Lh6lH4zKYSwHHJ04JW8n5Mz5cLdO5W57GhwnDsYEGvt
	e0yD3HmnmK8NwzCgPmrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Zl3-0005xd-LJ; Tue, 10 Sep 2019 06:36:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ZkZ-0005TS-VL
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 06:35:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id h7so16600313wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 23:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9uC8BSyBqqvpBHr+UBJrMjpTjeLS9eaSkiimfXBOGmI=;
 b=RT2CZzYflWq0hJIviZ1qNiz7T8GR4+WUrisMZXe3m9cauTkqIyyVGGFPULrde7A02W
 tj7FplDkEllE02owPbUYDzEtapP1C48use/4kFc7fZZmFt/DdDZTI55D8qvOaO2r24Ne
 q4FNPrvlkjfx+lYW3lSYcZ69k2e463dcG9Y4rn+PPa/Glpr++eDfgJ8gFO5kdGQ+ZZAk
 nXhnUxrt/DhKZTkCCWYef7FPywkEzNn0z8LUShNXRMIkZZwOG/G3kJoXGIwG7zGeC0aS
 TI+DZ2QVgsA7VVK9EZCvbN7bPdpk9PkNXAPdUVWeWNcFfO4yiY8K5tj2pJUrGvJYeUSW
 9/rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=9uC8BSyBqqvpBHr+UBJrMjpTjeLS9eaSkiimfXBOGmI=;
 b=IzH5fxJS+UexJb8ysFcI6vCUYz3/0rM8Pyuh+KJcrsRg3BZtOySGgu7mYcWucNf0Fi
 wmWPp53oCSRj2gnY19pYpqRYUQE3alBSnrREtB+LzbKzHPZC/klykBStmpO6PlT4jtB6
 msSV4ZkAtkVf47/PaguQtI7xsNTaPFEPD+1DvE89BQuUDf0Nrxv40plf9a5dJgkZG3ZL
 aSsf2Ynbyh0lkS5DD6mmCoxnP6gtwUjtCxoXD35kMjD3tPN56pP0Xj9mQVRavh5hMWY4
 9dcZi8dk6L7LEdkdq4+q6v600c3pjteabMG4GiNHa6LrOvYbMD7pONzOxvM5agf/qC8d
 kASw==
X-Gm-Message-State: APjAAAWAagSFxBP/AIZWPVXCgDsZ1+hko/ycfYdDfJWut0JLv1XBMs9v
 ClQrQbl3SQtAWKufdSRaH3k=
X-Google-Smtp-Source: APXvYqw8XHm4leFwnC6sWR8BjhyMsv0e/YjeclMhzrktUUdT/wG1WxzN3IHekSLZEGkf3MnHklk0qA==
X-Received: by 2002:a5d:6b0f:: with SMTP id v15mr22340960wrw.19.1568097336267; 
 Mon, 09 Sep 2019 23:35:36 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id u22sm32329249wru.72.2019.09.09.23.35.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 23:35:35 -0700 (PDT)
Date: Tue, 10 Sep 2019 08:35:32 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH v12 11/12] open: openat2(2) syscall
Message-ID: <20190910063532.GB1579@gmail.com>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-12-cyphar@cyphar.com>
 <7236f382d72130f2afbbe8940e72cc67e5c6dce0.camel@kernel.org>
 <CAHk-=whZx97Nm-gUK0ppofj2RA2LLz2vmaDUTKSSV-+yYB9q_Q@mail.gmail.com>
 <C81D6D29-F6BF-48E6-A15E-3ABCB2C992E5@amacapital.net>
 <CAHk-=whe90Ec_RRrMRLE0=bJOHNS9YmVwcytVxmrfK3oCuZF6A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whe90Ec_RRrMRLE0=bJOHNS9YmVwcytVxmrfK3oCuZF6A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_233540_042053_27740BA5 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 1.7 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Andy Lutomirski <luto@amacapital.net>, Eric Biederman <ebiederm@xmission.com>,
 alpha <linux-alpha@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Linux Containers <containers@lists.linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


* Linus Torvalds <torvalds@linux-foundation.org> wrote:

> On Sat, Sep 7, 2019 at 10:42 AM Andy Lutomirski <luto@amacapital.net> wrote:
> >
> > Linus, you rejected resolveat() because you wanted a *nice* API
> 
> No. I rejected resoveat() because it was a completely broken garbage
> API that couldn't do even basic stuff right (like O_CREAT).
> 
> We have a ton of flag space in the new openat2() model, we might as
> well leave the old flags alone that people are (a) used to and (b) we
> have code to support _anyway_.
> 
> Making up a new flag namespace is only going to cause us - and users -
> more work, and more confusion. For no actual advantage. It's not going
> to be "cleaner". It's just going to be worse.

I suspect there is a "add a clean new flags namespace" analogy to the 
classic "add a clean new standard" XKCD:

	https://xkcd.com/927/

Thanks,

	Ingo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
