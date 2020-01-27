Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC84E14A735
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 16:30:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wB7/mnTyUZXi6Pk1ll/ekt/u2VlTUBfFeMeofOMDr+E=; b=trxkUQ9RBqe3kV
	jWyj/FttIE8yhvFl1a5ayWQKluxfMkXP1utOgC/NYSncpt+BMO6CM7GjsyITQt7Qe74jW3tpMFplM
	Sa9JzMJWvNhXx41iSCKnxBwccrDyAMcOG63C6ThXPpsAmCkSKOataqzR6+6TFwT6/T4E0noMUsDlc
	OwwlyRCfUr81SPTfWwIrw/CyvpXDwt6U8tkw8SFRePFamM29J+Wz2zPJb6/nrfHwMz9mWydA9TZpe
	V2ibfvSqhE8i1WlBZbSZjlB/3XTBjU4OyeeinpZLDWQf+4ZiwV/Nq5jehmheZUJHw5IhEERnkCqJj
	7iIBKF5nPK2UObmBZxHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw6LI-0001eI-Ls; Mon, 27 Jan 2020 15:30:24 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw6L9-0001d4-UG
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 15:30:17 +0000
Received: by mail-io1-xd41.google.com with SMTP id k24so10417546ioc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 07:30:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H+HbYUDwgKuCOSy+aJjuhYF3MTJxsThpdJHanyjF4dI=;
 b=MeVeM4EYm20gMljITQy3vTouYPSfBaw/cGVF8xMGBCQ4+GtN6aZPZ4H8d/lQn4hi1/
 OQSy3DuTy0+CWMkk38KoEmIuURqqgcjI3LxCjkO8wbSZspDincoM69JfFXTIt9cXUCcA
 YW4OAwhSiXd0d25gVcJxuQj+6r/MMK+h+rv5G17UIXux2NO3b8lRoazCKYdN36ZhEo+8
 U/2RpceyAosWagi8zWLwQ+GkGoyNCPAD5hG0GCmhwooMYES1IpfgPBaYTXqxlvNqpH2r
 xVhEJU+gDNJeCD1A6Jx5asWcEWiHUhrC0yEQBXKvlqyxGm9Tjez/3G+6DfoxpBRzJ3qy
 LAJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H+HbYUDwgKuCOSy+aJjuhYF3MTJxsThpdJHanyjF4dI=;
 b=QRmkbQl42cpck74kJff7hXmuMV02LAbxmh/oxGT7nf+8nzgMr/jwB2MhVLsHaiL6q8
 TXw6TTqlBCWrwqVPKXddZ4DJrubEPLvYFAYc+OOUCaAIV7HLLI6C7nwRwOf6oX38DqXE
 HHXeS+4Y+XjHNjthSOy+jzlr96TSGY/fPlpkw/TRWPRvyYp8LrMKBpSCvNUthpEphvUl
 POhX3ml07aR6CK3DCm5wzPBJ8ar28TRM3sjqqkHAneTkz5fVpWpS7ILcLDEqfYzrUgFM
 poN1kNSi/RfmPkh1Iq941mnxk0kEKcU3x5QJNWrpL+rKYgTjEFsxsOALdzR/Vsn+L6TW
 soww==
X-Gm-Message-State: APjAAAW9fKwKeFYli3yHkMEUFfHh4+YJDN8ibkee0dGcMA4z7GrA83rS
 XQVbd2k8N/41ox921CRde7X2zlThhIM/zGlZ2yL0oQ==
X-Google-Smtp-Source: APXvYqyeTx481j8L0pBPzR4K6Eoy9fuMn2DYeKU7tHVSTxRPDNd6UROEotFeT6xos/dV5wVn0ql5tfPpBYj13Ua2n/I=
X-Received: by 2002:a05:6602:21c2:: with SMTP id
 c2mr12046135ioc.278.1580139012045; 
 Mon, 27 Jan 2020 07:30:12 -0800 (PST)
MIME-Version: 1.0
References: <20200124092359.12429-1-peter.ujfalusi@ti.com>
 <20200124200811.ytgs66cg5qpugi5c@localhost>
 <12f40648-fec6-9179-1f62-0a648996ed20@ti.com>
In-Reply-To: <12f40648-fec6-9179-1f62-0a648996ed20@ti.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 27 Jan 2020 07:30:01 -0800
Message-ID: <CAOesGMiFw2V6fdbGCOfgsVq+WK-4ijdzivDdX3hbS2E=bO4zkg@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable Texas Instruments UDMA driver
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_073015_997912_97EDA637 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, SoC Team <soc@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 2:31 AM Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
>
> Hi Olof,
>
> On 24/01/2020 22.08, Olof Johansson wrote:
> > On Fri, Jan 24, 2020 at 11:23:59AM +0200, Peter Ujfalusi wrote:
> >> The UDMA driver is used on K3 platforms (am654 and j721e).
> >>
> >> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> >> ---
> >> Hi,
> >>
> >> The drivers for UDMA are already in linu-next and the DT patches are going to be
> >> also heading for 5.6.
> >> The only missing piece is to enable the drivers in defconfig so clients can use
> >> the DMA.
> >
> > Hi Peter,
> >
> > We normally like to see new options turned on after the driver/option has been
> > merged, so send this during or right after the merge window when that happens,
> > please.
>
> Sure, I'll post it later.

Great!

>
> > I also see that this is statically enabling this driver -- we try to keep as
> > many drivers as possible as modules to avoid the static kernel from growing too
> > large. Would that be a suitable approach here, or is the driver needed to reach
> > rootfs for further module loading?
>
> We would need built in DMA for nfs rootfs, SD/MMC has it's own buit-in
> ADMA. We do not have network drivers upstream as they depend on the DMA.

Ok, so that can either be turned into a ramdisk argument, or into a
"we really want to enable non-ramdisk rootfs boots on this hardware
because it's a common use case".

I find it useful to challenge most of the =y drivers to make people
think about it, and at some point we'll enough overhead of cruft in
the static superset kernel that defconfig today is used for such that
we need to prune more =y -> =m, but this particular driver is probably
OK (it's also not large).

> Imho module would be fine for the DMA stack, but neither ringacc or the
> UDMA driver can be built as module atm until the following patches got
> merged:
> https://lore.kernel.org/lkml/20200122104723.16955-1-peter.ujfalusi@ti.com/
> https://lore.kernel.org/lkml/20200122104031.15733-1-peter.ujfalusi@ti.com/
>
> I have the patches to add back module support, but waiting on these
> currently.

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
