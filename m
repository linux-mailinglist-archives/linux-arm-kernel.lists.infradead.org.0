Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4128C2BDDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 05:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWxJ/2Lb5AgruGIvElyceG56ZwFoDgi75pn01iqpjpg=; b=WmEbPOS1WW4b08
	IGAmT22orPnZEUXSlPl+zN7/73GkBN6abyMTrTeJdz1W+5Ss1mgzhM/dPvtYqK7KsaUVHZCClvyVl
	/a16FLh5Sj5q50PGOdobSwfKp1XiIs86oQ+wP4WlUCCLhSfzSaQCUfmTVIqAxL+b6vZ1f51cq6js/
	bYnAoByPHtFsCHmQMtzz7GQoNT6YfKapPr4GIri/VvlSo9B81aK93fpNz6mXyHeYMdmysWD+Cr3RL
	u3dooDnEB/o1nkfC2CPzR7Df2fqR5pgbF3BC7+g4UyJAiXKuD1HNXEn4EdgMKGUyKvAMkdOlGdeSp
	SQUqVE8RVH5oP4UhEaUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVT1q-0005DA-2x; Tue, 28 May 2019 03:43:58 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVT1i-0005Cm-BZ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 03:43:51 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45Cfp83y01z9s9N;
 Tue, 28 May 2019 13:43:43 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Christian Brauner <christian@brauner.io>, viro@zeniv.linux.org.uk,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 torvalds@linux-foundation.org, fweimer@redhat.com
Subject: Re: [PATCH v3 2/3] arch: wire-up close_range()
In-Reply-To: <20190524111047.6892-3-christian@brauner.io>
References: <20190524111047.6892-1-christian@brauner.io>
 <20190524111047.6892-3-christian@brauner.io>
Date: Tue, 28 May 2019 13:43:43 +1000
Message-ID: <87woibp7kg.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_204350_626289_C5240994 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, ldv@altlinux.org,
 dhowells@redhat.com, sparclinux@vger.kernel.org, shuah@kernel.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org, miklos@szeredi.hu,
 x86@kernel.org, Christian Brauner <christian@brauner.io>,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org, tkjos@android.com,
 arnd@arndb.de, jannh@google.com, linux-m68k@lists.linux-m68k.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org, oleg@redhat.com,
 linux-alpha@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christian Brauner <christian@brauner.io> writes:
> diff --git a/arch/powerpc/kernel/syscalls/syscall.tbl b/arch/powerpc/kernel/syscalls/syscall.tbl
> index 103655d84b4b..ba2c1f078cbd 100644
> --- a/arch/powerpc/kernel/syscalls/syscall.tbl
> +++ b/arch/powerpc/kernel/syscalls/syscall.tbl
> @@ -515,3 +515,4 @@
>  431	common	fsconfig			sys_fsconfig
>  432	common	fsmount				sys_fsmount
>  433	common	fspick				sys_fspick
> +435	common	close_range			sys_close_range

With a minor build fix the selftest passes for me on ppc64le:

  # ./close_range_test 
  1..9
  ok 1 do not allow invalid flag values for close_range()
  ok 2 close_range() from 3 to 53
  ok 3 fcntl() verify closed range from 3 to 53
  ok 4 close_range() from 54 to 95
  ok 5 fcntl() verify closed range from 54 to 95
  ok 6 close_range() from 96 to 102
  ok 7 fcntl() verify closed range from 96 to 102
  ok 8 close_range() closed single file descriptor
  ok 9 fcntl() verify closed single file descriptor
  # Pass 9 Fail 0 Xfail 0 Xpass 0 Skip 0 Error 0


Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
