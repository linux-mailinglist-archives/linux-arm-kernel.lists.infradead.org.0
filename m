Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD25B64A36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 17:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWKAD9iz7fK6pRY8uzjzLihHIE170Zqe0MfNlKkLtYM=; b=kiIzawQqW+A9WI
	QjGO44nsQ/2o3y0O1TAT1K135q1jaowUdIhYrXp/afaemcML40Xp9w9t/s+Y5yDDbmLM7hSml7Gcb
	c57ICMMEcHvSonn7nH+B1EO5VP/kM9Qgv5nM5A9sr/OVOZJtvtFLf2pG3PnS8jwyTd+tJNNScduaL
	XON7DkWmZlhfGrbJJaDn2uDzekxvzsbW/RuGwbD+RDfiOVpTcYTh1wQVBLeYlZa4XbQtHyKJc20Kv
	vIgUu9vkZ/waQ2pAgEvyGT2okIAreIKh0wKe1+yTMQkNkIDAgIhybAJSoTld/nl+iGVvVtcre6UBf
	fT31yYCKuwq0HCqsOpiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlEyL-0008Vu-Ps; Wed, 10 Jul 2019 15:57:34 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlExp-0008UJ-Tr
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 15:57:03 +0000
Received: by mail-ed1-x542.google.com with SMTP id e2so2652505edi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 08:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CZgPHxQSyDYYtNmHA3/wZ3DRhIFFkShs7w2jP3T5tpc=;
 b=LEi6/PjejGkEIcti1eTkHdTyR2J5jxYV6psjYv6r+R4rq9PfMgiJvyz3sGPckQrQjf
 lbugIKfybDu0Y7zKpFpaEvuHTT2l8vGEYy0HOBao0Cd4zR061ANMYJt6m/w7HHj6E1tb
 ocYgs+QcC8JNjAUstT+ETcrq/OJtYTOLtc1b+S24v+b0gwp3Hyivo1pqM/mbRS6+5jdh
 WnlzF7qZHETDtcyr28wnUTIMG2EIZHypwQqXV3z2p5ZjOi9Gv2nhDxwzoWBiIcs2kcrW
 xTtxPMaM5lL20VjS6uVfPnp7Rlbf/WgAjHAi1S0bhstA9g1OCdvgp9kI3SWayKUOO6zT
 WtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CZgPHxQSyDYYtNmHA3/wZ3DRhIFFkShs7w2jP3T5tpc=;
 b=ivvdsULyIWzt6sxbbcJRXbmUWtEWl8jAYnP2gH9uAReYNuBxCCrW61iIR12tNjfFuO
 fjkvE8iV3pMu5M7mVOpIZupRrCdZ/MCQ5322ZNHCY7VXe6Yjc9k3POgcjZ6BWmYpD0lt
 unHsV+KAkeQA/bMJzUM9tu8pgPGdxU/K+FtQVcLSH+rMhPfzOmeUtuVDdvcCP6iBocgD
 BzS2LePokNUyDEyWrgISLEbZLUQecZoMbrRxrQkZ6nTDHH20Y0rbCHtFDw16FMcrfO56
 BJEBAQcH8Lx3R0QK3cBlkmgg8eqsmJtWW5WnJF7eMom5t+0mnbcdjmnswWJonXvQC3dy
 MgRQ==
X-Gm-Message-State: APjAAAXF54GtC9TeDlewF4Bgsso6zRWKPcDYjpFFg6H8My+E6EJ4J08A
 ZWWt9sx8qNlJL7nAJuU42HeTE7laP7l3UG/eJLfW6w==
X-Google-Smtp-Source: APXvYqw7x9BGSNLqWpKAPyh4/6mWWF6JBu/hcFz0l/xjgqeQSiFxs1kaM3mPVPaebQipBv1gm8i9kkO9aBNr+FGCS6c=
X-Received: by 2002:a50:a4ef:: with SMTP id x44mr32799017edb.304.1562774220761; 
 Wed, 10 Jul 2019 08:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
 <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
 <CA+CK2bBrwBHhD-PFO_gVnDYoFi0Su6t456WNdtBWpOe4qM+oww@mail.gmail.com>
 <2d60f302-5161-638a-76cd-d7d79e5631fe@arm.com>
 <CA+CK2bA40wQvX=KieE5Qg2Ny5ZyiDAAjAb9W7Phu2Ou_9r6bOA@mail.gmail.com>
 <f9bea5bd-370a-47b5-8ad1-a30bd43d6cca@arm.com>
In-Reply-To: <f9bea5bd-370a-47b5-8ad1-a30bd43d6cca@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 10 Jul 2019 11:56:50 -0400
Message-ID: <CA+CK2bBWis8TgyOmDhVgLYrOU95Za-UhSGSB3ufsjiNDt-Zd_w@mail.gmail.com>
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_085701_972499_7D6E9C68 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Sasha Levin <sashal@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Eric Biederman <ebiederm@xmission.com>,
 will@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 11:19 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pasha,
>
> On 09/07/2019 14:07, Pavel Tatashin wrote:
> >>> Enabling MMU and D-Cache for relocation  would essentially require the
> >>> same changes in kernel. Could you please share exactly why these were
> >>> not accepted upstream into kexec-tools?
> >>
> >> Because '--no-checks' is a much simpler alternative.
> >>
> >> More of the discussion:
> >> https://lore.kernel.org/linux-arm-kernel/5599813d-f83c-d154-287a-c131c48292ca@arm.com/
> >>
> >> While you can make purgatory a fully-fledged operating system, it doesn't really need to
> >> do anything on arm64. Errata-workarounds alone are a reason not do start down this path.
> >
> > Thank you James. I will summaries the information gathered from the
> > yesterday's/today's discussion and add it to the cover letter together
> > with ARM64 tag. I think, the patch series makes sense for ARM64 only,
> > unless there are other platforms that disable caching/MMU during
> > relocation.
>
> I'd prefer not to reserve additional memory for regular kexec just to avoid the relocation.
> If the kernel's relocation work is so painful we can investigate doing it while the MMU is
> enabled. If you can compare regular-kexec with kexec_file_load() you eliminate the
> purgatory part of the work.

Relocation time is exactly the same for regular-kexec and
kexec_file_load(). So, the relocation is indeed painful for our case.
I am working on adding MMU enabled kernel relocation.

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
