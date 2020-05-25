Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10DA1E176C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 23:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AroNCe0qWMc91TWCz+ZcypEJD834PulM30NtX0cjs20=; b=cuC5qof6zKD6Qw
	eOrSFZSYmgRCLe1H/VHhEfVUDBB8mNU8ximgPOyr2LcIrVvsnZ+ZxoLJMU2slwegjUxd0iBx+5S6m
	b4EaXyt+Ok0+VkEW+Pbt4QqnFoBsLxtroWQ+EtnswyzD5jDLKaxkg7qukBVppn05cqJRVSmlcHyhi
	c0+wTSJdkKCjld8dkSTxWLFfzVQNvPrPdvuAYliHN/RBt3vOGD8U0xST0DuA2fCNLLERsKNGjDM4z
	6uMKqiyOYIEyoeib2/PjLYWygyGdgp6m77CCyO8JdI/kmM8EsfA8vdjOneDGEDkZozveKY8/kPhV5
	3K5gCGe5oYgnlEHmerUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdL1u-00015U-Cs; Mon, 25 May 2020 21:53:06 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdL1f-00014w-Ek
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 21:52:52 +0000
Received: from mail-qk1-f171.google.com ([209.85.222.171]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M60HD-1jgKto0zfv-007S1L for <linux-arm-kernel@lists.infradead.org>; Mon,
 25 May 2020 23:52:47 +0200
Received: by mail-qk1-f171.google.com with SMTP id n11so13211840qkn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 14:52:47 -0700 (PDT)
X-Gm-Message-State: AOAM530cOflNPKKwL1oFC3CaanEoWDhPgOoJq0A9rZtvohiPmC1l2OyI
 rJWogCQzdNrK+1sSkkNOgnQRBFZOYD24f5bW8Xk=
X-Google-Smtp-Source: ABdhPJy+xHghXFmMlIvXmBRJxJZ2x5N0RRarCPcbtKCSzDVGCRYiV7Cm/MjIMfxIPBg33mUpBL3hSsl3q6ZIFHDOEio=
X-Received: by 2002:a37:908:: with SMTP id 8mr14677582qkj.3.1590443566109;
 Mon, 25 May 2020 14:52:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
 <20200515145311.1580134-8-thierry.reding@gmail.com>
In-Reply-To: <20200515145311.1580134-8-thierry.reding@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 25 May 2020 23:52:30 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0kqjt8UNxe2ruRDOJNedOcqWxP-i5y2uW6YsaMNJgejg@mail.gmail.com>
Message-ID: <CAK8P3a0kqjt8UNxe2ruRDOJNedOcqWxP-i5y2uW6YsaMNJgejg@mail.gmail.com>
Subject: Re: [GIT PULL 07/11] memory: tegra: Changes for v5.8-rc1
To: Thierry Reding <thierry.reding@gmail.com>
X-Provags-ID: V03:K1:eGIBQxQSAl0rhu2Gj3V8FuhYWWHIzgy5VJVaETcpe8tSwP3DWha
 LXo6X8oqjT0JxtyJ1Krlc3rOtLu+gmVFgKho+NhfJiKekoLNrI/ZlTdJUbCJWKNJiyKrrWU
 UQMvcJcrcpTaJHGL/gXp5xRQu33S4MM/bkMyrWDiGwabA+0+1ZNGUe7OTavzyaQ/p2/Z1XQ
 7uuoUdEGT5JxOaOvSQ/0A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zSWbyCQXa0Q=:IO0dheCfXntn4eqR2V+K8P
 YTny6BRjDMQ0Myhk3qGy6bLR9xD7TgxzGrb5J9tb+CadDd57aLj23Kgb5jC8d2wXAmpJe0ySo
 kR63fMn5Bl29lzT0109VrGuBebNHEbLIES3Wdp1u30rGe8QiDu7m8KYw6+34xbU1WVpj58Hzt
 j3UkHGJlwP67lVB+d4NMNZZHeTT9KtSwe1YyMDLVCGPiocTFBn5PPIFrdkOLslVMN0Nc3nmHz
 RKhLb1z82U6WW6j9zfZ+mKYdnZnKFOGnTZq4EDXbGFBlc7uAW917Y5HhNEViQ33xDaljwDlWM
 QcEGhgCS6Pn07hwZqzrlhfbEWTFDH3o4EU+MNlyM3gt1kQ55fXANkYbd0RWYQgqWKlRr/Agul
 lhLIUUZA1mo3JYu3yB7Dcs39u6Udj4dMvGEz9ed+OEAlaSgB1eBipzhWEaZJEe/mkN1qbVoWk
 utk6UOne/5GP7q9/rKQe8wfdiQ8ISHgvP+BFR6HrZOrW0zJq6QEsJhl9k1zefp+MZ/0eHZi7E
 R1+9in9VGsusPgu5EbqSUR48KkXivwHtYVJbUv1kCaDkD1p5cgHZjwQS/rbLPsgvd9bt3IO0x
 jmJNde0z0pHh6OwhD46SYWkcGXV0thn9iXISdIqJbA6bpH3/EKOYznUoHWXG9e1TXrE1lI8lV
 HwnUZcOgmzLdVsAuiQAppPtt3uq90N+CJYBIn0JxgRMcSdBn0iQmBOAMi5XO9FbB072By+R8X
 +0cVMvmV+DVEk137aHKviNY4sW8WVDX7cP3dn4KibM1aMksD0osPOsrdwWICUK720dV28Qycg
 ZwQkqmVRuqJNqq6sf5GuPImOx7Wv4laJia103EhA+joqHIcxaA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_145251_784641_5AB6535E 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 "open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 4:53 PM Thierry Reding <thierry.reding@gmail.com> wrote:

>
> ----------------------------------------------------------------
> memory: tegra: Changes for v5.8-rc1
>
> Contains a few cleanup patches and an implementation to scale the EMC
> frequency on Tegra210 systems.

I don't mind taking the memory driver patches, but it seems odd that this
pull request has so many drivers/clk changes but does not mention that
in the pull request, and does not Cc the clk maintainers or include Acks
from them.

I would assume that the reason for this is that you have based
the memory controller changes on a branch that was already
accepted by the clk maintainers in to their tree, but when you do that
please be more explicit so I know what is going on.

Waiting for clarification before I can pull this.

      Arnd

> Dmitry Osipenko (9):
>       dt-bindings: cpufreq: Add binding for NVIDIA Tegra20/30
>       clk: tegra: Add custom CCLK implementation
>       clk: tegra: pll: Add pre/post rate-change hooks
>       clk: tegra: cclk: Add helpers for handling PLLX rate changes
>       clk: tegra20: Use custom CCLK implementation
>       clk: tegra30: Use custom CCLK implementation

> Joseph Lo (7):
>       dt-bindings: memory: tegra: Add external memory controller binding for Tegra210
>       clk: tegra: Add PLLP_UD and PLLMB_UD for Tegra210
>       clk: tegra: Export functions for EMC clock scaling
>       clk: tegra: Implement Tegra210 EMC clock
>       clk: tegra: Remove the old emc_mux clock for Tegra210

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
