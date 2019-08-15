Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441B38E9F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WiWyrunae0jHrqmoxrEg/Yhp3p2wqA9le35uhHQnkk=; b=nXXYjOFOVAA60T
	/tB/Qkzeww5vFjnZGPO5GBaOH/oRlGBrHxs1xYzlNQmJ49R16NX5tFTB68J2e0/7hHhNVAWGyIR/C
	xdhWdvWj3SqBxn9XL0IlrWvUe0v+CMXgPbmo+t8fID8MCur4uaYyC6JTgEC3y8jdoC1Toj1o+/Exw
	/PJvE3qXXeGf2sJ+JoDtY9cpUip/veQLyQoxQkeNPfLiKo3I1e9R2bg0b4cYBYXJVsRFahpqIOCIv
	78v0EW3NQoWuz5OW6UglR0wnyjNdnhQdUFijmxfqWz6i+lUyTCVw6yeLXd+PiKWI96GI5QEUf7LdV
	z4q5mSfQFOofvuXGchgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDi0-00074B-Oz; Thu, 15 Aug 2019 11:14:20 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDhd-00072t-FV
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:13:58 +0000
Received: by mail-ot1-x342.google.com with SMTP id k18so5083520otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 04:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IuWtIDr90zkI+XfebKnko5l+I/4xHf39ovWKoeqGaCw=;
 b=nNQ/UtAXFhxaaxM9xQ9O8IFhMDMFvXunujEOMrSPWYCvTGD+YxkdrSxxRuus/GVUBp
 GQoOAQizlE7KESwvt/hZDxMbEejumbr3zlWb4gT62uRTJXHWvWtJR7eaSmt+P/Feob0G
 3FUQTPCC4U1ru+VC9jVwEnwjC7mL9mTGXdSrv0YV/tjgkZ9zqojYrqsx+I/zHyMAQt8f
 8tY1ausOgFce7Ab8S1UDh3376evaQbzs8AquCZCJWaLZvUFdMNaMr4YLxIusv5ITVmeU
 i1/FqeHC8FIMWswYm99EVT/8f/U+y5anena34TtOtJsjHhUYQi17LOqEs6UTPxD4ON1T
 NLOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IuWtIDr90zkI+XfebKnko5l+I/4xHf39ovWKoeqGaCw=;
 b=rhQDty7qIX36pjqbW5UxuQQShpz5lhFV0QfRCe2mgQYlTiwuG/jJBeqCD5fVGR1ymg
 r+D6SGMI+Jzk10g/TYA9ksOzAlas/5Ngb21TNV9op4XSNkBbSz/QgrBDBnL9e8haQ9BK
 jwdO606+7ZmDYJhJ/OtLioqSKy4lb6xzbWjBOiUbvogswmf77pGQxMx5lsYxnzcC8IMH
 G57NmMwqaE7mbMKPyXJTTb6d/fEmEurwaOSNzTA2PkhcA3LGJgvAlGDN2tahfGycJSnm
 e+oZJzDpdEKbQN3wPIVDRWekpGYNFb4EqS+BClhWq2m+wRbEcdZUQVBYYaaHGukGUzoO
 tT5g==
X-Gm-Message-State: APjAAAV2dYsvpfX2ryeLTbqW6xx5o1ViPgTluHr/bLn4VTepKxyu1GRf
 fKK7ySS2FudKVqw7/jfF07JVnZdLXoBeKx5bA5SGtA==
X-Google-Smtp-Source: APXvYqyLPDKvvPTRbvGbWfWW/U8q2MBMOdJm/HCo2dFUBkYNWHxXuaIDP3Rx+nIt9imUtzeQRmZpWsoqqA6dgyl5YCA=
X-Received: by 2002:a5e:9314:: with SMTP id k20mr5014873iom.235.1565867636592; 
 Thu, 15 Aug 2019 04:13:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190613223901.9523-1-murphyt7@tcd.ie>
 <20190624061945.GA4912@infradead.org>
 <20190810071952.GA25550@infradead.org>
 <CALQxJuvxBc3MH3_B_fZ3FvURHOM3F3dvvZ6x=GtALUAvyu7Qxw@mail.gmail.com>
 <20190813130711.GA30468@infradead.org>
In-Reply-To: <20190813130711.GA30468@infradead.org>
From: Tom Murphy <murphyt7@tcd.ie>
Date: Thu, 15 Aug 2019 12:13:45 +0100
Message-ID: <CALQxJusdvvnL-7WuCy9qobB6heG2oj7XS4Bs3Z1dMyLXSeZOzg@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_041357_517242_79EE84DF 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 virtualization@lists.linux-foundation.org,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Kukjin Kim <kgene@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Done, I just sent it there. I don't have any AMD hardware to test on
while I'm traveling. However the rebase was very straightforward and
the code was tested a month ago on the old linux-next.

I only have the AMD conversion done. I will work on rebasing the intel
one when I get a chance.

On Tue, 13 Aug 2019 at 14:07, Christoph Hellwig <hch@infradead.org> wrote:
>
> On Tue, Aug 13, 2019 at 08:09:26PM +0800, Tom Murphy wrote:
> > Hi Christoph,
> >
> > I quit my job and am having a great time traveling South East Asia.
>
> Enjoy!  I just returned from my vacation.
>
> > I definitely don't want this work to go to waste and I hope to repost it
> > later this week but I can't guarantee it.
> >
> > Let me know if you need this urgently.
>
> It isn't in any strict sense urgent.  I just have various DMA API plans
> that I'd rather just implement in dma-direct and dma-iommu rather than
> also in two additional commonly used iommu drivers.  So on the one had
> the sooner the better, on the other hand no real urgency.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
