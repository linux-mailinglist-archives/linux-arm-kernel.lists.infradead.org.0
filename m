Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 261A4CB094
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t80zjVdBtiCgVL0rbdGwSz6uCejmz0TDAaTB5YiL/+0=; b=tzJbdP6S4MzXy6
	CZn5fTS43gF55iHytzXf/GDCWXAAPgkVkIM1vHjUdWgPxJrdO0Au5/Kb811Giq4oOQ4GcHB9GZeWK
	IDpDGU0/imWUO3hlFrUpPvrobK6SyACYxmN556vuCBRsED8kI6Atx/NIWj3zQws9hW1uUaiQIHV+L
	uYrroOV9TRHihDit4t3OpJYpdQd0kdcpHiBr89DIRE9hAkHcL80RHDPKIhzxcWHS+/5KP0hizxBnu
	9csjJiN8w7HI+ZGlOIBbL1pKSHTnXfZm3k/q/rXoQ/H8IXGczAl3gNxjfpAUecmuFcvW5zWyXKLbY
	lW/UesJf2lgkhePLIKgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG89n-00010C-Ew; Thu, 03 Oct 2019 20:57:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG89d-0000x0-46
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:56:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id v27so2436243pgk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 13:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xKarWPt6lvQJGvS6YLjAUhktx3P1H06FEKjY24EE5Jw=;
 b=N2wbjO7zmQMQz/t4ljgc0TF/ObEvPwnzF1g3g8vfnQ4ia+DVPId7P6OeXnGqHRaGOk
 WHGiv4/ObZ0KYB4bRoFlH6h4ag7QiuhKTD7/ohoXYA4yImmx2bGROflqjWedJ0aWtGDK
 4e1nKlvyrHtP5Ru7mlJMS2wdVNPsOMuZzlb0jF20TYd87TYn+/avUlTMbvtF8S+Q49YN
 gCtSduE8FBNffOmgDvaqEbmvjeWhHGnwrcMv299mr4fkeKAVTHDARAeanLehxeDAUq79
 RwaBb379XDiSFDprzFg3L9E7ARcDq9CnOWozbZyRht8X0Hs1sco0piN/NfJ8KZZ3preQ
 mtVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xKarWPt6lvQJGvS6YLjAUhktx3P1H06FEKjY24EE5Jw=;
 b=dZu044+biLxvTtJuAZPyL77DO18J89Cbp68rbV//0LQX2/jtOipNR/j6BLTho+JyvK
 lYFWDAG2lRvoBvv9w6w5r8YzpBcUszU/5X6YLSn7N2j/55eEjdzfgDO430m141BwHwbi
 W1vzOelpcoCD0QA7+/0Ued72pmMH6sZuIw2MYt/z2LeuSfbvzHl42ZFETAaq/m0PnyT9
 p/HPJ1bkkvyFANCx+h38H2WICnIzlDh6NaQHJaoTBs2VEDfSJgBgs2dEDEFLBipJ2Cq6
 /UXYJGiwfxSHrkXHkeY13qfBMP2JjBADKQleR42CVUw28YU2c2f5TR3I1onfLTK+aeWq
 5Adg==
X-Gm-Message-State: APjAAAUfNCBArQ1caL3MRFdGarz3mHwN1IKcrBrM72tcI0LW1H9IdIQH
 wEnu0e6G3jsNUNtsFOHISDYOtLzg3b4y3MALHrctMg==
X-Google-Smtp-Source: APXvYqzepTwSLkK7xurMnEnd3RkNLkJ//qnYMQYypNWa2g9ldvI5+aGCn/jYSbxr/9DZIC/Q3+Dyw1SEpDKUCCqRcOU=
X-Received: by 2002:a63:d909:: with SMTP id r9mr11434400pgg.381.1570136210748; 
 Thu, 03 Oct 2019 13:56:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191003174838.8872-1-vincenzo.frascino@arm.com>
 <20191003174838.8872-3-vincenzo.frascino@arm.com>
 <CAKwvOdmhyVHREHvyB0wL2GfMsE8GcJ1Ouj_8ifrR4hU8kBYukQ@mail.gmail.com>
 <20191003204944.6wuzflqkjdpawzvp@willie-the-truck>
In-Reply-To: <20191003204944.6wuzflqkjdpawzvp@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 3 Oct 2019 13:56:39 -0700
Message-ID: <CAKwvOdm4ccfhXDDSKXgdN4qkn2NHwAHKCwRV7OqLEG_PQj09vQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] arm64: vdso32: Detect binutils support for dmb
 ishld
To: Will Deacon <will@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_135653_197560_D90EDF59 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 1:49 PM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Oct 03, 2019 at 01:18:16PM -0700, Nick Desaulniers wrote:
> > On Thu, Oct 3, 2019 at 10:48 AM Vincenzo Frascino
> > <vincenzo.frascino@arm.com> wrote:
> > >
> > > Older versions of binutils that do not support certain types of memory
> > > barriers can cause build failure of the vdso32 library.
> >
> > Do you know specific version numbers of binutils that are affected?
> > May be helpful to have in the commit message just for future
> > travelers.
>
> A quick bit of archaeology suggests e797f7e0b2be added this back in 2012,
> which seems to correlate with the 2.24 release.

Cool, thanks for digging.  Vincenzo, can we please add that to the
commit message?
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
