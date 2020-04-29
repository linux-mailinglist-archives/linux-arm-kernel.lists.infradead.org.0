Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671691BDFDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xvNvsm/pZgoFeXYC/UMI4SAa7lKO9Pf2gFNMGxnAHQ=; b=jVC+QV48Lievyi
	OLTso19bwYWy9vCy9+vF28ChyD69WiG2O5csp5TNDar9Wo8Pf9KscUAUFJcn1td8waCd4FiN+zUEd
	KMXfabQ4y/PQZQ4BWMFvL2W09irIMVk+EsM095ceO5iBgJKBcTrF1MhXMR0f3GTIYBTvIjD5EYTyh
	3R6zl/WXAfHZK5l/M4XCAis9ScM/SgbYyi3Cl86YkRoft58Dxqz+asv3BdKWMUUpvtQNw4WBVX2k8
	nkUVQqO/8xWPT928LkLFBp5wqnICuTNq3/65KqP4sYwWRDP8q9e7QJ/Zsmr2guOsVCK2QIfjXT6Xi
	hS+J5zMV3b3Okmt6Pbyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnHO-0006qE-6o; Wed, 29 Apr 2020 14:01:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnHB-0006pH-CH
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:01:26 +0000
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 40D332186A
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 14:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588168884;
 bh=xN/X7hSbyxPyWVESktTIbMiEwkcjRKhrmXriJssAL3Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hc4OdvjlfuNDzNJ8Rv/gIKYnn/xzQNgTWxpxzDwUfNxftJxwO71ikssc8rhC0gvtP
 dH5AGw6nEEmPmiG7cdo23MJzd4U3O0o8VvMV+ZlIJlDgcLBTMoUwSmqaQgVexVD1jz
 hQMGrORFsIzCL0gJuiusk8An37qLxjuPb+QFfMIE=
Received: by mail-ot1-f44.google.com with SMTP id g14so1721213otg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 07:01:24 -0700 (PDT)
X-Gm-Message-State: AGi0PuZpTWF/VF65yopJ65gyPVdXB8gB/Be7Y4tOCDjFYaFI4Kgu+Ej8
 sAlLLEKDS1NnIswcimbeyoN7je7Dp/lWGJbz2g==
X-Google-Smtp-Source: APiQypKMUHflexMSv4hw0/zHJxF61nw4QTAZjiM/2VPiWMTvQ8ob96+3/iKvOm5RoZWD5h2gKSa+35uIsS2AVfd+ihs=
X-Received: by 2002:a9d:1441:: with SMTP id h59mr26992630oth.192.1588168882890; 
 Wed, 29 Apr 2020 07:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200427212514.11219-1-robh@kernel.org>
 <CGME20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f@eucas1p2.samsung.com>
 <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
 <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
 <CACRpkdaE7BRnZbBbx2Lk3CoG6uSiCV1dJWMgF9wU0UyHe2QP0Q@mail.gmail.com>
In-Reply-To: <CACRpkdaE7BRnZbBbx2Lk3CoG6uSiCV1dJWMgF9wU0UyHe2QP0Q@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 29 Apr 2020 09:01:11 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+yxSGRkFkjtF_Tcbp_DpAOSaa8Qka6yKJQjCjtxHUL1A@mail.gmail.com>
Message-ID: <CAL_Jsq+yxSGRkFkjtF_Tcbp_DpAOSaa8Qka6yKJQjCjtxHUL1A@mail.gmail.com>
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_070125_439313_7FA8C8C7 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Saravana Kannan <saravanak@google.com>, Russell King <linux@armlinux.org.uk>,
 John Stultz <john.stultz@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 7:26 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, Apr 29, 2020 at 8:06 AM Marek Szyprowski
> <m.szyprowski@samsung.com> wrote:
> > [Me]
> > > There are a bit of other differences that have piled up,
> > > should we take a quick look at dd.c so there is not something
> > > else we're missing? I see some PM code for example.
> >
> > Well, late initcall based approach is what earlier version of my patch did:
>
> I see, thanks for the context.
>
> > For me it is fine to get back to late initcall based solution, though.
>
> The idea here is to do both/and initcall and timer deferred probe,
> not either/or.

Yes.

> And the dd.c core also does both/and.

Not really. Deferred probe delays retrying until late_initcall and
then somewhat intelligently retries after successful probes rather
than time based.

> And then it does some more things, so I was thinking we may be
> missing out on some of them?

You mean like timeout (which is getting moved back to 0 as timeout
causes problems with NFS root)? Remember this is deferred add, not
deferred probe. Once the amba devices are added, the deferred probe in
dd.c takes over.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
