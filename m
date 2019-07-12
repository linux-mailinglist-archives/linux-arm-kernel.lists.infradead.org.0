Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5825E665D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 06:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uvwB21YI/t8NsnpVxflk9RGeOwRUHu2EQw0IZMrf4c=; b=S2+HQhse/2C5hn
	GWElPwoX0QMz+wl5p/fFZWLSMuEqvW+TE9o4cP3+FvkLtxiCabkb9xjfzWWAEVUlS5SaNd1+oV3g9
	/G/rXCBcPAVxXFxck1IGn1iZ3yGJakiqx3qDr3WH7GbMoh5CuaYruM9uTt3GdlUqxidwYwjFfPCma
	gfn8fGnl5zd8k/aLVLJiyryBd1kjnm3To1Pv5r6U/HkGeBQG97YvCfDzxkkn3qp60T+DF+6/wWfps
	TnIgIPilTi505q/wEUCRRBrugDkSwb3lEgYqQG/4mDrzV8qb3GVLg32MFVdPrQhcHpBUN3Eouocei
	oCDi9PnicuNSUP4BAFjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlnGI-00075v-2Q; Fri, 12 Jul 2019 04:34:22 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlnG6-00074x-7X
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 04:34:11 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hlnFe-0003Rz-Ja; Fri, 12 Jul 2019 04:33:42 +0000
Date: Fri, 12 Jul 2019 05:33:42 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v9 05/10] namei: O_BENEATH-style path resolution flags
Message-ID: <20190712043341.GI17978@ZenIV.linux.org.uk>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-6-cyphar@cyphar.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190706145737.5299-6-cyphar@cyphar.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_213410_270307_3D961444 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
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

On Sun, Jul 07, 2019 at 12:57:32AM +1000, Aleksa Sarai wrote:

> @@ -1442,8 +1464,11 @@ static int follow_dotdot_rcu(struct nameidata *nd)
>  	struct inode *inode = nd->inode;
>  
>  	while (1) {
> -		if (path_equal(&nd->path, &nd->root))
> +		if (path_equal(&nd->path, &nd->root)) {
> +			if (unlikely(nd->flags & LOOKUP_BENEATH))
> +				return -EXDEV;

> @@ -1468,6 +1493,8 @@ static int follow_dotdot_rcu(struct nameidata *nd)
>  				return -ECHILD;
>  			if (&mparent->mnt == nd->path.mnt)
>  				break;
> +			if (unlikely(nd->flags & LOOKUP_XDEV))
> +				return -EXDEV;
>  			/* we know that mountpoint was pinned */
>  			nd->path.dentry = mountpoint;
>  			nd->path.mnt = &mparent->mnt;
> @@ -1482,6 +1509,8 @@ static int follow_dotdot_rcu(struct nameidata *nd)
>  			return -ECHILD;
>  		if (!mounted)
>  			break;
> +		if (unlikely(nd->flags & LOOKUP_XDEV))
> +			return -EXDEV;

Are you sure these failure exits in follow_dotdot_rcu() won't give
suprious hard errors?

> +	if (unlikely(nd->flags & LOOKUP_BENEATH)) {
> +		error = dirfd_path_init(nd);
> +		if (unlikely(error))
> +			return ERR_PTR(error);
> +		nd->root = nd->path;
> +		if (!(nd->flags & LOOKUP_RCU))
> +			path_get(&nd->root);
> +	}
>  	if (*s == '/') {
>  		if (likely(!nd->root.mnt))
>  			set_root(nd);
> @@ -2350,9 +2400,11 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
>  			s = ERR_PTR(error);
>  		return s;
>  	}
> -	error = dirfd_path_init(nd);
> -	if (unlikely(error))
> -		return ERR_PTR(error);
> +	if (likely(!nd->path.mnt)) {

Is that a weird way of saying "if we hadn't already called dirfd_path_init()"?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
