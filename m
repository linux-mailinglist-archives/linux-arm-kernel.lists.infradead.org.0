Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AC8175968
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 12:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWWuvoQPT834Udf1O0YbmPQqp6hbQSV17ozHK/JzOJw=; b=LyglAdnXoJZKNg
	cs9wC4sKGS9zzi9pjRw1bxmH65iVqIzGZNdh9GeK49phZBuk4odz/pBnwmsjoeaW0S3q1MvENMBV7
	qz7DCq0fS/Fd3Y/9HlE+umAyH5W9D/bj9Irvae5QURZHnuUow0/Eo/uaxH3Kh6GAIJODBxGrobQZ/
	f4DRuXYpBweIBEnIThgf1dcG4N/xF9xju2ANWXF0PnUMQU13UjJbxcW6HeIPu0JT0XUTEGJWnggA7
	TJVZBHWTD0gZMWZ5Pd/YJ55E5dw7/SxYgY+Kcof48PFtXzneUC8wsMHQqBW3Xz+UXvIF9wxqEJcbs
	j0GBfAq5TQNrV/7D7LWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8j8T-0007Pm-2r; Mon, 02 Mar 2020 11:21:21 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8j8M-0007P6-79; Mon, 02 Mar 2020 11:21:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583147984;
 bh=W0AEuRxwaNTM1wIbdflqt1mDaAQNU2XGAUPwGpFwfWw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=hTNTiGkPrHFpfzTv92CxoDj+m/u7w8wulahh2YNUZ3ilgCKTOf7jYgAY8yD9Ao4qv
 SytwzZHwpUWQzFzBhJtl2DIhQoCUV/ToAeRl5zIDJgbyNck2JHuucSsXxomLmXYLp/
 +Dei76MRo/TXrQDxaEk4FvqRCIn9xEsmVcXYatHg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.20.71.51] ([193.16.224.3]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MOREc-1ijv5y1FTa-00PwQk; Mon, 02
 Mar 2020 12:19:44 +0100
Subject: Re: [PATCH] mm/special: Create generic fallbacks for pte_special()
 and pte_mkspecial()
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1583114190-7678-1-git-send-email-anshuman.khandual@arm.com>
From: Helge Deller <deller@gmx.de>
Autocrypt: addr=deller@gmx.de; keydata=
 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
 c2TFWAS8k6RLkk41ZUU8ENX8+qZx/Q==
Message-ID: <c026934a-02c1-8589-f925-e267fcc367ad@gmx.de>
Date: Mon, 2 Mar 2020 12:19:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1583114190-7678-1-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-Provags-ID: V03:K1:f+ApG8Jvu59vazNgfxUkIj2cuvWszDcxfXbYPk/EcZDTaWVlxCo
 7wV7zMdsUJ/8jZFhXwC3GlnyQOZgVfZ0Tqc6R4FGesB2+nbn2jBLiCx5ZMoN/mqbMry/kf9
 eyq62oCq0ky/yyNMdBr8GbYpjzbMZG4HJTkzpTwkQJhDroJxo7BbG6rHO3p5L2XUNdF3zq2
 93reBzFf1arlhD1Za6wTQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Q6U3Fl2yf6I=:XplsiSzKDGRlRZREeUVR5F
 q1u66Nwa+m17Ni84QTHrQfqh1MPBgds2Rq0St0rvtAM17I0nwJMTA1QhWnVCv1kMXp64gj3je
 n/qveNqtU4I12FpRGWzlhqv8Bb8QB9zsIIjxIsdTaY9LiPUzoE/XhR5W8HieBXkw4Gdx/BRK/
 FQtJhoQ+dFfxnqMHsqqORcW5nO01y/uX97DlRWFqslh5ZLIvXgVq5pgr5yhbJBBvpZRJFVPtN
 6tKQqh3H1WVRUGGgSFZY/dqkyMUoQdGAo2q93krCQTvrQgPHIBRXToUpnyc9V/k6j2/t9xmYC
 KwGhZJqZtDuyPb8WK0vtIuBWmZYZ2qUbjtNvtmDYcGRoOncW9aas9w8t9v0VhY4ZXPGj/kYmX
 V7AQYz0MlYRhZkeCZPOLyvyEdQ+FzAl+8v9B9iEgY9dorqE6xVO4bXx2vS+QZKfc3oFkbx+gA
 n6HybcbWcWBAdak0fQfrxPRv+vk2X9lUpxqh0ezq8wAtPV9GRQFIekxdAyLIIq1dgV5Yl+B9r
 dWiZow6ypNbsNXhKyaxMBCcIl4YoUy0X4lAEEv5WK9txC5BjSrXaMIWBIfpZ/dTqaURXE8f1m
 0FwiDxUPcJAoaLLcxjQjSXE27gyc1Z9cOJG3EyQjapmxQGIKDdg9A1fxpx8t2C/5946ohyIr4
 g2UIQKAQ4OB9tpSFioq10E8kfFp+OW9O6pVvCKnWVzLyh00/MBZIQn1PtJyRPFeWkjhmpWXQ5
 +kfSu+T2sdyc0JdTmz6qLQTpWgN2fDWWy6MAVAyPyfMbqp7b41tM5C2t5HZ79VoddHpzXEEpl
 PXGWFG9CuGcMBJmtW9IZKwFutXmiUNlOv5v85nfBPd9J4s8uXbE8mIm+65DIYO5/uj44QyZpC
 +OCIp2JdRtyHavuV8KKclvTFNQgS9Zss+JjpRovuWAtL1Hb/IS/K6qN9DUyIzKSefQ04cUv5x
 E2uHeFHW+Tz9Qe431t3AcpC7c/z6mhFnz/fIclEX3gJwYXahGjeapukHejVaYlhNwScnDAAVF
 onQ6IIQq5GMgaH93iAjkiGBipaimgAa1DZ0IbFxy7qaKC8sG78LNuOlbNchq3W73LSpOm6PyA
 YW7Il+1s6SFWH43UabDkvk2L3d0jC+C3YQN3g+408NwCrXBRG+sFPn1LxcJhZM6VJXeiH/LS0
 wO/2Y+Gbr+HFauHL92ZFf9/jnakPUIU8ZXPL2Uy7iz5DK1tYYcFPUv+ftyvVOomXH+YIDiy2O
 jfcobYAwoNCLoQj25
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_032114_552769_8AD2BA0D 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [deller[at]gmx.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-hexagon@vger.kernel.org, Vincent Chen <deanbo422@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Paul Burton <paulburton@kernel.org>,
 Richard Weinberger <richard@nod.at>, Russell King <linux@armlinux.org.uk>,
 Ley Foon Tan <ley.foon.tan@intel.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-parisc@vger.kernel.org,
 linux-arch@vger.kernel.org, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Fenghua Yu <fenghua.yu@intel.com>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Richard Henderson <rth@twiddle.net>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Tony Luck <tony.luck@intel.com>, Brian Cain <bcain@codeaurora.org>,
 Nick Hu <nickhu@andestech.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-alpha@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02.03.20 02:56, Anshuman Khandual wrote:
> Currently there are many platforms that dont enable HAVE_ARCH_PTE_SPECIAL
> but required to define quite similar fallback stubs for special page table
> entry helpers such as pte_special() and pte_mkspecial(), as they get build
> in generic MM without a config check. This creates two generic fallback
> stub definitions for these helpers, eliminating much code duplication.
>
> mips platform has a special case where pte_special() and pte_mkspecial()
> visibility is wider than what HAVE_ARCH_PTE_SPECIAL enablement requires.
> This restricts those symbol visibility in order to avoid redefinitions
> which is now exposed through this new generic stubs and subsequent build
> failure. arm platform set_pte_at() definition needs to be moved into a C
> file just to prevent a build failure.
>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

for parisc:

Acked-by: Helge Deller <deller@gmx.de> # parisc

Helge

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
