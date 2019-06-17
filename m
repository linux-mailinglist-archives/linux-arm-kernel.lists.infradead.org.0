Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21434864E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvYEgxGvPihT8aYH8w6pVRS/xz5Z5DnLF0AS9ZPhUAw=; b=LAXecqYjrkh8I3
	HlZQwmRzIdtYb8gKk1CW/IpToPnwP2uH86kN3aoBAMhHwHL02wMcSA8TnavND3BYeoHClKWWXUi+y
	jkB+UYbCZsTvHrHc0mqgasr8TIod0JQ7UVkt8kq+7fEmFGC5OzjMGGfRTmvGWhJomMdUWH1NKF0wx
	Pn3ZfoxopMyx5bC1q7WtW6lJO/ErL7WCj1cMYFHr9wCk8CthNpm0GYspPrCazmyAYy2tH3meXBDhy
	9LDBuVSPMxjnT6wZ4Fxit0mnDDc7WyQlI8VicI1vjbI+YMS/D1ZCQcKZacUTsKuBrEhA7bbl1T60n
	MS4it1aMm9xKOOwwE+GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct6j-0002JZ-EZ; Mon, 17 Jun 2019 14:59:41 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hct6T-0002Il-9J
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:59:26 +0000
Received: by mail-vk1-xa43.google.com with SMTP id 125so2128681vkb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 07:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VeDj455KpUjyGeFAvU/iNT8gTzAGIt+VE2V1K3FogGo=;
 b=x2rtsNq8v/D8WowlfZi68S9op6AgNbvw20AEk01oXwgbgkkIqGoh7yUHC2b/x+Fpks
 hklTr4vyJFfnu46NYXoNF6cujUaH2nJQMgSndZx6YhVWpyXQREM/XIlZFWsCPzzqbYiZ
 d9i05TZWygp+RIske9k1qLrWcaQAd/Qz+aN1n8KuXzvzWd2HFoqGQgZsdgg5slwtqKvh
 pPhE+uUNLhxtsRLRSEVjSrQiG5JEQ60sNKYn0vQTydYe4bzRPTx6iuUywg9Zsu/SsUjU
 fWFjgza4amZzX20SY1DLOo9T5LBGUNCZv8ErViIL7AVqDk5W7UW8sqW9LT4snHzVQcPl
 Y31w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VeDj455KpUjyGeFAvU/iNT8gTzAGIt+VE2V1K3FogGo=;
 b=c9XtVy/nh6Jm98rdNcYV3mgSh4cLcGK5Jg92Ymr4hCA0ZEW3llEfhH+2q+iJelbIxg
 gbo9UOyS1wQjFIKEqzi4nXZhY575JsiTCvPHlSoJLiLE6IRO4Z93gu9QrwhaQgXeYCRr
 CQpd4aEe7uwyaAzcINGq5ot4rnJJDz3CWQ8F34c0sD2QqDJq5cILP0fmKspBmcuRNVej
 gAxBL3Yj6xS2PTffZ7Cis9L3NsvCtIuuO/E7dZEZkT6V2s4QaItXFJmWuvck52s2qZ5x
 EqYpfyoNrklsmEjw8yeazTuY24g9NjEOWFrIlNxAltf8QZUlTA4/4Aaz+/uitJ2Mc2Tl
 Kzzw==
X-Gm-Message-State: APjAAAVP+gNR74eNi7/btaMKe9tfbZUPrDi+IjwkHYrLEEL1P+EvzjFC
 /gVRD6lDXVjzXKef0nLWp1MTf5u5iS+erJEJ/uKZ+w==
X-Google-Smtp-Source: APXvYqx84xD50NIMODd6WRKKp6Two4nx8BrixlFjO5oD+vW8e0fmtGE84cRELHAfY18BaMIh0MTDpgLtd01jmw7jVCA=
X-Received: by 2002:a1f:8744:: with SMTP id j65mr43978757vkd.17.1560783563932; 
 Mon, 17 Jun 2019 07:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFrJwpwUUX_q2kcR9QY_fv9Lgos+ixPmU6JMeJVqJAiFpg@mail.gmail.com>
 <5feac3fb-bef3-b7d1-57d6-81e115e1f555@xilinx.com>
 <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
 <948514a0-e310-75fd-e8a8-6ef8bb14e41f@xilinx.com>
In-Reply-To: <948514a0-e310-75fd-e8a8-6ef8bb14e41f@xilinx.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 17 Jun 2019 16:58:47 +0200
Message-ID: <CAPDyKFp6O8rPZDZS4iKJam2+tXeen_ZMOXKw=WVzJNpBXcSc9g@mail.gmail.com>
Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075925_363048_868C7802 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Rob Herring <robh+dt@kernel.org>,
 Manish Narani <manish.narani@xilinx.com>, jolly.shah@xilinx.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[...]

> >>
> >>
> >>> In regards to the mmc data part, I suggest to drop the
> >>> ->set_tap_delay() callback, but rather use a boolean flag to indicate
> >>> whether clock phases needs to be changed for the variant. Potentially
> >>> that could even be skipped and instead call clk_set_phase()
> >>> unconditionally, as the clock core deals fine with clock providers
> >>> that doesn't support the ->set_phase() callback.
> >>
> >> In connection to another version of this driver for latest Xilinx chip
> >> it would be better to keep set_tap_delay callback in the driver. The
> >> reason is that new chip/ip is capable to setup tap delays directly
> >> without asking firmware to do it. That's why for versal IP there is a
> >> need to call different setup_tap_delay function.
> >
> > The ->set_tap_delay() callback is for ZyncMp pointing to
> > sdhci_arasan_zynqmp_set_tap_delay(). This function calls the
> > clk_set_phase() API.
> >
> > What does ->set_tap_delay() do for the latest version?
>
> There is different set of default tap delays which should be programmed
> and it is done just via writing to registers which are the part of
> controller address space.

Okay, I see.

Not sure what makes most sense to do here, but it sounds to me like
another ->set_phase() callback should be implemented for the clock
provider. In other words, calling clk_set_phase() should continue to
works just fine for this case as well. If it turns out to be
inconvenient, we can always add the ->set_tap_delay() at a later point
when it makes more sense.

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
