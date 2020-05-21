Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D174E1DC7C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 09:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZ9a5Zv3uHrXdenFUBgObtYZ/H0wfmB/wQAmkjtyIu8=; b=tXl9ha5jXks1tF
	jF+bu35sIVxuEzRBazgLpB0zQ1rhYU/sHZNGlds9PBxbCigQ2h3wAR9wHEWvBRXEyX0lU1ucU9Ygl
	lQ3SMumB0JWSczRsqq67cRobeotkZ8dVEFLGXD9e0qPtfci5GOWcwVfSrE6ACTcN8HuLRwn53IWa1
	TPVBFySEwR0jPPK+Y1v67FGB4KD6sCEbVaJw/F4e7kY+AHbsOh2yOjSvGQQM82Gcdts2oVfSQnAS0
	NEIPuBV9Ue4H7kpHdP2Ic3abjWCuPE9ZIZO9RioQZolDunPeg+NGqyUCGhTfdEw5azyFFVRDENmoq
	15ACwKzCO/L/XODWXtIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbfj0-00013U-Le; Thu, 21 May 2020 07:34:42 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbfis-00012d-0y
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 07:34:36 +0000
Received: from mail-qt1-f175.google.com ([209.85.160.175]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MlNYj-1jCjqJ41W9-00llYo for <linux-arm-kernel@lists.infradead.org>; Thu,
 21 May 2020 09:34:27 +0200
Received: by mail-qt1-f175.google.com with SMTP id m44so4753706qtm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 00:34:26 -0700 (PDT)
X-Gm-Message-State: AOAM532EbaGeC7FD3Y9jXxi5FE7uGh4AdFQ7m2Z4SIeCGaGetZpLXhWg
 Oh442OoLbpPYIyokFeqjtBin8j0hPWiWqZGk6WU=
X-Google-Smtp-Source: ABdhPJxnsPk1WNTtsvf8fhSOyGmjCrOWIuCaXauuuKsPPLG9MR6ID63YO2HcldF53ySp52GBmUg8rx4fvtvFEUEOuDo=
X-Received: by 2002:ac8:6a09:: with SMTP id t9mr9261420qtr.7.1590046465853;
 Thu, 21 May 2020 00:34:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
 <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
 <20200521070629.GB1131@bogus>
In-Reply-To: <20200521070629.GB1131@bogus>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 21 May 2020 09:34:10 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
Message-ID: <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
To: Sudeep Holla <sudeep.holla@arm.com>
X-Provags-ID: V03:K1:w5UK2zutPpFbPwvtCbx8aqt1wrPyeDVTRsYrf4dti7rIZP76rce
 O+/JDUMhGelytAQ3K4SRbpUD8hOgqJO7huDgOfRw79WehLpjLs7K1qx/6dTIbjhVPwXIRfR
 MMrQXI1pGNBQH5NMExx9U7U2boUuPSzIr9ypoM51OcWn+Xjhl9Hm2jCCVcv6RXs/ydIGNPF
 NrekTHXOPdnaO9PNe8nwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nlj9NbVo1OY=:EIKTN4EHjuY1AWBIrFPkFo
 tzRhvd1FC6Hfhkd03UGfnX8qwXl7AiVJwjnOgHqLH7RxNgvPhoAxd5sBkLTQ2G33UGuWkpWFn
 sVoQue9vh4rL/5krwjwWRN9iz3PDU+6jcTiONA/tojKTvmE6LpWaIK2ryYvveAtl9BiFZA9Ft
 UEzKMbA8TReZfAGN8ZlWw122GtzeJJkuOmp0SbpQyaicqqWtz8SykZ1nEsAhl/1Am1Fy+h31D
 Y5+9VH3XLMUx+1byrMsTcKDw3prQ/zFb4gtYjbhsQBs21ZSA+XmUerdv+fEHDEx4NfI7xeXn9
 /XVLSh+WyqlLOqtCvYKETN+33sbK5bVt+0ULyrt15Pft1i4HgaGMxVdzp2GIdrQcY7vdVucTy
 +gF6moAoVE11pnSr2nxDUjczOjK3Kf/2Qag+/UwsW+60JNClz3cIdzCUWwBN4eUIXya4INqm5
 bULajJbqOsSnMsOq0c0r++eqzP2F3L+F9+mcOIBUhwUWqeY3mk0ufCx3ClI+5GYEoOswdrdnD
 Adyi4R05UkXj+mmmLJ+VuEZjun/TJudNHNGLWEP/0mX7O+a/3CM0UohTf8XmNV2P9nmoFGe2p
 Y7P4HfRtYO16s4DCY8TV2daPZhlGQ9rZdYdWS5u3DZHFgJMyk1TUI9kLfTAu0UrGy68VZbDFb
 yiYRBE9O4rRRuXaLJFHh+GER00btHGNpum/33IQceeCnftv3zt9ezDHCVjlQly8rlMaB3hPyo
 vPz/A9V86JVseLRfiK6/a589PqMfKF2e9ykEBcL14xRn64LoFpvpkKTyYHmOI8znNkHKGjkWv
 TtAomRkzbq6FEY5as+UgaoxubqLYlc+nmtxe2D7T+SWGnGSNcc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_003434_357521_AF82BD90 
X-CRM114-Status: GOOD (  29.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 9:07 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, May 20, 2020 at 11:54:16PM +0200, Arnd Bergmann wrote:
> > On Wed, May 20, 2020 at 11:29 PM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Mon, 18 May 2020 10:12:15 +0100, Sudeep Holla wrote:
> > > > This patch series adds support for SMCCCv1.2 ARCH_SOC_ID.
> > > > This doesn't add other changes added in SMCCC v1.2 yet. They will
> > > > follow these soon along with its first user SPCI/PSA-FF.
> > > >
> > > > This is tested using upstream TF-A + the patch[3] fixing the original
> > > > implementation there.
> > > >
> > > > [...]
> > >
> > > Applied to arm64 (for-next/smccc), thanks!
> > >
> > > [1/7] firmware: smccc: Add HAVE_ARM_SMCCC_DISCOVERY to identify SMCCC v1.1 and above
> > >       https://git.kernel.org/arm64/c/e5bfb21d98b6
> > > [2/7] firmware: smccc: Update link to latest SMCCC specification
> > >       https://git.kernel.org/arm64/c/15c704ab6244
> > > [3/7] firmware: smccc: Add the definition for SMCCCv1.2 version/error codes
> > >       https://git.kernel.org/arm64/c/0441bfe7f00a
> > > [4/7] firmware: smccc: Drop smccc_version enum and use ARM_SMCCC_VERSION_1_x instead
> > >       https://git.kernel.org/arm64/c/ad5a57dfe434
> > > [5/7] firmware: smccc: Refactor SMCCC specific bits into separate file
> > >       https://git.kernel.org/arm64/c/f2ae97062a48
> > > [6/7] firmware: smccc: Add function to fetch SMCCC version
> > >       https://git.kernel.org/arm64/c/a4fb17465182
> > > [7/7] firmware: smccc: Add ARCH_SOC_ID support
> > >       https://git.kernel.org/arm64/c/ce6488f0ce09
> > >
> > > Arnd -- Sudeep's reply to you about the sysfs groups seemed reasonable to me,
> > > but please shout if you'd rather I dropped this in order to pursue an
> > > alternative approach.
> >
> > I missed the reply earlier, thanks for pointing me to it again.
> >
> > I'm not entirely convinced, but don't revert it for now because of that,
> > I assume we can find a solution.
> >
>
> I liked your idea of making this generic and hardcode values if required
> for other drivers. I will take a look at that/
>
> > However, please have a look at the build failure report for patch 5
> > and fix it if you can see what went wrong.
> >
>
> Any pointers for that failure ? I seem to have missed them. I pushed
> branch couple of times to my tree but got build success both times.
> Any specific config or compilers ?

See below for the reply from the 0day build bot to your email. It seems it
was not sent to the mailing list, but you were on Cc. Looking at it now,
the fix should be trivial.

    Arnd

8<---
I love your patch! Perhaps something to improve:

[auto build test WARNING on soc/for-next]
[also build test WARNING on arm64/for-next/core linus/master v5.7-rc6
next-20200519]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Sudeep-Holla/firmware-smccc-Add-basic-SMCCC-v1-2-ARCH_SOC_ID-support/20200518-171401
base:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git for-next
config: arm64-randconfig-r026-20200519 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project
135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
-O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> drivers/firmware/smccc/smccc.c:14:13: warning: no previous prototype for function 'arm_smccc_version_init' [-Wmissing-prototypes]
void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
^
drivers/firmware/smccc/smccc.c:14:1: note: declare 'static' if the
function is not intended to be used outside of this translation unit
void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
^
static
1 warning generated.

vim +/arm_smccc_version_init +14 drivers/firmware/smccc/smccc.c

    13
  > 14 void __init arm_smccc_version_init(u32 version, enum
arm_smccc_conduit conduit)
    15 {
    16 smccc_version = version;
    17 smccc_conduit = conduit;
    18 }
    19

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
