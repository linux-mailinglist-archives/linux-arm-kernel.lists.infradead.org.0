Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8667210679D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 09:15:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2U3rce4lF0YTcxk8oY/wM2fkKLxCvNs3oQDayuf1OXo=; b=ii+U/0wLnlmD7Y
	2a4BizYX5DyvKKNZ8hIpld8em0kmSjPpjljmTI2Or535Jsi26/7lrhzdBMkFnMCC0ej/DMNc4KHxo
	UVwko9Sx2aycoBTrYJMLZOpt/Sp0AtRvtfBKQP1crh/KaYr/J7HRd67p0IEFprcjBQWr3LF3oYF7Y
	ETSFKNdriKyMp4N8QgCkFXROw5Sn96rp9O0A/shwIr1H4taLJroIqC/HmMADCvTS6+Cb5An8ndjKZ
	iukO5va0Z6YgzRFYKpDqnXh5Va8G2ggdaGDU0JRX3BIEneBLvScKw9uFvzT2H+2ER0p0ZPuQdBwC4
	2dmv779o6vLim3ZOv4tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY45x-00076I-8v; Fri, 22 Nov 2019 08:15:13 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY45c-00075Y-11
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 08:14:55 +0000
Received: by mail-vs1-xe44.google.com with SMTP id y23so4273392vso.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 00:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kFTfLz77NfOOoLRcjoRQoDvWTF66Atpx3UZ3GFfFuKk=;
 b=ZwDWMqx+Nhi1GjLIEgBzGDzcliHIzbVRqH6FsQsZS3QO+ytfBXNLs2DUa758bQdkdh
 66Rb4/Vdi7d875DaOKhoxbpjLYWaf87TSMA8tpEP7kinrYYMXfmu+TqSxno3zNOPFxnb
 taF3ZXVXk9b9/EabAcdMnv3VsekR7jctf7FAlzMwS3G2WjpJFtw444OcwMV0vlF4eJZK
 PE78xHeCfX5fr2GCXh2wglMMw/bCdh2Zpw4mvFUsJJsTeKvLuN0e4SwQ60kthIwiFLqj
 Y9E17GJcAzWqbhXPs1AJ1ei9+JDNjX1DKVx8fdlOE1AJcV0vv+3tHgyiAWxazI+fIF3X
 jEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kFTfLz77NfOOoLRcjoRQoDvWTF66Atpx3UZ3GFfFuKk=;
 b=OWXS6TIhPjtlHzcqHrCf/uM4i2dAVpMmrOaz7ufYtqWu/aagDIBPN8VsFmN894cGSO
 l5Ox3r8+XAZR2DMAd4nlItWDVuHAPXhkiHkwADtms51LLd0eUCBrlVxznKdGYY5aiUj2
 vptRdaSQ7jpAVFK+eLzgNX0eP3r7jJm4rvZ2t6k1cobPCeyCBL+8eNbAWVC+OMkn1A02
 2B14yKPmPmlpTYSKzQsGF/UN8PUb8PC0lEiHrBfF5CzzWfLTVyBX71Vj8HKSaU02XY8G
 4fSYlnmsq2vVWG8sLI4vNF/o9r9bCpr52girc9Rvx6d70zO0ataFvrx6dXYdE+Q5jNq5
 Hj5A==
X-Gm-Message-State: APjAAAUfSzi7PtGqoAlVXAykGyuztIb/G4SYsAVPF75Rky+pUPrX42YC
 +tBMnwGSfG01iwwDvfu7L8S+zC8z9wp3C2Xi0oQI5DQS
X-Google-Smtp-Source: APXvYqzK+cyn8m/2M4gYVtla7YFWEf/01wZBxA5Qm1kV1UpsOuvqk37Xn1jmB1PigbuN81mwvRR8Jtk1ZnfSecXaf4I=
X-Received: by 2002:a67:5ec1:: with SMTP id s184mr9129478vsb.200.1574410490515; 
 Fri, 22 Nov 2019 00:14:50 -0800 (PST)
MIME-Version: 1.0
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <CAPDyKFpiMK_P+4+n9wHc+68X6j44XOoTm=J8OXz5HkqoMxOsOg@mail.gmail.com>
In-Reply-To: <CAPDyKFpiMK_P+4+n9wHc+68X6j44XOoTm=J8OXz5HkqoMxOsOg@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 22 Nov 2019 09:14:14 +0100
Message-ID: <CAPDyKFprrtTJ8b5B1AgOWEGNeMGdjS4NbVFU1h4E2SA_oZ2dAw@mail.gmail.com>
Subject: Re: [PATCH v2 00/13] cpuidle: psci: Support hierarchical CPU
 arrangement
To: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_001452_276943_3AEC5FAC 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019 at 12:00, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Tue, 29 Oct 2019 at 17:44, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > Changes in v2:
> >         - Avoid to affect the non-OSI path with specific changes for OSI. This
> >         forced me to re-order the series and a caused more or less minor changes
> >         to most of the patches.
> >         - Updated the DT bindings for PSCI to clarify and to include the "psci"
> >         name of the PM domain to attach to.
> >         - Replaced patch1 with another patch from Sudeep, solving the same
> >         problem, but in a different way.
>
> Hi Sudeep and Lorenzo,
>
> Apologize for nagging you about reviews, again. Can you please have a
> look at the new version!?

Lorenzo, apologize for nagging you about reviewing this series.

It seems like both me and Sudeep are now waiting to hear from you, can
you please have look.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
