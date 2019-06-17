Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735F648046
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mv7OANpAse+nETalsu5ozZN3crsUrkOD5C70nfp+RwE=; b=Y+RVsU+pqgAiDv
	d/4lM15yUJ3vBFO+nSa5hce6JpNFT642apuWls9wjdx4enddX503CpNfhHcsBgtm9YvmLes+K5fA3
	rvTLNROSHdAnBVG/gg/ybJpZ/bhKmnQzQW/OgTBAv7nqdUPONn/EQ3YjKbsR+CiuQisB5PDmVtB9x
	OnscTud1JC9HUXtP/t4G4zTxad9YsfYCgZ5OEUtYJMnnLUvZsdSSRRQxV10lLL/kBOkqoG0KRba45
	mBTNOmjzg47u3NjQTY4HHMK1cTuz11iMxdqeDRDS/xV8kaNAHHgSKVosCdrGUbEfj66GP9ru3QXXm
	n5InGK3/SzR4d6MI61Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpYT-0003Pd-FT; Mon, 17 Jun 2019 11:12:05 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpYI-0003OB-F0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:11:56 +0000
Received: by mail-ot1-f68.google.com with SMTP id p4so4084533oti.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 04:11:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q2SYsxnd78Hvl13uSih8O+0r8/7xSAtk+oSusdBmKzw=;
 b=guHAu5ocoVyTm1EB+rnYpPECQYuKDJg4RMFireeu9Mgv8Bdf5Xx/2z9tFSldQqDX/7
 XJuG2YgLro70Pw1uFAVtAKcNqM3KzL3jVzNNM9iDjf7At1TM4TTbqPsrNCAWiNcKs5Qs
 PryoThHaioS4Bo71TCMHeM6GAz5YF5NV49Y02Epqpl0BrFP65sq6y39ESK3ip9HtuBbd
 yaHcdHH+o/UPmDSBqe1II7PA74Vmyd9EvL6xPnGr9JpSjqWVNIuuJrc35hrpEJni0S34
 bYs5HKdl9YpWmraEuC/yHW4qpkPWzdxjaGm4ut75ZgQ1g+FeqVJ3N35VrTOc/WDvocWh
 fSKw==
X-Gm-Message-State: APjAAAW2+u99jqU+a/fEllUeFEaS5bgidtfw2bMbu/Q/Npp/UvMduJEX
 N9f7/dqu7dokimTVIOS9nPkBnjodZixfl+5gvSvftQ==
X-Google-Smtp-Source: APXvYqxRnT1t79Bb9zvbYiWaR4EzAZj5+gI46fqqmMZC1qNnvAQIKISUOi7dVSxIDN2UVaSz5xQBKmCyBotsMBYBlCk=
X-Received: by 2002:a05:6830:8a:: with SMTP id
 a10mr2033216oto.167.1560769911981; 
 Mon, 17 Jun 2019 04:11:51 -0700 (PDT)
MIME-Version: 1.0
References: <1560769335-62944-1-git-send-email-guohanjun@huawei.com>
In-Reply-To: <1560769335-62944-1-git-send-email-guohanjun@huawei.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 17 Jun 2019 13:11:40 +0200
Message-ID: <CAJZ5v0jyi-ZkcDU=+GJm5LxMGX36ce=a_j169A_7Ph2AG8_C+w@mail.gmail.com>
Subject: Re: [PATCH v2] MAINTAINERS: Update my email address
To: Hanjun Guo <guohanjun@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_041154_496226_B390614C 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 1:04 PM Hanjun Guo <guohanjun@huawei.com> wrote:
>
> The @linaro.org address is not working and bonucing, so update the
> references.
>
> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>

How do you want this to go it, via ARM or ACPI?

> ---
>
> v2: update the .mailmap to redirect the older email address which
>     is suggested by Marc.
>
>  .mailmap    | 1 +
>  MAINTAINERS | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/.mailmap b/.mailmap
> index 07a777f..fd9b497 100644
> --- a/.mailmap
> +++ b/.mailmap
> @@ -81,6 +81,7 @@ Greg Kroah-Hartman <greg@echidna.(none)>
>  Greg Kroah-Hartman <gregkh@suse.de>
>  Greg Kroah-Hartman <greg@kroah.com>
>  Gregory CLEMENT <gregory.clement@bootlin.com> <gregory.clement@free-electrons.com>
> +Hanjun Guo <guohanjun@huawei.com> <hanjun.guo@linaro.org>
>  Henk Vergonet <Henk.Vergonet@gmail.com>
>  Henrik Kretzschmar <henne@nachtwindheim.de>
>  Henrik Rydberg <rydberg@bitmath.org>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 57f496c..2fed10f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -364,7 +364,7 @@ F:  drivers/acpi/fan.c
>
>  ACPI FOR ARM64 (ACPI/arm64)
>  M:     Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> -M:     Hanjun Guo <hanjun.guo@linaro.org>
> +M:     Hanjun Guo <guohanjun@huawei.com>
>  M:     Sudeep Holla <sudeep.holla@arm.com>
>  L:     linux-acpi@vger.kernel.org
>  L:     linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> --
> 1.7.12.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
