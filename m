Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F133B82091
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQatvDjkCm4Vfhhwd9RD4LTbutxvrcrBpvsarVfAh3E=; b=WHYJ2fep5BCJQi
	4ybDJpIgfJNmxLr/wpWYGcGXMZ+rz299ywFxTCzqeYBAnBdV6cgiTkdxc+08w723d8mQR8+MMBwpr
	HrKK61Ld3Mu4623xbIh0BzcpYH0jFv2RZj5QZ5cm0Dp2Iud2cGuDeDqQ8R3ZIPuAU0UOmUxr1wvIi
	7FvsdcshpUWoSG7eGd7DkWfwqU8BJ3n5uSprAc4d2elSMvxEZlPRPGWu6c/hI579kJxTBAzWfBXO0
	X5lyahxB9qGj1cNmfCtBkgL/MzErnpeyiQDK8K8FW1U9bvbjMorWsVXp8g87pe+Yx8muOVZFkyS9s
	0K79OSoqRfHVOu3Dwv7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huf8B-000801-Oy; Mon, 05 Aug 2019 15:42:39 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huf7n-0007k7-0O
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:42:16 +0000
Received: by mail-wm1-f65.google.com with SMTP id s15so52133239wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 08:42:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JHB3YRpbA21rEsaEiwqW6v/ZPe4iBbBAdrfJyabclTk=;
 b=pq3vW9cOuq2vUC2Vx4I1T5P0CCrkloRKwUiXWRMOI07PyG6hrCWSs9oeMNnF7fCb54
 eI8MTVGQDGKwzovUj/nnk8J1SHCnF6HYEwJLaLJ2EplDGGusl4IScmJeSBZXu6FgUl/z
 LxQOSiGZ4jtdePzldyeJpURw45YO6TpBK/rhqhOMbEeLxiTcg+XmjyCcfrydxUOyowvP
 JTwJZIy1hK+Yn/1TiL71HucvDsABaNWvQSxMyFkjIwS0xNVoB3WPalwVaGhXpnAwQO3f
 +ShUilcFWT+bA+dswOKlFICZV4ZmN8+f4JUpzsL8p3D3bcL8QzWePtgx9mcZtf/Oaepr
 R+qA==
X-Gm-Message-State: APjAAAX5YBONAqumR5/UqfQ6W2Mui1FTBvpjZbLuSCPgKG1Kqg5FYrKE
 OcafEbI0AIvfnjFVMZ3n5IPNiZaPOVywCG+hcrc=
X-Google-Smtp-Source: APXvYqyR3czauETeNno2VqKp42T9K8ZwyBJUAOQGVb0sbclvRABUM6jaQGFDcxRuaZ5TVxq1I1+mGklafO7Vqkvs5Q0=
X-Received: by 2002:a7b:c310:: with SMTP id k16mr18342131wmj.133.1565019733345; 
 Mon, 05 Aug 2019 08:42:13 -0700 (PDT)
MIME-Version: 1.0
References: <1564669397-22515-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1564669397-22515-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 5 Aug 2019 17:42:00 +0200
Message-ID: <CAMuHMdUzXbXJWvJ=KooB-1p7Upjtv4mebyW-A2ArJCVUxNKPYQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77970-v3msk: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_084215_162549_50EC0B00 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Thu, Aug 1, 2019 at 4:23 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
