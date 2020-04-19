Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE101AFBF9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 18:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTvS73gRfTmnoQqEEWwjd71nR3g7Mpf8CGBG+lbhUxM=; b=lf25zuPBQcc8qy
	i+k9T70gUsn1datHE7TD2aCDl6ZHhC8cMdVIBhyVe2Q6bBzRrg61OjJuPM9qat+MtKZKjfXffPBcE
	aOUw1buu5IHlTTvrkGr0xSgoI1JKckNN5ISBJbWLbfwf5EpBv93iChGarcpQZBnzDi26d1hueIgJ/
	ucNrefhyOocY4Zl+Q6zlxs5BGucHBaXEhzgNQpQA7TQywLZyOI8mLDLKhCzyC+kIPJAzrqtc0MaR+
	Z4IwjMTc106PVPaqPHLB3dwg2X1YyuBX4VIsOZyFFl1vYs6ThxvhQE6L36w/pOMSFPs3lrfvcpww1
	1WBkYrZ5yCQG8Iq2nGYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQCza-0002xO-Ut; Sun, 19 Apr 2020 16:40:26 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQCzS-0002wd-Pk
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 16:40:20 +0000
Received: by mail-ot1-x343.google.com with SMTP id j4so5902856otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 09:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9QGokbASH+rRhSFAtXBE2GuLj7uGicKVjdMS2NUclOc=;
 b=UKzTphq3hRxCj5bRykdrj49SrMU7pVT8Zd5h5xoVItv5Jnkf4jnIRoqom8oXaV9Iok
 /5eACl5Ocyc1MoBfEoNhVl/cks+iPGKAGwN2CWHKxY8Ys6LuKxb9iKHCZiVRI89p/M5Z
 m0XSOt/MB/qqhgcP3qzPfmv1/+PZqfOmDY1udPw+CzjQPYN9P4mIKl7Ef8q7WohE73R+
 1pOPRilJ9laWW6AzkgOiB5FqiN1icAF5cyBR98n1P3/mCt9McUvX9fCfET48uglFg9mH
 dZeUYejE21w+ePrKjcQkmEyxxVTKiP3cHxfgb9EqjO7mwurvCPnW2EDTcg2GIBSJFobl
 QGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9QGokbASH+rRhSFAtXBE2GuLj7uGicKVjdMS2NUclOc=;
 b=MSdgn/v0XP6Pn4DpjoGoAuQg9Xa8ke0RR/hmuGeL7BYMP8ik14kJ1Mx0PcPtDuyNF+
 Alen/au7AXiLoj05ATowXQFeGnunwLL0TlXe47i/Emt67Blc9ug5Vd+ulj6JR5J9IEOc
 yC/9CmM4PyZJVx7a6HZgKBX4BZS4mxVKehLPQ8tzCD8Af7jMbJs1fbfDBTLByPSEoM85
 ISQQJ/2QldA2c9B16Q1Gx3ePnhVR4tNIdap+hK+Psvf6jzPtnZbN/C6Z7jLzdQuVzIR5
 1wxqLwzIst75cLq0ZfNpRRBrsQLOUovRGC5jgggEdWqpMAUV1ZI3+k9eUAzs/RtKLuY4
 jqbg==
X-Gm-Message-State: AGi0Puasi6NnVD2qI/EHX297GrDp0y4vY50gLS7TVBsYzOb+yZIU8HdZ
 6BJA7YpvrP7Xubtctt5FF+o=
X-Google-Smtp-Source: APiQypL/ytvdDK8FE6DvTrupkUsiz9U2ok9G/h/20DsGS14Daf6gx+QN52j+ES2uzjmaOxHzL2r4LA==
X-Received: by 2002:a9d:7558:: with SMTP id b24mr6721457otl.273.1587314417520; 
 Sun, 19 Apr 2020 09:40:17 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id k26sm967539ots.3.2020.04.19.09.40.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 19 Apr 2020 09:40:17 -0700 (PDT)
Date: Sun, 19 Apr 2020 09:40:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [RFC PATCH 2/2] kbuild: Rename and use BINUTILS_VERSION where
 needed
