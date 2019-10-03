Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB64CB183
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 23:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y5kvoUafhdqhmj75xNgLqTUIVskI/jJU6XMrMCAT4qc=; b=CWC5v7tM1Zban4
	FIfnqChgf5d8aaW7A7UXLhb8olqTAiWR6Ir/BrZAz5lhGN0vC9UvI7UQ3K8Dd0lvPB3jZNjsX2Jhx
	2v5lLxS4vYwYKvEDwTl868+7s7DHl742LnXGfP42g7pgPpSZtk1nuyfTKkRhV7Psa6K4zP9F91X9E
	+NTxjHqF8MiQChBgbPVbp+xs6bkJCn7QXfrJmUI2QA59diYLmEnHmn/NRMJqHA5LGUTIB6fJulvyq
	CZknFM1RHRVTarewScn78dMEqyPAInSlKhUp4CzKroebuG50Y4aOePgBeI2fcPfi4S6THxSPnR5Uv
	f1yZ8wzlAX3RDKx/pGaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG914-0005da-8H; Thu, 03 Oct 2019 21:52:06 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG90A-0004tm-LL
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 21:51:12 +0000
Received: by mail-pl1-x642.google.com with SMTP id s17so2130653plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 14:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u1kLHx9hv/uJrNQB6ahsx1gOt2otfNUWLEU9WGV5Q6w=;
 b=wMMj8W01v0c6TBX4YKoTsjZXCHhuvsim3OX99DX8f1E4V2zWBe1sm2HcSU89S4dOjN
 1PgrJSlIJ9BcM7WWCgbrFJ3W/+rBDIuXdNADs+mpQJ4qK1Oy1+143AylzqaZXowCsi5Y
 46NAJayqxluDFriZNGmeN+Rokj+fB/vLXI7+nwkuZFGasXnmMRytVLW5jDwnjouAtXPt
 DPSTLiqvVyuWE4ZnFzgp9G98tThA/3YyIXsd8DwtulGKG1aGwxLkNPRY4IvRUm8SK0Y7
 m4VU3k5vjbSi0rcrbbQk20k75A1/ObNlQJKSvvO7uTTMdIxU6Vp72tFZQAVCBcfnQ//z
 f8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u1kLHx9hv/uJrNQB6ahsx1gOt2otfNUWLEU9WGV5Q6w=;
 b=HdWQjytbQLtUYeS0RC3rCbgXZK/RWaR+NBwHx+Q4HhwXIVsNWVbxDGowhWlgrAVTB7
 VMm8e8/X1sL9Um4Umb6ladp6eOzezSHvqb/7bG+wsU+El6PJXhmQBIEE6+2OpGy3ivvB
 /GICJ5x429hyN2lM7kXOm9ePYr6mqjpZxqLq0zjVbcNZD647RIhsOi1MBXw40xuizxdD
 4O7B2HH1bPF5yaySVSmiedRIT4Ltn+IMh48uqfTlwGioM6xg05waQNU70qBtZkTrWDED
 vLly0R5XkYmT461WX4PXRfT0O4YswERQZOKkxWk9gY3HeqMjmXOr6qobdr8eMxGYQ6yO
 tlTw==
X-Gm-Message-State: APjAAAXwDR8zbDd2ynPbvfXRKpEmbf+ZcQPR0iLj0fDxR5VMX/Sk90MI
 6kBIThYpquNpeUaJFSDeBGaPJTqezSIQ5EjjT7Cml7WZ
X-Google-Smtp-Source: APXvYqw9MGIP2qFWRcdt/2BFhkRt7r9d2GKSY8mVi8jppDndhl/UlLNYHSE6Z3rRmjSuRnw4bEgrKNZzGLaqOx5Hhgs=
X-Received: by 2002:a17:902:bb87:: with SMTP id
 m7mr11548031pls.179.1570139467569; 
 Thu, 03 Oct 2019 14:51:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191003174838.8872-1-vincenzo.frascino@arm.com>
 <20191003174838.8872-3-vincenzo.frascino@arm.com>
 <CAKwvOdmhyVHREHvyB0wL2GfMsE8GcJ1Ouj_8ifrR4hU8kBYukQ@mail.gmail.com>
 <20191003204944.6wuzflqkjdpawzvp@willie-the-truck>
 <CAKwvOdm4ccfhXDDSKXgdN4qkn2NHwAHKCwRV7OqLEG_PQj09vQ@mail.gmail.com>
 <20191003205931.d3vp4bh7wdu4oe7u@willie-the-truck>
In-Reply-To: <20191003205931.d3vp4bh7wdu4oe7u@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 3 Oct 2019 14:50:55 -0700
Message-ID: <CAKwvOdmMMXOG_GH6-+9iJ=2-+BA-Fg+o+33nyh5m46Rh63FBdQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] arm64: vdso32: Detect binutils support for dmb
 ishld
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_145110_780181_D58B3F4F 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 1:59 PM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Oct 03, 2019 at 01:56:39PM -0700, Nick Desaulniers wrote:
> > On Thu, Oct 3, 2019 at 1:49 PM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Thu, Oct 03, 2019 at 01:18:16PM -0700, Nick Desaulniers wrote:
> > > > On Thu, Oct 3, 2019 at 10:48 AM Vincenzo Frascino
> > > > <vincenzo.frascino@arm.com> wrote:
> > > > >
> > > > > Older versions of binutils that do not support certain types of memory
> > > > > barriers can cause build failure of the vdso32 library.
> > > >
> > > > Do you know specific version numbers of binutils that are affected?
> > > > May be helpful to have in the commit message just for future
> > > > travelers.
> > >
> > > A quick bit of archaeology suggests e797f7e0b2be added this back in 2012,
> > > which seems to correlate with the 2.24 release.
> >
> > Cool, thanks for digging.  Vincenzo, can we please add that to the
> > commit message?
>
> If this is the only change, then I can add it when I apply -- no need to
> respin just for this! (although I'm also writing this to remind myself :)

Yep that's cool with me.  Feel free to add my Acked by tag to the
series as well.  Thanks for pursuing this Vincenzo.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
