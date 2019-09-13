Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805F2B196F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 10:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cY6Dztxp4WGXpq7nVmrUiCqKT3HfaIyDXIiULBTkNYE=; b=Ou29Uu//M5H3Co
	wQnpqTvoqKrkVIKeNYUIClua1TMSzz9PqRgnH+cIhAiMLrMeSoqUS0Y3mC2YgT4IFaT5mPKAdCD/6
	AeTyX5pliuqC363RmgOEZcf5Tvs8vMmtY5ZAceQIy7oI0RBr5lmgiWcxpnxXFga/J895AMwyZyyFE
	7/TRw5AilHhAdIw3OPzmAzt46ilUVqtpsxRO5krWGamES1IX7HW+OML4+rGQfU3IqdVFHZGkxCGZZ
	32hZjatic9zEpM7KT93ZOmGniAPeUBr0aq7AwVf3hr+RZKmm4rHNOgfa03eFqVzNonO05xjPNY/Aw
	rLt1/JO5JBJ4wk96jbzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8gky-0000zP-Ao; Fri, 13 Sep 2019 08:16:40 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8gkL-0000yJ-9b
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 08:16:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id x2so1711044wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 01:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZegFrMDjH93Hiq0kHvBQhWYD8nMzTsPX5Ki5O2UQQBw=;
 b=PfaFgpOc/mwAvCtHhBsRPA+6Ol+RiRcKVXOGMihUGWWyCWsA1+I6o1qgk/PiSHh6RE
 Ju2GeDAIOlYZa17BJLlN4iW/K68eE6FP1Nf0e0W/AZI9JbmYGaVuTRWXtLRFa4vKcS+I
 QRD5WdlC18keKleZAijwxzfB6JEDtrXoUkD9/c3Tw5LCv+d7LKNswrSDmwCdtEKsODVv
 Zjkcg3sA7er7sa/oskcEj5JGpFQcUH97a4jskF38uGmg9zU9iJ0870v7jd+mz9DpF2+c
 IRoUhaE/7y0FaQf/ZJrozuXnNE5yE+sUMDKs8x2nBWRlP8nNIEvyiy27n1Bwq/lBBPff
 2Uww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZegFrMDjH93Hiq0kHvBQhWYD8nMzTsPX5Ki5O2UQQBw=;
 b=KjXnKtLO8hVT6c+P4d1ADfRK7XL9KH72DQJmFVbstLMRbFT9+SBeHp8deX80YCW1y+
 kK5rHxBvf3SojSRcGaGNkv9x0ORX4p79OcuKHo8xzAiv+UasbQd2bmQe3y+DYALT9jxM
 SUCoKyuA6DJtDlH0MDaeDMLk6vXxfGSb6pyl5qhHH49ggYLVGvsZSqreTxWcFoyeiwuj
 MscPIA5Kl+m1dj2WiQ1zZ1zNNFCUya/CPONXGSfSF81JGGPhw0gCZ0PqrQjFoie+JQkb
 VaxEi19LEZI9Ctcd661rtC4ZlJ9VnzhSlgngFdZ0ntZV/tt8MeD91J47C0OQ/Lt8l/pO
 wDEg==
X-Gm-Message-State: APjAAAU/Ei8UghQUcgcZ9UzYP4D5a1DbwE4VUbzpTi4PeVtq/e4DgcVd
 jz/oDIT7DpoJEYl51fqhhi9YdaLJ
X-Google-Smtp-Source: APXvYqzPD1KCCVP4u+I/AiOqS7VPDqe6WMu/bSWxf0dd5zj8hnFNJt6HCrlNrBbEx+fA2Bvtt9hzFw==
X-Received: by 2002:a7b:c045:: with SMTP id u5mr2263014wmc.139.1568362558329; 
 Fri, 13 Sep 2019 01:15:58 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id q25sm1546037wmj.22.2019.09.13.01.15.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Sep 2019 01:15:57 -0700 (PDT)
Date: Fri, 13 Sep 2019 10:15:55 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 9/9] sunxi_defconfig: add new crypto options
Message-ID: <20190913081555.GA22538@Red>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-10-clabbe.montjoie@gmail.com>
 <20190907040353.hrz7gmqgzpfpo4xj@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907040353.hrz7gmqgzpfpo4xj@flea>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_011601_581589_4C9A1907 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 07:03:53AM +0300, Maxime Ripard wrote:
> On Fri, Sep 06, 2019 at 08:45:51PM +0200, Corentin Labbe wrote:
> > This patch adds the new allwinner crypto configs to sunxi_defconfig
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  arch/arm/configs/sunxi_defconfig | 2 ++
> >  1 file changed, 2 insertions(+)
> 
> Can you also enable it in arm64's defconfig as a module?
> 

Does you prefer adding a Kconfig "DEFAULT m if ARCH_SUNXI" which permit to not touch any defconfig ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
