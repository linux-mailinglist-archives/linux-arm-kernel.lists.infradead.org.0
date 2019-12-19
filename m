Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267E8125A19
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 04:51:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46so8+miiKEVty+ru3ifJTeodUbFBOqTJ2fp5gw1e8w=; b=mgXJ7nvn2l/kTt
	z1w0kyG4guS9m+IJtFR3YE537VV0ZTZTRnPwQPpbJsoUUKIdbVEAXpxtKgtEPW+mxVGi+KMFFWQ7n
	RA85gVfIxyiCC+O2UpqyFr3Tkwnx/7Uvqp8u/efiZFOGc5CVbRfJvlfpwRVVsgs0OyL3GOBJo2wsF
	PlC/++XwJ3k5jO5mPWpIrfvN02NxzzWbnCxETFcZaoqDJKNbrYbYDGXOdmJ20REbcjTBuGLNquz5l
	VTqrP91BFbnvqmoHJDfiSVNgW1LZVoMJ870UbAKjxtX3V7U1Xw3Kf5kdh1B/UOqx+TlES26TW4qAF
	sA1EFs2FFYer1qFnQvmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihmqj-0002J4-NU; Thu, 19 Dec 2019 03:51:41 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihmqZ-0002HD-Qi
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 03:51:33 +0000
Received: by mail-qk1-x743.google.com with SMTP id c16so3531631qko.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 19:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uAOzy6HGq+TFs1xtj7/74tezRjxUw60c5rVBr7oLwZ0=;
 b=C7UCqqJzkPx1B9MwYq5LMFwPNwZyG+0Lu2c/yVQdV8kq5zN+wo1e0ltwHagA5u4va4
 Z2Dj9d4LjBn5WuzmdYZAHL+yKhKZAJkCRvaQLFfiNOU+N3UqRrdkJMgyUMANVigeTFaC
 dZb3Lcrvzgp9DkVgJEDfMwhF7RLdt6+uVAhHs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uAOzy6HGq+TFs1xtj7/74tezRjxUw60c5rVBr7oLwZ0=;
 b=bo1E1zur+VF9D1xfJISeMPQS53yUHeBzRnjpwPCOMBVuqlbyAaftqm9HSkbmi86sFX
 /wb6vINAEm6ja6CAduPPTgo9XvUAr4FmEwJHp3j3bkOGeYLZh3A9rdznv5GOM5tXSNAM
 YAoC7coeeVcbmUhpTtGAWKGB48EtZY9yOIDaa4kvAKkssWFfOEEFW0vyYxMLH0tCz3Au
 zTzQEvE5kO6Vg3m1j3vxG82bFFcY1uEgOC/0EmgIO545zCHrdlS9JPEnDnA5hSJMjoaL
 2afKJJHuQqqEvEQftBcaOaXj6wtXfHh5+q6p3gyT9KOa3/35T0F0M8iAf7zOTel9NOj9
 UUsQ==
X-Gm-Message-State: APjAAAX3t+63ays2KoA0ekU9UWxGehDkCMggRkkJPUj6FFVvpZnaPuQS
 78s3jd4oKTnahHfi4ZVt4vfVOyusBFGXWEZtbGQdsw==
X-Google-Smtp-Source: APXvYqxVQR1zDsHVfDiovLQ82mdUU+RrdR4Ro/PJNLrRoTgjjNYA4g4hdU30loYBDdj3qwoVrHU40Q9ZvwTk5Kt3wBI=
X-Received: by 2002:a37:4bc6:: with SMTP id y189mr6213311qka.18.1576727490722; 
 Wed, 18 Dec 2019 19:51:30 -0800 (PST)
MIME-Version: 1.0
References: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
 <1576657848-14711-6-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1576657848-14711-6-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 19 Dec 2019 11:51:19 +0800
Message-ID: <CANMq1KAB9vTDY+d1ktmAtxCGMYqc_C9-SzLzOkLyBmgLz39KYQ@mail.gmail.com>
Subject: Re: [PATCH v10 05/12] soc: mediatek: Add multiple step bus protection
 control
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_195131_864065_AA9C5054 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 4:31 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> Both MT8183 & MT6765 have more control steps of bus protection
> than previous project. And there add more bus protection registers
> reside at infracfg & smi-common. Also add new APIs for multiple
> step bus protection control with more customized arguments.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
...
> diff --git a/include/linux/soc/mediatek/scpsys-ext.h b/include/linux/soc/mediatek/scpsys-ext.h

Will this include file be used by anything other than
drivers/soc/mediatek/scpsys*.c? If so I think you should keep it in
drivers/soc/mediatek/ instead.

I also still had a comment in v9 about clr_mask, otherwise this looks ok.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
