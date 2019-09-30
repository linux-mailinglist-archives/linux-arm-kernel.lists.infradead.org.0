Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF2DC206E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 14:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=14LpI5FwdMiNRGobmI0MCYidBHgQTyF+5cEhA+xYC54=; b=WWA7x8YxXGARaM
	WMS2yq5kj3VDQoZz94sb2lVgShGici0LeKVMYLik4Y4VXM1731pS7M3wm5lcjmM1a0aHKvG+Nmzw5
	iOXqzRHXzTNvv/06sy2VgPLFZE1T+7zXDPgpYYOrI6lG8xWsMAG+X56B7erUnUj7iFtVMPBkrdonS
	+yKu+/6Uum8QuMKqp8JG3XQ25uxGIKqudfxNXZ57ZOh3+bWjp2hUqChqtdafaI33GCHaDWJZvRG5D
	m/F0V09CYJvX5atWnTQcXn7bQ+J1gHb+GasXZMH8f/JqlXP+b4okRtWoc3OKIv1bFQVL9Z4winZCg
	iDc5M6OsPrpGbxFm0/sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEuap-0007UN-3C; Mon, 30 Sep 2019 12:15:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEuag-0007Th-Dm
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 12:15:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xm7CAN5P/v9QLeoOasuDXlMTbnhwTRv6wl6QipPIvKk=; b=hZ613pXqwQsHbI6j/nVtSlh/k
 jkcM/eBdlBsYCbcxjYfb8qPR5EtMF5hpVNW0SuYS3I55KFW5Y/Xjqa9QpDKDW+LnBglFT+3PjIVg7
 uYQIPN08NCArlxjl27RTdSSwguL/Etg8lWJgksSUXQc0/ggR6KuUkafk/jsGje9EmWo1ux/C01TIo
 6wbTb4BaxBontdzHd/Z+JfkmfDqk1yBWvriAAbCQamxjhxDe3RWRMzGDfvYvS8r+ey9nWbSqMIKf+
 45zO3d7lmI27IB49p9AYdSM5YntRItXio1XsWvxhXz5NM3ft71erQtY9XtVbqULpQT8oVbHIuBpBU
 f9atJnfcQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:45870)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iEuaZ-0004Sw-Ey; Mon, 30 Sep 2019 13:15:39 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iEuaX-0007Ek-MU; Mon, 30 Sep 2019 13:15:37 +0100
Date: Mon, 30 Sep 2019 13:15:37 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>
Subject: perf annotate fails with "Invalid -1 error code"
Message-ID: <20190930121537.GG25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_051546_467647_EDE89F73 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

While using perf report on aarch64, I try to annotate
__arch_copy_to_user, and it fails with:

Error: Couldn't annotate __arch_copy_to_user: Internal error: Invalid -1 error code

which is not very helpful.  Looking at the code, the error message
appended to the "Couldn't annotate ...:" comes from
symbol__strerror_disassemble(), which expects either an errno or
one of the special SYMBOL_ANNOTATE_ERRNO_* constants in its 3rd
argument.

symbol__tui_annotate() passes the 3rd argument as the return value
from symbol__annotate2().  symbol__annotate2() returns either zero or
-1.  This calls symbol__annotate(), which returns -1 (which would
generally conflict with -EPERM), -errno, the return value of
arch->init, or the return value of symbol__disassemble().

This seems to be something of a mess - different places seem to use
different approaches to handling errors, and some don't bother
propagating the error code up.

The upshot is, the error message reported when trying to annotate
gives the user no clue why perf is unable to annotate, and you have
to resort to stracing perf in an attempt to find out - which also
isn't useful:

3431  pselect6(1, [0], NULL, NULL, NULL, NULL) = 1 (in [0])
3431  pselect6(5, [4], NULL, NULL, {tv_sec=10, tv_nsec=0}, NULL) = 1 (in [4], left {tv_sec=9, tv_nsec=999995480})
3431  read(4, "\r", 1)                  = 1
3431  uname({sysname="Linux", nodename="cex7", ...}) = 0
3431  openat(AT_FDCWD, "/usr/lib/aarch64-linux-gnu/gconv/gconv-modules.cache", O_RDONLY) = 26
3431  fstat(26, {st_mode=S_IFREG|0644, st_size=26404, ...}) = 0
3431  mmap(NULL, 26404, PROT_READ, MAP_SHARED, 26, 0) = 0x7fa1fd9000
3431  close(26)                         = 0
3431  futex(0x7fa172b830, FUTEX_WAKE_PRIVATE, 2147483647) = 0
3431  write(1, "\33[10;21H\33[37m\33[40m\342\224\214\342\224\200Error:\342\224"..., 522) = 522
3431  pselect6(1, [0], NULL, NULL, NULL, NULL <detached ...>

Which makes it rather difficult to know what is actually failing...
so the only way is to resort to gdb.

It seems that dso__disassemble_filename() is returning -10000, which
seems to be SYMBOL_ANNOTATE_ERRNO__NO_VMLINUX and as described above,
this is lost due to the lack of error code propagation.

Specifically, the failing statement is:

        if (dso->symtab_type == DSO_BINARY_TYPE__KALLSYMS &&
            !dso__is_kcore(dso))
                return SYMBOL_ANNOTATE_ERRNO__NO_VMLINUX;

Looking at "dso" shows:

	kernel = DSO_TYPE_KERNEL,
	symtab_type = DSO_BINARY_TYPE__KALLSYMS,
	binary_type = DSO_BINARY_TYPE__KALLSYMS,
	load_errno = DSO_LOAD_ERRNO__MISMATCHING_BUILDID,
	name = 0x555588781c "/boot/vmlinux",

and we finally get to the reason - it's using the wrong vmlinux.
So, obvious solution (once the failure reason is known), give it
the correct vmlinux.

Should it really be necessary to resort to gdb to discover why perf
is failing?

It looks like this was introduced by ecda45bd6cfe ("perf annotate:
Introduce symbol__annotate2 method") which did this:

-       err = symbol__annotate(sym, map, evsel, 0, &browser.arch);
+       err = symbol__annotate2(sym, map, evsel, &annotate_browser__opts, &browser.arch);

+int symbol__annotate2(struct symbol *sym, struct map *map, struct perf_evsel *evsel,
+                     struct annotation_options *options, struct arch **parch)
+{
...
+       err = symbol__annotate(sym, map, evsel, 0, parch);
+       if (err)
+               goto out_free_offsets;
...
+out_free_offsets:
+       zfree(&notes->offsets);
+       return -1;
+}

introducing this problem by the "return -1" disease.

So, given that this function's return value is used as an error code
in the way I've described above, should this function also be fixed
to return ENOMEM when the zalloc fails, as well as propagating the
return value from symbol__annotate() ?

I haven't yet checked to see if there's other places that call this
function but now rely on it returning -1... but I'd like to lodge a
plea that perf gets some consistency wrt how errors are passed and
propagated from one function to another.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
