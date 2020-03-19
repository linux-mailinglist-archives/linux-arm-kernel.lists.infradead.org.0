Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4D518C3DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 00:39:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cywTL+B1xzQYVZNhddNHEDqTafhosV2bxqqLhy4qfKo=; b=UBh+rKaP5sicAT
	39QwGD/5jbGbVqw+MQkUCcrIt29RsVBW3VlX/qggHzgALyh4mdSxWOBykpwPIEaa/WaqNMkD9UA0X
	/yX4FD6QI/sJpvPWmBrg/qhwsyg3atq8T1ODphaj6zGXhAd60PtL3UQNgGhxHfnYf76BQC0u8+Ghg
	3kmyUOogrd9om3Gm/6CczCosLGanaLc1ZuF6vJzNxjPpor7Nb+IeZw/f8idAhyYNnnG2dNfI3NA2W
	OIas5GVERcs0zxxdikD/lEiG+GTqJdDI1bc7t+lBcxKGRLCb/nQDK40jtOxW/9gjsNVRifFRAf4wl
	BWbOpfh0dSRcekdn020Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF4lH-0001Im-3A; Thu, 19 Mar 2020 23:39:39 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF4lA-0001Hp-R6; Thu, 19 Mar 2020 23:39:34 +0000
Received: by mail-ed1-x543.google.com with SMTP id z3so4907801edq.11;
 Thu, 19 Mar 2020 16:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T/mfJWmxNQuzD0dp6KizZYLJ7CLCpefixytllKpkTzc=;
 b=j8G9K+B+n/Ojbh81OEur+lMEXOYshUECgbkp9tY2M6biLvzxuXxFN6lSXsbzkFslae
 jc9HBRJfL/ELl9ivB2zl+RB7BwJBWe6Fe3cJUqDS3BvY8Ew3qTlSEHLOlAxL28+8zSzI
 K5mjzp5BIPEOKCjcxnOZcDUWvMDfzyFwri/UuDoqUNbN7Qbjb/4+tlqa9mer6w8iaXHu
 eWkmtlPpdTgLysTFsSzvDEb9VUTf7QQ61jEIzK6nEAYhOoZRP38YT3+XgmgwbWUc83Mm
 gE+Xe2D0Vbn9fvK4gxEZ/0IYCMKCgwcybXlA0udklqhacor6tDl6DYRYOk6EVgM544Zt
 dSDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T/mfJWmxNQuzD0dp6KizZYLJ7CLCpefixytllKpkTzc=;
 b=PzmOkw3OC5bUqkTWjsl1BUD/TYBIVu3z6ERnzjTY62667AM8sGqvBqWCA/628elcA8
 sCzuYGRVfKv0gJ0oR41rut792JLmXCxtuPNOGf9f2USqcl/Xwt3mlhydt5YVP8sP499s
 DLVshPUikCyPs4KGgxuUGpTkAMn+T+ceygYseoQcWqFUoBoAjhOjDAQQLQoSgmMe5TI/
 aL1MGW4zk0D6rtRopsKtyCBWcqlGbiXi4MER2gGdX78Xm1x3GmCRDe/TfaIlyVo+Drre
 HlzAx6+ntofHJjpr6Mxts1n3Vk8FlB3JlqrUTDm5OU4bwfBRnfDUUioPnoTV05hOWCD2
 HHuA==
X-Gm-Message-State: ANhLgQ1qRRItTh+TX+n/rsjCvoAMqsPegPXGJVI2T7LfY6ZZv4sZIC0K
 pjinx8st35gtd0aa1FYIomQDZ1R3fCXZF+2DwfA=
X-Google-Smtp-Source: ADFU+vsBYF3lmb/S9MivVj1ar9fEgyHh9mNe7PH/to4h3/J9OWLSH5rf3wC8erfomQYZyINKFfGztDXrzBfrtovFz/I=
X-Received: by 2002:a17:906:6d0:: with SMTP id
 v16mr5698516ejb.90.1584661168372; 
 Thu, 19 Mar 2020 16:39:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200302125310.742-1-linux.amoon@gmail.com>
 <20200302125310.742-3-linux.amoon@gmail.com>
 <7hlfoir8rj.fsf@baylibre.com>
In-Reply-To: <7hlfoir8rj.fsf@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 20 Mar 2020 00:39:17 +0100
Message-ID: <CAFBinCB2WXZNRg4wdFD0RJ5k4hHqcfAOCHemvHzZE42-Mo5vzA@mail.gmail.com>
Subject: Re: [PATCHv2 2/2] clk: meson: g12a: set cpub_clk flags to
 CLK_IS_CRITICAL
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_163932_903224_AE0008C4 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, Anand Moon <linux.amoon@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin,

On Mon, Mar 2, 2020 at 6:01 PM Kevin Hilman <khilman@baylibre.com> wrote:
[...]
> > updating flags to CLK_IS_CRITICAL which help enable all the parent for
> > cpub_clk.
>
> With current mainline, I've tested DVFS using CPUfreq on both clusters
> on odroid-n2, and both clusters are booting, so I don't understand the
> need for this patch.
I *think* there is a race condition at kernel boot between cpufreq and
disabling orphaned clocks
I'm not sure I fully understand it though and I don't have any G12B
board to verify it

my understanding is that u-boot runs Linux off CPU0 which is clocked by cpub_clk
this means we need to keep cpub_clk enabled as long as Linux wants the
CPU0 processor to be enabled (on 32-bit ARM platforms that would be
smp_operations.cpu_{kill,die})
cpufreq does not call clk_prepare_enable on the CPU clocks so this
means that the orphaned clock cleanup mechanism can disable it "at any
time", killing everything running on CPU0 and CPU1 (which are both
clocked by cpub_clk)

I have no explanation why this depends on booting from SD or eMMC.

for the 32-bit SoCs we have CLK_IS_CRITICAL on the CPU clock as well
since commit 0dad1ec65bc30a
on G12A we have CLK_IS_CRITICAL on the sys_pll clocks, however my
understanding is that cpub_clk could also be fed by one of the
fixed_pll derived clocks (which have a gate as well, which may or may
not be turned off by the orphaned clock cleanup - that is pure
speculation from my side though).


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
