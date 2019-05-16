Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FB61FFCF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLs5+iopen1zCNE1BymVcm9fOiWi8w76kNQ1dawXA50=; b=ooq28dCTo81Ez+
	WTyZeK96OGGQIIaqcuZmqKlrzHcsayjNmWg9BFuI58VA1on43O2OFQ7RDAf9qyfomgPPL5f/dUptf
	/fQy7yiQ+/GK2ajnI2Oz70OgaLQjcyyIw3dVYAd8deknT7df/DCj6QmkS9tS4pNuVP8y1Go01v6zK
	O//aaQ7A7d/T+sNVd7Udc9Ysrc1i2AMglz3pWb0dRxrimcCz3VnBlG7M5TPO6h2d2Nm2HLgwRos1j
	VK8ZYZpFVj+anMOqfeUEWiExgDAQh7eks5M927+oHCUCAhfjHAPIPjrD9qiBd9YJWI7fvj37V8ymY
	QMLJ9AkzyCzXlg5iT+dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA9Z-00007a-Lf; Thu, 16 May 2019 06:46:09 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA7V-0004r3-LE
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:44:19 +0000
Received: by mail-lf1-x12c.google.com with SMTP id c17so1725585lfi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lA8KDzIz2hvngUDT5ociCr9QDjiUXFgygJG1zmJOP04=;
 b=f4si2sJq6Xc1JRNOJfu4sj4Tzy7+wUHONXEgOVVGiLNR2XclJl+T2SPneVUdEd9Ypl
 GpX4IRYoDjZ2Jy0AONrkop/IGhCLXWo/3oMS5KCE8oAtL2z1wg6IJFFPGZlGbzd1bHXY
 x3c8Thov3M+jC1qcuBtGG3xN7EkT4QwpKia2mJHJRgXWVitag7qLHhFBjtxtyog4qJwN
 3OXbn16b6rf7gMJSwyvAqgTrfp+Khedq+Hj+yF11k7uawxDQpePhN6V0bdFMaLDjcrEx
 He7LpJTOcFeHRxKD+yt2J2Zq1sxAXrB7EZB6UZR87Wl12dPKzxJjEN7Q0+cjwnNXJt0r
 PFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lA8KDzIz2hvngUDT5ociCr9QDjiUXFgygJG1zmJOP04=;
 b=nupZoaX5wGD+bk1hr/g9XkWu6+Z4CIrFrlm/ZEmtVHo8uLS1ijVA1rTFXkQosdWwlG
 6ohJt+eanxrjvpRAWXL0bmykH7pbRMY4JDt9YyqrcAZn9TpkbN2pwvg6soZBUScA6n1J
 /AeAQKttggp/PyJ5c923QbW3iZqDczKZnJ1pUVDo8PcUsU9t8yxY8FGWETudRNN1zTFG
 4Bp7R/FbO4c00KlEZFZu8m1iiW2MntjrlT8Ye/DnLX85yp321B8DXkJwO9RhAzJvfSCy
 fJPGJnqSVWZLGt+uRwZOW0xQQauqT6aLi5vMgX38Q9GvlU+SYQpfxASJAdV0XqYyYqsw
 GT9Q==
X-Gm-Message-State: APjAAAUsdoSRtlny/EyUQ5txXlQPHy8+xoQeWW7lHMzEaB8UrEvE8m1a
 wJzZa1MZ4qhHbAu43vUN+x7zaA==
X-Google-Smtp-Source: APXvYqziWgYb3rlWEZzGJPeap5uGTfmv5XHn9dmPitSJQp9wPM7zIlpwgEZ/AvKQHwDSM6snlhfezw==
X-Received: by 2002:a19:7516:: with SMTP id y22mr2121366lfe.26.1557989039665; 
 Wed, 15 May 2019 23:43:59 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v21sm707169ljh.83.2019.05.15.23.43.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 23:43:58 -0700 (PDT)
Date: Wed, 15 May 2019 23:26:04 -0700
From: Olof Johansson <olof@lixom.net>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [GIT PULL LATE 1/2] ARM: socfpga_defconfig: updates for v5.2
Message-ID: <20190516062604.kdewdjkgmkus5kse@localhost>
References: <20190506154205.32759-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506154205.32759-1-dinguyen@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234402_109511_CD49EE56 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 10:42:04AM -0500, Dinh Nguyen wrote:
> Hi Arnd, Kevin, and Olof:
> 
> Please pull in these updates to socfpga_defconfig for v5.2.
> 
> Thanks,
> Dinh
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/socfpga_arm32_defconfig_for_v5.2
> 
> for you to fetch changes up to fce638e85350852294096d82d57a696b7cbb22b5:
> 
>   ARM: socfpga_defconfig: enable LTC2497 (2019-04-24 12:52:47 -0500)

Merged into arm/late, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
