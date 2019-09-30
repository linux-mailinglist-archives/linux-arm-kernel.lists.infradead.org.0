Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4529C20EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 14:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHAv6gpWZJ0YTsyM/d5gQCKFdo3QCtKwGr/bqQ/9NIo=; b=L6fWs5zzfnxBwH
	dFRjMrn/TykgOugN+3uhviRIr2Enbh4uZO37jTqj9SvNFHk3souzWr+kaIAcDTwZfzqHskx80xRcO
	W5XJOfuJDyC29tjVF5VxRp+tngwfsjmT95uZX1w0z4VgrDkQejXyfZBKVSVVD4kAA1g04x68Rmd5a
	3mP8j+Sm8lAgCH5g1NwBlivZX/1fnFIWzEZzEOCFxBX25GuwUKaN1IcXiXP1fLKO9dql0WHMiYj8f
	7WqOnRxGK7xFIEFYD17PUQsRvcVqkhIslMb3wc0b5Dg5ejkvRSUImuZajmbxu3lmFs+w9c6f+Wi8P
	3bmYTdwzv9JrjzWosleQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEv9I-00056r-Np; Mon, 30 Sep 2019 12:51:32 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEv9B-00056a-KC
 for linux-arm-kernel@bombadil.infradead.org; Mon, 30 Sep 2019 12:51:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IZUTeqVl1Ba37YloeUuJ8+2p36NnetB9mk6B84ZbxMM=; b=ZVHwU4GoVNRmEySR4id0+BYHe
 r/Dlw9yk2q196sSkWUS7sIigMfuHuLtkQ7fn68uEC4gFFfW/knBaJmMDoXXGUG/8HGqzvAg4t9Mca
 M3mUv1xtLEzJ4daudp6QEeleCnymEnw0TUk7ky7ed/OrxmTsFvAf8mXHYpw+ed7vF92SSR9BiFiki
 Pa/48xz44VLyXnEJ5I64OrAuhUjv6plK9i5CwxghhO46WkyuiZIEjAi4u33co3tPZ21TFG3dNFand
 0JipGQL1j1fAXP0qs+3kza7FLYp6INzAMUtiHF4GqIb8B72xCAyHTwDt5MeZ8dzIwpX9I06VI+NOA
 MRZ2BPXwQ==;
Received: from [179.97.35.50] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEv99-00022u-9b; Mon, 30 Sep 2019 12:51:23 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id C969040DA4; Mon, 30 Sep 2019 09:51:21 -0300 (-03)
Date: Mon, 30 Sep 2019 09:51:21 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: perf annotate fails with "Invalid -1 error code"
Message-ID: <20190930125121.GG9622@kernel.org>
References: <20190930121537.GG25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930121537.GG25745@shell.armlinux.org.uk>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Sep 30, 2019 at 01:15:37PM +0100, Russell King - ARM Linux admin escreveu:
> Hi,
> 
> While using perf report on aarch64, I try to annotate
> __arch_copy_to_user, and it fails with:
> 
> Error: Couldn't annotate __arch_copy_to_user: Internal error: Invalid -1 error code
> 
> which is not very helpful.  Looking at the code, the error message
> appended to the "Couldn't annotate ...:" comes from
> symbol__strerror_disassemble(), which expects either an errno or
> one of the special SYMBOL_ANNOTATE_ERRNO_* constants in its 3rd
> argument.
> 
> symbol__tui_annotate() passes the 3rd argument as the return value
> from symbol__annotate2().  symbol__annotate2() returns either zero or
> -1.  This calls symbol__annotate(), which returns -1 (which would
> generally conflict with -EPERM), -errno, the return value of
> arch->init, or the return value of symbol__disassemble().
> 
> This seems to be something of a mess - different places seem to use
> different approaches to handling errors, and some don't bother
> propagating the error code up.
> 
> The upshot is, the error message reported when trying to annotate
> gives the user no clue why perf is unable to annotate, and you have
> to resort to stracing perf in an attempt to find out - which also
> isn't useful:
> 
> 3431  pselect6(1, [0], NULL, NULL, NULL, NULL) = 1 (in [0])
> 3431  pselect6(5, [4], NULL, NULL, {tv_sec=10, tv_nsec=0}, NULL) = 1 (in [4], left {tv_sec=9, tv_nsec=999995480})
> 3431  read(4, "\r", 1)                  = 1
> 3431  uname({sysname="Linux", nodename="cex7", ...}) = 0
> 3431  openat(AT_FDCWD, "/usr/lib/aarch64-linux-gnu/gconv/gconv-modules.cache", O_RDONLY) = 26
> 3431  fstat(26, {st_mode=S_IFREG|0644, st_size=26404, ...}) = 0
> 3431  mmap(NULL, 26404, PROT_READ, MAP_SHARED, 26, 0) = 0x7fa1fd9000
> 3431  close(26)                         = 0
> 3431  futex(0x7fa172b830, FUTEX_WAKE_PRIVATE, 2147483647) = 0
> 3431  write(1, "\33[10;21H\33[37m\33[40m\342\224\214\342\224\200Error:\342\224"..., 522) = 522
> 3431  pselect6(1, [0], NULL, NULL, NULL, NULL <detached ...>
> 
> Which makes it rather difficult to know what is actually failing...
> so the only way is to resort to gdb.
> 
> It seems that dso__disassemble_filename() is returning -10000, which
> seems to be SYMBOL_ANNOTATE_ERRNO__NO_VMLINUX and as described above,
> this is lost due to the lack of error code propagation.
> 
> Specifically, the failing statement is:
> 
>         if (dso->symtab_type == DSO_BINARY_TYPE__KALLSYMS &&
>             !dso__is_kcore(dso))
>                 return SYMBOL_ANNOTATE_ERRNO__NO_VMLINUX;
> 
> Looking at "dso" shows:
> 
> 	kernel = DSO_TYPE_KERNEL,
> 	symtab_type = DSO_BINARY_TYPE__KALLSYMS,
> 	binary_type = DSO_BINARY_TYPE__KALLSYMS,
> 	load_errno = DSO_LOAD_ERRNO__MISMATCHING_BUILDID,
> 	name = 0x555588781c "/boot/vmlinux",
> 
> and we finally get to the reason - it's using the wrong vmlinux.
> So, obvious solution (once the failure reason is known), give it
> the correct vmlinux.
> 
> Should it really be necessary to resort to gdb to discover why perf
> is failing?
> 
> It looks like this was introduced by ecda45bd6cfe ("perf annotate:
> Introduce symbol__annotate2 method") which did this:
> 
> -       err = symbol__annotate(sym, map, evsel, 0, &browser.arch);
> +       err = symbol__annotate2(sym, map, evsel, &annotate_browser__opts, &browser.arch);
> 
> +int symbol__annotate2(struct symbol *sym, struct map *map, struct perf_evsel *evsel,
> +                     struct annotation_options *options, struct arch **parch)
> +{
> ...
> +       err = symbol__annotate(sym, map, evsel, 0, parch);
> +       if (err)
> +               goto out_free_offsets;
> ...
> +out_free_offsets:
> +       zfree(&notes->offsets);
> +       return -1;
> +}
> 
> introducing this problem by the "return -1" disease.
> 
> So, given that this function's return value is used as an error code
> in the way I've described above, should this function also be fixed
> to return ENOMEM when the zalloc fails, as well as propagating the
> return value from symbol__annotate() ?
> 
> I haven't yet checked to see if there's other places that call this
> function but now rely on it returning -1... but I'd like to lodge a
> plea that perf gets some consistency wrt how errors are passed and
> propagated from one function to another.

Note taken, will address the points raised here.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
