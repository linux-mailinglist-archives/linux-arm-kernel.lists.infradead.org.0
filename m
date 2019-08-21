Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1091497599
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 11:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IAtooUwovEeKSXxr46ks9SYxUiWkVjL3lXVUt5sAdIM=; b=pw8GBHSexCbBYC
	XJeNGy1vAv4QxFL2ez7coR6PyN7ygi4GX/WPSyPUkvl/Kv4WiBfzLRa9D6DWnnHVah+768roFbraf
	WTof5M/9UiWfDTPivDwka0+JWxV6wo1uFMLcpY2en5Q02OUsiLSfW1Mi3hgdFvgqV6X3eE2JcCJjM
	6lrDNKaRW0TddBtUoVqROUc5ZkupqIyeUuG0qfLSfPW5Ug+OGnQRy2zhsd47Pqik17VPwPymdHbiz
	BnyvduzEc4FUQvESxlq0viaFG1aNLl98HL3pysgyZVqwZzJ62sVhJjlxqHBgSALpmK8zzxlDTpGxA
	tuAMJm5qoGRcNoaAircw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MZS-0001AG-Rc; Wed, 21 Aug 2019 09:06:22 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MYQ-00019r-IP
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 09:05:19 +0000
Received: by mail-ot1-f66.google.com with SMTP id e12so1347623otp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 02:05:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BcgOugiEfu/sl/GJ2HeNJnHlOVsMexHqTjarEG68Ugc=;
 b=WbmQYZf62jq3D8H4xwKcjCviVucMi5qi3LslL9j2O01tF4eJSpQtneQ+LzliZ7hdmf
 pr3oGm1R5AsueTGyHcEzLY1mG/ul2GljJNuXKji5oizIctBPKOhaMKKrblMFPdeDVSk3
 n2sPWodj+2zgZ2baaH8kzGboqjlmarmsWaRt14j+8U7zgeTOh5P9lMcZQq+ZVFM/2mZS
 NUaSao6VUPiJsLP34oTL1oZ7oT9Ltx74Mvff6KfjSyguVAgMgvtpxEq6QorY6LNlh1g0
 Wp3plMOLMSK0z+qECmkmvKtQfykqVOn1hz0RFoWs369OfmX1H9H3T977Z/W0V0nEpSo0
 IMVg==
X-Gm-Message-State: APjAAAXYT/v0SXcBwm4Ts1xfXFT+1SMGuPtXeGCrnKftcExw7UdeVwW0
 GlTI8e2UXtBIT4DuYxe2kLl/YOtU3Dom5rl/3rU=
X-Google-Smtp-Source: APXvYqwEABXn/5Y7xZ1yMJQ5jtcZAzzIPZrRHhAN9UIfIM30szjKc85rvBFGGhyNChxWiqjaQDvn93tBXtOgNhBnBvE=
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr2623806oto.250.1566378317253; 
 Wed, 21 Aug 2019 02:05:17 -0700 (PDT)
MIME-Version: 1.0
References: <1566219393-23169-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1566219393-23169-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Aug 2019 11:05:06 +0200
Message-ID: <CAMuHMdU7QFNhfgy8Ow_Y3iJOJRgrAad7tSGgOKRvgMC_ZwmdCA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77970: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_020518_684538_FCDBD605 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 2:56 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> Sort nodes.
>
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
>
> This should not have any run-time effect.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.4.

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
