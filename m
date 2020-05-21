Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B031DCB16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpS0q6BpbVxWEyv2vzMvXOIpYRyTk/5DPxdlXRt2978=; b=qrTi4hSDlT75hI
	tOsdHJ0ojgjVG5Jw4I2Sb3w162h5zFlYDvuop33i3HFA8YEbyf6Zf5Ixk6p6tpGriZCFsVtxEAVAh
	fuAE2DHEFR7jSvSTkRXjdzZfu8ZnkAe9QzsQZpVZq2M6LeefclFf/UkfdFg9V9LZP56RTCpvJl1ns
	XBEWWY72PJh2cITUkQXr2MxCGbcu8sca1ssC1Lj9pnTkPIRMhGqjPOVZgpwwDahxEnI4HxFEDrWBS
	PkCputGQw1EFXupstJnmBjMHkCYYXK331arwK8ceGxFjIAq3imq74CHmDgFW0aYB3VsaqJM4stJ5l
	2t6RsIMc6YZHXBemQ4lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbiUh-0004sD-Hh; Thu, 21 May 2020 10:32:07 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbiUS-0004re-KW
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 10:31:54 +0000
Received: from mail-qt1-f177.google.com ([209.85.160.177]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MOiLp-1jPFuL1k6x-00Q9ff for <linux-arm-kernel@lists.infradead.org>; Thu,
 21 May 2020 12:31:50 +0200
Received: by mail-qt1-f177.google.com with SMTP id t25so5086497qtc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 03:31:49 -0700 (PDT)
X-Gm-Message-State: AOAM533Ikleo3qoKOj6Vr1fxG8IAMRbeSbPvPzkWta09/WcAITWh339w
 vR0LvZJW3JofcjAT9igvUgPdwLH5QpTKQSQCJro=
X-Google-Smtp-Source: ABdhPJwchc6f5+9k206SLSnfoFenzvhxDbq6spSQmMaQz2Elq2egNsF2fR59Bs9Mydr7En0Lzg2n4asxBiotUtGD9yc=
X-Received: by 2002:aed:2441:: with SMTP id s1mr9921937qtc.304.1590057109012; 
 Thu, 21 May 2020 03:31:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
 <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
 <20200521070629.GB1131@bogus>
 <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
 <20200521075755.GA4668@willie-the-truck> <20200521081055.GD1131@bogus>
 <CAK8P3a3dV0B26XE3oFQGTFf8EWV0AHoLudNtpSSB_t+pCfkOkQ@mail.gmail.com>
 <20200521101422.GO1551@shell.armlinux.org.uk>
In-Reply-To: <20200521101422.GO1551@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 21 May 2020 12:31:32 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3cPPiprEpF_k-GWAgWSZiP3Qp3v++jvS_8W17Ns4_HGw@mail.gmail.com>
Message-ID: <CAK8P3a3cPPiprEpF_k-GWAgWSZiP3Qp3v++jvS_8W17Ns4_HGw@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:6JSvxpMgf24HQMaa7zhr7ZYErROv29dIHE5AZ3+uF7GwfMb5vk4
 bW/IPXClLPI/41jhAOcM5deTUJV0Egwa1V1U1D26wXn5wb/DN95FBjI7wAhplwgw99eLZP8
 9Qor/U/txDLuFi1kH831DF9Rwqo42o0g2aHMBm0sAKvwGlKDVyGr0mHi/gWtj4hsib7umLC
 ArV0cK7ped+PbytRAPcVg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SvgOx8yGtYw=:cztsDb/AKbv0rfcjGUzmbE
 zjcswka+K+8vWtB+8pxYp12ye5W4cc8JvXRwCr7vakye+Z51YN3v1P6YUwp+wptwPBLrj39A0
 1KmmezkOpgP2WXWgZYDEVw7XH5HNJiiwbc6lMPRPU3LElcDIB0vh7xhHlEFib6gUch/0dxaEE
 GI79SoTNsFEaMjH/z27Pc7bi/K7cBZge9khnHRel7Ps6d7ByTn81BdehaeljJbCPZBzJTIPRk
 errkdTncnWSZeZQ94ZVdzLEPXbQ38P0TXsan66BfMAbEx5HY+vedc87cDXmNI4gOyeqigCcIJ
 3xx9FRhGwnF+SEWQc42XdAWxT9E0GU4TF4PKChdLsS1vXP24SY+RkSWynthbzxDR4cmnOERgP
 KuOY0XhFM/mmiK+Mpi1oYthAYf2o6bcL+3Sr7cflSJuJieMVUPsY+dWI65KgYVKic0h6t2zkp
 ZiL3kdQodMBx0YA7y2HerFktm+lQ32QnuvaBMJakJ9yT66pagpdz3WnSnJKt+vcYqRJYD/SNw
 pHM71Hy2uZa8YEKxDxPLIHRtZKy8M05jTzdiXL7ERinU8OaqQBkTLoOXQseMn1MSKHcmJ6fHA
 rVGoAGIwCZ6OAcrNz6sOXG8KAgDFzHAJJ54VCB5y6el7yao4bG29NZmJLP1zuHFKOrKeTD9cK
 4yJm8grTqaOsaqgYwO4ovV/eode1pTe95Z4BWX0oi2sn2Pt9LvndTuPJU8DO7chDY78Q3WDQH
 VFNIoC10WsmWblBu7Bc9a9ycfxg2IYwn4w36cPaGvl0klpvLmd173sS4hT/Nu4xfQQHzDJCxU
 sekZmINw2p440ltUNk9uW6fHanPD0wUN8ZW9P0nmtwGt5hzJ14=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_033152_968663_BDEBBFDB 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 12:14 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Thu, May 21, 2020 at 11:06:23AM +0200, Arnd Bergmann wrote:
> > Note that the warning should come up for either W=1 or C=1, and I also
> > think that
> > new code should generally be written sparse-clean and have no warnings with
> > 'make C=1' as a rule.
>
> No, absolutely not, that's a stupid idea, there are corner cases
> where hiding a sparse warning is the wrong thing to do.  Look at
> many of the cases in fs/ for example.
>
> See https://lkml.org/lkml/2004/9/12/249 which should make anyone
> who sees a use of __force in some random code stop and question
> why it is there, and whether it is actually correct, or just there
> to hide a sparse warning.
>
> Remember, sparse is there to warn that something isn't quite right,
> and the view taken is, if it isn't right, then we don't "cast the
> warning away" with __force, even if we intend not to fix the code
> immediately.
>
> So, going for "sparse-clean" is actually not correct. Going for
> "no unnecessary warnings" is.
>
> And don't think what I've said above doesn't happen; I've rejected
> patches from people who've gone around trying to fix every sparse
> warning that they see by throwing __force incorrectly at it.
>
> The thing is, if you hide all the warnings, even for incorrect code,
> then sparse becomes completely useless to identify where things in
> the code are not quite correct.

Adding __force is almost always the wrong solution, and I explictly
was not talking about existing code here where changing it would
risk introducing bugs or require bad hacks.

However, when writing a new driver, sparse warnings usually
indicate that you are doing something wrong that is better addressed
by doing something different that does not involve adding __force.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
