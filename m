Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C39361C467
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jG4l3m4iATpx965p/KB1wbfllANkC27E9qeG7E1G3mE=; b=Sjp2wzkzSRQBcV
	g0ZICLt53FD+PoAldi2+L8kqwEfp3blJjCPH+qDWMsar0HcIHL/JQ912qzThbCsUnb5t5o98AI7k0
	p4Ns4ATGVPOsMnej4wPz57kRCHCS4PLGK8qIQ/o/kZEcrRUJCivbhzGi88y/yOMgW1VeTBmHjGtT+
	L+VxT6aMEn24SACMGDbnPcVd8jQtuW+THXF1qkw9k9MTlMJ74E8Ai4UtMam42gwI+InU01qeDQ5u4
	nWchS9CY/0KIWYrbqAZoIcuKpG2FQbZcsn+pxsjXn5mAppcK60lvt2bZAQ3JgVodp+/Z+3vkt0Nwb
	ItSntHtxEDDFGH/nsXJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQSUf-0005MZ-MG; Tue, 14 May 2019 08:09:01 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSUY-0005M9-Io
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 08:08:55 +0000
Received: by mail-ot1-f66.google.com with SMTP id t24so5671033otl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 01:08:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AWm6mMU5ntuV/CqseYpvApqEUMSFpmgOWSwc60Tv2bc=;
 b=dYdX7rP+0rpiivvNweZh25bPfNJcBCVaSwRZjbZbg5buxxq1KhHdbUzmpotvBJCb6e
 GnGTDB9cbbzoARmRjsYnOHT+VuLWV3cUDrhmoPp1qjGaqfRZPf47yAyW7Ox+NyjLyfU3
 QGZHDw6ibZx5/Guil+Ah0bVog/ExO1j1RXxeIU6KlVlYkbYs0z2eRxFkVhzo4v/ONvtc
 MUgbE0zDcGxoqF/G7XROTfAD8XbamYg3JYy4OJYT13jQqs9A4s5A/m/+qCwyF2lvsMtc
 /op9oWP+fEXGKUXmGvC4GjlasDhjLKHYlnl9XADm/xxVsToFHmpGFiH2dGaY/hKcFBiX
 5BdA==
X-Gm-Message-State: APjAAAV6Ib1HFTh2lI3pMK1/wJzJDv37IYloPG7Hhm0983t0a8LIlYTU
 6tuzEdlsn5bIS4iIxYKq2V/+sQVcMZ+Sl4Panf1deQ==
X-Google-Smtp-Source: APXvYqwTEraX14mcZPt1vimtoi25THN+ixAWY1ha+9DfuEBICcJUnLm2RU77VIBddQdQK8nrMAM+2KXW8YeAocOii18=
X-Received: by 2002:a9d:5912:: with SMTP id t18mr14870864oth.252.1557821333611; 
 Tue, 14 May 2019 01:08:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 14 May 2019 10:08:42 +0200
Message-ID: <CAJZ5v0gbK3AFCVC1b9LyXeMOM8fKR1=ECXZwaeSYRSqcK0UgYA@mail.gmail.com>
Subject: Re: [PATCH 00/18] ARM/ARM64: Support hierarchical CPU arrangement for
 PSCI
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_010854_620014_BEC0E79B 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
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

On Mon, May 13, 2019 at 9:23 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> This series enables support for hierarchical CPU arrangement, managed by PSCI
> for ARM/ARM64. It's based on using the generic PM domain (genpd), which
> recently was extended to manage devices belonging to CPUs.

ACK for the patches touching cpuidle in this series (from the
framework perspective), but I'm assuming it to be taken care of by
ARM/ARM64 maintainers.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
