Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 490901ADC77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 13:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01ZH5OcCV1/gXUezn5bYiWccFnuLTHfZ1knNevTIhs8=; b=ajuT3FHiAUMVtJ
	sI265dXTzE0QwmCfdAhAGrs6umpLRQeorvxr8tiiHDnJwVRnwtX/mR9DOY9pKi1mZ/fyae4R7U+tn
	yjCkqH5iq3BkfJjbNVbCS1XlgCvUVY0RtHo/QxBaX2aYUXfj41dsNXPThxYGA+dDL3JmnvwP+5mux
	OZoLu64wBDzEXaLZBaUWoF60YGZTHI3DAfaTALxhZWtrr01f0y2qNVnUQshRqabgJIgjbX7J62q22
	WpszVbuIB3fd0ENLjHazPpREYBTVHYrg7wKRn0ORdOtkR8okx5jjpWM7GD2SHe/xJWzrNBisLASOW
	OWr2GTJcbxT6nSx2xVQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPXI-0006Ll-SR; Fri, 17 Apr 2020 11:51:56 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPX5-0006K8-Ho
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 11:51:47 +0000
Received: by mail-ua1-x944.google.com with SMTP id c17so528236uae.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 04:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fOHFM9elPBqZ53StmEbbuJGOBdc8SihR2GSmdzRs9uY=;
 b=fMBCf9rOwilC1Z6Zixv2jAkeDoBbxoQeuGNlsPNTLbDswvHwzz7iLxOphekUuKVqeF
 Qn0ggF1zoOm+Or2djEeeJGzuDDFRF7v1IClvr+VYsYw0IMCAkP04EfKMZRjblTi3rOJ7
 wYWU51MpN6ZElokLiqRmQN7mHlbC890Dl+mpo8TLTrcZzqyDcx4wjqHcSd2SApybyb8Q
 7Bewaw/qrHUFuEXg5kdULw5Dfr6ub2RuVOD6TU8NZyzuo02/mjevhpdMd53w6KaIvMFE
 MOXrJDBF6/Es0NfS4DM1SdeFWa+bj4mz/t//QzlwvAiUPZiGZkQlwsDIpD4Yc5vwJllI
 CzMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fOHFM9elPBqZ53StmEbbuJGOBdc8SihR2GSmdzRs9uY=;
 b=AzbLkbGbVYsyUSV2jviYEfIa7iAWcAQmYXwVTcPLwGEF6/Cv/p/3dkobUP5txNTiey
 r7iXiazxP8HWZ7Pk5+CI+3TjIseLYBYenKcww56kvItx79cXGoN8b++eyqXvycbkO2gp
 8atC7mA1kQi3Ertp1QBFzWnuV6hLHTajPCayKqDsRNamwIQPvDI1lGTKukx0dNgR7Wjz
 AOfclGk41h1X7miowQhkKMOuacZ6XsRgQg7UiNMTo7rYVsZ4s+vDiNcgpIvCb4lCRAxi
 TN3JgpXuOxiO5fE2w2MHrrCsyCygLRz3LYjlO7YjyIW8b9RaUZHezC7Uee2pBaLBQeiS
 Tcig==
X-Gm-Message-State: AGi0Pub3nduCSxZ9Vnuge+tX1PK1niAQ5T5BcuPGj+1Ql1hyjO/i15jG
 EGB+OefuP6ytIV0hTlIY/l7G/SqTcpfLwf3ysKpBLg==
X-Google-Smtp-Source: APiQypJptyO3Q188LiC+lVglCDgxEqyyiuLnTQxJkuIYhQNrcbVh5T9dEoPww3VYf1pU7et5uyG7m7wgsnLScU++FZU=
X-Received: by 2002:ab0:6449:: with SMTP id j9mr2012699uap.19.1587124302013;
 Fri, 17 Apr 2020 04:51:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200331183844.30488-1-ulf.hansson@linaro.org>
In-Reply-To: <20200331183844.30488-1-ulf.hansson@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 17 Apr 2020 13:51:06 +0200
Message-ID: <CAPDyKFoVMBFTRJbEi-bjzeeMgi+z5xsBpBYteF=duCMb0Zxdhw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] amba/platform: Initialize dma_parms at the bus
 level
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_045144_100783_48D156EA 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Rafael J . Wysocki" <rafael@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Haibo Chen <haibo.chen@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, dmaengine@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 - Greg, Arnd, Linus, etc,

On Tue, 31 Mar 2020 at 20:38, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> It's currently the amba/platform driver's responsibility to initialize the
> pointer, dma_parms, for its corresponding struct device. The benefit with this
> approach allows us to avoid the initialization and to not waste memory for the
> struct device_dma_parameters, as this can be decided on a case by case basis.
>
> However, it has turned out that this approach is not very practical. Not only
> does it lead to open coding, but also to real errors. In principle callers of
> dma_set_max_seg_size() doesn't check the error code, but just assumes it
> succeeds.
>
> For these reasons, this series initializes the dma_parms from the amba/platform
> bus at the device registration point. This also follows the way the PCI devices
> are being managed, see pci_device_add().
>
> If it turns out that this is an acceptable solution, we probably also want the
> changes for stable, but I am not sure if it applies without conflicts.
>
> The series is based on v5.6.
>
> Kind regards
> Ulf Hansson
>
>
> Ulf Hansson (2):
>   driver core: platform: Initialize dma_parms for platform devices
>   amba: Initialize dma_parms for amba devices
>
>  drivers/amba/bus.c              | 1 +
>  drivers/base/platform.c         | 2 ++
>  include/linux/amba/bus.h        | 1 +
>  include/linux/platform_device.h | 1 +
>  4 files changed, 5 insertions(+)
>
> --
> 2.20.1
>

Does this look okay or is there anything you would like me to change?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
