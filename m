Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E466A1D0ED8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:03:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7Ix4lwDmQIhC1a8dz0nUzcPOG8bjAZHVfgmAz6jUr0=; b=n3bAdbxHweXKcq
	5KYLMHjKV3BVzbNH+ZTtjY/9NCzl+M7DYS3TYxm9EnWmIcxaw9oTI8SPL6ZiFwGU253CpAWDF6UaE
	w1N4klbRxMymMESWoJzeFL86BIP+mBJTEAuTCBdK+3NiWPhfuLKr8UYAr6fA1KhgMtxDplHc98dJ9
	q28xOX21/jwU9UDajuzddceSKDyn5hTxuOwwzWvtnz7Z7eBsafTGaOzYjg0i5g2Di5oa7bnJtKeBb
	PDBxZiwGl4aOTGJyjVw/nYBlDtw6PNPzd7rkytA5quNmCnZ9ZsbfMwSS7vdCFPVpqAA1UkcMspTRi
	6hQix2RhwDTvuvDxFU4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYoE6-0002Li-Rj; Wed, 13 May 2020 10:02:58 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYoDy-0002Ku-Sb
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:02:52 +0000
Received: by mail-lf1-x144.google.com with SMTP id h26so13113259lfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 03:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2aCxmJXofWWXF7Hc0yY8XDq7DjFWltNq1d94lnkIpsc=;
 b=FiM4i2KZIvyApC6+NTNxDEVrlPFXsYzw6RVLZXT4qflN6pIIA0k8LCKBZsRqYOBtf8
 OoPskUmWqZTXpWeUbxdlLrpclL0TGUJUsYBxFTSXoOXyriXxXnF3IWjoatIFXluJLogV
 xhhINKLRwcvGlIuPlqW6Bjzk7/ua+XGA/3cHWGToX3l6EdzQ6n2BQfqE48HXHH9+qXZc
 wfbYsFb2PBCyKpU3yZv12c+hALk4nMBzt4Z9UaeeDNsjMkQlGyXUC5YQE+XjcorZDSsU
 iDOQN1RVuNbVyzQ9BNZw+AF4Dn8tbWdgswN6lQAptsOvBQhJWIK20Cp+XRGrP558LOu1
 KW5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2aCxmJXofWWXF7Hc0yY8XDq7DjFWltNq1d94lnkIpsc=;
 b=Os/oB9389MhgpZJc0179wCDhiu+1XOnLxJd20BIWfbA8FopGe3/3yOOmOHXdoo6SXM
 ++U5fW9a0VQyFi4hBiLZgSDJlZ1MhE+VgCvxpBOx0PXPKp2fQdi/rbnvXT5X6noBiZ64
 X9DOZUgm6W/C3WCwEC5+u27xWfumW0BYUbtNZmViQvdH8qQVlLQYMtaZjsNhIFS70MwO
 6E671lxJFZk7b5+nFe5oHFn2NC3DJkQrnqsYXeWWlKCTSt0NlzpMvzaDg3En/NiN1Z/H
 Mh83Y3apkBnvQqVrfZsK2AYT8qDms+mKDHbSxivmHl+yUokAYyP27XpgDsqboVI5CT9S
 5hiw==
X-Gm-Message-State: AOAM533CXm8XG7gZs7PLEdxxkxoNjCoFDrr78+iQQMqmHPCZxoxTlb8Z
 /65puUEh7UHISeyTJJp9niEdjETV3o0l7v9kjV4d6g==
X-Google-Smtp-Source: ABdhPJx16S95QuKV1iQrjHSlON/GYRqUod0w3hMx4HOwmWPFryc++fQrBz+1QzK7p6ucn4AJzZma99Yb4MdTiDAon0k=
X-Received: by 2002:ac2:44bb:: with SMTP id c27mr14866106lfm.40.1589364167487; 
 Wed, 13 May 2020 03:02:47 -0700 (PDT)
