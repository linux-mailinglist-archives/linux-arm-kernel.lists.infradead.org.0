Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F5DC0469
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 13:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MNe2VT3Bse3tG73Q7M712WyryP5Mayy+6Su00gC2Rg=; b=Q2p20BSEl1VdaO
	7e+M3FRQObO1kc25xgShuRvYyWsDuEcUjq8mkc/ZiFCxJKNStrmsmtT/PVOgXFuVbrDRhkCsEeAY1
	q8P8CBSbnzhqm/j2eF9Gf0cUUpyl9oGlkTSO2bK6U8ZbPOt75yGGMaaibA/nsxJ0DOBf7lL9snuiP
	Cinq2Xan2R5BBbDbQrYdYac+iJBT6POCA6BZ+q8ke5mzZR4w824k60qiKS/SFvvN0XvApNoSLtEwk
	mZikjVhXYpOB86oNLkvx1PRcikI18PUegXEtqnEFMhn7FUNhQHMmj7deUMpKmg83QEnAzcXMEFud3
	RnqYPmpp6F3UxbuRAyzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDoUi-0002RG-M9; Fri, 27 Sep 2019 11:33:04 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDoUa-0002Qd-Tq
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 11:32:58 +0000
Received: by mail-oi1-f196.google.com with SMTP id x3so4922932oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 04:32:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=52oc49zh7xP9ugcHXWAKNaQdpwyL9K7pB6SwdLPEacg=;
 b=pdE5hv8kI+aiIcCZiVHdt286k3RNcV4P9rPCJiyUVGRMh4/EReMv1ORM0S1TcRTdq3
 uBKCpBZEXvuC+rZzBbZAu2GGTl1ct8cLkuNYQtD16I4RABr7lW6pDiXaHD4Oyl1+aPC+
 c6SrUBzmkLIZtz1sKzXoGjcuwZ3cQQVZQ057Od/kZj7wlZo3dTAqom++Hr7mOQj7fl5H
 ZOiXvCRz5i6ji+pQ6yMbZbP/f5oF46uxKQwlugULXY9fZk45M8EavWYxPJkPgRQ5MFMs
 KB5WdJj2ArSIEAZ1nUcPtPowC76U2rA1R7bgh5Lo2xc05JEJ6fhsAIxEF0JkLdr/sOUq
 WKWg==
X-Gm-Message-State: APjAAAWBzMkVYirhSvJt2BLO3lvvYQKK3Tc6yluT22rI2KH0zLCPCN6a
 OuYPlF2yLa29Udvs+OsynFRv8TVnUPWrTvtoYUA=
X-Google-Smtp-Source: APXvYqywyz6+bxWj3yKGdFYQ7bsOUDSxIgHeeez9U9Z9Ue5iEGi+i0pGl7ggi+L5NUT1V3JOLD1JcBQB7e4iwWufDgk=
X-Received: by 2002:aca:cdc7:: with SMTP id d190mr6474121oig.148.1569583975648; 
 Fri, 27 Sep 2019 04:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <1568725530-55241-1-git-send-email-biju.das@bp.renesas.com>
 <1568725530-55241-3-git-send-email-biju.das@bp.renesas.com>
In-Reply-To: <1568725530-55241-3-git-send-email-biju.das@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Sep 2019 13:32:44 +0200
Message-ID: <CAMuHMdXBqkmf+g-Q7OnoPh1Cn8Yt2Fy1MrhGZs7=zE7OiD=HPQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: defconfig: enable R8A774B1 SoC
To: Biju Das <biju.das@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_043256_958360_8411D451 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Anson Huang <Anson.Huang@nxp.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Simon Horman <horms@verge.net.au>,
 Jagan Teki <jagan@amarulasolutions.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 3:12 PM Biju Das <biju.das@bp.renesas.com> wrote:
> Enable the Renesas RZ/G2N (R8A774B1) SoC in the ARM64 defconfig.
>
> Signed-off-by: Biju Das <biju.das@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.5.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
