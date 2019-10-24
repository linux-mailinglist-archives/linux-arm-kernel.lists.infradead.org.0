Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D50E28A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 05:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htN9e4XWvOuNbcmCg2UxLihKLH7bj7AxvBtrYWEVIps=; b=pM4I3+JHYWrTBF
	p+7KmiTTtbISTF6THxZJxe9VMDod5BRGgdal5vmFKNCyJRgooq7hU4G3mRKa/jDamnZsk11KE21vZ
	BrQyepC+SykvblBzP9GlytiSQ1AC5bgQ0TxekbhmG6Ncbk8neoSfbbv8Uex5MauXYPBjtUbn1o6o5
	0xAmDsCQ5BPt2xwkiL4Cjj3WNJUQml3EpN0RzMxdcSc/nRfMht7TKE2wsX6h3IcmM78X3YSM6H30g
	u0nuKXo6I5Wf+nblQgsz8M3s+iC0IidzxGguvtOud3/CJI2RHGSyWSx+YzF0ms4vk4VsnbO629dBN
	xEb07bcyezSBdd13z9jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNTW7-0007fC-WE; Thu, 24 Oct 2019 03:10:28 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNTVy-0007ei-8w
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 03:10:19 +0000
Received: by mail-lj1-x241.google.com with SMTP id c4so8182441lja.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 20:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=z/tlFb8/H+nPWGHchSNgfDRj1JJ9oaeXJYT4hNKWxeQ=;
 b=ek9MNqvb66qV8cRW+AgROyGs08MOVOc7qDC2otxCc1A+cYs0uE9vfbhi20WWFVblTT
 91f+YR35UwC8fVtaekEqfyY7CN3cMRinPGBQWb8NMATl5CeS05D5sVB+mBm8OX8vZFin
 IBJUYPizl7Bqh/yWtQFyMjXQoScd9unr+U4nROOaCS1dTXExyxChQlBidQh+D3ZY6bJ6
 IejKt/51HWlhR8/fXUbhtPVdBogLuYFGLl4aP9kHjsH6ag7O1NRwmEeBrbMegGqbL5Ky
 xaKCayNsNkQpq5s4uJ7wQutYZVn0H5wEFUWEashafueZRmwpggA9CCPRo8FGL26LpjYu
 Sy2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=z/tlFb8/H+nPWGHchSNgfDRj1JJ9oaeXJYT4hNKWxeQ=;
 b=TFJioa8uHkl58mndhpjSko+6ilfmG2z9MK8tEUPxd32hNDV8WFFDmLq+4vm6m1m9lI
 j3ufI7DACRuEuxUX9vcaMH57GyXlIcvxxU6taanwsWSrAT5tUHcC5yU/SiFdVFeaARrD
 kf7/4wftFGejAruldSE8yImSAONrTdw0S5HOnGnXJv6kmKTXVBPqZ5xTWofGhyUp2VOL
 hNTsVabxzREnZhFQUMIh5BcCt8YnhI8BM+dIuRij53mx7i9gtOC4VuJ0CgqOfWJiIbws
 n1eBpROH2Png+5NMGWJb83NoXGmGhiuApSbg1DqxsnP544nLP8KCzVwUkfVSCvt4raSk
 5gNQ==
X-Gm-Message-State: APjAAAUJh28TCyLoJ42EVDI3zFhrc3FnBrXISOKccIVShkhBBV/8ECRv
 UJhk4K3591YQwn1j+CUF8gZcmQ==
X-Google-Smtp-Source: APXvYqzvZAc99W8bZlQW6BAJJuLxQsdNhSTePw7eBU6V4gmhggmo5rP8BRfZA+Ldo4ZV4HVvKukEDw==
X-Received: by 2002:a2e:6817:: with SMTP id c23mr5136862lja.91.1571886613890; 
 Wed, 23 Oct 2019 20:10:13 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z24sm8090257lfj.40.2019.10.23.20.10.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 23 Oct 2019 20:10:12 -0700 (PDT)
Date: Wed, 23 Oct 2019 20:04:18 -0700
From: Olof Johansson <olof@lixom.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [GIT PULL 3/4] Broadcom maintainers changes for 5.5
Message-ID: <20191024030418.zi6tfuh6drgt47ah@localhost>
References: <20191023212814.30622-1-f.fainelli@gmail.com>
 <20191023212814.30622-3-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023212814.30622-3-f.fainelli@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_201018_459685_84DEEB9C 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: arnd@arndb.de, khilman@kernel.org, Eric Anholt <eric@anholt.net>,
 soc@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Brian Norris <computersforpeace@gmail.com>,
 Simon Arlott <simon@octiron.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 02:28:12PM -0700, Florian Fainelli wrote:
> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> 
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.5/maintainers
> 
> for you to fetch changes up to 0d660ffbca1a5f16f6db8f6ccbea5c207ec7e361:
> 
>   MAINTAINERS: Remove Gregory and Brian for ARCH_BRCMSTB (2019-10-23 12:02:05 -0700)
> 
> ----------------------------------------------------------------
> This pull request contains MAINTAINERS file updates for Broadcom SoCs
> for the 5.5 kernel, please pull the following:
> 
> - Simon adds a .mailmap alias for his old email
> 
> - Stefan updates the existing BCM2835 with BCM2711 which is the chip
>   name for the Raspberry Pi 4
> 
> - Florian removes Gregory and Brian from the MAINTAINERS file for
>   BRCMSTB SoCs

I've seen some maintainers moving entries into CREDITS when they retire from
maintainership. It's actually a sort of nice way to do it, IMHO -- recognizing
historical contributions and all that.

(Feel free to follow up with that separately, I've merged this branch into
fixes for now)


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
