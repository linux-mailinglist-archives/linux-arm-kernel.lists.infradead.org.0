Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454BB49FE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 13:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3VLe8GDbxyan/Ad83lbpenV9RD5AMveewsCkdQ+MqU=; b=E17wjHyzP4uCuO
	TNLXLm9dXxdwS2P87qnNkJ+MiS3G7K8+Llnigy99TTd8GsuHbAQ+OkLdFl/zjYVKSAznkmTZenc38
	U5XMisukb3BDMoYXNVQpJhjdpPS1gCQkdIlSWWdcctrXwL/s97imA34XMTWPfBjS0bh/KHQzlxv6R
	UX2AmWs+yRdjFRlyucF2Drphy+wtHPHQdWypEHKE4TMpVBaAfr2iba+fQCK8XF2BQaPpfCQX0gT2g
	Cjw1uRv1BrB2PXn6kGb5YNGxDae9TkbQzT46+HnEkCQd3un0xNaDCSKmrPU/ITG/IrGhNUWWA3fDT
	jCaVviT0DR46vyTuzNdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCjZ-0005wj-Th; Tue, 18 Jun 2019 11:57:05 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCjK-0005vz-Jm
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 11:56:52 +0000
Received: by mail-ua1-x943.google.com with SMTP id j8so5625867uan.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 04:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=piRTAebFx2FsROFm2zYcU51EDgaGKwKW/nF1spIt1sI=;
 b=mo7//ZZm5CR0ywBO0NeDMxPL71X9bJ2kFFt6G1IOlFmJ9ImsK53ikh7RHrkrW1cWy9
 16iNhl4WpSQJUkAAbTw5KSaMvEgibjhRAeDdK923fBEpZYNAE20PQW/MvuGIVYjvr3Ly
 PGlsFZh24pJnk4p97S+BlQxGQ5YXakodnK0IFr1Bs6JN3UMFSZC7746dzX1JbDjIEtFl
 5D7+lIshQcZUkRwA2eOa9jcmCy7QsLu2FCDfbDU8EzbL7pWXZADfQcDYZH0I6ds16AwR
 BbQa3geAipWWpwweByap68mRGunqBK9j3PxpS3+GHbGeM8wXH2f7fbKEAVQS0ldqg9eV
 IXAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=piRTAebFx2FsROFm2zYcU51EDgaGKwKW/nF1spIt1sI=;
 b=mbOZpKhQVHoc3YGAFbgt072iL90ZgFnnM/mWvPS+yM/sUyKjb9KKdbkyvg7y87204P
 PX9OrpTa5XhOcmKfxkPc26gBzoPoOEY8bXntlPsCSAIH8QCWD2l936JNakgGa8KdH2n5
 kot6zWliCorUZmjyq8yEAKUaKd50Rzla6KejDjfC8mzAvi3VC/UO69KtYcG/b9cCPLal
 rEA0nv6JfDq7oVbDIwWdhYGx9pQzErW7q69FPI5HGy6lRFp5lX3fM555ITgCp/c3sKxC
 XA6UDaZwb1E2RwPEZjjz+mJyfmFtpTm0vEnETYHCsD16XMcRFyNKmiVViUiEbTlLJ/ZT
 F9ig==
X-Gm-Message-State: APjAAAWtO8x0SLeCC5fvU3JAcGSCSU6h3veiIUuRLj+sxyd/Mg8EJZ62
 GxUqKX95OdM5nr37YmJM2uYFSHPGxMdfyD3hgdo3zA==
X-Google-Smtp-Source: APXvYqxWE7NU+QUzDoR4u6I5eIyinKhKJ2E54DPFNLSdMDWyWFZV8l2G2R1evmkcZ1mRW3Z8CNDF2/bizF6JGRucbC8=
X-Received: by 2002:a67:3254:: with SMTP id y81mr24197966vsy.34.1560859009184; 
 Tue, 18 Jun 2019 04:56:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <CAJZ5v0gbK3AFCVC1b9LyXeMOM8fKR1=ECXZwaeSYRSqcK0UgYA@mail.gmail.com>
 <CAPDyKFpU3u248Gi+FnrVdY-EWXJQuu14uNV9d3Xs0W-K-EMEhg@mail.gmail.com>
 <20190607154210.GJ15577@e107155-lin> <20190607193407.GB24059@builder>
 <20190610103225.GA26602@e107155-lin>
 <CAPDyKFr31SwmHHAREbR3dWMQ55LzzUyTc4M5FZvNsqWfX7SE8Q@mail.gmail.com>
 <20190610171557.GA4560@redmoon>
 <CAPDyKFqC8+Sv5WRhwOxqphAt8tb_PDisy13Miz5e-PajvwS1ew@mail.gmail.com>
In-Reply-To: <CAPDyKFqC8+Sv5WRhwOxqphAt8tb_PDisy13Miz5e-PajvwS1ew@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 18 Jun 2019 13:56:13 +0200
Message-ID: <CAPDyKFpo8pJroOq=YkkNkt6+xyOdu3tTovEbsEp2ry0OJUu7JQ@mail.gmail.com>
Subject: Re: [PATCH 00/18] ARM/ARM64: Support hierarchical CPU arrangement for
 PSCI
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_045650_686685_30FF1BF2 
X-CRM114-Status: GOOD (  24.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019 at 20:57, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 10 Jun 2019 at 19:16, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Mon, Jun 10, 2019 at 05:54:39PM +0200, Ulf Hansson wrote:
> >
> > [...]
> >
> > > My summary from the earlier ones, is that because the PSCI spec
> > > includes support for OSI, we should also support it in the kernel (and
> > > ATF). In a discussion offlist, Lorenzo agreed that it's okay to add,
> > > without an apple to apple comparison. Maybe Lorenzo can fill in and
> > > state this publicly, to save us all some time?
> >
> > The comparison should have been made before even requesting PSCI OSI
> > mode changes to the specifications, so we have a chip on our shoulders
> > anyway.
> >
> > We will enable PSCI OSI but that's not where the problem lies, enabling
> > PSCI OSI from a firmware perspective should take 10 lines of code,
> > not:
>
> Thanks for confirming!
>
> >
> >  drivers/firmware/psci/Makefile                |   2 +-
> >  drivers/firmware/psci/psci.c                  | 219 ++++++++--
> >  drivers/firmware/psci/psci.h                  |  29 ++
> >  drivers/firmware/psci/psci_pm_domain.c        | 403 ++++++++++++++++++
> >
> > I have some concerns about these changes that I will state in the
> > relevant patches.
>
> Most of the above changes isn't for solely for OSI, but to support a
> hierarchical topology described in the PSCI DT layout. This is for
> example needed when other resources shares the same power rail as the
> CPU cluster.
>
> In other words, the series is orthogonal to whether OSI or PC mode is
> used for PSCI, just to make that clear. BTW, this is what you
> requested me to change into, a while ago.
>
> >
> > > My final point in regards to the OSI mode support, it's a minor part
> > > of the series. I don't see how that should hurt from a maintenance
> > > point of view, or perhaps I am wrong? In any case, I offer my help
> > > with review/maintenance in any form as you may see need/fit.
> >
> > I will go through the series but most of this code should move
> > to core PM code, it has nothing to do with PSCI.
>
> I am looking forward to your review - and for sure, I am open to suggestions!
>
> >
> > BTW, apologies for the delay, I was away.

Lorenzo, a gentle ping.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
