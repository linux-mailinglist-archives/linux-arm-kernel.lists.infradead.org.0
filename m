Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4565B193D9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 12:07:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkudrjEjkypIZ8ikGPsb5IWls2BLKIst2ueYskHUrUY=; b=sCZpY0E+MT7wUH
	AjhPnov2hu1ySve8sCwRbnz+siPHl/xG3wbbMnTSaa5fiBseTptpPZ8CBQvUqHNsjkb1c2PA8N2EE
	Qn6mR32U+EaSYiYIlKBbQvPnWNj3I0AkrG5a4Gku6c8HJZKd8coZf8eXiTDMc5oAYho0TaJ3IU488
	OltccaAt5Qhg3dlkRsz+1ZeqijSHuKk9loWZe+ZhzctMXlgPTCvxcHTTCeiPfgkU00QGjCmp4yZqW
	wkZA/au71fFlPjG6FpKJ20bjt+y95Xkt+mMWjS/k51fUMvxcfq8SOwCdH5ln+IjX8/lb4m0RE0jjL
	JoNPuh7GlpU6tMxwz0JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQMC-00085N-3f; Thu, 26 Mar 2020 11:07:28 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQM1-00084K-UX
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 11:07:19 +0000
Received: from mail-qt1-f176.google.com ([209.85.160.176]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MEVBc-1j2cVV1wDq-00G4q1 for <linux-arm-kernel@lists.infradead.org>; Thu,
 26 Mar 2020 12:07:15 +0100
Received: by mail-qt1-f176.google.com with SMTP id t17so4786578qtn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 04:07:15 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0piyLELFeKxCEbu2BrZ4Y0hZfNjByb+oujqHYewDMiHW/gKg0h
 twb2r4GT738m7/Chns8zwF5YzL6uTs1nuPqDF3U=
X-Google-Smtp-Source: ADFU+vsauIMn1HANI4rLiudPV5R6gi5DYVcgBlL8wZTq3fkMCxAt4oEZzNrRjgAq/uoQkrcXg8Zjy2w1vCbkQYHHbc4=
X-Received: by 2002:ac8:16b8:: with SMTP id r53mr7632032qtj.7.1585220834376;
 Thu, 26 Mar 2020 04:07:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
 <20200325113407.26996-2-ulf.hansson@linaro.org>
In-Reply-To: <20200325113407.26996-2-ulf.hansson@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 26 Mar 2020 12:06:58 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1Jy-DDCB6Ub9hoshhRZWFbF4W75M6P1q9dNTyt=JoV5g@mail.gmail.com>
Message-ID: <CAK8P3a1Jy-DDCB6Ub9hoshhRZWFbF4W75M6P1q9dNTyt=JoV5g@mail.gmail.com>
Subject: Re: [PATCH 1/2] driver core: platform: Initialize dma_parms for
 platform devices
To: Ulf Hansson <ulf.hansson@linaro.org>
X-Provags-ID: V03:K1:QKiSYiaI4RzuFtFGXQvinFYIHrrLI+51hLhnJn4ioccfFicwnE4
 dyZVXVm5L4CQB0GrtcAxAsLkz4Cg/uqUN3G2zVoPWp+h4FIjS17WzsZ8y/3OryjtJiVbi0b
 FSUUw2GAlmqY5FRL4RVpo0RBDXFQZUxJSdUoSIBrI144sIvaFsRWoDLOkyrU+Qskr4Xlvlb
 LjsXluphEonCMQD4UnBGQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:s8FZwwwGlfs=:z64tp4i39f5Hcz6+8QBhSg
 7N0LA3dL27IsAk0JAlG9gIVYrrzKmO/LWj3tH3gCHlBUvZdEAaIu6dsGbLYi5FuQ6oJ5h77J0
 pOOxpVp/kdrR9nnyVRuszU5ZbC0Jdf1S5uU/wZVlI8l1JZM3/W8ZlY7EfdeqJsBxhbSqVXCxT
 /t5/hW3PLq5EtLNP6hF+KzSVYFDFlkbZtLW2kEm/fx+WRUGhNJxeXeHvmhm54fUMGvoMFZEXQ
 WqqfCn9Rq8yGFaEuOx8Azni0+nZEmZOCh5BI70LA03f4a9Zn/rRqBHDtIGHVpLwpXWd+Yg6xY
 1puGm1urkM5lgYy6paCQ+syk+M6seYIQ0mt3yHt95Vp4+opuO8kZ0BoSJgDCC4mgZXO9y5u4P
 kP4dO1II36OSkAx1w88+soKHVzgpI5ZkX3ZwWuY3wyAY60E6uuoYIV4nQm4j0OTX+6BLwkFoV
 zgUnwAxR53WSXufgavQLF5C3Egxe9kP2XMtPPb4Arpxvt+6I5Vx+9tgd5K/RziYuHR1NM6i8R
 79M1PhEI+smqQtxISTJdC0zpfhf9Npy5j0GeRaQ/5VZ75/XO0icsSio098Rn6IuopkbYW7AI0
 YSv6i4SREliAU6NXecLwDwN479u+eSImOrJLJdn7+HifwpydcDttWyIn0R3Tsn7BD1XqAw6Gg
 Jbgpv/1OAsFC03k2hVe6j8PURkoP9lRwRY3Z+jjvrIZCAxmFHPT+w3Oj3UdMyVPyMzFEhu+1q
 pGCEio3IaR9M292vYQNdReeK72+pHa8QITaYCWIbvFwvUqeBtrpL+Vevf0fFvgb8aURMqiH/O
 9j29ouTS4I/TsDAQ+WymLVgvMvZo30BNDligKoc75J4eBvUYYI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_040718_423060_B48F8E25 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haibo Chen <haibo.chen@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, dmaengine@vger.kernel.org,
 "# 3.4.x" <stable@vger.kernel.org>, Christoph Hellwig <hch@lst.de>,
 Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 12:34 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> It's currently the platform driver's responsibility to initialize the
> pointer, dma_parms, for its corresponding struct device. The benefit with
> this approach allows us to avoid the initialization and to not waste memory
> for the struct device_dma_parameters, as this can be decided on a case by
> case basis.
>
> However, it has turned out that this approach is not very practical.  Not
> only does it lead to open coding, but also to real errors. In principle
> callers of dma_set_max_seg_size() doesn't check the error code, but just
> assumes it succeeds.
>
> For these reasons, let's do the initialization from the common platform bus
> at the device registration point. This also follows the way the PCI devices
> are being managed, see pci_device_add().
>
> Suggested-by: Christoph Hellwig <hch@lst.de>
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
