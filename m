Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDDBDFF39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifV5kkR0ZOSYLK95qXR9f9PQ1wHYXyd23EmDwTPB+Dk=; b=cheOLZXNrAadbP
	J02yzL6RPUoeW1GrKC5T6kgoPFxlB9/Mp4RB2vo0/ZNe8+rBVp4bXxOtJzh2qkS7Dd2f2Q74kaaTc
	NSRP2WWnZ4ep0Hu6uWoRCUf2pFUYSoweOINtIsw0G3ngc2bFDHHzhhfCktttwjK3+Y9h1t0kGBvFA
	LG+hwUn6znIB3lbZPxRK2IqOlxULJJaiNEKcBgC/blagq4aKvzdCoPvkd6tDrLbhwvYOVOCNfkrBz
	o6NZQQJnzfJOnoB3QcVbGToCTbPyDiYfnAn8wo79L7xRyv+15p/NI6jgM0Py673iWsDiIeu9jgW0d
	cV7AdhUAYZ8plS0OoaVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpLO-0000dT-3M; Tue, 22 Oct 2019 08:16:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpLD-0000cR-Ca
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:16:33 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iMpL8-0006mc-Dk; Tue, 22 Oct 2019 10:16:26 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iMpL6-0003pF-L0; Tue, 22 Oct 2019 10:16:24 +0200
Date: Tue, 22 Oct 2019 10:16:24 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Ingo Molnar <mingo@kernel.org>
Subject: Re: [GIT PULL] arm64: Fixes for -rc4
Message-ID: <20191022081624.4tmumskeoayt4bzg@pengutronix.de>
References: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
 <CAHk-=wjPZYxiTs3F0Vbrd3kRizJGq-rQ_jqH1+8XR9Ai_kBoXg@mail.gmail.com>
 <20191018174153.slpmkvsz45hb6cts@willie-the-truck>
 <CAHk-=whmtB98b8=YL2b8HzPKRadk2A9pL0aasmvgebhePrDP9w@mail.gmail.com>
 <20191021064658.GB22042@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021064658.GB22042@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_011631_425790_346AD054 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, git@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

I added the git list to Cc:. For the new readers: The context of this
thread can be found at
https://lwn.net/ml/linux-kernel/20191017234348.wcbbo2njexn7ixpk@willie-the-=
truck/

On Mon, Oct 21, 2019 at 08:46:58AM +0200, Ingo Molnar wrote:
> Anyway, a small Git feature request: it would be super useful if "git =

> request-pull" output was a bit more dependable and at least warned about =

> this and didn't include what is, from the viewpoint of the person doing =

> the merge, a bogus diffstat. (Generating the correct diffstat is probably =

> beyond request-pull's abilities: it would require changing the working =

> tree to actually perform the merge - while request-pull is a read-only =

> operation right now. But detecting the condition and warning about it =

> should be possible?)

I think Will's case is still an easy one compared with what could
actually happen.

The related history looks as follows:

             ,-.     ,-.              ,-.    ,-.    ,-.
  v5.4-rc1 --| |-...-| |-- v5.4-rc2 --| |-..-| |-..-| |-- v5.4-rc3
      \      `-'     `-'       \      `-'    /-'    `-'
       \   ,-.     ,-.          \         ,-/    ,-.     ,-.
        `--| |-...-| |--------------------|*|----| |-...-|H|
           `-'     `-'            \       `-'    `-'     /-'
                                   \   ,-.     ,-.      /
                                    `--| |-...-| |-----'
                                       `-'     `-'

Will asked Linus to merge the Commit marked 'H', the two merge bases are
v5.4-rc2 and '*'.

(FTR:
  * =3D 3e7c93bd04edfb0cae7dad1215544c9350254b8f
  H =3D 777d062e5bee0e3c0751cdcbce116a76ee2310ec
, they can be found in
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git)

The formally correct way to create the diffstat is to merge v5.4-rc2 and
'*' (in general: all merge bases) and calculate the diff between this
merge and the to-be-merged-commit. Compared to what Will did (i.e. merge
Linus' HEAD and this branch and then diff @~ with @) doing it the way I
described has the advantage(?) that commits that conflict with this
merge request in Linus' tree since the merge bases are not in the way.

In this case this can be done automatically:

	$ git read-tree --index-output=3Dtralala v5.4-rc2 3e7c93bd04edfb0cae7dad12=
15544c9350254b8f
	$ GIT_INDEX=3Dtralala git write-tree
	6a2acfd1870d9da3c330ea9b648a7e858b5ee39f
	$ git diff --stat 6a2acfd1870d9da3c330ea9b648a7e858b5ee39f 777d062e5bee0e3=
c0751cdcbce116a76ee2310ec
	 Documentation/arm64/silicon-errata.rst |  2 ++
	 arch/arm64/Kconfig                     | 17 ++++++++++++++
	 arch/arm64/include/asm/asm-uaccess.h   |  7 +++---
	 arch/arm64/include/asm/cpucaps.h       |  4 +++-
	 arch/arm64/include/asm/memory.h        | 10 ++++++--
	 arch/arm64/include/asm/pgtable.h       |  3 ---
	 arch/arm64/include/asm/sysreg.h        |  2 +-
	 arch/arm64/kernel/cpu_errata.c         | 38 +++++++++++++++++++++++++++++=
++
	 arch/arm64/kernel/cpufeature.c         | 15 ++++++++----
	 arch/arm64/kernel/entry.S              |  8 ++++---
	 arch/arm64/kernel/hibernate.c          |  9 +++++++-
	 arch/arm64/kernel/process.c            | 18 +++++++++++++++
	 arch/arm64/kvm/hyp/switch.c            | 69 +++++++++++++++++++++++++++++=
+++++++++++++++++++++++++--
	 arch/arm64/mm/fault.c                  |  6 ++++-
	 include/linux/sched.h                  |  1 +
	 15 files changed, 186 insertions(+), 23 deletions(-)

Would be great if git-request-pull learned to do that.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