Message-ID: <20200419164015.GA7783@ubuntu-s3-xlarge-x86>
References: <20200419132142.173861-1-sedat.dilek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419132142.173861-1-sedat.dilek@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_094018_836862_C5F5839D 
X-CRM114-Status: GOOD (  29.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 "Eric W. Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sedat,

On Sun, Apr 19, 2020 at 03:21:42PM +0200, Sedat Dilek wrote:
> In the first patch I introduced LD_IS_BINUTILS Kconfig.

This sentence can removed, this offers no context when applied to the
git tree.

> To be consistent in naming convention I renamed from LD_VERSION
> to BINUTILS_VERSION.

Is this the only motivation behind this patch? Is this fixing a bug that
you have notice or is it just because there is a linker aside from GNU
ld that works with the kernel?

> So, we have the double "LD_IS_BINUTILS" and "BINUTILS_VERSION"
> like "CC_IS_GCC" and "GCC_VERSION".
> 
> For the same reason I renamed the shell script to detect the GNU ld
> linker version.
> 
> In Documentation/process/changes.rst we use "binutils" and GNU ld
> binary is part of it (see [3]).

                            ^ Kind of weird to have 3 come before 1 and 2

I also don't think that linking to the documentation like that is
necessary.

> The patches "init/kconfig: Add LD_VERSION Kconfig" (see [1]) and
> "arm64: Kconfig: ptrauth: Add binutils version check to fix mismatch"
> (see [2]) added checks for binutils >=2.23.1 whereas binutils

                                       ^2.33.1

> version 2.23 is minimum supported version (see [3]).

I am not sure what relevance this parapgraph has to the patch?

If it is indeed relevant, it should be reworked to use the standard
kernel way of referring to commits:

    9553d16fa671 ("init/kconfig: Add LD_VERSION Kconfig")
    15cd0e675f3f ("arm64: Kconfig: ptrauth: Add binutils version check to fix mismatch")

instead of the title of the patch with a link to the web interface.

> I have renamed to BINUTILS_VERSION where needed.
> 
> [1] https://git.kernel.org/linus/9553d16fa671b9621c5e2847d08bd90d3be3349c
> [2] https://git.kernel.org/linus/15cd0e675f3f76b4d21c313795fe0c23df0ee20f
> [3] https://git.kernel.org/linus/Documentation/process/changes.rst#n79
> 
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> ---
>  arch/arm64/Kconfig                             | 2 +-
>  init/Kconfig                                   | 4 ++--
>  scripts/{ld-version.sh => binutils-version.sh} | 0
>  3 files changed, 3 insertions(+), 3 deletions(-)
>  rename scripts/{ld-version.sh => binutils-version.sh} (100%)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 40fb05d96c60..274ba9b3ac95 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1504,7 +1504,7 @@ config ARM64_PTR_AUTH
>  	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
>  	# GCC 9.1 and later inserts a .note.gnu.property section note for PAC
>  	# which is only understood by binutils starting with version 2.33.1.
> -	depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
> +	depends on !CC_IS_GCC || GCC_VERSION < 90100 || BINUTILS_VERSION >= 233010000
>  	depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
>  	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>  	help
> diff --git a/init/Kconfig b/init/Kconfig
> index 520116efea0f..946db4786951 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -19,9 +19,9 @@ config GCC_VERSION
>  config LD_IS_BINUTILS
>  	def_bool $(success,$(LD) -v | head -n 1 | grep -q 'GNU ld')
>  
> -config LD_VERSION
> +config BINUTILS_VERSION
>  	int
> -	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh) if LD_IS_BINUTILS
> +	default $(shell,$(LD) --version | $(srctree)/scripts/binutils-version.sh) if LD_IS_BINUTILS

This is not the only place that ld-version.sh is used, all of these
spots need to be updated with the move.

$ rg --no-heading "ld-version.sh"
scripts/coccicheck:SPATCH_VERSION_NUM=$(echo $SPATCH_VERSION | ${DIR}/scripts/ld-version.sh)
scripts/coccicheck:    REQ_NUM=$(echo $REQ | ${DIR}/scripts/ld-version.sh)
scripts/nsdeps:SPATCH_REQ_VERSION_NUM=$(echo $SPATCH_REQ_VERSION | ${DIR}/scripts/ld-version.sh)
scripts/nsdeps:SPATCH_VERSION_NUM=$(echo $SPATCH_VERSION | ${DIR}/scripts/ld-version.sh)
scripts/Kbuild.include:ld-version = $(shell $(LD) --version | $(srctree)/scripts/ld-version.sh)
init/Kconfig:	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)

>  config CC_IS_CLANG
>  	def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
> diff --git a/scripts/ld-version.sh b/scripts/binutils-version.sh
> similarity index 100%
> rename from scripts/ld-version.sh
> rename to scripts/binutils-version.sh
> -- 
> 2.26.1
> 

For what it's worth, I think the idea behind this patch is fine but I do
not think the first patch in the series is necessary. The only reason
that LD_IS_BINUTILS even exists is to hide BINUTILS_VERSION. However,
the only reason I have seen from you to do this is to match GCC_VERSION.
The reason that CONFIG_GCC_VERSION does not run gcc-version.sh is to
avoid mistaking clang for gcc due to the use of the __GNUC*__ macros.
scripts/ld-version.sh already returns zero for ld.lld so I think that
it is just sufficient to add CONFIG_LD_IS_LLD whenever we are ready for
it (I might have a reason to send it out today, we'll see).

$ ld.lld --version | ./scripts/ld-version.sh
0

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
