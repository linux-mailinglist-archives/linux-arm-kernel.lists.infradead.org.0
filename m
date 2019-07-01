Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 273C55C5A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 00:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxJVmOpG20l4v8uKAenT/8fIMG1vlQq3NjAf50AlRZA=; b=BPiUfTznX1qbf3
	6X45L/YCcfLfctXLl3fow+7RDRSwz3PAlh0AQ7Wcjq5UJmm90As01LLGXF8D8sBSNFxLbb3YCRBAJ
	vAIu+Pp6tt7zjyjZzvh8E0gVXp0DwXQQyN2zPnCn8sA2CuqyYM2T1aB0HG/zPrmqG+ByCLzcrnchR
	VMSWo8RyDFYFMH/f1RuNvyzb/rVUm2M9X3AYjHTAKUoJA1a04zXC572gsCYJTeosLszYPWs+QbU7q
	BPvzI/lhPc8mwvZlzrSt2Oqi2D4VV+DjDjU2GSiIw4+L60hwFc4SkebhVJncw/hfuyeoolmRc1otU
	myROo0qBasuwMveok44g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi4iK-0001Zj-3o; Mon, 01 Jul 2019 22:23:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi4hX-0001PS-UE
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 22:23:09 +0000
Received: by mail-lj1-x243.google.com with SMTP id h10so14856905ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 15:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5cU35FQAm2rdRTzdHNemBBy2bc+bZqB4G4ErNuvYCZo=;
 b=aNTP7W/77CHMr1af+/66yX/K/ERUZxZ+EVEAKUxTEsf0SBXUtmBqHwQ2rlv7IokZB4
 v1r0LhymsSQrtc3zaDtTVaFRduEgR2orCf2ngGfqjtg9zKXxdGNU8Y887johP/86H4E8
 i4H2L37wJ+W/C1PCfRd8u7CFK7y6rFD4J6cdF5cFlkBzraHb4inZkdzXVSahnIgx5cg+
 XR85GnEuawDcoHcUbEfarhX77BL1DG2Cza2dO/w8G7EIy6NKNwaKfo7GOEz5bOTsEx4U
 UI/vlZe0l+ytrSnIJlCTE6vJiehGEm1BcEj3dR5eLyh6Mp7J2yO7vXK607y9yNvz92E1
 7DoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5cU35FQAm2rdRTzdHNemBBy2bc+bZqB4G4ErNuvYCZo=;
 b=Q0l68PQ4ofGiU2bldjanoTURnv6i8rhTj7n/sEOlJpsmVHCdoBhXwWC0PRl7agT+VF
 Mc/hw6ptBhXC6FqYf4swP0Q+Ws6xeEZVijIlighZo0aL3mXE5ewWp5JaTSce+jcvSbBe
 ot8OXtOX7OpVFbQsSvDAfuMmEhiQRZAgRSoejA7/VsNzZNM5WQvPk/dhjVFTiqqejiHe
 hmrAJjQVeaQY8Svs8Y+3RyDw4eU9Jsvmmp3G4gQoSgcJ+2ASisFtqkn0S36bKs8vvJ0E
 ZfYxyibd5tZ50WZRXUrCobrSHYvm8tyGJrgdGiaXiUwqX92W1YUX9KbRRf/sX/mCLSQP
 sBTw==
X-Gm-Message-State: APjAAAWVHKOC+TVBieOCmcIJiKNO+prhrH0ZpEGcbXZw62/NBIKHKIYp
 FgZzmAoqLoOvaqkQhKURB6h4kQ==
X-Google-Smtp-Source: APXvYqzvXQ47LVJpK2lixWqn0OxsQgVYJ11WbPOO4uFaqR9y/E9ewtfqJT0kknwsDYmDnM7YDqE0Fw==
X-Received: by 2002:a2e:a171:: with SMTP id u17mr8495028ljl.209.1562019786160; 
 Mon, 01 Jul 2019 15:23:06 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p15sm3533503lji.80.2019.07.01.15.23.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jul 2019 15:23:05 -0700 (PDT)
Date: Mon, 1 Jul 2019 15:15:08 -0700
From: Olof Johansson <olof@lixom.net>
To: Chunyan Zhang <zhang.lyra@gmail.com>
Subject: Re: [GIT PULL] dts: sprd: Changes for v5.3-rc1
Message-ID: <20190701221508.qmgtwx43hbfrps6r@localhost>
References: <CAAfSe-uzOO+YkpsxO_G=h17dN1yaVAVdZV1NV=VPXD6dQ6dLOg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAfSe-uzOO+YkpsxO_G=h17dN1yaVAVdZV1NV=VPXD6dQ6dLOg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_152307_972344_33DF468B 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Orson Zhai <orsonzhai@gmail.com>, "arm@kernel.org" <arm@kernel.org>,
 Baolin Wang <baolin.wang@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 10:55:15AM +0800, Chunyan Zhang wrote:
> Hi,
> 
> The following changes since commit cd6c84d8f0cdc911df435bb075ba22ce3c605b07:
> 
>   Linux 5.2-rc2 (2019-05-26 16:49:19 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/lyrazhang/linux.git tags/sprd-dt-v5.3-rc1
> 
> for you to fetch changes up to b04832ed1f70457ee9c702fe7669460e005dcaa2:
> 
>   arm64: dts: sc9860: Update coresight DT bindings (2019-06-20 18:44:54 +0800)
> 
> ----------------------------------------------------------------
> Spreadtrum's devicetree for v5.3-rc1
> 
> This tag contains only two patches for updating coresight compatible
> string for Spreadtrum's platforms.
> ----------------------------------------------------------------
> Leo Yan (2):
>       arm64: dts: sc9836: Update coresight DT bindings
>       arm64: dts: sc9860: Update coresight DT bindings

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
