Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31207E1C50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtqujDgWSaq5WG+c7vU8MTmWt57LxDaUkXElDsTfMRg=; b=m0M+VQ6WeNIayz
	3zG7//fN67GhESfHJjnzXLiYNDo8CcWXuvcnwJt6Yz90rkTShcDyZV5zCLSJVzt87lt4VXgdsYgVq
	lwH4SvHlYHFql0g4z6j6gMgOcqYeh/KpS5grpy7kgDRQeoyCcJjhWtb/eC9LnZPD3wtyvcHO5KDid
	D+DsIMAmrIYV4gt/amJh4O52X5rGzvVzUNEO6YXYVQOZnDDidvlM1Fd98eC4BjZNEtQx8+GE9FDu0
	1bxCRWFRWRuee5gOoemDpoi8kgtMpB5CiQbfeH62RYTghhxMhNCjxlhlcR6a4+7MD9d7YcqZZcM8x
	0vl4StEnM0czzIA0maLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGaO-0008Tf-Ny; Wed, 23 Oct 2019 13:22:00 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGaB-0008Sg-AU
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:21:48 +0000
Received: from mail-qt1-f179.google.com ([209.85.160.179]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N8onW-1huCo30OIw-015qvb for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 15:21:45 +0200
Received: by mail-qt1-f179.google.com with SMTP id t8so14669958qtc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:21:44 -0700 (PDT)
X-Gm-Message-State: APjAAAWqoU5Xl1kDWvVGrDbcnir1G8mgHm3goqRD3n9T5EbKXFw1k8kV
 PoziSjAXQJsFmc1Z7EidS2Wf1mU5jxP+mF8a61k=
X-Google-Smtp-Source: APXvYqwM2qEEMnGfHv8Zjb1lutdzumiJLhReXUDt54qECGm5JtGOI75fA1JAhUI8HrWZ9XEpyPDWgXHf+8DP7KS9kXc=
X-Received: by 2002:a0c:d0e1:: with SMTP id b30mr8768414qvh.197.1571836904019; 
 Wed, 23 Oct 2019 06:21:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-13-arnd@arndb.de> <20191023123200.GC11048@pi3>
In-Reply-To: <20191023123200.GC11048@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 15:21:27 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2LnsqfFf4X2XrBMHBuBKZOHYQtwv4_Hj7RFC1wkPAwqQ@mail.gmail.com>
Message-ID: <CAK8P3a2LnsqfFf4X2XrBMHBuBKZOHYQtwv4_Hj7RFC1wkPAwqQ@mail.gmail.com>
Subject: Re: [PATCH 13/36] ARM: s3c: move regs-spi.h into spi driver
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:fM4yiydr/HDlfPdd1upmgoZ+L11Em5i1wKY6BNTeUQtrOroDXWc
 lzVTf9+cabDepHJ1pPWbF4LaWfynE2pRhu+tgfRktXtgoSYmdhGkusi2+qBQsZuR6K2fWqC
 jO9ygDkPBRUAtpqjrcJFDQ1NFbeZEQgtuD62P4MqR/Te5lf7353t/44PgnpcRBAAU/0LWLq
 FurflLDcBCQk/YrRYWf1A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MLsFhh5KY9Y=:6oJYeC2HGWflJBpG5KY/Rg
 IQsrMVHeqShGVpfsjHnLIlroEPznQcCS17SQ/RkzR51VXWNJHj3DO/BVXtxgiVLwuSKdLCwlF
 7NFfTLDk8VCjo3PRf84G8n9JrgviaKfhicPiLtQq49P8H2eyuXgjxD2f9+AFD64UO0SAAgJmK
 vjE4Khg7/ghMdlnouOMDJFzrOI1b58s03E7bVSTB/O6JJPwaRi0qj01Z56k9gU6ZNrugTKgG5
 IFMlzGLAeS/lsbeMKLZ09azzXe6vcnSTXWWuR8OlWb4pH2EgOFxTJ2/8Cio1poZqKYYrM7XW+
 u7WqgoZziLhi5ySSE5nPop043WN7OI/vjNPVqGCtyiFNgBIlaQkSO3rrHaI7ATVQlbm1jq+av
 Ij9CatFrCekRbDp6BNIkyqMBFHvW+BOFm4uNtSAP4b2LceXX79BydtdrAdwo5jwZ80WWusvLZ
 cyz/zIttTTB69v2fYMl009E0s8xXDrRFnwWo8K9lQB83S1oFhHh15Gg53HpmU4xuEL+LMtfke
 aesIXi1KMyLIlB64bn7ACV6AMt6KvbTup0fs3xOTCmkbwqWF8bs3JRIOyEFHBkiltPOUtq7AA
 d2Oi0St6Kjz9TW1yKLvXDRcr5HtK8Lsf6/Ez87U2A27UZPJQh8g2dlSsdoAqgNjo0nix6HlQs
 jKFkASBPLaAXUzrZRIzsoQ2rKaicBkf/fjoyzVOj4qfTG8FLgFQY+PBJvGDuzJnsuNpm0IL+G
 eQhZwgOEW43I0oWF3nrjJJQCBswq1dPkeU/Q55baDlwPHvOXpxY0f8pWdw+O4RFfn/eaBup4k
 zEgyWT7Q0DrlFkESaS343DUJrarHoe0KYCBjzwGJeQ7aIKS55MeJgV2nuq+eixt9NLHr1nYL2
 5dRZBlRBWtt/Tnqo6yDQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_062147_662952_8323A557 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Mark Brown <broonie@kernel.org>, Andi Shyti <andi@etezian.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 2:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Thu, Oct 10, 2019 at 10:29:57PM +0200, Arnd Bergmann wrote:

> > diff --git a/arch/arm/plat-samsung/include/plat/regs-spi.h b/drivers/spi/spi-s3c24xx-regs.h
> > similarity index 95%
> > rename from arch/arm/plat-samsung/include/plat/regs-spi.h
> > rename to drivers/spi/spi-s3c24xx-regs.h
> > index 607844311566..37b93ff7c7fe 100644
> > --- a/arch/arm/plat-samsung/include/plat/regs-spi.h
> > +++ b/drivers/spi/spi-s3c24xx-regs.h
> > @@ -8,9 +8,6 @@
> >  #ifndef __ASM_ARCH_REGS_SPI_H
> >  #define __ASM_ARCH_REGS_SPI_H
>
> Can you also update the guard name?

Ok, changed to __SPI_S3C2410_H, this seems to be the most common format
in spi drivers.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
