Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE0F649F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 17:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wswzqdSDdJtrFfx55YSmZ3Hs3Y2ZyIsbL70AiSK/SGw=; b=SByHLMNQmekVU8
	2Hns5YReJESAcuWsQk0x9PQ03NoGE3xV7yr5Ktd3kFEOiwF7VukY2L2CaXr+5dLM9bZudzyiz1vhW
	/N01ObGZCBSL5Uh9aOZfFsTCOCScxBn9FvyKFc9y5dvZxhoBz7DIitCsfRAGO7IsBdENRwBlzSTFe
	Zs/F31BQfTs0wX7hOrZZ7OvHuZ5Li6T0reX4UBlfGzPmpW3McSKF4kFIxZVDwBMlHF3wdfZnzhH3V
	3Gbg5cNHvtO1utxYep4mbG2L7YoMhqGmTQdKaTcwh0xXRmRU+mKO0VqQyeHpqkHus/HPbr+sIioiU
	jK6xhUGHLAiDNuv7OTGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlEmN-0001su-GY; Wed, 10 Jul 2019 15:45:11 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlEm8-0001sB-Bp
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 15:44:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id a15so2797302wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 08:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NtOOR2nEu//DGOMUejq+6mfdm7EgmWFyTPqFW/hZNEg=;
 b=DY67Qqzg8l5sGMLitlWOUm/qzQ2NhqQ9Db12bmwsYd4wnB6rushO8O/ab2p8CxPx0A
 1WsSAHX8Z84rQ/xQUHoU5CmUje5IAYvZH0mYD1OhVkH3AeegsnCBhCoeCACxKoyZxe5H
 9S7xCeV+scTCi+NWNYdfV6JzV/ALBwtiFqdGKbxIkeguyVuk/obU+WoexQo4hGkjO6+6
 0Fr1hgGDjgjCLdlv+LcmtrtSGqrW9oQfc3X48T193n2XMAqFhMRVRETjEynSPHk/tvxT
 aMv2O4k4gFAhmL/ivOMGxt1DGbmppZeL0jGqtM2tnK9tLwU4MpDB8m1LL1YSAbWx5231
 EnEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NtOOR2nEu//DGOMUejq+6mfdm7EgmWFyTPqFW/hZNEg=;
 b=cqSX7UaK8WNQpq9RJrLKWW6M/+cypnfy/ktVcTeExKxFmZwTYtgBCS59+vZqYEPEzn
 mBOif77aFAQICoAJmkOjpk+w5t05AlagLPaBpnmxQy0CqWFOkGTp/k/5RnnZtsZCwM86
 OakDAyK+RnGnT8B09E3aEeRqDBw2GVabPcBJ42tdOJYfT6vxU1AM3Evlin49bOCzAI6v
 OhhViDzF2SqPALXpEWu34SmYEndPYsDDXjiNqoxVV70RJ2epQ/hoInSdp1O9YvZqSXrf
 cNfEy/3M6tvjKaSZSRAvI2niAoArYrgtCwa+6QQh7E04Bn00BcaOQQ9+jZw1pcUfIMoo
 DqaQ==
X-Gm-Message-State: APjAAAWJQYnRllQy5pj4rCkVDTfRryoO9frtS917oikmk6ZVnzysi37m
 AljLX16z/J0uZrS7A6aV7IzLzM+flzLpk/3aGZCbIA==
X-Google-Smtp-Source: APXvYqxWuFYdRc3oezY5CyAazr9+mnSggdhSKTQQUlfs/r4ufXqeKNR1JiskvJeNZu0AbFrkKC6ypVSymVpP5xMNcCk=
X-Received: by 2002:a1c:d10c:: with SMTP id i12mr5991172wmg.152.1562773494692; 
 Wed, 10 Jul 2019 08:44:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190621095252.32307-11-vincenzo.frascino@arm.com>
 <20190710140119.23417-1-vincenzo.frascino@arm.com>
In-Reply-To: <20190710140119.23417-1-vincenzo.frascino@arm.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 10 Jul 2019 08:44:43 -0700
Message-ID: <CALAqxLVnf_hyxxmx72F360PbJUTZowuD3wJx0nJ=dCTyW+w-Tw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: vdso: Fix ABI regression in compat vdso
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_084456_470869_F2B8475C 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Andy Lutomirski <luto@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Shuah Khan <shuah@kernel.org>, linux-arch@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Arnd Bergmann <arnd@arndb.de>, Andre Przywara <andre.przywara@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>, lkml <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 7:01 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> Prior to the introduction of Unified vDSO support and compat layer for
> vDSO on arm64, AT_SYSINFO_EHDR was not defined for compat tasks.
> In the current implementation, AT_SYSINFO_EHDR is defined even if the
> compat vdso layer is not built and this causes a regression in the
> expected behavior of the ABI.
>
> Restore the ABI behavior making sure that AT_SYSINFO_EHDR for compat
> tasks is defined only when CONFIG_COMPAT_VDSO is enabled.
>
> Reported-by: John Stultz <john.stultz@linaro.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

This seems to solve it for me!
Thanks so much for the quick turnaround on a fix. I really appreciate it!

Tested-by: John Stultz <john.stultz@linaro.org>

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
