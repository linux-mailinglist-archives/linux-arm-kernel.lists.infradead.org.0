Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D5EDC7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QbivdwkC/IECpHPArTLZKC56nNBkqroMcWstpFSSxA=; b=f4b9KlFB2kVqXo
	rimyeiLlTS2CqPZiO9qzVBRD4leord6zjRbR58V30S+Y6YhxhtmsGjja5irdGvJt4LJzmn07aOvkQ
	lNK1uUCbjpmzT+tkpeNhDCCkSkQrI+2aE0IMWjNT53dNpcEqJzzEiwDgvoghbkAMjvreTOBCto9Ka
	lUp2bK61Tre9B1PPaUb3l9JYaVI3HNOMyTYYWg/wwLdwUEJ7/MyjlRPUZCjIPrInGQ2QXtxVUvCqM
	gVohjIGr3PzFL+D2LvpNGlEOCHq2bHYeX/HX4gb/Oi/V/6JUfOlhtijcx/HP494fS1qPxzwp7djLA
	hMQhmz3nPVCqdscOtITA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0In-00039K-Gt; Mon, 29 Apr 2019 07:02:13 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Ct-0005hO-UM
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:22 +0000
Received: by mail-lf1-x143.google.com with SMTP id w23so6948922lfc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4mJuDcpfepZhdd0xXkv6pACsvlnlYj5A7NA/7mxDxm0=;
 b=NftWDlALhXj/F0Bg56VKdMCnOkuUCO6POKgXWowMqwY3ADOmgjhp8Vh0/YYx6NZVYy
 uxZhiBRUg7Ft1mJAbGv6qOiWRmBn1wRrervyreMNx4WUM+7N5uoc9wTy2Cdat6oZPMD0
 uEMmsqtpVWBIfkkwNmfUOB1Zvt8shVhBQtMezxxzH9XhuoNFP4wvZoTM5TMreISSA+Yc
 PX/Atc8XHYSbPSobfr9xWpFm8PjimXcYY0Gb8c1D5xzPU3RbJBOd4yc4gaHg1QrodpVf
 ZjUUAguCdGCwUDlM+la8baP4uhhw4RFRJ8s9PXw0YC73vSTM7B1hVJQy2vNybKS0SmXB
 hCZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4mJuDcpfepZhdd0xXkv6pACsvlnlYj5A7NA/7mxDxm0=;
 b=B51K4S84cch6vUHeHYNJin7JZ80p+lcMWoo2GOZt9rPWKOdIC9XHm17hXmZd3N9H9+
 NEsmAaFkAsJN6YBlO4ZRru8vE+jmXGDQx2zYqVsT3D25WNl2FVln7gx6QtPzETkoB5uu
 zhGt/xk7rbxMJNSXway8H/AL89aGvojy2bCQpiWqpibDIqzcDSPfcDqtd28A76zQO1KE
 mYPTKlmEcsUL3RFt9xGUKsWm6mdjqZxSuHdpov2bw6CyQyQYY0xTDbMpuz8+wQsWh1qf
 NanrPU3K4oWpCD6LsTozpy6Ru6ZxjQimNUgxaCmuf1eRoIhJzZfBdUb1M1Kg0zL7x3Qa
 id2Q==
X-Gm-Message-State: APjAAAV/U/xJJz2VijsX/oW+LN41M8ialIk/eXqaxJCvC8NGZj4vOwPe
 2ZvknKXY1lxSlTm63u4+wb3dnw==
X-Google-Smtp-Source: APXvYqzM/HIK4eVjzhz66TxyGrY4HHjDn2A4Evju4tAuiySmQ6okiW/9tTDobRW97icb6nMrOlWxHA==
X-Received: by 2002:a19:751a:: with SMTP id y26mr10591370lfe.47.1556520966194; 
 Sun, 28 Apr 2019 23:56:06 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f15sm7176192lfa.89.2019.04.28.23.56.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:05 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:35:54 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 5/9] ARM: tegra: Core changes for v5.2-rc1
Message-ID: <20190429063554.mqpd7lkncguqrv3h@localhost>
References: <20190418150721.8828-1-thierry.reding@gmail.com>
 <20190418150721.8828-5-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418150721.8828-5-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235608_481115_1939974D 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 18, 2019 at 05:07:16PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-arm-soc
> 
> for you to fetch changes up to 36841ba2796324507452f9854bf08b2c65836cce:
> 
>   ARM: tegra: cpuidle: Handle tick broadcasting within cpuidle core on Tegra20/30 (2019-04-18 11:32:57 +0200)
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> ARM: tegra: Core changes for v5.2-rc1
> 
> One of these patches enables PM by default on 32-bit ARM, following the
> same default that we already have on 64-bit ARM. The other patch fixes a
> cosmetic issue in the cpuidle driver for Tegra20 and Tegra30.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
