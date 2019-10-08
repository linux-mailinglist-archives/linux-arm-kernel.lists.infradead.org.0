Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E814CFD3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vd6SRfH4uRk/C5aaMA1J8M1EizWTyTdPI61gNO5sS/Q=; b=Zj+5Fe6/3TQOid
	MF8/gBPWEZZKfgTAZbaUKx3susWkMasE9QukQDjYMRgHy2OF4V9qgSFOjOicsjWS9E8TWC18M+6ks
	okXYLjyH4sw3icsjfPXELCme3c3dqSG68LURr3XUVTnwsmIptXbWFicZAWzBqcFfdVfncZYRHOCF2
	pmJm/3dts7/AyHcrqzTfDdBgfZOJXMwp5WwEo/+hCNI4VyrQGyem9bpoXUMuUgVNTy4ySU6kRamFk
	G/YWdu6E4DMTitxktZ7FT/KKUnStHODECOQphX9ZyX4KMtXT4itdF2xIX0QgDSKe0mvTsD2D3ckNU
	oGsT7LBN131pQbFmpaYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHr8g-00047o-Or; Tue, 08 Oct 2019 15:11:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHr8L-0003zG-Cp
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:10:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id v17so3510116wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x4UtXmNAEEQlV7bEOyhctWL4OsuKRiKCzTxs2PjZppU=;
 b=mwwrYUQFnVUjEYoI6DrTTrQpPrAqsvcgHQdKudQDve7YPjOD+fFdHmGL3zoKT7loCa
 ezoaqsMIoGx2vwo3v6dTQwSAhXDTTlLkHthKltAYO9soytF+8+DZYl2uFE8BzudnXiC/
 LwUWndEMLDSZlnBZOEmINl37PQzvz2wsq0bzvnUmserpp/tZNHt4SK8tkF9QX7O/niEL
 Tn2zqcL6jr4AKwpC+wJtIYnCCcFcA+V7vpmJ+W5G6NFx05+xN+s3QILOXw+YiJCQ81Iy
 iYaKgptIbolDEpaUjj7WbMCrJpXFgQYLSp941XkQVAApPF7/GsO28Ga/TFcasgqdtJJl
 Ygbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x4UtXmNAEEQlV7bEOyhctWL4OsuKRiKCzTxs2PjZppU=;
 b=b96Se8ol5sP6uLJzEU0PgWTMSuiOMxzrk8j2HZRh/CqMVAa8Bvldlxjx6IQbHffEJ0
 Kcg8uaGDJeLvAfBDQg2cunpEVGQUC9PqKHNCL7Y3kIE8/Bnhx9xJudOjNmEcTkphqjIu
 +SoWk+DRjQXlX6y3/1eX5XdYGjREZQ8AZwO9t/ho9AJubBSNgmtQlbC6JsF4rq8J8qyP
 SAMJYRx5VnPgZChe6dkaqE/Su8OK+huDsJJuKzYWrfQiro9XgM5YcZnylvb4G73YPmmH
 scItk/wD2vGXi5xgAkA478Yi+Z5hvHcErDa6aaVhw0QYeCfuO9zNosUUyDE+8MYLq2X5
 znyw==
X-Gm-Message-State: APjAAAVSBWfKuPjoEpFuq8dW55rl7XkHdWNkAz/tdDsQw2eeu7rmhD9y
 +HxNes2oE3BJOzKdQp8T5ONASLtQx1rwbS0u68nrit5GUio=
X-Google-Smtp-Source: APXvYqxJqeOX7MUwHMVtRG9qoFLQn/xGpYUIvDtAlF9BvE37xY51I5a/d094KvExcFpVNEOHUkIp4HHk1rD/nw1L6QI=
X-Received: by 2002:a7b:cb54:: with SMTP id v20mr3963491wmj.119.1570547439392; 
 Tue, 08 Oct 2019 08:10:39 -0700 (PDT)
MIME-Version: 1.0
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
 <CAKv+Gu9sg0kpkHWDTdSO1Gz2iCpi2uKr0STQVOWReqw0UxUM4Q@mail.gmail.com>
 <20191008150915.GC14523@lakrids.cambridge.arm.com>
In-Reply-To: <20191008150915.GC14523@lakrids.cambridge.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 8 Oct 2019 17:10:28 +0200
Message-ID: <CAKv+Gu94aALhKP8pznJ-sDS_6W3ZLLv9gXPUgzm-ZbzC+fHzHw@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 00/16] arm64: backport SSBS handling to
 v4.19-stable
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_081041_452609_CDA14996 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 8 Oct 2019 at 17:09, Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Tue, Oct 08, 2019 at 10:12:14AM +0200, Ard Biesheuvel wrote:
> > On Fri, 4 Oct 2019 at 14:04, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> > >
> > > This is a fairly mechnical backport to v4.19 of the changes needed to support
> > > managing the SSBS state, which controls whether Speculative Store Bypass is
> > > permitted.
> > >
> > > I have included Jeremy's sysfs changes as well, since they are equally
> > > suitable for stable and made for a much cleaner backport, so it made
> > > little sense to handle them separately.
> > >
> > > These patches are presented for review, and are not being cc'ed to the
> > > -stable maintainers just yet.
> > >
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Marc Zyngier <maz@kernel.org>
> > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > Cc: Jeremy Linton <jeremy.linton@arm.com>
> > > Cc: Andre Przywara <andre.przywara@arm.com>
> > >
> >
> > If nobody has any objections, I'll send these out to -stable end of today.
>
> Other than patch 11, this looks good to me!
>

Thanks Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
