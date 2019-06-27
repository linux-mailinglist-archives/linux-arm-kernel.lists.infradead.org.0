Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B2357C74
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sF1XN4Cx2+ns6VNfaCU4fN85y1wCfBiMAUXR3Yt0pY=; b=hWuhhVcjZGsDzI
	71s0PE19pgBeXPuAlEZKiyNJP7rEzfiy0lFBwr9KSd2jPxX0TE6GGcHNwGzi9e12K/0EdHI4DXfsW
	EpBaBYzLnXI3o3SaxSF6VjtEQLezsQgkl084a7hL+TbRiTF62U0Dt+tgLem0sjOt5jbZx1YdKVhm6
	n08Wpzw7CRppQOEmmLg5kBAk5Ask0GCe9uzyUshk6jQZe+QDNl74beEVpcwWVUZbTZtgvbv5m3UXx
	l7neUFM4xbAIMTnpu0roTE4qVsolbBvZNEkPeUsKUJ465d5ovjNXrFCkNHQHsobbeZDiDLff27gBZ
	FEQox7GTAxaszVXQKf1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOEi-0004ss-3i; Thu, 27 Jun 2019 06:50:24 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8S-0006KM-7s
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zOvBGuj6NNaYf3ozf4FLs+/FKRgSy8rALcZaAIg3+kk=; b=iZKqYHvgFB+BKubeNPuo+pfHW
 iGOJCqxIuaw4DIlG3fKYNoTqUJHeCpi7K9UvpZ4e0SfsxieLmHpaSBsHqsYJ8sxvflxUBu0s5Og1h
 GnD+QpmdszYizUossFnUdOChNBmN1Vircu7um51ZYbiRQiGB31UmWs+vYhTTI1Yh3APmwD+RWEAvx
 seRt89Wce+YpdDBcoPuU1jwT5bP6NUQxjrihnhaDaPdUNRptwxtuiwWJreka5lNIn8DKC2PzrdtDH
 uvpZBqw2bhLDe+D1PM8mRk688frcHyWJNgyFD98phX+I1IGupOd0ZSGonTrs3CxrPRJbVi4Xd0lSd
 J03IreKYg==;
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKFR-0005vk-Or
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:34:54 +0000
Received: by mail-lj1-x244.google.com with SMTP id v18so645448ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zOvBGuj6NNaYf3ozf4FLs+/FKRgSy8rALcZaAIg3+kk=;
 b=xeRPZdBU7elIjiF1YfHnDP5FpDehyf6MBozgc9hN/0KdZxg2aWNp10ZDT+8/KeHNOF
 CAD1Gb5Y/w5YG7gSNPa+gpzqZ+UdmKghTemEjMMhjv8q4h2wAk8NmoVwFE1d/kWspq6M
 qNDRZNhE1X+CuV/Lqp2R7Z2kj/+/xO093797edOoWeuKxc2Gc1Dx7rPeteP7ObnrpeQW
 AAs8w6Q5FyKXNMKYd7kUULz3L+YtHMtCruG6xkfdC/yPueS2Y8j+m1yhT0BS4Xn4KYg3
 lGzDCZMlj8yq/nZmN8elF/pkRAGSGdcyqSvg3E9haRdpVz8ox+ONji6uQNSawNxomzCc
 zo9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zOvBGuj6NNaYf3ozf4FLs+/FKRgSy8rALcZaAIg3+kk=;
 b=GoKJuwN6PtfgZGKV68QraGfzgZ9Unde3lGA/0TmoFMgSJQfYSnKKmhLV2M3tTBuG+i
 0ez6J+bqzMXZOJn0JpfIWiYGB51XdU+BD6bUa/dNv5RTXxqgTC7N92jhcS6/hP8x3i58
 Cctuvi5r2dwtU8S8uJ9BZ/4QhE99N6FcV+siImg8p8kFR96Ljg+yLheyngAJaZuH4c6f
 VU1iQOwxc5XbpixP+f4/+/TzZvdtjrJr90Z/l0CZeH29PCWZuccKFqETBDeMn0fhXEaf
 bGULLLKCNj4PwKru0FpA4IyaN+X6sPTZmfjHejIa27Ht73WSxAPMdTYnEUFL+6qnRoLa
 3ybg==
X-Gm-Message-State: APjAAAX0DqOrrViiYmKAJ6uo/z1MhfBPXohflgeN9QIR2bBFwxOlfwPU
 soxXxTt+WqNcA/LJ0lwbjhliag==
X-Google-Smtp-Source: APXvYqx+Xavfb4VIbHflBQVbL2rHpUUB4X3GWb9XOXKqA1DztVqI6fUVRKBi5q0m2esg5kZPJf8rxA==
X-Received: by 2002:a2e:9788:: with SMTP id y8mr874446lji.41.1561602819214;
 Wed, 26 Jun 2019 19:33:39 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m28sm104935ljb.68.2019.06.26.19.33.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:33:38 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:10:40 -0700
From: Olof Johansson <olof@lixom.net>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH] ARM: configs: multi_v5: Remove duplicate ASPEED options
Message-ID: <20190627021040.2qwadqyo2rj4yvie@localhost>
References: <20190626020356.24880-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626020356.24880-1-joel@jms.id.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
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
Cc: Andrew Jeffery <andrew@aj.id.au>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 11:33:56AM +0930, Joel Stanley wrote:
> A recent change mistakenly added a second copy of these two options,
> which kbuild warns about:
> 
>  arch/arm/configs/multi_v5_defconfig:257:warning: override: reassigning
>  to symbol ASPEED_LPC_CTRL
>  arch/arm/configs/multi_v5_defconfig:258:warning: override: reassigning
>  to symbol ASPEED_LPC_SNOOP
> 
> Fixes: 2d8bf3404bb0 ("ARM: configs: multi_v5: Add more ASPEED devices")
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Applied, thanks!

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
