Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5751F724B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 04:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syi/sfEOo2527hOUdB9QMnHmuBkqFaXzi3r8DpLgUHU=; b=JCLhWnVITDcnzJ
	eY1RoPMgLWArhwfLSWj9cDFs0lZbYWo01aqlhxZkSTK8PKkLrxv0ReAv3g/0qwmkemELLV05rUNmJ
	yvwlW+K+bdM4EG9LrINI/+UX3o/fh1DfEcr1ZlUDj1gEImuDobZHBzCJ9fyJrlbomsNYh2dasXMO4
	dJqIYZCI1rcaX9Z42z6U9o3GGLx3F71qfECTx8GQARj5nn0JbSEgrFjsVhobYxbs8gnZbSahRbYoq
	fHhW5k68b9s5gKjy5wvcrP264RzeV8th/p59S+5LPkeD0+0sTbjBgkWkVNZaR2TtF7QZTLcP4QLkP
	blv9G1G6GZc6LTb18jfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjZpU-0007A4-IA; Fri, 12 Jun 2020 02:54:04 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjZpM-00079E-4h
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 02:53:57 +0000
Received: by mail-io1-xd42.google.com with SMTP id r77so8750102ior.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 19:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K+UQMn4XLII3jpSziiawVVEOaVhY6ZIjWCrSiiLtkb8=;
 b=ksh5jdaLWv3tU1z6o8SmQ2FRLeupUM1iLsVEhLWN3SRppEV6EVw/ruPj1af5oZtxA4
 yRk0OGXzz1ACoYiBxdHg+syA0oS/JEbNKRgE9RfXraHSMX/WBkhhrS4hPJ72cnbO2br9
 XWqaVe8kGm9gET4UWTlEVpXO1/wbwrkzpL/ptJwSH/rzPa0cJfUwFo4u1OsM2wSwiLsU
 BQD6a1M2Bg+nLZt4ZdibQWaVPi1GlCXOEzWCMzhmEtP10kYu1b3KRSR6pqZizyI5tyV4
 PT5XewTRALSmynnUGK+vJkNYm6G82Mphg4y7iD+hs9pOGrfh8AoI14mpO57AzZ7H3og0
 SfrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K+UQMn4XLII3jpSziiawVVEOaVhY6ZIjWCrSiiLtkb8=;
 b=CdCDPBSQusMcWZ447bvlGywuqGVyED3VCN6QeHgz4Xcd4Hp3QD8pHhwf+lP/mW8Ods
 gGdC9pbQuFJ1ivL7ho9o8h2Fh+Rb7u1TZNcIKb5690I9O7MmEqKFngJXU5FHQvK7U6cy
 L1USezq+nyCo1kbf2W+PLD5LMhVf6ORaG21YiTR9pRtCCOwMuVE0aSyTxdSO4MGeoM0T
 VlQUNk0y+MRhifjhHaaUx+ECTVAME6ghJCO/Uws3U3HlFmBfVIycMtJ1CtrmVouUxQcs
 pANAX7CV9T/vmIFYu+hYykFEoZC/ijY+tf9ym1ojNT2sJ7kZt6LX0//VOlN8x0nI+ehw
 eFeQ==
X-Gm-Message-State: AOAM530L+keRTDLP5jTq445fjkikOTZ0jpC8whNnjNS86g44/rCOLjIF
 vaAXVVe4fBBFRbo0CmVfomPJLkq8VaQQ0gwbt0d6+cmH
X-Google-Smtp-Source: ABdhPJzDJ5YO0GeuPgNkVBf5BRbJ4IfyKy6YkMhLhLbz0X61LU8WDhIaNQmOqmY9oyYbXwP+kccz3OQQgOwzXm9VpIk=
X-Received: by 2002:a05:6638:a0a:: with SMTP id
 10mr6117323jan.30.1591930431883; 
 Thu, 11 Jun 2020 19:53:51 -0700 (PDT)
MIME-Version: 1.0
References: <CANAwSgQv9BKV4QfZAgSfFQvO7ftcFyCGXEo+g4pgQA4mgK52iQ@mail.gmail.com>
 <20200611064556.GA5056@kozik-lap>
 <CANAwSgQqW6+W2=QcrAx8DsafK_0eMtQthQWcZWy9NDWxN3WkbQ@mail.gmail.com>
 <19d94eb3-d08c-e436-ccc0-cca56291eed2@arm.com>
In-Reply-To: <19d94eb3-d08c-e436-ccc0-cca56291eed2@arm.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 12 Jun 2020 08:23:41 +0530
Message-ID: <CANAwSgSFPbnAh2VbiPuhvPOve3Y44hXZGnjpc_7e27K=xdBo8A@mail.gmail.com>
Subject: Re: ARM: warning: relocation out of range on Exynos XU4 and U3+
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_195356_200405_0959F4DB 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Thu, 11 Jun 2020 at 16:29, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-06-11 08:51, Anand Moon wrote:
> > Hi Krzysztof,
> >
> > On Thu, 11 Jun 2020 at 12:15, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>
> >> On Thu, Jun 11, 2020 at 11:13:57AM +0530, Anand Moon wrote:
> >>> Hi All,
> >>>
> >>> I would like to report some warnings I observed on pre-compiled kernel
> >>> image (5.7.1-1-ARCH) from Archlinux.
> >>> Sometimes ethernet would not come up and get connected, so in order to
> >>> investigate.
> >>> I found below warnings, So I am sharing the logs at my end.
> >>>
> >>> Are these warnings related to in-consistency in locking, How can we
> >>> Investigate more to fix this issue.
> >>
> >> These rather look like some address space randomization or some compiler
> >> (LLVM?) feature. Not Exynos-specific anyway.
> >>
> >> You should report it to Arch folks because they know how they compiled
> >> the kernel and what config they used (althogh config you can find in
> >> /proc/config.gz).
> >
> > Thanks for your inputs.
> > Ok I will do more checks at my end, before reporting further to Archlinux.
>
> Looks like the relocations fail when loading modules, and PLTs are not
> enbabled[1], so chances are the kernel image has simply grown too big to
> keep everything within direct branch range of everything else.
>
> Robin.
>
> [1]
> https://github.com/archlinuxarm/PKGBUILDs/blob/master/core/linux-odroid-xu3/config#L619

Thanks for your input CONFIG_ARM_MODULE_PLTS is being enable on
(5.7.2-1-ARCH) config
and this issue seems to have resolved.

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
