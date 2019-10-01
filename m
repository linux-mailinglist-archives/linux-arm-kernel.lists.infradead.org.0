Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DE1C2CC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 07:07:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0v+Nw7zg0pY+maFHfh69XFBWTLEzXUpwIR5rS42+ZA=; b=bZf/u3GhUUe9w1
	ZCrEm5JY4cLjGves0wQcwNXWPbwlp2oOCHwzRiTx/QIDrYQqkfkqQ877HftnNdnZopVPVlEwEqGxF
	8lepcY9JpfIUQ/PkJdoarGHp63BNeTytQS0STwHZiCYQ2OqkIJJlGrOPaMZYSRNWFDzYB6Uc2P2hF
	WxHhd8/cFM9GnGvW5ebLSsEfztzzIPc7l0y4A+kgEDnCFpbr16UdSv3hke+wQGQrBggelgGxFGaIt
	dATlr41Uxxd5gAGG/FLWu1saqlHmTOgqV0VdztkO13iQ/2sumSENVmJHFuGBoDlu/8ysgeSBEKVub
	8yNl9XJ157l4wVjkjkCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFANY-0002cu-24; Tue, 01 Oct 2019 05:07:16 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFANO-0002cL-Hw
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 05:07:08 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 22:07:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,569,1559545200"; d="scan'208";a="190474561"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 30 Sep 2019 22:06:56 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iFANE-000IpB-8f; Tue, 01 Oct 2019 13:06:56 +0800
Date: Tue, 1 Oct 2019 13:06:23 +0800
From: kbuild test robot <lkp@intel.com>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v13 7/9] open: openat2(2) syscall
Message-ID: <201910011326.iTYOtJYo%lkp@intel.com>
References: <20190930183316.10190-8-cyphar@cyphar.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930183316.10190-8-cyphar@cyphar.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_220706_636341_F2FA7FCC 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Eric Biederman <ebiederm@xmission.com>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Oleg Nesterov <oleg@redhat.com>,
 Aleksa Sarai <cyphar@cyphar.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 linux-arm-kernel@lists.infradead.org, "J. Bruce Fields" <bfields@fieldses.org>,
 libc-alpha@sourceware.org, linux-parisc@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-api@vger.kernel.org,
 Chanho Min <chanho.min@lge.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 kbuild-all@01.org, linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Aleksa,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[cannot apply to v5.4-rc1 next-20191001]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Aleksa-Sarai/namei-openat2-2-path-resolution-restrictions/20191001-025628
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-37-gd466a02-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   fs/open.c:757:13: sparse: sparse: restricted fmode_t degrades to integer
   fs/open.c:983:18: sparse: sparse: restricted fmode_t degrades to integer
>> fs/open.c:1011:36: sparse: sparse: invalid assignment: |=
>> fs/open.c:1011:36: sparse:    left side has type int
>> fs/open.c:1011:36: sparse:    right side has type restricted fmode_t
   fs/open.c:1013:36: sparse: sparse: invalid assignment: |=
   fs/open.c:1013:36: sparse:    left side has type int
   fs/open.c:1013:36: sparse:    right side has type restricted fmode_t
>> fs/open.c:1029:24: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted fmode_t [usertype] opath_mask @@    got pe] opath_mask @@
>> fs/open.c:1029:24: sparse:    expected restricted fmode_t [usertype] opath_mask
>> fs/open.c:1029:24: sparse:    got int opath_mask
>> fs/open.c:1011:36: sparse: sparse: invalid assignment: |=
>> fs/open.c:1011:36: sparse:    left side has type int
>> fs/open.c:1011:36: sparse:    right side has type restricted fmode_t
   fs/open.c:1013:36: sparse: sparse: invalid assignment: |=
   fs/open.c:1013:36: sparse:    left side has type int
   fs/open.c:1013:36: sparse:    right side has type restricted fmode_t
>> fs/open.c:1029:24: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted fmode_t [usertype] opath_mask @@    got pe] opath_mask @@
>> fs/open.c:1029:24: sparse:    expected restricted fmode_t [usertype] opath_mask
>> fs/open.c:1029:24: sparse:    got int opath_mask
>> fs/open.c:1011:36: sparse: sparse: invalid assignment: |=
>> fs/open.c:1011:36: sparse:    left side has type int
>> fs/open.c:1011:36: sparse:    right side has type restricted fmode_t
   fs/open.c:1013:36: sparse: sparse: invalid assignment: |=
   fs/open.c:1013:36: sparse:    left side has type int
   fs/open.c:1013:36: sparse:    right side has type restricted fmode_t
>> fs/open.c:1029:24: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted fmode_t [usertype] opath_mask @@    got pe] opath_mask @@
>> fs/open.c:1029:24: sparse:    expected restricted fmode_t [usertype] opath_mask
>> fs/open.c:1029:24: sparse:    got int opath_mask
   fs/open.c:1173:15: sparse: sparse: undefined identifier 'copy_struct_from_user'

