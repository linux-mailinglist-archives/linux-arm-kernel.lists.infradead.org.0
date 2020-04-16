Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D571ABAB3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMnzDE7RV7egnES8V/PwsepUexe3UC5nZCldiHOZoOU=; b=iHeICu0BzMeMwB
	UBFtdGo0CbKO8NQ4XIsGM0qHfDiQo1E59kLUS4R3xjtm7ZJoRoeyphkApkjfSKQaMR3NHf5LZ7XF4
	c1niV6fKLaXmJxxfSQGJqBIvljKugFQ0WziVQJ6Mbp8cEeyxMn9WrkQe1NUzJkCQxqAwK78OzHcH8
	6/hkLfxYvM1b/fDzFmejsy0zMf6/qHbS8iCGCymNAjJEoyleh0QadUNkhDQYCuVeqMtkGd67Vtk7O
	GoMNiz03rfzTmSN7bUW2iZijpl3KCqoUq68hK3oLpMOGOm3JpUU+A/bZittzj+X3VrkO6knPo4cog
	oi7Q4amgFNHHGMx6o5iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzRv-0004NW-9E; Thu, 16 Apr 2020 08:00:39 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzRU-00035t-5B
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:00:14 +0000
Received: by mail-lf1-x144.google.com with SMTP id h6so4904781lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 01:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sSf8uFnlnhLwj095+FU8Hbn9FbYIuI6qLS2jyiMbwJQ=;
 b=HTAxsHI4NFhxBaCaDB1DX0kXLNVIdVACrlSB7snYNia/S5Dxaduy0HAuEa14nLUnwh
 NjZ4+XYPjdEbGPlQtY7xdMJfc4wJ/ln5C9TgyMxTXtHwoH/3GbMtvLTxpiYS9aqcmyYW
 mbmmqyhMSBrFgMNqsZX+qMFEZjAGKsUeyE7JBzpLP+9Up/4SXYnUWGousajsyQ4e/gG/
 tp7ZiTkE0B16NNSEFY2ltXz8lNF4pGmLiLTfLBUnAHZV/4xyXmd7/wSkdV3an3765q5j
 BOERqjZVvDAeOKg/YdyD/hrlM9y2S5+Lf1xyea9woIZQAmW4/C6KW/yyDMkY+8oW3KCN
 +2zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sSf8uFnlnhLwj095+FU8Hbn9FbYIuI6qLS2jyiMbwJQ=;
 b=eZsBE7gsvysfelZ7CiIFcnhf8WYZAVahf1MCodkSWxr1O1SsZhompRZxHDrpiuFoDZ
 kRNNpqcLhYPh6ZfRhqCNg3lnkKASLLt342/TDBWgAUIFZ1fW4hZDjmx0Tjnr7hXsregK
 LbyFfzr+NdCSLcEEbzcZKAqjQnoupBg+KutM/KC+XenjNd24Pg+jPg04FlgK5mM72zcm
 ko6526UQvChN6OeHLm6JMsfAP7ePI+d6OjdggBQabMi8nup+lVsbwT7ZfBAYdTWBOF7c
 +ZTEqlJVXWNXDXNtxIn9iiQ4yWUVlrRLwUVNKJ0gnMWMQjYtanoXncPtSr1w9LTSrEMQ
 ZaXA==
X-Gm-Message-State: AGi0PuZFo01BD1QHipOCYa2FwdVabIWfCMXXO3EFl6Y+l7fich144t5n
 4wQTpLMmUsGaa1A58UhMvx5l+pSUtlbNCf70hp8tUA==
X-Google-Smtp-Source: APiQypKLGba57Vds1+EwidDyrePfi8s/BtJ+tvZbYfVRkMJ5bQ1HEXGS3YVge49dJY0iO94c5gudWNVEvYyk1g0PZ68=
X-Received: by 2002:ac2:4a9d:: with SMTP id l29mr5028454lfp.4.1587024009374;
 Thu, 16 Apr 2020 01:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <9feeb04805e5a406fe22a92e3f280abda39ddda4.1586289920.git.sean.wang@mediatek.com>
In-Reply-To: <9feeb04805e5a406fe22a92e3f280abda39ddda4.1586289920.git.sean.wang@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 09:59:58 +0200
Message-ID: <CACRpkdbUzwwcJqqPb=HVcDptMb1OqmRnYNzPuTMLz75LOsmSrQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] pinctrl: mediatek: make MediaTek pinctrl v2 driver
 ready for buidling loadable module
To: Sean Wang <sean.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_010012_374124_999718F4 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Light Hsieh <light.hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 10:08 PM <sean.wang@mediatek.com> wrote:

> From: Light Hsieh <light.hsieh@mediatek.com>
>
> In the future we want to be able to build the MediaTek pinctrl driver,
> based on paris, as kernel module. This patch allows pinctrl-paris.c, the
> external interrupt controller mtk-eint.c, and pinctrl-mtk-common-v2.c to
> be loadable as module.
>
> Signed-off-by: Sean Wang <sean.wang@mediatek.com>
> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---
> v6->v7: no change

Managed to extract and apply the v7 version using the b4 tool,
thanks!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
