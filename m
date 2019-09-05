Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D25AA11F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Ba2JIaKKh9h60zYCdpTbNtJpQ31Znts4ckoNdlFzD8=; b=X9A6hHKGij6+M3
	FHE6Q/7zzB+ulwPCBylO7qnY6YhCr8/7QuFIZYmzh7vm+nUtzX5oG7ImoQs01uYDGXMlzbc5poxFH
	VuGVGsz1vA52mCK39CJw/GaKhQL8BJY/v2sSCAZZz6mfA/5T50vypAmQSVLrsdMQqXSM5M+c8/lvV
	/lfnte8o7AW+lrpv4aBA0IRi883/LxXMVTal7Q/0MYDWYF2/lQOe2A8250P5XWBNZSxm82pEBZu+m
	3zKPKE/wUO1CxZOx4cxPVnn0ljQjKPLTwymqgYa7t1NIJQgWdl26ZrtftX/aPGCilwMfgudYa8YT4
	Mzpnk0bRxCIWTf2veCNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pm1-00017c-EX; Thu, 05 Sep 2019 11:17:57 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5plo-00016p-1Q
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:17:45 +0000
Received: by mail-lj1-x244.google.com with SMTP id u14so2004540ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 04:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FZQLTiI56V9ejCTERxmKEuoyOsqpXI4ROWUat/u48IQ=;
 b=TmAHYZxqRc6xu2le8iULfxikI7ku0uT9OqruTeiVIjBtHlSUVtr7xfmu4YCFlsjTOs
 Rhq1GYmaO5KwXBXGMlzcAxQ/LcO6e9A60OIH5XcxDVVNn2uwqfJXj5l04xQJTBjas8S+
 rezhJDHHi4QSeAmUuvBdnaXdMHr6k1YEDw8fQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FZQLTiI56V9ejCTERxmKEuoyOsqpXI4ROWUat/u48IQ=;
 b=OGOj3u8j29yWgVV6n3ZDzaXVpDDAMUEkzaahsYDoz98ilqnBYwEPEuFMfSwV6Q2Kqx
 DUNQ0pA/hzYp18KTCbsduAasZcVAwpVBx7/J1en9FPBsP0MMl5WEulNdDgIdn2iRW7+Y
 Ol4eBzbnar99RK5wE7i1Fjlrh5NtEDetrLnzF3YUhH/noVn9nD2djX0g7ka/kdyUeq0Z
 eNM7cwaJ6ilIcz/lTgIJySDwS1njkBvRbP0wASO/WJL1g84pUSTpD5Bxe+0TX6yebB5H
 rtD+PkEsVnR44e0gF1vBuEenkAxEhP8Up0CKm8euuTRU79mDRt7wih3CrKH5RrkN85r2
 bODg==
X-Gm-Message-State: APjAAAXqZAub9No99AMBKQjEKNo692gQhGUwpyuSWCtmWvCA84cvoH+e
 zBO4dVn4RkR8/LWGtNJXfewqgg==
X-Google-Smtp-Source: APXvYqy+jIyWA4s/Awrv2CCVQWWEoIb0eYt4SAhqVoZ9KSv6Iim6pns0uTxVPV5vb5IsmAlCA9M4vg==
X-Received: by 2002:a2e:5418:: with SMTP id i24mr1705390ljb.126.1567682261376; 
 Thu, 05 Sep 2019 04:17:41 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id l3sm377157lfc.31.2019.09.05.04.17.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 04:17:40 -0700 (PDT)
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to,from}_user
 helpers
To: Christian Brauner <christian.brauner@ubuntu.com>,
 Aleksa Sarai <cyphar@cyphar.com>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
 <20190905110544.d6c5t7rx25kvywmi@wittgenstein>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <ae415ea8-4442-d81c-3b46-2ae5fb35bbdf@rasmusvillemoes.dk>
Date: Thu, 5 Sep 2019 13:17:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905110544.d6c5t7rx25kvywmi@wittgenstein>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_041744_084034_A8BC9DDD 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, David Howells <dhowells@redhat.com>,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 Jiri Olsa <jolsa@redhat.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/09/2019 13.05, Christian Brauner wrote:
> On Thu, Sep 05, 2019 at 06:19:22AM +1000, Aleksa Sarai wrote:

>> +	if (unlikely(!access_ok(dst, usize)))
>> +		return -EFAULT;
>> +
>> +	/* Deal with trailing bytes. */
>> +	if (usize < ksize) {
>> +		if (memchr_inv(src + size, 0, rest))
>> +			return -EFBIG;
>> +	} else if (usize > ksize) {
>> +		if (__memzero_user(dst + size, rest))
>> +			return -EFAULT;
> 
> Is zeroing that memory really our job? Seems to me we should just check
> it is zeroed.

Of course it is, otherwise you'd require userspace to clear the output
buffer it gives us, which in the majority of cases is wasted work. It's
much easier to reason about if we just say "the kernel populates [uaddr,
uaddr + usize)".

It's completely symmetric to copy_struct_from_user doing a memset() of
the tail of the kernel buffer in case of ksize>usize - you wouldn't want
to require the kernel callers to pass a zeroed buffer to
copy_struct_from_user() - it's just that when we memset(__user*),
there's an error check to do.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
