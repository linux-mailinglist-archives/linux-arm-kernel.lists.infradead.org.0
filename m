Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E4ED2FBA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 19:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxn8TbfImTs99tgigTwpaMe/UJztzPIKrod19bYHWjw=; b=o4MuhtH9PXrAM9
	P2wVkeyxxSoEu4Y4NfH8Sw/2UZJBlEiGJR/TocadvgSVXcweH+bTWf7m0CVLjl1QHkRQsz5HtPUpf
	jn5jZZTWNgWVrv90TgmY5TMk+z2E0V/ue+5CrWT/gBm+yvkQ0+650zDCCbWVCaPvP5p8nUCEvQhpt
	MrE/5pu9XOzPjXtBvf4/NPzeH6a3btxRTP4pmDivH/C++osA17im34Yp+Q/kg4R9qTbkT1MA1DMqi
	4s4znVlvond/ZVligkJ6QLqnKVVvDbrydqlv3V0JSaBtZcG9ri91Jf0cFKEIukkvV8UystjHc7J0U
	QiUm/6KDECPvoB35TyqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIcUR-0002k0-2L; Thu, 10 Oct 2019 17:44:39 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIcUI-0002iU-0D
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 17:44:31 +0000
Received: by mail-oi1-x241.google.com with SMTP id k9so5656526oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 10:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DKe45SUxB6hYFAJK4Hzzx9HwPC758qhlQpHJI3tZEIo=;
 b=VWVqLMShkk5AFXL8NAEgE0bqeZexDXkca5zP9VsCIHpGJGP655Ahj59j6PofdbF8yy
 zkXGLQUiQVY2NUUON+mXcdZoaZ16AEqOJUqMfJGAQSARITAkutR4PupxVfwgjhvHFnbd
 oWv1EFdvgCKVUXqmDGsUwNcxvGMa/a/TZNyHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DKe45SUxB6hYFAJK4Hzzx9HwPC758qhlQpHJI3tZEIo=;
 b=Pbd0WFB4NWWSOJsbKFlkO3Smiao5lKwc0npOyD2zwhwgHAnbapIA6jJcamPfM1B3rV
 ALpss8dVKyNMFtAXidVYW7MgHoquHfkECd8S5/jfHdX9eTcab0nZZh6ZslWOKnTwPa1y
 pK8sGQMAOmeUnqntqj33GIPS7JWn63NW8IcBuHQ5rrP8gmnaQyC0HlkDGCpSoqy38Kqk
 /cOPrHJu+R5H+EJMMcOnrgnFKwBlrDjsGJgxB2wR/MwGy8mA9q37PzJ7a531soYfITBz
 JhvaGURibbW65ZZaldrRUBTLE9Ijdjd2BIrWDWpawTdpvlrAF/IKLuPk2HGM4/S7K8is
 VLfQ==
X-Gm-Message-State: APjAAAUdmOGrdLJQf/irXts8aJQKJ4JIjnEPr8CCBswd2bB4zb1C5Bow
 yXtSQ6N7oE3FxSjtnEykXt6Q32VNdxQ=
X-Google-Smtp-Source: APXvYqx/zFQTf2BJ2S6WmLb9RySKGwgjUGRmb1dSm2fUn2YvJJMEgCEW2X41OnTIL9/9Z2W6WbkOcQ==
X-Received: by 2002:aca:dfc5:: with SMTP id w188mr8439120oig.4.1570729468845; 
 Thu, 10 Oct 2019 10:44:28 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id 109sm1896350otc.52.2019.10.10.10.44.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Oct 2019 10:44:26 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id a1so15636844ioc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 10:44:25 -0700 (PDT)
X-Received: by 2002:a5d:8991:: with SMTP id m17mr12301165iol.52.1570729464667; 
 Thu, 10 Oct 2019 10:44:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190906060115.9460-1-mark-pk.tsai@mediatek.com>
In-Reply-To: <20190906060115.9460-1-mark-pk.tsai@mediatek.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 10 Oct 2019 10:44:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vxdnecw2SnUeFpa8Rqq0DSTTeoD_bE1GXk4q37usZ9-w@mail.gmail.com>
Message-ID: <CAD=FV=Vxdnecw2SnUeFpa8Rqq0DSTTeoD_bE1GXk4q37usZ9-w@mail.gmail.com>
Subject: Re: [PATCH] perf/hw_breakpoint: Fix arch_hw_breakpoint
 use-before-initialization
To: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_104430_038892_050B8881 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alix Wu <alix.wu@mediatek.com>, Peter Zijlstra <peterz@infradead.org>,
 YJ Chiang <yj.chiang@mediatek.com>, LKML <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, namhyung@kernel.org,
 jolsa@redhat.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Sep 5, 2019 at 11:01 PM Mark-PK Tsai <mark-pk.tsai@mediatek.com> wrote:
>
> If we disable the compiler's auto-initialization feature
> (-fplugin-arg-structleak_plugin-byref or -ftrivial-auto-var-init=pattern)
> is disabled, arch_hw_breakpoint may be used before initialization after
> the change 9a4903dde2c86.
> (perf/hw_breakpoint: Split attribute parse and commit)
>
> On our arm platform, the struct step_ctrl in arch_hw_breakpoint, which
> used to be zero-initialized by kzalloc, may be used in
> arch_install_hw_breakpoint without initialization.
>
> Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
> Cc: YJ Chiang <yj.chiang@mediatek.com>
> Cc: Alix Wu <alix.wu@mediatek.com>
> ---
>  kernel/events/hw_breakpoint.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Stable should pick this up, please.  It landed in mainline as commit
310aa0a25b33 ("perf/hw_breakpoint: Fix arch_hw_breakpoint
use-before-initialization").

* I have confirmed that it cleanly applies to and fixes a kernel based
on v4.19.75, so picking it back to kernels 4.19+ is the easiest.

* I have confirmed that my test shows that hardware breakpoints fail
on my arm32 test machine on v4.18.20 and on v4.17.0.  They last worked
on 4.16.  Picking this patch alone is not sufficient to make 4.17 and
4.18 work again.  Bisecting shows that the first breakage was the
merge resolution that happened in commit 2d074918fb15 ("Merge branch
'perf/urgent' into perf/core").  Specifically both parents of that
merge passed my test but the result of the merge didn't pass my test.
If anyone cares about 4.17 and 4.18 at this point, I will leave it as
an exercise to them to try to get them working again.

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
