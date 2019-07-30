Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E740E7AABD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sm1qaf9ahM9erHV7yPpUD+GIsaYBd3mq241F+3jduW0=; b=ld0dJbjBuei8y3
	eqdc3vk1bWVIiSaP9uPp53WdV8Bkd4a2J/VZNqGBzH10aqtBiD+idBEcfe9YK659ORWQJSGptZmza
	bk5fXs4Nz5U21Wg1JsP1b7bMnnqjzSGb3UG27KV60isMbPLseSegWk6qTKbsLyZc+bC1RAohu1mt+
	poI1CJ6ZqWUKuMlV2KP0mbhOjQlohx+ds8J1SLIQ6rEXHyJqnzMJwywi02KDbTBp4DALWw4UqQZvB
	36ABG4Z0eftFjf4UP3Alec8qKskLumnwH8WlhhS1f9a4kKvhl70l6vELUqR8Rx8tOh2DjE8a17w3D
	1ytPS39MTwUSUHJfdZ6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsSx3-0008WT-6u; Tue, 30 Jul 2019 14:18:05 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsSwq-0008Vp-GA
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:17:54 +0000
Received: by mail-vs1-xe43.google.com with SMTP id j26so43586535vsn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 07:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RK299o1I9nQNlsSGV+4buZQzWUsPGHe+LviTSNSniew=;
 b=SxaVkioTG0t2pjLf5OyxRf9JMawK69C8+zJxxRkOddWQ67OVwOAduPXdi5/peQBnKk
 lxi9e/T1J1zIv9jw/oMZp6JAuybJF9n7nnxAPDDqYruh+tZLoXZKJ/Q4A3AT5yM3UpDd
 xwPcHIMWGUZGuT5Psh9H+Jxgn1UEA1p7tgXfDI0/kw+RynaQ8a6IsxMh9b2huMgPjP3o
 mwBg41OPB8I5f2RDxKql10x6ujzkOMge/X4MS/u5FTbnMA54GyC8MC3VQhza3klGnXYI
 k019OGWuAeXXutGGH3OceFAdoSGs9lXpunq0Ya6qlRFlWPZiHKR4GNpyV6lXlQkxRe3o
 NBcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RK299o1I9nQNlsSGV+4buZQzWUsPGHe+LviTSNSniew=;
 b=AG7VOq52wH+T9YQUDGQmV4uZTsDMn1McjqoFNHNDleaVrthQCm44+SMSNnlYRziwPl
 f30XnkdjRTbNGbMqOfnShoRAd01j0q659vT8M2JpyloivaUM+TnrNvzbNkAJnZe2EhvA
 C9XiXID3MX+RYNfOmCDLaEr2Dj0L+Y+8qeBlQOrgKzCIcCIae9veVAl+w3fsELU1sPjY
 zjN5Rw85LxzSJ/jK9iZdkJwzKvyHMMj9r7lzowrggf+8GrGZt3BTl5058mUHRNN305z7
 IF8JcZU93XBlrrq7qAlFZEPpoL0gOY4qR8SGU7vzBMGWWzSBsWOe5m/9Z8I8SQt+RG7A
 KqDw==
X-Gm-Message-State: APjAAAVqFGXGo5B405cOIm/9uICTtWTPZtrpwScunP6jBeF15t6eZ/Qb
 00oBrL2OoF0VzW45TsH2hQCLQSlyeMnl1LXRPAs=
X-Google-Smtp-Source: APXvYqzOWV7w5UY6HfuniMmOZbt2GqzgJCloyN6OJVs76PDRwHfZfJxx5YKZtGvjUeFd4Nxu5FnCxu0Lhw8PkE14veU=
X-Received: by 2002:a67:e9ca:: with SMTP id q10mr41517640vso.105.1564496270292; 
 Tue, 30 Jul 2019 07:17:50 -0700 (PDT)
MIME-Version: 1.0
References: <3601e3ae4357d48b3294f42781d0f19095d1b00e.1564479382.git.joabreu@synopsys.com>
In-Reply-To: <3601e3ae4357d48b3294f42781d0f19095d1b00e.1564479382.git.joabreu@synopsys.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 30 Jul 2019 11:17:39 -0300
Message-ID: <CAAEAJfDU23Q2G+qXW+BubX3FM3MwSGhJ15NrmDuzoM6UFfFLmw@mail.gmail.com>
Subject: Re: [PATCH net] net: stmmac: Sync RX Buffer upon allocation
To: Jose Abreu <Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_071752_677636_719B3A5E 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jon Hunter <jonathanh@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Jul 2019 at 10:57, Jose Abreu <Jose.Abreu@synopsys.com> wrote:
>
> With recent changes that introduced support for Page Pool in stmmac, Jon
> reported that NFS boot was no longer working on an ARM64 based platform
> that had the IP behind an IOMMU.
>
> As Page Pool API does not guarantee DMA syncing because of the use of
> DMA_ATTR_SKIP_CPU_SYNC flag, we have to explicit sync the whole buffer upon
> re-allocation because we are always re-using same pages.
>
> In fact, ARM64 code invalidates the DMA area upon two situations [1]:
>         - sync_single_for_cpu(): Invalidates if direction != DMA_TO_DEVICE
>         - sync_single_for_device(): Invalidates if direction == DMA_FROM_DEVICE
>
> So, as we must invalidate both the current RX buffer and the newly allocated
> buffer we propose this fix.
>
> [1] arch/arm64/mm/cache.S
>
> Reported-by: Jon Hunter <jonathanh@nvidia.com>
> Tested-by: Jon Hunter <jonathanh@nvidia.com>
> Fixes: 2af6106ae949 ("net: stmmac: Introducing support for Page Pool")
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>

Thanks a lot for the bug hunt and the fix. This fixes NFS mounting
on my RK3288 and RK3399 boards.

Tested-by: Ezequiel Garcia <ezequiel@collabora.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
