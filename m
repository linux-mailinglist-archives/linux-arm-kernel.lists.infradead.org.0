Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFB311BD0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwutVpTaneTB18ZhFwdnztX6wcjIP3ZSEVVtvNL4/mA=; b=beyuZMDNH3GgIg
	76gZq4CjnRf7MzfL2QyPRYlkXTeYobEkIGY9H9xMPBGgCKz+mVt5dYTa8A0t734TyPbIdgNrwPCCh
	vQu/shvTqY6Pvhicdmt5ZR9wBDSb8BWcL2sVviq2R0Lq4sdp57+NCgvvnD4Lqg7y4/F5CHO0gYPgi
	LmOi/vhX/lRFYTpIQWWNuB68Yshyj27ZlA9oEcTtJbde28U54Amr+4U7GOKagjADXU3oublFnFQtx
	DSU9Uc5eeZNH4oxqk3M0QOSHm5P0oZlnVhHFGQabD8U7NDkEAwkslAYvCXkummbESpJvRpGELbQyG
	RHc5KGRECxOQOXa+etRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7iM-00071O-2c; Wed, 11 Dec 2019 19:32:02 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7i9-00070y-L7
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:31:51 +0000
Received: from mail-qv1-f43.google.com ([209.85.219.43]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MUGqT-1iEy8n1TOd-00RHFF for <linux-arm-kernel@lists.infradead.org>; Wed,
 11 Dec 2019 20:31:46 +0100
Received: by mail-qv1-f43.google.com with SMTP id y8so6245655qvk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 11:31:45 -0800 (PST)
X-Gm-Message-State: APjAAAUUB8tyibThsRUhvjEhoYxRJQNaT19F8nA5QuSpCoSYZJYaWeCF
 qCysRffA1OrrgH3aKZwE3S+LoBepLmW8xBee5Zc=
X-Google-Smtp-Source: APXvYqxf4Xp3FM5HTNk2/2drmImAUw5dWnmacIZ0J+E8kqRJYuJMCsxwFdxNI6gooeiVMm0eDFBLHuuFTWJB+qkX2Ec=
X-Received: by 2002:a0c:893d:: with SMTP id 58mr4762571qvp.4.1576092704997;
 Wed, 11 Dec 2019 11:31:44 -0800 (PST)
MIME-Version: 1.0
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-13-catalin.marinas@arm.com>
In-Reply-To: <20191211184027.20130-13-catalin.marinas@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 11 Dec 2019 20:31:28 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1-eaR7NddhDce65vXKCGeZD3xUMrTTAWN4U3oW0ecN=g@mail.gmail.com>
Message-ID: <CAK8P3a1-eaR7NddhDce65vXKCGeZD3xUMrTTAWN4U3oW0ecN=g@mail.gmail.com>
Subject: Re: [PATCH 12/22] arm64: mte: Add specific SIGSEGV codes
To: Catalin Marinas <catalin.marinas@arm.com>
X-Provags-ID: V03:K1:iaAPY8HPRU6D4jW+DOFjlNuUWqRGhSdG4dDUjhHWC6v/JDZKpOA
 Oll64PQlwcyMKTG/7ZvVIHIPN3RM2WAfd/0i0cib+S/+JWdBWIUmVy1s7jEvD9BscYBEeHp
 Z1c5PlX/fhjT5xExrbC3l3d+xhI1+CvCNUbT+v+f/6Kqd53WI9veSWsLgBaRsP8hLbOEd4J
 JqnzWqRleyA2bvCIc9k3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AfmjM7YwFRA=:uM7IgFx+wpYvM8xuI/fdHV
 Mvm1CIMFGlCqx2HEERSCTApmY7jnHClyD5zgHeBqEbRdSS3sqBXWg2xXKM5OZuD5dFWf/nVOe
 IRIAs/uuyKV3TEe/c7jw36ZgKia0I54WASdzpbaxXDgxlPWK0Vu6impuPAC7Aeq9FCJQZ0x1K
 G2MszsXvS0drgckmHCe8NpD0dWEHEb1sIMrmgkcDGXO20Xc1+LPC1NXkGlQw8KggIQ06JBBRA
 SVHgiEvBCtPPI5beb3czzTYuBCMP+oZ/hgynlMerss32oFwgvTuYvk5bA9Sqhiv45oQSLPlWa
 f6xLR+jpwL5R49/A9m/YAOF2XN2hljHgGMo2M5F9mnNbdrNP1aDkr6AO+d9zJ0cZXO9ArwSJk
 HABqGNt60o1K00Jn0Jdan7iTjp3/5jK2EaHlhNIG3E8tubb0uaNUa64ZgcU4uQHiL5MjkPSA3
 XmzLv/MOZCEXW5zGbQjhqLBtQ7gS8Bf3Yw0sGo7rGXicJb3eSdWmN5aiEAmDPUrbeMwiJxHyf
 dsVjxbv/Al94Xy7Ir8RZVPoAjafXjcheRCpJzVW44VdKVBJmwfl2m3YW+8CRH9hDfChdhxdVr
 yU638NzjE+0po91PmLbPoRmpNYsBBsUSNUqATJK5vwfzUgveAMTS8fmbAXtFO1KvZORmiTbBh
 Qi2Lb5LVQ1o+LOPhHLxqQM2X6lI/YZe007Ov5nNMV/RmAF5VRYH4luIRAwi29NBHf4eics14r
 liIlqYc+GzNk5VDu1IJfZh2sjzYQ2F4v8kI7HLaYuuHXmo+TSkOcYkkhNhmoF0sOR2tU2hW+x
 +/9C//BrubHS+VUglPT/1mz+NE/QqN3438b4CJVbRpP18eID8LHNQWa4u0+8a5iDo4XLyi2Fd
 5mblFL8q+Jd/8/aQg+wg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_113149_988422_E481BA75 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Linux-MM <linux-mm@kvack.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 7:40 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
>
> Add MTE-specific SIGSEGV codes to siginfo.h.
>
> Note that the for MTE we are reusing the same SPARC ADI codes because
> the two functionalities are similar and they cannot coexist on the same
> system.
>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> [catalin.marinas@arm.com: renamed precise/imprecise to sync/async]
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  include/uapi/asm-generic/siginfo.h | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/include/uapi/asm-generic/siginfo.h b/include/uapi/asm-generic/siginfo.h
> index cb3d6c267181..a5184a5438c6 100644
> --- a/include/uapi/asm-generic/siginfo.h
> +++ b/include/uapi/asm-generic/siginfo.h
> @@ -227,8 +227,13 @@ typedef struct siginfo {
>  # define SEGV_PKUERR   4       /* failed protection key checks */
>  #endif
>  #define SEGV_ACCADI    5       /* ADI not enabled for mapped object */
> -#define SEGV_ADIDERR   6       /* Disrupting MCD error */
> -#define SEGV_ADIPERR   7       /* Precise MCD exception */
> +#ifdef __aarch64__
> +# define SEGV_MTEAERR  6       /* Asynchronous MTE error */
> +# define SEGV_MTESERR  7       /* Synchronous MTE exception */
> +#else
> +# define SEGV_ADIDERR  6       /* Disrupting MCD error */
> +# define SEGV_ADIPERR  7       /* Precise MCD exception */
> +#endif

SEGV_ADIPERR/SEGV_ADIDERR were added together with SEGV_ACCADI,
it seems a bit odd to make only two of them conditional but not the others.

I think we are generally working towards having the same constants
across architectures even for features that only exist on one of them.

Adding Al and Eric to Cc, maybe they have another suggestion on what
constants should be used.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
