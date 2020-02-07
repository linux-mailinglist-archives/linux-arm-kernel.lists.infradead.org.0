Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D825155B2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 16:53:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOnuqkPefap2YFYVnKhBzs1XKHuQ4+SAAyVb3hDC0QM=; b=uUEFiBjjzrBApv
	bILSThP0BAJf4mywiKj5x5FSCnjzIkMgfQWKdv8/mWxGPeOwRkT6qSid/A8M54Fq9WwRb7keSUiHa
	j39yCWGxnq5b3AzFsYOWIlMM96yp32eAojbAX7qH4G6lYq89hdSmk/NmtQzd+ENGEcqVkYpqdhWoU
	VNpEn5FQgYsQuogCCw97LOTMnTvrKxyJ6filvkrswRfAWS04gL19OkAyfVoEY5MJnOQCqq7TNcA6t
	eWXKWIymv4T42ZaQwufD9eNSQk6U02Zt8wrZ59yBOnY0HFhv4uFF7+hLXQdfxEhqL15r8okQX6v7m
	eY7AUFOcAk7BgfLbDm+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j05wo-0001vE-W3; Fri, 07 Feb 2020 15:53:39 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j05wg-0001ue-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 15:53:32 +0000
Received: by mail-vk1-xa44.google.com with SMTP id t129so716356vkg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 07:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=95ygi45qtZTOWH+UKxvi28hwPyGfXfy4ZjYmQW0i/SI=;
 b=j75d0oaRHNtEC+MzXfW9/nEOcgNA3FX81yhp5QL/gzqPhUE9bPTWd7pIxDD2tJdnoD
 lFmTVekPy83AuHK4oQrEsq7ftUURUTxJ9cHEJpWShoUGKC0ikjyESDkEfo8X9qs8uQ0m
 1osZusZiWV377s0jr3USuUDihezOV+4A9lYiyNvEx56g8jrfZqDXuQScNUWvqEMIT7fG
 AWvRwjQUiCGGUaGqNp3SB61dlAhcik3Tclg3r5SvBOBcgCOvcp5gOxIg56wQNV83RPMG
 Jpw/4RXYPSqBvoXTgAIiHft1h8B9m9pNJxvFxh4+uP1R3i6r3x+T6WF6k6axZtfvLetf
 apYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=95ygi45qtZTOWH+UKxvi28hwPyGfXfy4ZjYmQW0i/SI=;
 b=NWaSvvwfboD/F33dkPSSpBFJ1kkWAW15kYldTnO5/EE7F6znYWldrpwYHIsWyjJ2dH
 NJ2FZNnaI8nQpOkFRTA652Tz8euderY67vQJ3UC8UCF856skREJOM6/iZUOe03/J4cdE
 1TxKa9d/mv9fP0o8fmXLCjSWB/kcDWGOTTRzqHUDsWVitaTIEgJguo//MRSVZHf9MI8m
 HQE++VB1Cf13A/GIUK2LSZd0NAPc9WQ+2UWp/mS3Kkhhe85xQvIY9CQkX/rIogWhETJj
 X1MzSkTJoDBQVgAFmQMr9b1idnbwPOKxtPpUWfKLGwup1m1szH2aIVuKQnZfjZPqaKTs
 8IOA==
X-Gm-Message-State: APjAAAW95TzGO//t3hh6yPMJODxbxId0ycQp2/XNos8AcasHNt29STwc
 RiBVBbuaeZvUpln1JxC7MaF7MdtQ8BXr7vjRDW5I9A==
X-Google-Smtp-Source: APXvYqwFFtbUIctx3YdFoC4QriFsEms4xU7w6LquZ748k027glxZE0QklHy04PJmF/kHORQ6R34TsyT2ppLdjjIsU0w=
X-Received: by 2002:a1f:434b:: with SMTP id q72mr5084872vka.53.1581090808740; 
 Fri, 07 Feb 2020 07:53:28 -0800 (PST)
