Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A8EF971
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Q4UsRLujDZYQNa/3hBY5L04sIEFCHfVNJ3Tx/TdFgM=; b=DoKrgA2pYNIcmK
	R7gOgGj87NmDb6XdsYDRJNWjTY5/JH2cZ3wJU/5wZWQiKcqSSmpDkf4VXHBuQQqUKo4SLAFwI93V9
	dKeP1AO2KY2vYVPWOfF5YYI8wfEuMiLkWdON+bgppnFcp1n4N+iHeoT6jm+R7449bVSPCNpw9CRVt
	pdeopIDkn62kWvpjsLtCjtabtKuyv+o+CtpLNmzqknW9yaf1wDPLZbATfCqPU7kFuz/cXyfdIPUdA
	i+OFAku2w9uamO2CIjzSG9zH3HakmrksWyWn3h6W0Su52fYKRX8jx+3aoRxdX7rGMWLswHUAr9L6j
	InodBASPVqheSM0QIrbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSOT-0007rJ-NE; Tue, 30 Apr 2019 13:01:57 +0000
Received: from mail-vk1-f194.google.com ([209.85.221.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSOK-0007qm-1Z
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:01:51 +0000
Received: by mail-vk1-f194.google.com with SMTP id l17so3070851vke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:01:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T0oZOFG8tCKfwam2YkfVAEq5sKo6r7mm8L/IgkTxztw=;
 b=PLDbf+y+j4EOfy0GrFf01QfkqGeCx9YGmb9MKsdFUpADBhZVo45fEug+x4ueNvhr8Q
 yyAvDFiX5Mg9OheNuAI0FsN5oz/vzNmxQSe46MGTwtSvZ8JwIYi5eq4dpPqULIUc/6Hr
 RL2sMLD4XW/pEIkL79cHXEeMR7EHzV+AuJ148dBdpe6kVZl2P6NaBVrpjxIWy+PJmbNq
 T4qpAqQGYOt6Vhr3UHdgyxnhL1eTka9yPJ6oEVZKu47RLUvZYdEaAvXXwhIhT17X2tkD
 OQqeR5iksSbDPRA+1/Vqd2i8m3JPrzzE30i1DO9WnH1ciSNxjxtHPCYh4B2+louFeoJu
 3CJg==
X-Gm-Message-State: APjAAAVr+xjj1vNh4ofrY7kufPXpPpszJwx6uJRgr9yf8pX4zxmPndHX
 0ui+aJD0tQpIpa0rVzSCIvgQjssmxJwwzlLHVQE=
X-Google-Smtp-Source: APXvYqwGU1lu6FMCFENSv/DiLe516ZyRB7mC7XyNhZBcBZOPG4HfkJdBWtbJZMTkJaR50xPfVeryDp2qRXFAqwUGnyw=
X-Received: by 2002:a1f:84:: with SMTP id 126mr6644751vka.40.1556629306302;
 Tue, 30 Apr 2019 06:01:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1555655522.git.horms+renesas@verge.net.au>
 <3d59e55ef864f5b42bac865912df4aad56d7a67e.1555655522.git.horms+renesas@verge.net.au>
In-Reply-To: <3d59e55ef864f5b42bac865912df4aad56d7a67e.1555655522.git.horms+renesas@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Apr 2019 15:01:35 +0200
Message-ID: <CAMuHMdViy6A_vmzjB5ZjS-amgCUvxgtDZ9yyywNH+uy7CCQH+w@mail.gmail.com>
Subject: Re: [PATCH 10/21] ARM: dts: r8a77470: Add PWM support
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_060149_855292_17E31019 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.194 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Cao Van Dong <cv-dong@jinso.co.jp>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 4:41 PM Simon Horman <horms+renesas@verge.net.au> wrote:
> From: Cao Van Dong <cv-dong@jinso.co.jp>
>
> Add pwm{0|1|2|3|4|5|6} nodes to dtsi for PWM support on the
> RZ/G1C (r8a77470) SoC.
>
> Signed-off-by: Cao Van Dong <cv-dong@jinso.co.jp>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
