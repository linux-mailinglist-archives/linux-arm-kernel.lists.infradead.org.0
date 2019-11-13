Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29471FA25C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 03:04:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gbs35+npe717AR4YZjnknp8+yr32WBLzmovh7Mx+KT0=; b=laJSVuNNv+VO6h
	P6A/3OmwrRSF9Hk8qeE7YYWz/+NIHxQOjdEnQP1a3hmdAEBNxHq7UC9BfFfP31q9Vk3Vl7wpCBiEb
	nIEUJuMGOqc8+ju9VAXqxNOwhKY+QEP7+YQEsV92E0vMq1iiOBHLSsN2JRkOPGGaCgPufwgc9PGX1
	7OBMaCdRC1A6S19Vvcy7j3kYTdU3tH5apX/ZAXfpI4cnBztxx3OnS8Id9mlg5IcbjEgeMpdH53IkX
	Nv74OWyvpEwNRIbG/V5vMeRMAWqcNzsQQ7AjHWbZn+87UYZi/FApPU9vWYTt24MJdpy8LIhmkAdZA
	2gbmEOCkkOcypEOWZARQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUi0h-0003n6-0Z; Wed, 13 Nov 2019 02:03:55 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUi0V-0003mK-Ns
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 02:03:44 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iUhzv-0008C3-Ic; Wed, 13 Nov 2019 02:03:07 +0000
Date: Wed, 13 Nov 2019 02:03:07 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v15 5/9] namei: LOOKUP_IN_ROOT: chroot-like scoped
 resolution
Message-ID: <20191113020307.GB26530@ZenIV.linux.org.uk>
References: <20191105090553.6350-1-cyphar@cyphar.com>
 <20191105090553.6350-6-cyphar@cyphar.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105090553.6350-6-cyphar@cyphar.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_180343_781856_66C31E51 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Christian Brauner <christian.brauner@ubuntu.com>,
 Jiri Olsa <jolsa@redhat.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, libc-alpha@sourceware.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 Chanho Min <chanho.min@lge.com>, Jeff Layton <jlayton@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 08:05:49PM +1100, Aleksa Sarai wrote:

> @@ -2277,12 +2277,20 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
>  
>  	nd->m_seq = read_seqbegin(&mount_lock);
>  
> -	/* Figure out the starting path and root (if needed). */
> -	if (*s == '/') {
> +	/* Absolute pathname -- fetch the root. */
> +	if (flags & LOOKUP_IN_ROOT) {
> +		/* With LOOKUP_IN_ROOT, act as a relative path. */
> +		while (*s == '/')
> +			s++;

Er...  Why bother skipping slashes?  I mean, not only link_path_walk()
will skip them just fine, you are actually risking breakage in this:
                if (*s && unlikely(!d_can_lookup(dentry))) {
                        fdput(f);
                        return ERR_PTR(-ENOTDIR);
                }
which is downstream from there with you patch, AFAICS.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