vim +1011 fs/open.c

   957	
   958	static inline int build_open_flags(const struct open_how *how,
   959					   struct open_flags *op)
   960	{
   961		int flags = how->flags;
   962		int lookup_flags = 0;
   963		int opath_mask = 0;
   964		int acc_mode = ACC_MODE(flags);
   965	
   966		/*
   967		 * Older syscalls still clear these bits before calling
   968		 * build_open_flags(), but openat2(2) checks all its arguments.
   969		 */
   970		if (flags & ~VALID_OPEN_FLAGS)
   971			return -EINVAL;
   972		if (how->resolve & ~VALID_RESOLVE_FLAGS)
   973			return -EINVAL;
   974		if (!(how->flags & (O_PATH | O_CREAT | __O_TMPFILE)) && how->mode != 0)
   975			return -EINVAL;
   976	
   977		if (flags & (O_CREAT | __O_TMPFILE))
   978			op->mode = (how->mode & S_IALLUGO) | S_IFREG;
   979		else
   980			op->mode = 0;
   981	
   982		/* Must never be set by userspace */
 > 983		flags &= ~FMODE_NONOTIFY & ~O_CLOEXEC;
   984	
   985		/*
   986		 * O_SYNC is implemented as __O_SYNC|O_DSYNC.  As many places only
   987		 * check for O_DSYNC if the need any syncing at all we enforce it's
   988		 * always set instead of having to deal with possibly weird behaviour
   989		 * for malicious applications setting only __O_SYNC.
   990		 */
   991		if (flags & __O_SYNC)
   992			flags |= O_DSYNC;
   993	
   994		if (flags & __O_TMPFILE) {
   995			if ((flags & O_TMPFILE_MASK) != O_TMPFILE)
   996				return -EINVAL;
   997			if (!(acc_mode & MAY_WRITE))
   998				return -EINVAL;
   999		} else if (flags & O_PATH) {
  1000			/*
  1001			 * If we have O_PATH in the open flag. Then we
  1002			 * cannot have anything other than the below set of flags
  1003			 */
  1004			flags &= O_DIRECTORY | O_NOFOLLOW | O_PATH;
  1005			acc_mode = 0;
  1006	
  1007			/* Allow userspace to restrict the re-opening of O_PATH fds. */
  1008			if (how->upgrade_mask & ~VALID_UPGRADE_FLAGS)
  1009				return -EINVAL;
  1010			if (!(how->upgrade_mask & UPGRADE_NOREAD))
> 1011				opath_mask |= FMODE_PATH_READ;
  1012			if (!(how->upgrade_mask & UPGRADE_NOWRITE))
  1013				opath_mask |= FMODE_PATH_WRITE;
  1014		}
  1015	
  1016		op->open_flag = flags;
  1017	
  1018		/* O_TRUNC implies we need access checks for write permissions */
  1019		if (flags & O_TRUNC)
  1020			acc_mode |= MAY_WRITE;
  1021	
  1022		/* Allow the LSM permission hook to distinguish append
  1023		   access from general write access. */
  1024		if (flags & O_APPEND)
  1025			acc_mode |= MAY_APPEND;
  1026	
  1027		op->acc_mode = acc_mode;
  1028		op->intent = flags & O_PATH ? 0 : LOOKUP_OPEN;
> 1029		op->opath_mask = opath_mask;
  1030	
  1031		if (flags & O_CREAT) {
  1032			op->intent |= LOOKUP_CREATE;
  1033			if (flags & O_EXCL)
  1034				op->intent |= LOOKUP_EXCL;
  1035		}
  1036	
  1037		if (flags & O_DIRECTORY)
  1038			lookup_flags |= LOOKUP_DIRECTORY;
  1039		if (!(flags & O_NOFOLLOW))
  1040			lookup_flags |= LOOKUP_FOLLOW;
  1041		if (flags & O_EMPTYPATH)
  1042			lookup_flags |= LOOKUP_EMPTY;
  1043	
  1044		if (how->resolve & RESOLVE_NO_XDEV)
  1045			lookup_flags |= LOOKUP_NO_XDEV;
  1046		if (how->resolve & RESOLVE_NO_MAGICLINKS)
  1047			lookup_flags |= LOOKUP_NO_MAGICLINKS;
  1048		if (how->resolve & RESOLVE_NO_SYMLINKS)
  1049			lookup_flags |= LOOKUP_NO_SYMLINKS;
  1050		if (how->resolve & RESOLVE_BENEATH)
  1051			lookup_flags |= LOOKUP_BENEATH;
  1052		if (how->resolve & RESOLVE_IN_ROOT)
  1053			lookup_flags |= LOOKUP_IN_ROOT;
  1054	
  1055		op->lookup_flags = lookup_flags;
  1056		return 0;
  1057	}
  1058	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
