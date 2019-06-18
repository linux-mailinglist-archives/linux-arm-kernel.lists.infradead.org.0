Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1453C49ECF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 13:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xJ8KOS1alxoCQSwx+t44IJkk+sgLGhbWPtf7RRyQjw=; b=L2cqWF2G3MACbr
	IL6CcZMFGB2pdaSVziJFv+FZ9xM+7/GL33dQfRDZnoS8FeHJRdxTKAru/qegnq6/PyTud2YVZw1yL
	ZWDemIAJzVCIMWM5ocdyFb7ICr81pQ12058n1GCwZSSaM3ZJyU6uxm8hD1W7bD9fwBvtVJ4D3rvU+
	HG2+dBeg4yfMPdLs10+Z2/Igd4TfLQ6QsCt/5MWj3iIK/nWNzTVn2Z22StaDB9Usog7y1wL45OhMV
	Gh1PnjSVufuBh3ubilbbyDDAKrSCXdNYp4nH3WjSug/z2rdzfz/pYmbRQhT4my9E58ss43g5KPpqE
	AkF9d+yipEzBH64rf9hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBqy-0007g0-T8; Tue, 18 Jun 2019 11:00:40 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBqk-0007dT-E1
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 11:00:27 +0000
Received: by mail-io1-xd44.google.com with SMTP id u19so28658437ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 04:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DaUfQSe+T4PXrUh+yjDH7J9YyQk9TYH+wIjQcd4C0mc=;
 b=yGFZ4yE2r9iiiOX/b/1l1cS8T4RP7RmwpYwvoN0pX8eO6/FG/A/lK54vD9VAHkPo64
 K4o3Av5VNGUe2K/m9DRpu4QjqbN8RytMx1y9iBO3Qhyje+JjShVpJBmTXKczis601gxS
 GjeHDYJpp9lGQM6Qn6Q9U27iczkM2CIXZm8BfKSz2Di8dPRMaS94xGKnptqhxN5dzv0I
 OMaahuzBHUqjddIUUFwqLeTVNSNnbobMPe4ppXDe253vY/BZs+7UvGsp5Dsge2LRSwbl
 0HVlM+8Tf/mb/lZAqWmZcfU+3sXWt9GY6FjhEkeOoloCdijrvdXqB1xjORt4hCG5zl5R
 +5FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DaUfQSe+T4PXrUh+yjDH7J9YyQk9TYH+wIjQcd4C0mc=;
 b=jgwY6Gzk66Yo6XqSbGWOKTJfvup66XSHLShGzsdc2N5fDuVYKfItZsLittl2misNWd
 JofDhTwpUN6bo/C9rNU+BF78wOxS0B8I0KOCrm4PJHgkz1Ac7aUKTT1u5i/TiS9ToDPh
 1O+o/a2NVxk056vX46v7yjIV0qppoMOfDP1faC56+H+osCYunETCaY1LDhrCKNsNQ+k0
 oJ0TjVh1+9kOxZAwvzIaS3FtQEPWUpxJyy6fZa/vpNiCMLO7fkas3brt479pKcxo5zwM
 27jkbdzpyS6Nshk6IJ5fcHeAzhfXLvce1ADOEFrycUmwj3kbSW6llKmvin1x294Mnyp2
 fInA==
X-Gm-Message-State: APjAAAXqijv8CL14AJHrjwdKpviK2v4yiwVprX7BDOl3kbCnND7W5Bwx
 9hgFqPKwdxLvIwvrlf5FdtSmweh8+7j0kITcCvLwJw==
X-Google-Smtp-Source: APXvYqzeoST4FgKipJrRZ7jKQsTY7JIuBYyvJQNh1cSbscvXOHK1EAwHRDXsATV7nI72tqRnIzkcKeO4lNL52R+FSN4=
X-Received: by 2002:a5d:915a:: with SMTP id y26mr2712336ioq.207.1560855625832; 
 Tue, 18 Jun 2019 04:00:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190617122449.457744-1-arnd@arndb.de>
 <20190617122449.457744-3-arnd@arndb.de>
In-Reply-To: <20190617122449.457744-3-arnd@arndb.de>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 18 Jun 2019 12:00:14 +0100
Message-ID: <CAOesGMgUvT87UzNLM=CpjB6nnuwPGn4+cK85ZW8nPUyOzkse6A@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: ixp4xx: include irqs.h where needed
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_040026_477037_E4623EAB 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linusw@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>, Krzysztof Halasa <khalasa@piap.pl>,
 Imre Kaloz <kaloz@openwrt.org>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 1:26 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Multiple ixp4xx specific files require macros from irqs.h that
> were moved out from mach/irqs.h, e.g.:
>
> arch/arm/mach-ixp4xx/vulcan-pci.c:41:19: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
> arch/arm/mach-ixp4xx/vulcan-pci.c:49:10: error: implicit declaration of function 'IXP4XX_GPIO_IRQ' [-Werror,-Wimplicit-function-declaration]
>                 return IXP4XX_GPIO_IRQ(INTA);
>
> Include this header in all files that failed to build because of
> that.
>
> Fixes: dc8ef8cd3a05 ("ARM: ixp4xx: Convert to SPARSE_IRQ")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied to arm/fixes. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
