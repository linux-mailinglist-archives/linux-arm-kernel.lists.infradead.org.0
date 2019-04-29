Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA02E862
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZBfa47qWH71dIcBc3vWfOG1GFWlwkxHQqKfHyNeQ5g=; b=bQJzWJ9eu29aUk
	9wjxIdQkzfaHSjZwzmQMfZy5wvA+ic6XFew2nDqlBQQ3BjPqnwgXni6SHggAAhcSiPiX1oWbvcCgS
	q2KWtQi2Dpgg9ARv4JbYsR+K0t9USDZfo10+OyfT1xMKRPZK7cjIJ+4K3pRLur6TM8EiGHWysQwYl
	n895WAgj7WlPE7ykLzr6B5Srpg97zw0MGDskPvMe4Ih3UqqAxPClO90bkFAqxzNUNAZuXWjyEAwgL
	CPIL+6BEIThsMQsMTlb0hoR8j4VwImNQMo9lnsFaPYJw5SuPAEcFIsiA+8a9LgaqPLmhiKCg0dtNv
	e/22x8cum2JX/8NoeWgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9lM-0003Fk-Sx; Mon, 29 Apr 2019 17:08:21 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9kf-0002Yx-FB
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:07:40 +0000
Received: by mail-lj1-x241.google.com with SMTP id f23so10114611ljc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BQOpLpDDt1Kvp7rt3HMKOEyoch+iFIA4L4e74L7Myq8=;
 b=KxUkrlXe1qVUb+2JZ2ugJZeLOATV94//J7Tza5Tr4Y60P6wQ/LwLxqoUfR4qkBwMED
 XaF8tczA+5OfyaInukt16LJ1tr3FQQe4QRm843p/v4KMgSzkDqR5HgCDOYbOQGh6AUMq
 2YIg28L2v1bvjjBADn+btV8k8WbGcFZ1CVzK8RcIKS2yJTW6UB/6v9faYLt1d9flZcO9
 iV1FHr+Z9Pc4Lrm2JbjjnkLLgPXZCj/0v5xkyv+DIQfjUuOMbgi6n1e8cj0wZTIVgMu8
 M46t2p2h/ST10QkWpA3/Mn+AnB2oZNiXDQD2k3JCbDfBPrAH1ggqM8fXIOKXpy4H4tQc
 30BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BQOpLpDDt1Kvp7rt3HMKOEyoch+iFIA4L4e74L7Myq8=;
 b=UNI7kpb5nXBSNM19hIOppWbkx7BoKh63SWTp1qm3yvvRBO+Q1FFwkG+IVMzkGVfvRK
 0xVnFrChGHUDuRassLRaUjxCfdnUg5ts73pa8GPrONbVi9blQQGLRlGcu4lYtGpB4ekV
 nK2uLxuOnTPAuvddjtIhjzhgKVi6YfN6cAHo3FAqg74zdpToCpTi0PeHJ+i1J3uEmo0j
 m4wGEjS2z5DSwy8Yrov9d0feaTkAOZI4CuPcu/KohSbp9U0QjnZzXhkcKGxFwYDAW3O1
 FtY4fc7ctUn+NiEUFRyrWrlVOMeC1dFTCsnkFu4dbdwcLdUsmXuLsZYQQ4V9E667+OXD
 9ddQ==
X-Gm-Message-State: APjAAAX6BJbIW1g38oaITFZLwuJn9/ZxTiOE+IBP13u5HMSWzvFRZtjy
 L83WiEV9rig6JlxLrBWwXLgSIg==
X-Google-Smtp-Source: APXvYqzOEx48VpxVZFMS5ZuYFlRj8cIL25br/5DKZ/JKiJGLjaKTMRAilJ12agCxeUUe94WkOiEsKg==
X-Received: by 2002:a2e:9a18:: with SMTP id o24mr4388523lji.18.1556557655588; 
 Mon, 29 Apr 2019 10:07:35 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id l79sm7430432lfe.92.2019.04.29.10.07.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:33 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:26:20 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 2/6] i.MX SoC update for 5.2
Message-ID: <20190429162620.o6ahiaciixkpccse@localhost>
References: <20190422082836.3734-1-shawnguo@kernel.org>
 <20190422082836.3734-2-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190422082836.3734-2-shawnguo@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100737_784833_0C75685D 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 22, 2019 at 04:28:32PM +0800, Shawn Guo wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-soc-5.2
> 
> for you to fetch changes up to 8f3e2d2c93494333a1e889a68eaed241329be4f8:
> 
>   ARM: imx6: cpuidle: omit the unnecessary unmask of GINT (2019-03-20 22:35:29 +0800)
> 
> ----------------------------------------------------------------
> i.MX SoC update for 5.2:
>  - Optimize i.MX6 cpuidle driver a little bit by omitting the
>    unnecessary unmask of GINT for WAIT_CLOCKED mode.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