MIME-Version: 1.0
References: <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
 <20200204152132.GA44858@bogus>
 <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
 <20200205140603.GB38466@bogus>
 <CAPDyKFoyepN2VX4COMomp1e9dXPozzrgCdcy0paee2jp8Wm3YA@mail.gmail.com>
 <20200205161816.GD38466@bogus>
 <CAPDyKFqaA7oN2+oLS=Puw+jQXke_ErGQAWYuTuU-6PS7mo5YbQ@mail.gmail.com>
 <20200206204514.GB8107@codeaurora.org> <20200207111955.GA40103@bogus>
 <CAPDyKFp-zvD1iFcpRaTFiuazxYmLEx0Czf3=TZJxjSCDmmPsvA@mail.gmail.com>
 <20200207144850.GA18655@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200207144850.GA18655@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 7 Feb 2020 16:52:52 +0100
Message-ID: <CAPDyKFoZ+QQFdG3yQ5wGpg2Z5c9WksUhresGz02o3HVrGt1UhQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_075330_530073_E3696205 
X-CRM114-Status: GOOD (  26.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 Doug Anderson <dianders@chromium.org>, Rajendra Nayak <rnayak@codeaurora.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@chromium.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Feb 2020 at 15:48, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Fri, Feb 07, 2020 at 01:32:28PM +0100, Ulf Hansson wrote:
> > [...]
> >
> > > > I understand the arguments for using PC vs OSI and agree with it. But
> > > > what in PSCI is against Linux knowing when the last core is powering
> > > > down when the PSCI is configured to do only Platform Cordinated.
> > >
> > > Nothing :D. But knowing the evolution and reasons for adding OSI in the
> > > PSCI specification and having argued about benefits of OSI over PC for
> > > years and finally when we have it in mainline, this argument of using
> > > PC for exact reasons why OSI evolved is something I can't understand
> > > and I am confused.
> > >
> > > > There should not be any objection to drivers knowing when all the cores
> > > > are powered down, be it reference counting CPU PM notifications or using
> > > > a cleaner approach like this where GendPD framwork does everything
> > > > cleanly and gives a nice callback. ARM architecture allows for different
> > > > aspects of CPU access be handled at different levels. I see this as an
> > > > extension of that approach.
> > > >
> > >
> > > One thing that was repeatedly pointed out during OSI patch review was no
> > > extra overhead for PC mode where firmware can make decisions. So, just
> > > use OSI now and let us be done with this discussion of OSI vs PC. If PC
> > > is what you think you need for future, we can revert all OSI changes and
> > > start discussing again :-)
> >
> > Just to make it clear, I fully agree with you in regards to overhead
> > for PC-mode. This is especially critical for ARM SoCs with lots of
> > cores, I assume.
> >
> > However, the overhead you refer to, is *only* going to be present in
> > case when the DTS has the hierarchical CPU topology description with
> > "power-domains". Because, that is *optional* to use, I am expecting
> > only those SoC/platforms that needs to manage last-man activities to
> > use this layout, the others will remain unaffected.
>
> In PC mode not only there is no need but it is wrong to manage
> any last-man activity in the kernel. I wonder why we are still
> talking about this to be honest.

I guess the discussion is here because there is a use case to consider now.

For sure, we agree on what is the best solution. But this is rather
about what can we do to improve the current situation, if we should do
anything.

>
> Code to handle PSCI platform coordinated mode has been/is in
> the kernel today and that's all is needed according to the PSCI
> specifications.

PSCI specifies CPU power management, not SoC power management. If
these things were completely decoupled, I would agree with you, but
that's not the case. Maybe SCMI, etc, helps with this in future.

Anyway, my fear is that not many ARM vendors implements OSI support,
but still they have "last-man-activities" to deal with. This is not
only QCOM.

I guess an option would be to add OSI support to the public ARM
Trusted Firmware, then we could more easily point to that - rather
than trying to mitigate the problem on the kernel side.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
