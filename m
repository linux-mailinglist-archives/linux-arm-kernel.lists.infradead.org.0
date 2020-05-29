Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999171E8987
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 23:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9iWW4Dqxfn1vaqyfwZ03WWnbXSJO93XP4AUH2yxV8C4=; b=DazJS2sVAnsQYz
	2ziAm4ItW9SnzCjMtA2rVON66cLKxMIwR/wxJYA8Cxb7JzNdrCoEICh3yjiuZfJBYZnCspnBAhOGC
	vkvMCXlwoirwH5Z3bKD3dkIy5F3nOFtEl/sJCHomaz6A21Pw544EpSpzBfn2qNra8qlfS/hY27kM3
	GAnTmXjk/eT47BWEqqSn4KGZ2N4E4hQBWT36uYXRMEgf5R6GD3ey8oESID4iTMrQHpx+3X/HtMdmk
	CErVC0wDuSXqyci9n8fiyjhMt05PPaJFxB/WUHjPdujk64LLrkQCjA64gFu4w8hECHnLHyeUV/fbt
	+mMXrkL01Z0zo7z/AL8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemEr-0007Qw-97; Fri, 29 May 2020 21:08:25 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemEi-0007Q7-Bh
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 21:08:18 +0000
Received: from mail-qk1-f170.google.com ([209.85.222.170]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mg6mM-1j59AB3FQk-00hhZp for <linux-arm-kernel@lists.infradead.org>; Fri,
 29 May 2020 23:08:13 +0200
Received: by mail-qk1-f170.google.com with SMTP id f18so3624954qkh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 14:08:13 -0700 (PDT)
X-Gm-Message-State: AOAM530qCfRrfQUzlgAJlPTjqUvS/BDP7sWm0pBGkIxwBHPGrUIHb5Bh
 BLannxh62RHCKeIPrn9udils76w5dZW81Dj0Tsc=
X-Google-Smtp-Source: ABdhPJxFupHVYDFPcSPJtjXx99USrcroXAFD74vBC5FcXjhRJGsY5C7kBGxXdMK4b3eB6rTHBHYuQksgQPiI9mEtCKA=
X-Received: by 2002:a37:bc7:: with SMTP id 190mr9595426qkl.286.1590786492475; 
 Fri, 29 May 2020 14:08:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200529201701.521933-1-arnd@arndb.de>
 <20200529204404.GW37466@atomide.com>
In-Reply-To: <20200529204404.GW37466@atomide.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 May 2020 23:07:56 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1fEq6n1pBqkY4CqxpSZnMLOQsNHFyhB_L4uo-oZVu4sw@mail.gmail.com>
Message-ID: <CAK8P3a1fEq6n1pBqkY4CqxpSZnMLOQsNHFyhB_L4uo-oZVu4sw@mail.gmail.com>
Subject: Re: [PATCH] ARM: omap2: fix omap5_realtime_timer_init definition
To: Tony Lindgren <tony@atomide.com>
X-Provags-ID: V03:K1:WWmvOcezENx0lbpMTPNH0jfkOOGOwV+iCj877xrB3vfCHHMxnbs
 q5HML0uLVD+/iL+Z3JX/8BkfC5JMHFU1XgYjI+sX6Cp+n8BcM0v5M/ggXwRcQ7M8tMbL6Ot
 PCd8UKtwnEDBrpuk6N9rz4rh3k7TJFQb4SGxaiO+r4zPc65QuKSRPjuH8S5Icziwt2I1l4Z
 uWimd+4s9sFhJoX+nmUeQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UB94/KSvj3s=:OKryO4NarAjhmPAg12/qN/
 kpzKkuU4iWzL5ZWrFt3gDLE8Ye0RvxMcxldDZJ8QctTfo5w8sdzElm80eOLnhsp5n/QbJUJE2
 WTOe3zM6Ml6qc/Ooyo0052JbzhfO2VxAmsqqfTCVZTbJyS2W0W8ThFzK1l8PcrbF5604VSygG
 kLmSYwRHLr9xaTEfIglFob9KWP88ZSE5RmbwmTwaZqOMmLhZfdwoiSeCJPJbinaabjKDARfEJ
 BNaQ3ECERYxwwwYGmhTab90JWMTsyimJ1kmIhXcb5aLT/TvHbGowZ9gcqNAjMSJV89sBQZBFl
 Y8ro9yxn5hOwCC6TchFiAOAkMbeIFQRHihlRqCZp5StJD3zVzXuqUFjHAXzlffQd8ls/njVYA
 3eugyHwFetFvq0w8ktthOO/p1N5Gursyvu8sWKKnjV3lozEsmhhH9SSaeuOcMKFfAu97p1wqG
 +u0qwcPpM4injnsloOrZU58s6sc1gR2y0F3XTdIQyhXpLajP1lKrVsD9HXi3AD4QNe4nObWLl
 UiSmCq+V+aIuH4qp/oM+1tft38Un7DhqSRzqADJBuhfhBDPUxj3kC5MQ84g9QWGQ42ih/3jw3
 V7568NS9XxQNXeapLDi0bbmrIHWCqXlUotMjBv1nB99OrQrZCdMlyTo6gMffzN79ZHmDPpqEP
 iuB9Ka8WiHdEOgjqbxvQ2OpNLx7ZqtNjEI0t44YlDlDIFH6rI0HzpOndVU6H/RUvAAstV3/PU
 0eCWt55JCHs/kEAVIrq/QSv8eAbhheA4I9Vdh+lFVrKAC5dmOSn2TOuuzM8opz2b7b/8bpakR
 7chFUUCBpSzyAqnHB5MA6/lYdnBK/mG7RGxLK+54g9AgF+R+2Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_140816_695657_3F872EC0 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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

On Fri, May 29, 2020 at 10:44 PM Tony Lindgren <tony@atomide.com> wrote:
>
> * Arnd Bergmann <arnd@arndb.de> [200529 20:18]:
> > There is one more regression introduced by the last build fix:
>
> Argh.. I did run make randconfig for like 10 builds
> after the last fix.
>
> > Address this by removing the now obsolete #ifdefs in that file and
> > just building the entire file based on the flag that controls the
> > omap5_realtime_timer_init function declaration.
>
> I think this will introduce other randconfig build failures
> as SOC_HAS_REALTIME_COUNTER is bool in Kconfig.

I did a few hundred randconfig builds with the patch and have
not yet seen any further problems.

> We still need to call omap5_realtime_timer_init() even if
> SOC_HAS_REALTIME_COUNTER is not set.

This is what's in the header file:

#ifdef CONFIG_SOC_HAS_REALTIME_COUNTER
extern void omap5_realtime_timer_init(void);
#else
static inline void omap5_realtime_timer_init(void)
{
}
#endif

In fact, the inline stub is what that caused the regression,
so I think it's ok with my patch.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
