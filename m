Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BB0B68E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+JfK4IeH2t+j5YZ+pfOQjZubyN+xngf5WeW72zLBPU=; b=VJEkC8iaqwBllA
	mpC2nZ69v+BpN7/1pRpuZwYSsuOxXBqH6SJWJ6y8MiwCmtlgnD3y7lunIqg1t876ip4Ag6kCUAp9F
	QG4o1X5J9EqeLEaRnjBQzqGL+738YLuhC5fbbKt3WesUXBumTVSHHfBDynffQs/8T9ndE0WwUbwf6
	5izb0boTqpfVxD5MGkkTBwxh1t1DaMJw5YrhSHX2a/0NjYz3MkKFxq9ftfqN08wlvIGgS5jwkhJLt
	u/1p1SIcNVxChZV9mquiO93+ZCvz8hEYgdqQJKQvAKd8xvKcLKRX+TjL+nFyRTdjh/40b9g4FnTYa
	FF7+oXaKHb+okP2TYM4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqKh-0004hU-T0; Sun, 28 Apr 2019 20:23:31 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqH2-0007vp-Ii
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:52 +0000
Received: by mail-lf1-x144.google.com with SMTP id t30so6224390lfd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dO7Wc3s3rXyuuKjqT5tfeR57ozC5i05pWNjYzoS426o=;
 b=wtk6QyRVAUudNtbPvb9HqLTku8R18/Ko5C9muvqAL8Tgdo7cmvY3IczRqJtoXDe7wq
 6PuF6LGhGhlL+kgt7cuOdx3A3WKC4DZS0Y20N7r2Js8Wbnt23SpDzHDHdSevqPcpc9Qt
 dvglW9dk4cXvsxsUtGSQuQM60sVIXTmFP2EmDWmhdAPeH4gjDMEIl3HXJPxL9t/FVhr2
 MY5upZjnvbYH+ieqU6+zrv12s7EttN3jAu/44lnnKrIcYNZzga4BIBWU9PV9F4Z7seWu
 e2P750qZV3z9RyZAbLl2pkFGr0Qsb/VkkB5N+gtBxWUaZe+joUnX421rnxXyEhVl8Uba
 HB4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dO7Wc3s3rXyuuKjqT5tfeR57ozC5i05pWNjYzoS426o=;
 b=Urgx5M4McHsTV9GFaMVFXA+vBoou6f7Ln5zzExW9LIh2SNFr2Ffg4prwhmpYSC5itm
 qSC/W1BCA9bB+bG7nLohWnNOOtSHKHQcbNNzKaX2o7LbybCdth0oe2tDG0NenLExhIFf
 CpH/DLxewh/siUpsrRg8hbC04UkYRQSwus5MCDAj3U+6X1oVmVQe+n0nu1E+F8m+wa2N
 iLQkSca4aT5sAYrehpvp3DbUET1/gqWPMEIBlruoGF4ikUO2TLn56VPAMlmLPeLxPYG4
 kdGr2u8Vn1oAO3MHP3pG4VZI/twXbvrZC4ArleCdHkaCcKaALYO9Z5lRSFcQ2iPbSumJ
 vZ3A==
X-Gm-Message-State: APjAAAUQJwz9ZEe69mrw9wtC/4hhi5wucPbNLv2RaaMgwjiKyjxQlCDo
 YwMqPHhfmrx39w84QXQO75XOyA==
X-Google-Smtp-Source: APXvYqxaB3BASfak3HtGRXkUDwz5stRu2+gt8lNOtmGCpd8KUCrVLRVg8QDPR6jvlghSvDKgUffagw==
X-Received: by 2002:a19:6b0d:: with SMTP id d13mr30080140lfa.79.1556482782943; 
 Sun, 28 Apr 2019 13:19:42 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v14sm3902654ljj.44.2019.04.28.13.19.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:41 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:39:59 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 6/9] ARM: tegra: Device tree changes for v5.2-rc1
Message-ID: <20190428193959.wiuh22ksxif7kkcv@localhost>
References: <20190418150721.8828-1-thierry.reding@gmail.com>
 <20190418150721.8828-6-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418150721.8828-6-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131945_204712_F40E02CC 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

On Thu, Apr 18, 2019 at 05:07:17PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-arm-dt
> 
> for you to fetch changes up to 1078946b4b2e44ffe924b0261afddbb38ff7d2c2:
> 
>   ARM: tegra: Add ACTMON support on Tegra30 (2019-04-18 11:37:46 +0200)
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> ARM: tegra: Device tree changes for v5.2-rc1
> 
> This contains a set of changes to move PLL power supplies to the XUSB
> pad controller, which is necessary to ensure the proper sequencing
> during boot. Other patches in this set clean up usage of SPDX license
> identifiers in device tree files as well as add support for the ACTMON
> hardware on Tegra30.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
