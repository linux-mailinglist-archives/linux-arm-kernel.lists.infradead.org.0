Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E2D8C397
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgOqu/Wb/jfLlrtrqxrqusfU4xM/UjUKvug4EM8rPyo=; b=lEzt3d2GqPQrPn
	S5DlYpQT+BSoIjhbuESWPNVyhNUQ0nNDV2rOyH6iqH0yqBrMDLZeLlGiqg1RKqMMo0/PPcT5WlTcH
	HmgwjAPEPZf4FF2r25134/3ihj2oDTMOcnHIRSWp31cRyfvb9PCwaSLToFKC8myY/b1SMdSPigbr7
	zOxXYilxevGhoivYRoz1rOwoQgZLpIYaxGoTjxTUeh7ax2KslBSpLs//+yngT5YkajhKZjHDo6O/L
	XuXj+bWYf6pPAv1wIHfu6tNZYEGqDtRz82LpRLVy8z8XK/HAT0gP4+fcPs8rQVuU2JlJiYOBECTVW
	/VKvgdX0nUas9HyuJFRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxeHD-0005aq-OC; Tue, 13 Aug 2019 21:24:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeH4-0005aQ-2X
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 21:24:12 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F7F22085A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 21:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565731449;
 bh=R5Yh9wFJPtJIKxbptxdaKPDiX/ZNZf1g/oJL8un702U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MiH5H3LCM2A75FvZHCjHYqJ7oaK3Hwwla30yyL6yij7D9l51oJfnojqROrQffWVas
 h2XULaadDYcbeM7LNjIAzIuOJkw/52DQHUs/vLmfMQ1r0rjsLlBVjNCrd/b6X2RLvI
 dU4bAw9iuhkZRIK6H1L/4zgMNHRgSa8+PksNZHqQ=
Received: by mail-qt1-f182.google.com with SMTP id 44so76857402qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 14:24:09 -0700 (PDT)
X-Gm-Message-State: APjAAAWtg+98oT+SkdNHJiAf5o+l1cgs+V2zbKk6tPv4BtqjXJq0dLsM
 HLsEX0aj+te6sHXlAxVWuiITzqzn9DYuer8lBg==
X-Google-Smtp-Source: APXvYqyDoMF5kcqlkAQ276qRzcr1OCkIYQIe1bsUEqWU0awHa7ShjdR60+MD54WSwZGK3ztXNw5WmKIXTDoa+P8D+Ws=
X-Received: by 2002:ac8:386f:: with SMTP id r44mr18216092qtb.300.1565731448864; 
 Tue, 13 Aug 2019 14:24:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190813124513.31413-1-mripard@kernel.org>
In-Reply-To: <20190813124513.31413-1-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 15:23:56 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLUfQdtXZMNTLJX9uMpdCY0NNN=AEDqGiemrdDazB8HeA@mail.gmail.com>
Message-ID: <CAL_JsqLUfQdtXZMNTLJX9uMpdCY0NNN=AEDqGiemrdDazB8HeA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: media: Add YAML schemas for the generic
 RC bindings
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_142410_140901_7FD7065A 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sean Young <sean@mess.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 6:45 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The RC controllers have a bunch of generic properties that are needed in a
> device tree. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../devicetree/bindings/media/rc.txt          | 118 +--------------
>  .../devicetree/bindings/media/rc.yaml         | 135 ++++++++++++++++++
>  2 files changed, 136 insertions(+), 117 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/rc.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
