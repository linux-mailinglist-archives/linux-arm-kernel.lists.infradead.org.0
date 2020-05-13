Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB661D0624
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 06:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTBjL9zEdGlSCFnB6oBkM2KrwlFI8rWVF/w2n1ePRsY=; b=ZhX7uxc9UYijCV
	tW0NPXDUibP5ZWq+eOo5Qczz2/ZGjoeJBKIFN4j7h5bgL4Mqt04mqRr8Y3IWDoUYJjHQTrKCJxSKt
	DZHSrxZgYKNyTJ0u0XU6IjCSSBarNWt0NgCb35moqv2IiQJQkHrks2MJ/eyL2CbsLhldAC/Es5hTL
	lB49ZZUb0U6HIfJxOHLoLxBjLKzBeJLV967SSoDoHiqN3zgQSbINMm4iy4lMFPFuOcJpa65XUfM7a
	MRzOZcwJpvrfdWNKRTA8Xyk4WYsmfOkiMUGxobdc6mTqXG8NQAmXVFEqKW14os/NzScwis+/DAcwU
	2+1I35RYLkg5ZaobkEoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYjLT-0002zG-0E; Wed, 13 May 2020 04:50:15 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYjLB-0002xF-5X
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 04:49:58 +0000
Received: by mail-il1-x142.google.com with SMTP id j3so2358192ilk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 21:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7avQntptbSyfVNcjEHEawGHu0ZA5SFwdwGmNt7UNNE4=;
 b=VZXeZxeSkNdl8aWyx4AKhpe+/+yWw4K1AFsNSfSLvZIPTWB9V3k7ygHClGGUvzus2W
 8Kjj1xRmgufSy5p3p5oBvoY8dwp+Ev2OJRUgQQo0Q55Br3c4Y24CxHrlhnISy8mHK51X
 xWjqOBLcJsvmosULWYiVc0Zjoq/UJildgMh+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7avQntptbSyfVNcjEHEawGHu0ZA5SFwdwGmNt7UNNE4=;
 b=jFt46N8f0FZUiPo08/6P5OHSsTQQub9U8ctQvnPfU7Hp8W0tY9c/GuvVq5RzKZX1lR
 d2a+sLR1ReWKhwBmblKtO1hxKa34VEBSjENfOUznMzaKPEnXz7Swhehv6t8aElSGSPLT
 /tuk+8P3lNcY275fVaQ2EC6oXZpofzSU0F1ogoLeHucDbP6BeMheb8P8SzWeE8q7GbBW
 gEL1IqTqSX+veCvfRgAMm0MV0BTuq7UgWB0mCo1f8viQOV36JRGL3g6D5+ztyrCUJD4a
 AOGia3d2F7jh2NIOafT5Sknb/G6pHZ8o26V2Z7EZA2yk7OXo18CtKV24arbOIiKQVAc7
 jOCw==
X-Gm-Message-State: AGi0PubkFoldwei2aNSUSo/1YSLUXp2MRPqEV5f5Cz8FwywnXur5PGbu
 i6QVM/i3uENi32tF6G/MHk8aqw20jdCZdtuF7+iTgw==
X-Google-Smtp-Source: APiQypLW4XrYA+YX10To7LSSFdH/pr6GwbWp+XKOzx9CNfSJM6J+CCr0iqX9Ux4YXkSF3w5tC6rtWCABka5M+lXvzeY=
X-Received: by 2002:a92:1949:: with SMTP id e9mr25726680ilm.106.1589345393815; 
 Tue, 12 May 2020 21:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200401201736.2980433-1-enric.balletbo@collabora.com>
In-Reply-To: <20200401201736.2980433-1-enric.balletbo@collabora.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 13 May 2020 12:49:27 +0800
Message-ID: <CAJMQK-hsneV5FdyTHBvLV4pxfGWC=c8mLsH_c5KSq2LsCLGEww@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] soc: mediatek: Enable mmsys driver by default if
 Mediatek arch is selected
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_214957_233678_2A0515FB 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Stephen Boyd <sboyd@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Matthias Brugger <mbrugger@suse.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, matthias.bgg@kernel.org,
 CK Hu <ck.hu@mediatek.com>, Collabora Kernel ML <kernel@collabora.com>,
 linux-clk@vger.kernel.org, ulrich.hecht+renesas@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 2, 2020 at 4:17 AM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> The mmsys driver supports only MT8173 device for now, but like other system
> controllers is an important piece for other Mediatek devices. Actually
> it depends on the mt8173 clock specific driver but that dependency is
> not real as it can build without the clock driver. Instead of depends on
> a specific model, make the driver depends on the generic ARCH_MEDIATEK and
> enable by default so other Mediatek devices can start using it without
> flood the Kconfig.
>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
