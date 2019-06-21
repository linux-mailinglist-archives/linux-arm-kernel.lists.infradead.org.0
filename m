Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45C44E66E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXRkdxPxV6UOseILgKifLV7ynHiVaVAAhcbX1tOWydk=; b=BRHmLwskH86hp2
	bqmXTuvh4MnSjB44mIhpkPHS5ygWEchj8Lfqr8Rhq0DBe/mPRMHRCIgH+GMvIytohuUlAC3KXWlUr
	gj4aj1kKjWMz8PShfhgZlOT+HaEr2wnzbdXvLf2RDMLYSyPzm4a3eXgf2ZcxiQQgLw3oiwhKycxEm
	5PYVjvN7Hrip5mqq01C0nnBM9MKKH4JcuFe5V+9Ybu2CZijjWFidtyThqWsMEPY68UkXUCqyEmohW
	cLMOF9F2d071SyF2mTQe3w7RS4Lg4TWlcTFauDOF/CyHJMkTRo5zcwFMX6qu6sZv9TZuITM4nwVQ5
	jcSFQ9i2Kq/3wnpJkKdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heH6h-00051s-1X; Fri, 21 Jun 2019 10:49:23 +0000
Received: from mail.codeweavers.com ([50.203.203.244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heH6Y-00050W-5o
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j2GzdxnYBK8G7Fj9E5HisiRxVngkkouaD3FQTjun8xw=; b=EGaACgO9PwJhsTSBqdwtLIVr+
 NwMW1810knKUDihDGmTj5uZ9ZTEq9zNnCGvyJyYctDTJ2Slu6pp/Wf534Xz+gL3gyQEN0extj+Ix/
 sH1jTIrlijGT4xbDNd/9OmdmJKxZqATv/EvWUMPh9BPDt+AiJa9AlPMcdQGghjRVCNwpk=;
Received: from merlot.physics.ox.ac.uk ([163.1.241.98] helo=merlot)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <huw@codeweavers.com>)
 id 1heH6x-0003kV-6K; Fri, 21 Jun 2019 05:49:40 -0500
Received: from daviesh by merlot with local (Exim 4.90_1)
 (envelope-from <huw@codeweavers.com>)
 id 1heH6M-0001lJ-SR; Fri, 21 Jun 2019 11:49:03 +0100
Date: Fri, 21 Jun 2019 11:49:02 +0100
From: Huw Davies <huw@codeweavers.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 03/25] kernel: Unify update_vsyscall implementation
Message-ID: <20190621104902.GA6646@merlot.physics.ox.ac.uk>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-4-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621095252.32307-4-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 21, 2019 at 10:52:30AM +0100, Vincenzo Frascino
 wrote: > diff --git a/kernel/vdso/vsyscall.c b/kernel/vdso/vsyscall.c > new
 file mode 100644 > index 000000000000..d1e8074e3d10 > --- /dev/n [...] 
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_034914_275115_23E19ABC 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Shijith Thotton <sthotton@marvell.com>,
 Andre Przywara <andre.przywara@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 10:52:30AM +0100, Vincenzo Frascino wrote:
> diff --git a/kernel/vdso/vsyscall.c b/kernel/vdso/vsyscall.c
> new file mode 100644
> index 000000000000..d1e8074e3d10
> --- /dev/null
> +++ b/kernel/vdso/vsyscall.c
> +static inline void update_vdso_data(struct vdso_data *vdata,
> +				    struct timekeeper *tk)
> +{
> +	struct vdso_timestamp *vdso_ts;
> +	u64 nsec;
> +
> +	vdata[CS_HRES_COARSE].cycle_last	= tk->tkr_mono.cycle_last;
> +	vdata[CS_HRES_COARSE].mask		= tk->tkr_mono.mask;
> +	vdata[CS_HRES_COARSE].mult		= tk->tkr_mono.mult;
> +	vdata[CS_HRES_COARSE].shift		= tk->tkr_mono.shift;
> +	vdata[CS_RAW].cycle_last		= tk->tkr_raw.cycle_last;
> +	vdata[CS_RAW].mask			= tk->tkr_raw.mask;
> +	vdata[CS_RAW].mult			= tk->tkr_raw.mult;
> +	vdata[CS_RAW].shift			= tk->tkr_raw.shift;
> +
> +	/* CLOCK_REALTIME */
> +	vdso_ts		=  &vdata[CS_HRES_COARSE].basetime[CLOCK_REALTIME];

There's an extraneous space after the '='.  Hopefully Thomas can
fix this up if this patchset is otherwise ok.

> +	vdso_ts->sec	= tk->xtime_sec;
> +	vdso_ts->nsec	= tk->tkr_mono.xtime_nsec;

Huw.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
