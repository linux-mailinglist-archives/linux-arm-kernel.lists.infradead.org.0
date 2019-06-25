Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EED55BDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 01:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYeOTqdqGgiB3mqn4sasZqm7QkBr10gIRAkwZXzg0Cg=; b=GJaMaMcliwJclo
	CFtKK+YMUkmkg4UxJFjwmrLwLCv2p3/bVVVKnZvhmmrflybdSZJhNdM2wH2gBkDOZbx52NO9v27Xd
	q77Y5K6y3UIh5SBgUS+EXdv8nthVC6csb+1AF4tq3nUMSNxK+BrHFp2LETynNejem7HPfJs0kG9wd
	W/Dv5zfJ1Z1bLotxKEMlnqW7EEYNLi3i4HT76h2nAqENNl8yEsZ0tNcY2e4M+O+bFlfDrJs8GtGdN
	AUoMycNQZOtXQ83VVzJDjoHS6CIGTNE4nXEoKpriEGb5mfauqZ78r4nG5UJG2P6UeSx7loBOBiKOr
	O6KaT375jshpLqlEM9Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfuSa-0004ch-9r; Tue, 25 Jun 2019 23:02:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfuSE-0004b0-2f; Tue, 25 Jun 2019 23:02:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1C772084B;
 Tue, 25 Jun 2019 23:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561503741;
 bh=82RyR5pFqn05vyyNq4lzd/5m52MIeTMNFiRkCRUTQV0=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=VxhOM3T0rDZQLYc6U+By4eyc5T1Fg6CRnnOjooSqYTLKhmT0WzIfRkbcCbpHuNkUd
 SfdZrjYkzhyLLpm9MxCLhuxO6J1ugyIMAFleGIH7ckoKy9+stTLZIYRJk83AxLdGaZ
 xithUTuimVB8qjTsllcRV1+jXFeDlIjceJxL68DU=
MIME-Version: 1.0
In-Reply-To: <d8b20179-45ef-479a-47dc-390a4a2dfddf@i2se.com>
References: <20190612182500.4097-1-nsaenzjulienne@suse.de>
 <6a9e1450-80ad-a13c-59d2-d0b39f25f67e@gmail.com>
 <7acfd967-0a82-5429-4eed-8b802e6620f5@i2se.com>
 <d8b20179-45ef-479a-47dc-390a4a2dfddf@i2se.com>
To: Mike Turquette <mturquette@baylibre.com>,
 Stefan Wahren <stefan.wahren@i2se.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 0/7] cpufreq support for Raspberry Pi
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 16:02:20 -0700
Message-Id: <20190625230221.A1C772084B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_160222_233093_7D7F424C 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, ptesarik@suse.com,
 viresh.kumar@linaro.org, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, mbrugger@suse.de, ssuloev@orpaltech.com,
 linux-clk@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Stefan Wahren (2019-06-22 02:54:47)
> Hi Stephen,
> hi Mike,
> 
> Am 13.06.19 um 06:31 schrieb Stefan Wahren:
> > Hi Florian,
> > hi Stephen,
> >
> > Am 13.06.19 um 05:31 schrieb Florian Fainelli:
> >> On 6/12/2019 11:24 AM, Nicolas Saenz Julienne wrote:
> >>> Hi all,
> >>> this aims at adding cpufreq support to the Raspberry Pi family of
> >>> boards.
> >>>
> >>> The series first factors out 'pllb' from clk-bcm2385 and creates a new
> >>> clk driver that operates it over RPi's firmware interface[1]. We are
> >>> forced to do so as the firmware 'owns' the pll and we're not allowed to
> >>> change through the register interface directly as we might race with the
> >>> over-temperature and under-voltage protections provided by the firmware.
> >>>
> >>> Next it creates a minimal cpufreq driver that populates the CPU's opp
> >>> table, and registers cpufreq-dt. Which is needed as the firmware
> >>> controls the max and min frequencies available.
> >>>
> >>> This was tested on a RPi3b+ and RPI2b, both using multi_v7_defconfig and
> >>> arm64's defconfig.
> >> How do we go about merging this? Stefan, will you pick up patch 3, 6 and
> >> 7 and submit them for 5.3/5.4? Viresh has already picked up patch 4.
> > is it possible to let patches 1,2, 3 and 5 go via clk-tree?
> >
> > I would take care of 6 and 7.
> >
> > Stefan
> are you fine with the series, since Viresh already picked up patch 4?
> 
> are you okay with my suggestion above?
> 

Oh I missed this. I can apply the clk patches most likely assuming it
doesn't break anything bisection-wise.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
