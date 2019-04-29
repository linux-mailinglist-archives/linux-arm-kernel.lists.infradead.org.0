Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E106E911
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWNQbU2vrSjamyuJz6FlKOsWg3ra/VTM37w8hgPpoYc=; b=YAlmd9GY1mjWKX
	rGT3NaKuBd7BNWhT4DBB5mWuYLqVbBsiE9doNv6j+85sqcLKK0dUam54ejaRwBJiaOSdTaBRkDTNa
	i2k7ypeVptRSIM5bbhYpNAh6HTyomRvJ50n0YkLV2qiZJLO6nrVvYcQ5wlZc0mVYxhng2WRYfC3YY
	YjbDJQ7KezWSgnKEpQsAiekPDw2SO7eDetsqkhisIkLb/JmyQ7P9147Uh2JtZL0eVwLtuF3oPuvHZ
	6sZkWv1MtJMDq+XgD3+Hu9pbT+vjSre6PQPNUG2X/xRAiG/O2HPgUjYsy75dY3wX5ags4HtNzsi5i
	8bLj4iemTj/IwLsZBXWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLA7P-000199-7q; Mon, 29 Apr 2019 17:31:07 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLA7H-00017k-9X
 for linux-arm-kernel@bombadil.infradead.org; Mon, 29 Apr 2019 17:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GpCuQvbGrQYbsPtd6d/PxdDlSbAp7kqu9+i05dU9G3A=; b=F5RwmfeXz7agE9uY/k/rXW2nU
 Ov0wG7p+CRlt/ezgYduNkL5THF3RTl6553Atk+UX7mBk/2MApnwRQy5ZVGkY8ft5ohjasOQLvwO7l
 ivEvj2cGOGVAdT2OZtEdgWpoq3RRI91vTIGnH2Fi7qTU3PXFAX3N4HlujsTKxnIqUDEEKFvRTWYz7
 kGkuj+7Bkvr9zXNrEvKMlmEaJh2RjhLhJIADsAVJdf8iOlHYM9Qw03VOIz+Q58+TFc3zQ6t+lOOxa
 eI861HUEPXlAVg54G1jQYfgoPMe+Kgn6bY+ZsecCqzz8LH+yj8hqPtySkiR/7PGno6JyC6F0Q8noV
 aPFYZ86nw==;
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lV-0001UH-Iy
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:30 +0000
Received: by mail-lf1-x142.google.com with SMTP id v1so8590552lfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GpCuQvbGrQYbsPtd6d/PxdDlSbAp7kqu9+i05dU9G3A=;
 b=0aC6QqpepDr+FRl3lv3K8Mgo1FZ601HEb1r7dFkhPLi8JNemJZidlT9N1Nv3jhwrVS
 AqPwFNtEtGQgve7xC05SKgA1ZFbrPlYCyAtu/MKT0HFUHIe62u+1pS76tkpOfxu8Kx8G
 ueCviJhkvOX2h4e5cj/4UW07cbzImQxETIAu0SPpd4wOzzDiiPKAXANI4X10rbrFlV6V
 /ktdns9Tet7K2Tzgp4RS9G0PEqJyLVG78UM5gZMgjFP888i1trNHznz7Ntp/Fh8Ti8cJ
 Bo1Sqvn8skHEk3ag/QmPQN/RlJ1gl5hXg1KyimH1aBSa4y3qsubDJs6P/ZAm+NssDgow
 zu/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GpCuQvbGrQYbsPtd6d/PxdDlSbAp7kqu9+i05dU9G3A=;
 b=BrsdpgjK8i+SWCwJurxlzYnC7zOhCuZkx9fiwvZoPy8Sqemmgious+2hIXvO0HdTll
 VzAXkMquopqzQGg4UpyUpdVew/X+A8SmBxmy6KKrniW83Pib6cGeMHZS3yY5S86O0nXU
 fVoC7Jbf9PerK8cwwmlVha1CEXPgCrDIpx4KpMoxvsxGDDzFInZlQgtQRqYn4xwaw46N
 QOgb60llfPGkHOWhjy1zdEhaKLwC80zbXJ+H5ESxfch5wEiPIh3XXlZYbW0z7rID1hDG
 FgNA67amaiU0bVnu8O4PW5GLpNHkJKt/RGEE899O6zwZeC/WJztbilLIRt3jB0AZA/eN
 1EyA==
X-Gm-Message-State: APjAAAXR9CwK5l0VOsKGUekmyoUd8Wbq+1nTtMoz2mr4ufTPMSwS5SfR
 nDkceTK17Z5kO/pptbFjUmXDJg==
X-Google-Smtp-Source: APXvYqyFWRtUWtrLpRxm8/v64PWUl2Ni7EN4A68ie4vGnNTYUd5nXV0OP8KhOvdSVIumZTQlRD5z8A==
X-Received: by 2002:ac2:4465:: with SMTP id y5mr32507498lfl.82.1556557707106; 
 Mon, 29 Apr 2019 10:08:27 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id w2sm5040834ljh.72.2019.04.29.10.08.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:25 -0700 (PDT)
Date: Mon, 29 Apr 2019 10:06:44 -0700
From: Olof Johansson <olof@lixom.net>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [GIT PULL] Bitmain changes for v5.2
Message-ID: <20190429170644.rvoau5xk5wvhcn6d@localhost>
References: <20190429054325.GA3072@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429054325.GA3072@Mani-XPS-13-9360>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_130829_671519_3B771D18 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
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
Cc: arm@kernel.org, arnd@arndb.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 11:13:25AM +0530, Manivannan Sadhasivam wrote:
> Hi Arnd, Olof,
> 
> Please consider pulling the Bitmain SoC changes for v5.2. For this
> cycle only gpio and pinctrl changes are added and the details are in
> signed tag.
> 
> PS: I have added two pinctrl changes in addition to the previous pull request.
> 
> Thanks,
> Mani
> 
> ---
> 
> The following changes since commit 79a3aaa7b82e3106be97842dedfd8429248896e6:
> 
>   Linux 5.1-rc3 (2019-03-31 14:39:29 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mani/linux-bitmain.git tags/bitmain-soc-5.2
> 
> for you to fetch changes up to 470fa42933dae396860a3409abee9e6c860382a2:
> 
>   arm64: dts: bitmain: Add UART pinctrl support for Sophon Edge (2019-04-29 10:47:41 +0530)
> 
> ----------------------------------------------------------------
> Bitmain SoC changes for v5.2:
> 
> - Added GPIO support for BM1880 SoC based on Designware APB GPIO
>   controller
> - Added GPIO line names for Sophon Edge board based on 96Boards CE
>   specification for accessing GPIOs using line names from userspace
>   tools like MRAA.
> - Added pinctrl node for BM1880 SoC as a child node of sctrl syscon
>   node.
> - Added pinctrl support to UARTs exposed on the Sophon Edge board.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
