Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111AE1E8A31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 23:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWW8wD0cgKIkLMdJX8aw1KgGe2WoFiOP1JKFKEIIXII=; b=PCMgRluGAKElnS
	y9u7lqvizAY2ZP47ohq+y5X9Ix2b9D9eVebhwXeAQGrGy6khEpVtRyJo9tk67rmL6PoPFKZGxOcx1
	9J5jmkU0c5y4s0Okpsp0joOiMmlgkRF8edkFjuRUbMfWljWj1rKsBccEI9ksJXWZ07dP7KdqFsPj8
	RWEQFJBskzCMzcX6hg/YCUxrh0Ak/8QLEe0JU4yOtZQB0mWCoeH38s40LO3gIRwHEzLn7HhB6/aPO
	qdp47NnJ4jL+FlIO02VMcsd708TzB1xp7u5Yg8to3PGEZ8k+V+Gl9NxChKmB4aGXOsTIb3zX8la/t
	u/iJXPfG7Kh1mvCvYp1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemjm-0005po-ES; Fri, 29 May 2020 21:40:22 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemjd-0005bl-81
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 21:40:14 +0000
Received: from mail-qt1-f175.google.com ([209.85.160.175]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1McHM2-1j8lMr1wqK-00cdhP for <linux-arm-kernel@lists.infradead.org>; Fri,
 29 May 2020 23:40:09 +0200
Received: by mail-qt1-f175.google.com with SMTP id x29so3230651qtv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 14:40:09 -0700 (PDT)
X-Gm-Message-State: AOAM531ly9P1fOozkApZEGwS5ABGoM8RiiFVbLRCF97J7x0nUyeX5/bu
 Zk4SmDrK3m2QXzXFsNCykZm4aZDzYQlUwSN0I7Q=
X-Google-Smtp-Source: ABdhPJy+ilLiWJETdXmIMFhDMSp2SJnge1JR5wH/6Pi12NEQPMr5nIUbf4u4MCMg5wHhEV/LRF8BNCHf3hC2L3DWGbQ=
X-Received: by 2002:ac8:306d:: with SMTP id g42mr10851037qte.18.1590788408285; 
 Fri, 29 May 2020 14:40:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200529201701.521933-1-arnd@arndb.de>
 <20200529204404.GW37466@atomide.com>
 <CAK8P3a1fEq6n1pBqkY4CqxpSZnMLOQsNHFyhB_L4uo-oZVu4sw@mail.gmail.com>
 <20200529211440.GX37466@atomide.com>
In-Reply-To: <20200529211440.GX37466@atomide.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 May 2020 23:39:52 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0oK-SqWHR9v0-2p3Fd_mCe2ibP_SQKf_W2A6cbEzVgWw@mail.gmail.com>
Message-ID: <CAK8P3a0oK-SqWHR9v0-2p3Fd_mCe2ibP_SQKf_W2A6cbEzVgWw@mail.gmail.com>
Subject: Re: [PATCH] ARM: omap2: fix omap5_realtime_timer_init definition
To: Tony Lindgren <tony@atomide.com>
X-Provags-ID: V03:K1:fuB9d475MkmVdx/9b35EhyHayolee7hNGizb2zD0P2dAOjm40Nw
 4+cdEjmzGUh8vs7bJOHH3zJDC8DLCKXcmVWpp/9ZCGv5jFrXc6m1LuaR9qz8iit0hyD6vMW
 beh9sYqSt4DnUjsle52mWmNqx8PImqkyilZQPd5KPUTIeW1ZtpV0S0LGfAsHUdiiqez8YvX
 tgDmHtlbE5rYRlAsudOGw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3mdJqm/qcQA=:RzuRyEQGJnbgMe7Pfn0isk
 YV9iu0VCAZu96eaT1QYbQOotkheii2WsuX6WIRqpRSwLd4IgmrYjU87mqSdLO6yoKJDOj0uWM
 bQDekTN+spVe8fEtU4c4fGY79MjLQElvw/pB+kpSS9HypAB+aROj+K1JjXEO0fzkKFdR2N6Qh
 oL21kfwoJE6EGJK1Vg4dxTgl8sflYclhIX5AsFJ44Qrks3hhfj0HY2O37gYjeu6h7/6qXtQVu
 ZBlM6LFXBli3FQkbYIKiJT8/2VN3qEGtCxFxkHN2xIWkRyLoSngFx4YhkcSBZSb868GGxVv9w
 sFdYsUD2WMo8XVUHyaBMwqTNXPT1i3uF6F1iR6HauGHWp/1AwKQ4xnp912lpWemdcum/1N5mp
 wG3q7D+c4Qn4w36F/SSmA+suu3qCAbEgLlCLxhaFDgCiNbR0qeBe/9oNyA1o24Pek3+X9tLKj
 hwGRt3GRo5Xg7QzluoZzmPTZb9o4xy6G57WKPbAx3591mDxELnqSncuhhcMSQ/ReYT3XDTy8I
 vPXvuNswqEoPXyPmFuJVQCApw3/Q2s6FtWbzQPpLVMvl3eIF9G8IiqBCT0pmaxuNF0NCKdIbC
 759r4HroVEXUo3Xil0iyM+otLKNp0SaUbSio6x/WF02hqb3ysPqedIWHdrBweRoSp46L1c/Vh
 jsLGZ4REMUjL2OvK/8mzJ6EFriRYW5fttYrwqrUrd+wKt3xql00nzZ1m5YYCy/hFdewwpgYc+
 E+93wA7g85WGZ9XbQLeLVE/zl/T7Z0B/B0iUsZH5ago5xRviAdkCZXC4WgMpuTqyyqWAMd7FF
 BgOOrPvonEWE94ybSUh7N5RMXQmGzmnd8o5f7HrUaeAuPFz71I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_144013_593373_1D5B6638 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, SoC Team <soc@kernel.org>,
 Olof Johansson <olof@lixom.net>, linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 11:14 PM Tony Lindgren <tony@atomide.com> wrote:
> * Arnd Bergmann <arnd@arndb.de> [200529 21:09]:
> >
> > #ifdef CONFIG_SOC_HAS_REALTIME_COUNTER
> > extern void omap5_realtime_timer_init(void);
> > #else
> > static inline void omap5_realtime_timer_init(void)
> > {
> > }
> > #endif
> >
> > In fact, the inline stub is what that caused the regression,
> > so I think it's ok with my patch.
>
> To me it seems not having SOC_HAS_REALTIME_COUNTER will
> cause omap5_realtime_timer_init() not get called?

Correct, this looked to me like it was the intention of that
symbol. Unfortunately there is no help text but it is user
selectable:

config SOC_HAS_REALTIME_COUNTER
        bool "Real time free running counter"
        depends on SOC_OMAP5 || SOC_DRA7XX
        default y

> That initializes clocks and calls timer_probe(). So this
> will result in non-booting system AFAIK, the header
> file stub should no rely CONFIG_SOC_HAS_REALTIME_COUNTER
> also, but rather ! CONFIG_SOC_OMAP5 || CONFIG_SOC_DRA7XX.
>
> Also the Makefile change at least seems wrong, that
> can't rely on CONFIG_SOC_HAS_REALTIME_COUNTER.

How about just removing the prompt on
CONFIG_SOC_HAS_REALTIME_COUNTER but keeping the
rest of my patch? That way it's just always enabled when
there is a chip that needs it enabled in the kernel config.

The only other usage of the symbol is

#ifdef CONFIG_SOC_HAS_REALTIME_COUNTER
void set_cntfreq(void);
#else
static inline void set_cntfreq(void)
{
}
#endif

Alternatively, we could just remove the Kconfig symbol
altogether and rely on (SOC_OMAP5 || SOC_DRA7XX)
everywhere, but that seems a little more fragile in case
there is going to be another chip that needs it.

    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
