Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43F917667F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8i1wnLIT18Dpm7NDd2z9YC54B5ciGbeZRxfaoUqYN/8=; b=j0Vaf2aevjef11
	wNefNjTd87Rama3ZV5f/7Oefxg2/Mhjg8n64GcZNen9YrEs+YpHAXaPKrr3oXXqJG6BlPkKevx2eq
	bnvSrN47mmm3UiUtjO7WZCoT/NhcaIn0J5R36Hi01axTTHamraFYX/L3TR6UazMjEE3rhn/3uZZr4
	bGJ/obbbSloXfiJHIh9BOKKS9OiKoyGaF+OQ0gWWnwWuEAQn7Na0XdMO50FGKrflSX+ifoRopDL3m
	hRzJKI07EmCKtykmtDyVY5DFL+aDDI2sFcHiAbjemvowBKwlA1Vbjw6yiskSs1KsZLeqBhsij9kxG
	VjMx0xoseugJf18WKa9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8t40-0001nF-Dn; Mon, 02 Mar 2020 21:57:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8t3t-0001mL-SU
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:57:19 +0000
Received: by mail-pf1-x442.google.com with SMTP id i13so374938pfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 13:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k8cncLmIKb74ARY4u3Ul3MTwXaMgUO4z3at0fIC1AK4=;
 b=EDLx57wYDMC42+RD8Bjb4sT2XTMNlAbUwf3l1LrxVqSpBX2E2wSJbS8L3zZuJ5KFK/
 orwqWQgcrgo8VkfM8MT0mZqeEcdJHs51pFsTArOzKyfOhg/6dzKI1dRDjaRaNCnNl2rE
 rlBuLruu7hC0DANgqBiWXToQDm/kW3vs86nfZnbsI/B7yVpbP9mMDcQp2mSuI0PoR4ho
 9KKmphGgd08rRoAQR+CeCg9uWWuD8AIqynKCRgkg45poLTjjgFqsbvhUcP/Wa1sS++mv
 IK/FRK7C8XwR2U4xn7vTENgP47doomWSJZ0kTTcg90Vo6kRT3fMoPgTSR3xn4x8f+oNy
 tijw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k8cncLmIKb74ARY4u3Ul3MTwXaMgUO4z3at0fIC1AK4=;
 b=I4clW3Iw+XG6l2hBCyG+qV7V+QkiTdA8ukUHPT/IyD6ExZ+fQSVjr5qwHs7H782eEY
 g7lBObdYoD3VIWnVau07HlkEh540DNx/l/pcaCaxGfw5tl8u6jZp7cO3oAQqg9W3sa2e
 acMR/3BTArc2xl5sY+yYz1bZOX5yuU31K2Mb8tEb1gW27dTsNFz9duMTIrn8Sjm0BkIg
 NCSA+xFc9N4b4zlGCFRWwMVyyk2UlbHroMZZYxjNSvs3Z0iIO2Qd1DLy32j2qBBSD1mu
 wuvO5u+8BT9bCSBptHS8frJSOXJrY+k05RqMh5wIJUi0KZGw2gA66lJlRLu2sAZ/NX4C
 pTBA==
X-Gm-Message-State: ANhLgQ2ZPzhxV2M8v/k+xv/642CpO2QUn09QcLwaGGCO9GR25FEdOB7i
 5gUrcYdFhcEwEOtmz/GrbzrU8ZPyN6eEm5ekYi0/bA==
X-Google-Smtp-Source: ADFU+vsJDnL1SMQunAJetk8ZEmktYTmZkt3K50PfzufkgiGIqMmM9XdNzoTxDlrMABCC5BblU52ieA5yH7SC3PGVGn0=
X-Received: by 2002:a62:37c7:: with SMTP id e190mr1002877pfa.165.1583186234526; 
 Mon, 02 Mar 2020 13:57:14 -0800 (PST)
MIME-Version: 1.0
References: <20200302213402.9650-1-natechancellor@gmail.com>
 <CAKwvOdn8SgY-C1YRGOcCnTn84MHHGirkDHPfg=mCONmUV_wqSQ@mail.gmail.com>
In-Reply-To: <CAKwvOdn8SgY-C1YRGOcCnTn84MHHGirkDHPfg=mCONmUV_wqSQ@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 2 Mar 2020 13:57:03 -0800
Message-ID: <CAKwvOdnbSOatU3DjKsKAeRmpVtzWUWu6NxxJ9sP-t5es6K9_Ag@mail.gmail.com>
Subject: Re: [PATCH] coresight: cti: Remove unnecessary NULL check in
 cti_sig_type_name
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_135717_946044_91F0A68C 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 2, 2020 at 1:51 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Mar 2, 2020 at 1:34 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang warns:
> >
> > drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning:
> > address of array 'grp->sig_types' will always evaluate to 'true'
> > [-Wpointer-bool-conversion]
> >         if (grp->sig_types) {
> >         ~~  ~~~~~^~~~~~~~~
> > 1 warning generated.
> >
> > sig_types is at the end of a struct so it cannot be NULL.
> >
> > Fixes: 85b6684eab65 ("coresight: cti: Add connection information to sysfs")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/914
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Yep, GCC and Clang both eliminate the false case as impossible:
> https://godbolt.org/z/tjbDqR
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

0day just reported this, too (3 minutes after you sent your patch)
https://groups.google.com/forum/#!msg/clang-built-linux/_SpkRyhMIxI/IrBtEk-8AAAJ
If you wanted to show some love for the bot:
Reported-by: kbuild test robot <lkp@intel.com>

>
> > ---
> >  drivers/hwtracing/coresight/coresight-cti-sysfs.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > index abb7f492c2cb..214d6552b494 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > @@ -945,10 +945,8 @@ cti_sig_type_name(struct cti_trig_con *con, int used_count, bool in)
> >         int idx = 0;
> >         struct cti_trig_grp *grp = in ? con->con_in : con->con_out;
> >
> > -       if (grp->sig_types) {
> > -               if (used_count < grp->nr_sigs)
> > -                       idx = grp->sig_types[used_count];
> > -       }
> > +       if (used_count < grp->nr_sigs)
> > +               idx = grp->sig_types[used_count];
> >         return sig_type_names[idx];
> >  }
> >
> > --
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