MIME-Version: 1.0
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
 <20200425112950.3a4815b6@why>
 <6fd3d96181ec53f735ef1b6a79d28da1@kernel.org>
 <CAFA6WYPNNNZeX5zpadayfiZ7P_mHmiREpUd5LZ3Jp+TjGVqoEw@mail.gmail.com>
 <ac57cb4bbb6507ee98f199d68a514503@kernel.org>
 <CAFA6WYMheJxeKVC_YWN9owNJhcWTBsaOCvZXxq=GVj5ROJ0cvg@mail.gmail.com>
 <20200430101322.420e4052@why>
 <CAFA6WYO+NGLfNkOah4YzXx5XuaDh=QtWHgnMBwwMFY1zRt15GQ@mail.gmail.com>
 <CAFA6WYPxiwxpJitX7fCSESUvQSa9Dq89GwL4e3w33ooetV=ysw@mail.gmail.com>
 <CAFA6WYOn+DLf77C1+e5bq-NdT+o4=o32oPu2b3bxD_U+mLQ3WQ@mail.gmail.com>
 <306aecc560a9503e500fbf1f512c6d30@kernel.org>
 <CAFA6WYPHWP46TY_XdxVVrTr6AChU_1ATXu+p32vXCjkaXWPWOQ@mail.gmail.com>
In-Reply-To: <CAFA6WYPHWP46TY_XdxVVrTr6AChU_1ATXu+p32vXCjkaXWPWOQ@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Wed, 13 May 2020 15:32:36 +0530
Message-ID: <CAFA6WYO3=BHX1exF+J=93ECnQFe3S5O4HrT4t14euw3t9PXE7A@mail.gmail.com>
Subject: Re: [RFC Patch v1 2/4] irqchip/gic-v3: Add support to handle SGI as
 pseudo NMI
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_030250_954364_DEF5BBBF 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>, julien.thierry.kdev@gmail.com,
 Jason Wessel <jason.wessel@windriver.com>,
 kgdb-bugreport@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Tue, 5 May 2020 at 17:03, Sumit Garg <sumit.garg@linaro.org> wrote:
>
> On Tue, 5 May 2020 at 15:38, Marc Zyngier <maz@kernel.org> wrote:
> >
> > On 2020-05-05 05:09, Sumit Garg wrote:
> > > On Fri, 1 May 2020 at 18:33, Sumit Garg <sumit.garg@linaro.org> wrote:
> >
> > [...]
> >
> > > In case there are no major objections to this approach, I will post
> > > complete v2 patch-set (alongwith Marc's patches) for detailed review.
> >
> > As this is still a work in progress (I'm currently wrestling with
> > the stupid RPi driver), whatever you have is unlikely to apply on
> > top of the final series.
> >
> > I'm not going to stop you from posting the patches, it is just that
> > they will be obsolete by the end of the week...
>
> Thanks for the heads up. Will wait for your final series.
>

Were you able to give a final shape to your SGIs related patch-set?

-Sumit

> But while working on an NMI request, I noticed a hack in common gic
> code [1] which basically enables all SGIs for every CPU by default.
> This hack is quite similar to mine initial hack to set priority for a
> particular SGI by default to act as pseudo NMI.
>
> Due to this hack I got following error message while configuring SGI as NMI:
>
> [    0.000000] GICv3: Cannot set NMI property of enabled IRQ 8
> [    0.000000] genirq: Failed to setup NMI delivery: irq 8
>
> I think chained IRQs worked for you due to this hack only as it
> doesn't seem to enable SGIs per CPU.
>
> IMO, as we shift to SGIs being standard interrupts, we should also
> rely on standard interrupt framework to enable SGIs. So it seems the
> correct way would be to use "request_percpu_irq()" and
> "enable_percpu_irq()" for configuring SGIs as demonstrated in updated
> commit here [2].
>
> Also, we should get rid of this hack as demonstrated via commit [3].
>
> Apart from above changes, there was a minor update needed for commit
> "irqchip/gic-v3: Describe the SGI range" [4].
>
> I hope these updates are useful for you while preparing the final series.
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/irqchip/irq-gic-common.c#n155
> [2] https://git.linaro.org/people/sumit.garg/linux.git/commit/?h=kgdb-nmi&id=e208979b5165d753d144db57e0cb8646fdedc495
> [3] https://git.linaro.org/people/sumit.garg/linux.git/commit/?h=kgdb-nmi&id=cd6d0d7cea14ac16156f0dbd297940df382f8cea
> [4] https://git.linaro.org/people/sumit.garg/linux.git/commit/?h=kgdb-nmi&id=1180e9c54547ec05d96cc6b36c26005059c90d9a
>
> -Sumit
>
> >
> > Thanks,
> >
> >          M.
> > --
> > Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
