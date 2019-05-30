Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4B62EAD7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 04:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hh/WQbP1M/8gmyK2p8Ijva7NnatmgLKgzR3cWuKM+xo=; b=CJ7ZvnbFqMO52Q
	JQpUdWHDR4IWkqmGT0fMGWPpeu37jSPjWpFhehcArNzQL5wnhJVwlza7uc5spqvE3FcPsYEv05iLM
	Ws3iFjC2ZqkiI8h/pVtbBY65OJ0NUtMXA6uiuzibF5CdhuvCStq1U4p5bxQmmE0g2rIxBDpNqQ6wp
	Q7A1ejvUlZsK9oC5r0LK9aEY681TUUuxHDF4NinZIe8Vnac8jyAwJukB0ahacUN4wUjqeHmTnZYfq
	l6B7Yi1dF6T2gHmXv8UYN2Qzpdhi1Ndv7C5R2fdjKSRLnl/7GYIMuXwrXVmz3KRkdRZtaevep09AG
	SEgBTmJUszot/0WKVUAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWBEL-0001JF-2h; Thu, 30 May 2019 02:55:49 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWBEC-0001Hq-BO
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 02:55:41 +0000
Received: by mail-qk1-x743.google.com with SMTP id t64so2951396qkh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 19:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hXC4kHzYwJGnl8YXVUWx0puoDDwpLZgED1hwjltNjg4=;
 b=K6yWGboPMYwUdNCjC32JmzZHDaPsR9bN4M9bMJOWj6QNjlo3n58nUVIKLrzji8AhDW
 7QezzgWoWhv/YRJ2k7nX4f7ltYiLhEMyhrCUrbTEXlKVqJC0bvB2UyywYyuaFizo68zv
 ugWTtb5QNrzFd7wJvqKR8eeF8DfRbkXiaWjn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hXC4kHzYwJGnl8YXVUWx0puoDDwpLZgED1hwjltNjg4=;
 b=ZOdQ9R1teFDVZyiTNh+N5cwF0T/A1aKTccBEeaYR+854SoPB5Gxd17TFENunC63dLk
 oo+76tq7SRhvwJS/FIDoPltpbKvCkh7iD4sSlo89pF1kTtjxXm1sv0Ra30BUFCjIh/PI
 VpVUxb4rl2gga6gMnARAndLpbhroT+SaFmryyC8BIUpLsMzws2eMYigle1ULeD24howF
 7RavnL9SNMsx2fnAjBZcXnMcDZUfntIroinkigYDUKoNKEf8nVaQAS2FsjqYq827CF1u
 uYN/tZq8kwBdd15fvZOby8JZ0iMRWibkXow9TGunG7P3MHs7r8WEbL4wjyWzC35i6LoF
 jSiQ==
X-Gm-Message-State: APjAAAXo0AjCbFB7TdUb8cJyzMZJHZjPEPfSwqOdaYI/zJ8wXLeQoY9A
 KYgMju/KURgxj6A2RieI4DavOZrb6Q2RESqibT6vBw==
X-Google-Smtp-Source: APXvYqwbvVCUHkyZ1UVrW3CoWKtkXaSs4V4XiLDBo7b0pM95AINVAYXNQOY+l2q5rzTV9S+lLKzvEUHvy1askLPhD+c=
X-Received: by 2002:a05:620a:1425:: with SMTP id
 k5mr1062627qkj.146.1559184938564; 
 Wed, 29 May 2019 19:55:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190528073908.633-1-hsinyi@chromium.org>
 <1559033586.5141.3.camel@mtksdaap41>
In-Reply-To: <1559033586.5141.3.camel@mtksdaap41>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 30 May 2019 10:55:12 +0800
Message-ID: <CAJMQK-ir9J-JN9DDZPBA1nVkJUZ_6A+fY4fA6jx6zOh_9q5a-w@mail.gmail.com>
Subject: Re: [PATCH v3] gpu/drm: mediatek: call mtk_dsi_stop() after
 mtk_drm_crtc_atomic_disable()
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_195540_417323_9043DD90 
X-CRM114-Status: UNSURE (   8.47  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 4:53 PM CK Hu <ck.hu@mediatek.com> wrote:

> I think we've already discussed in [1]. I need a reason to understand
> this is hardware behavior or software bug. If this is a software bug, we
> need to fix the bug and code could be symmetric.
>
> [1]
> http://lists.infradead.org/pipermail/linux-mediatek/2019-March/018423.html
>
Hi CK,

Jitao has replied in v2[1]
"
mtk_dsi_start must after dsi full setting.
If you put it in mtk_dsi_ddp_start, mtk_dsi_set_mode won't work. DSI
will keep cmd mode. So you see no irq.
...
"

[1] https://lore.kernel.org/patchwork/patch/1052505/#1276270

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
