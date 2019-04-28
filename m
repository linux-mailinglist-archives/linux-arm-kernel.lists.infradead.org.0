Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7335CB696
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2HedUsaV03hiqZqslcz0BtYpw2eO7YKWzI28/d3L18=; b=Vah62gyPG5DuhD
	g2u5xHOp7RLlK+9X8Nj0wGJyvTFOB9ScEAsXG4qbKg3TsIjuwJyOt88XB1kzNdvMzJxgfiKRbGRYq
	3O1Mosk8yNh2GQulEbc81iy1q+QGOrJzKY6m17Z4Vb4pCgCaKmIFI30qS4GecQ+Nbsx4eUkl4bGo/
	xXgWSmDuHpjUKWb+oPABwu1nNVdGuwDYlyegDwFUu1nEj4lF4bX8rWCBmeaxVVtEjXrObXwcqqHel
	PDWTQFNNWYNHW80LPVUxXbBwI7Eiat4uETyu4dReW2xvi4KbuT4g2n/crvLtZ4Grpll9eRhh1Ml3i
	OE04yrSHAxYDcg7F20nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqM4-0006da-2I; Sun, 28 Apr 2019 20:24:56 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHH-00085A-Id
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:20:02 +0000
Received: by mail-lj1-x242.google.com with SMTP id z26so7498830ljj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7KWbxY0YCiRu2mr6XWw0uLLps83FNN+PAsNLacV3jdU=;
 b=mwVtiPIht3wIXQDl/GnmQEyWjRGLhC8PkPQHfJjrrc54KsQVrxwcYNksmOYexGftFq
 SPrck4xX4p0W/vSanLx2a8K6vhkannAXkT/YU824nNym4XIPqc5cT/ibnMJSaRKDUxV+
 rRxlODEqW34yolRx2a5pjy7zIie8MoQDx4Z76OuJbC6Wzt5g1m7tKrhGG5QFc5UF4iLB
 nHoVEVYJgKnGy8H0llnz3M+UMedh9lafPAxOsdu7402tT5Hntf3ZGerWAV6U+kR9nrpF
 btB+6VYO0VoILjK/8dItRJsLFDvQV+G0cXCMFtnqmwXNFN72F3jQ9s4rdXIo0z1k1hRo
 HriQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7KWbxY0YCiRu2mr6XWw0uLLps83FNN+PAsNLacV3jdU=;
 b=PxvE0pGH1MDLnBygL6+amxDz3fRILjCF0uJCcZPAT86tT02akWFyt2+/7q8qpLp8rY
 gXsbGB0SMJSM6mt8sd4qtHHMbmF0LzP2TDW8d8+Pj0mOrTOpTb+fxTl344LwAXx+9Ogl
 VQQ+E+ZFKDHH5s7nx0WEWgxkaPaM3ITDNOfcBc/6GmAUmMVJkhlSFHQ8twFS2fSJ2FGS
 ETiHxiob9+uma++Boiv9TNQr9NUTkcAHaIjauFAQ5mk0R80EffaxlKhMT4XOlULOUtOC
 9uG1QjkRd7TQYk5fhpEtQQz+FzOcmQmHUZIp8zV7Ejmh4pwJyq25RdiobnDBLbYbUGxY
 lMuw==
X-Gm-Message-State: APjAAAUmEMDTc8P3/1x+lY69PG5HBZtx/MU2XoMCfTm1ro0WJWpIJPVM
 DTh9N8Q8wVzSyoJjpzrIAucGAw==
X-Google-Smtp-Source: APXvYqzwqlst4RjrSrjdEQY5BByvsRsHWP/xCe7LSEmBxNSk0J/rNAsOoreihU7Iw7x+Oen6L96esg==
X-Received: by 2002:a2e:9713:: with SMTP id r19mr399077lji.189.1556482798026; 
 Sun, 28 Apr 2019 13:19:58 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id c7sm7605493lja.90.2019.04.28.13.19.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:56 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:46:41 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM Based SoC DT Bindings Updates for v5.2
Message-ID: <20190428194641.f3ebdbcy4rnecppa@localhost>
References: <cover.1555684195.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1555684195.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131959_819267_A8092C8C 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 04:35:33PM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM based SoC DT bindings updates for v5.2.
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-dt-bindings-for-v5.2
> 
> for you to fetch changes up to 3961d355dfb512b1b004e32a382c25a90367e6fd:
> 
>   dt-bindings: power: r8a77965: Remove non-existent A3IR power domain (2019-03-18 10:33:58 +0100)
> 
> ----------------------------------------------------------------
> Renesas ARM Based SoC DT Bindings Updates for v5.2
> 
> * R-Car M3-N (r8a77965) SoC
>   - Remove non-existent A3IR power domain
> 
> * Add vendor prefix for Silicon Linux

Merged, thanks!


-Olof

> 
> ----------------------------------------------------------------
> Biju Das (1):
>       dt-bindings: Add vendor prefix for Silicon Linux.
> 
> Geert Uytterhoeven (1):
>       dt-bindings: power: r8a77965: Remove non-existent A3IR power domain
> 
>  Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
>  include/dt-bindings/power/r8a77965-sysc.h             | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
