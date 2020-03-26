Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 205E6193D8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 12:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F09xqskeAFJ36ZROdg+EZHAvWM4tzkTPr0XB2H4MngI=; b=sl3RooGDSifKit
	L74ecQZK5FNnIQU1aC6dJUcPumjeD20ymyUsSixsO7ooq1eP9zgHMvLHK2EBS5tIqW0/X/ZnWo93g
	YnycFbgy2GcRZG2P6jVhCDRrfJmxrtsQvGWgozHgoayXefHOwmJNWFrKC2w5xs8IvxM46//2ImolU
	y7bBYwEvxzF+o9hc+sexWIAuRWIKebLU8N46DlemDYKu4RLzQvNL8pSNIq2v6A7k6pBz9vntNSmmZ
	F18FTOUe6C4u9HqLDwKZQGYwS2S+fz/gvxAqCuZnHjK4jJ2V0sFEhftnxrByIZ6ets1JGdqj1vXWR
	R7GLJQizpJasZ/fKHWnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQI1-0006PK-NC; Thu, 26 Mar 2020 11:03:09 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQHO-0006F3-6I
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 11:02:32 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so5904106ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 04:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dBYI2pw9sfGjCi0bzv0yJEEWCyqkyjizmfbFD6llCpw=;
 b=wTmRLYkaXfjcDQz+CdaZDxndUCSZxc+ZmhUW90ynmlTOSPwHaSPR/ClhO/nWxAf7KV
 4qbWZyni701zQEPh+GULzYXBJxAUVIBHjJXNvg5C3+il+bmdr2lje+8Fq7GiQ+0JtyfK
 eHrlGTE66PPY62wp1VinlnBxYkMI9JO103TdN/wSPU6ZndMqYfHMyxZNKAJ96zdibjd4
 d6P/2e2ei6EJUpHWQRRHplaPcdSfQB/WJgmBVQ0EF1EJNGJFGusx7B6eHWAMA+66upts
 /8YOfHxZHJrkiw4F/7IWsJMqiYVYzTsmxEJUtQZNq9RvgaoF57MbAqhJQ90NjUkol4Ii
 5+vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dBYI2pw9sfGjCi0bzv0yJEEWCyqkyjizmfbFD6llCpw=;
 b=IPnOWMYOJGd0qdf92v/0W4bKiwxDTeCpPagTmlpM20h3AARacpZdczbEBww6kHyoOx
 WoAWVToZuuIqgWQ5xxByRbXzQFIOnjNvY99taejEW/QUi5qCwo3kto2m0AZRQ51AYfuS
 zBz1hDu4+Aprwi7cVoM/T6/QdOxAxQzM/rYYlxXKYbPcXY/yURYMIo4zYWDUVd90ijQp
 a5cGL5mXtgm1kRU3ZRvv+Yx7b31dN3QaBUyiX01ItwhROKtGMRz6DzmMCD6VG9sG4OZP
 HrDHcoPt/aNe5r4h0rj9b5R0CiF0g/I8SCTKBGEDkBnHy5pj0U2nengoSwgYbKDZRfYJ
 FsZQ==
X-Gm-Message-State: ANhLgQ1h37XYZaBKHzM0j4OaFE82rAaNm5PtKEQBgIhWq5kw6VdyPved
 RBojKrEZMHXs2BzlhHvFXAb/LOIslt0t85Y0AMxppA==
X-Google-Smtp-Source: ADFU+vuAu4NKjgOw04+YhFG4R26tuG7+/x5c+7Ylo0beaM6wZX++zLVCej8OOV3pch4cA7VonOGw2KOeqtn4XOjj9jY=
X-Received: by 2002:a05:651c:445:: with SMTP id
 g5mr4725550ljg.125.1585220547769; 
 Thu, 26 Mar 2020 04:02:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
 <20200325113407.26996-3-ulf.hansson@linaro.org>
In-Reply-To: <20200325113407.26996-3-ulf.hansson@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Mar 2020 12:02:16 +0100
Message-ID: <CACRpkdYVTyViFk9CWwQsfLxsNRbinJs=wEX=th6QVH-fL_YQ7Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] amba: Initialize dma_parms for amba devices
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_040230_387643_2F3EE8D0 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>, Haibo Chen <haibo.chen@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dmaengine <dmaengine@vger.kernel.org>, stable <stable@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 12:34 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:

> It's currently the amba driver's responsibility to initialize the pointer,
> dma_parms, for its corresponding struct device. The benefit with this
> approach allows us to avoid the initialization and to not waste memory for
> the struct device_dma_parameters, as this can be decided on a case by case
> basis.
>
> However, it has turned out that this approach is not very practical. Not
> only does it lead to open coding, but also to real errors. In principle
> callers of dma_set_max_seg_size() doesn't check the error code, but just
> assumes it succeeds.
>
> For these reasons, let's do the initialization from the common amba bus at
> the device registration point. This also follows the way the PCI devices
> are being managed, see pci_device_add().
>
> Suggested-by: Christoph Hellwig <hch@lst.de>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
