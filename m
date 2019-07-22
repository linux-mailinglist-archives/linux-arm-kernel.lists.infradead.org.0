Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C38B70560
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xB7vCA3scY/WD45qJLk5UHBOSdezaV0MnpLQRxA3wEM=; b=Q3Gu857S2ltu3d
	Pg5KUfGxAoD8p1Bq5ba4GVDGHVgTwHOmKQQgK/Dl/3zc3UjOWkC3r5PV8rJSeixzvLdcvyvLWgV4D
	5VgXkMb86dbJS0GWJAMZG0OVklOsgTtCkDbRZqXc2U0WWF+wKrXPKimrkaHe1eVnXK8/czcLNmIgl
	/cpGKGJFJxqUxKIZWplXrbvTjiBhuZUjFifXfsqOyhfPGuRMiLAGK5yTNB9JodG70Ye7D66YTB9Bz
	ajYS1upIXtEYHfgLuVlWNpL0dhXmj2igl4uYOlbl8QyD3zyThYhknKAnWmpjUrADvDdyjzNwhQWMD
	z2ngWPMMxTDcvwXESbmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpb6t-0008Lc-27; Mon, 22 Jul 2019 16:24:23 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpb6X-0008L1-DP
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:24:02 +0000
Received: by mail-ed1-x541.google.com with SMTP id k21so41175056edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 09:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3hF/yndw/9iMn5LkMnQIXmMVSvMqJPR1brEffSYKm5A=;
 b=KnzCgtP91QMek3camJEsYfFRzzhuY4Ww/kLXQ31e1jHO+Ezf8mtZJ1b/1iPepH5PzA
 WLLtRKyA5QthErKxn2tF0Gp0gca80dViEGu/6oN7tEaFWByHj6r+IEwyftgUsNkIOpHl
 JAUlt9nmfr6P5a/kge2fwtxnHsSv2e1+E6SfgC3Tnn0ICjHm/4bMEpCZEzQiQrPCpaCW
 GHHNZ0VKd7LuZ/87R8EIRqfsE6HY8J5t9Ll0BvPzxanzyUbqzeB2GTKZSim73zw4T0pA
 JVrnux0f6lCz8yxLBPH+cwJVhcAanqTqw8Lr6c/6k3uMPn1grsr3ZDG534fKF4wPVAX8
 JMUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3hF/yndw/9iMn5LkMnQIXmMVSvMqJPR1brEffSYKm5A=;
 b=BSU16N+IViC4r0uqZ2DWQ1F3z9tvhCwYWs5UDHe7TF7ByUSlzUDV6S2ObT5lpt2Wh2
 Nycqvfi07SDie/liKuTN/jgXJ3DCF6nM8evrbigkydWVLUWDaNchwpjGoc4E1faF+/bw
 Kb5UpsuweZbZmcA519s37LNjOIyJ5nGR9xYiD9O3RzfBZpnaR8DW6WD+op/MMd1VgB+/
 CRkUtIzfIRRyfoIdx0F0/SnK/k6ykmDDtw9H7g7rb+6rPV+xAqGz44aQ1Y8RSa2oWEEJ
 ST/szKGg9sFqqMdm961RWBxhXFC0jcm1kuvJRyuPPoNYeHqCzu/yqa/hXU83HvKjhEc1
 yz7Q==
X-Gm-Message-State: APjAAAUBA27RPWIBUHcE9ih0/uoXEiBMEh1T8DQNwK5TWyBVeW3mDiMq
 pYL6FVqtKUmzPpNEHnt6ldZxrXkn9vu2TwyP2uU=
X-Google-Smtp-Source: APXvYqxvnE7n6rBYLjaXH+rbNyXf18kfTJLS/GQKcpYfbikX6ihBKV75fxCtNZ4ZQvBC7LjyrvO+CjV4KyuaPK440ZM=
X-Received: by 2002:a17:906:3612:: with SMTP id
 q18mr55088125ejb.278.1563812639299; 
 Mon, 22 Jul 2019 09:23:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190702202631.32148-2-robdclark@gmail.com>
 <20190710182844.25032-1-robdclark@gmail.com>
 <20190722142833.GB12009@8bytes.org>
 <CAF6AEGvJc2RK3GkpcXiVKsuTX81D3oahnu=qWJ9LFst1eT3tMg@mail.gmail.com>
 <20190722154803.GG12009@8bytes.org>
In-Reply-To: <20190722154803.GG12009@8bytes.org>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 22 Jul 2019 09:23:48 -0700
Message-ID: <CAF6AEGvWf3ZOrbyyWjORuOVEPOcPr+JSEO78aYjhL-GVhDZnTg@mail.gmail.com>
Subject: Re: [PATCH v2] iommu: add support for drivers that manage iommu
 explicitly
To: Joerg Roedel <joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_092401_491341_3EC33DFF 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Clark <robdclark@chromium.org>, aarch64-laptops@lists.linaro.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Robin Murphy <robin.murphy@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Joe Perches <joe@perches.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 8:48 AM Joerg Roedel <joro@8bytes.org> wrote:
>
> On Mon, Jul 22, 2019 at 08:41:34AM -0700, Rob Clark wrote:
> > It is set by the driver:
> >
> > https://patchwork.freedesktop.org/patch/315291/
> >
> > (This doesn't really belong in devicetree, since it isn't a
> > description of the hardware, so the driver is really the only place to
> > set this.. which is fine because it is about a detail of how the
> > driver works.)
>
> It is more a detail about how the firmware works. IIUC the problem is
> that the firmware initializes the context mappings for the GPU and the
> OS doesn't know anything about that and just overwrites them, causing
> the firmware GPU driver to fail badly.
>
> So I think it is the task of the firmware to tell the OS not to touch
> the devices mappings until the OS device driver takes over. On x86 there
> is something similar with the RMRR/unity-map tables from the firmware.
>

Bjorn had a patchset[1] to inherit the config from firmware/bootloader
when arm-smmu is probed which handles that part of the problem.  My
patch is intended to be used on top of his patchset.  This seems to me
like the best solution, if we don't have control over the firmware.

BR,
-R

[1] https://www.spinics.net/lists/arm-kernel/msg732246.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
