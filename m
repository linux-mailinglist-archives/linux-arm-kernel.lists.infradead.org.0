Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBCA4BA48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=To5HhazgDIgeiui5zMNnxAA2kmsGhO27ovk+ac9T2UI=; b=sLLmks7QLOEOEH
	kVe61hqt8f1sHbDXG2H31MU0domu6enFymvwz1ds5UcxWNGm/le3YW6DB0k9Yo2DCVZvkkf7mI7sI
	0YOVM5Dessv1m1a+Ua258VNP7wuid+0gtt8fwfyGNQJXMHO9KSf5vYmo6AMy/YjCjsNTTIFRX0PQh
	qMo7w2mvrY9Mmg0I5y2w3yrgHiBil+JK7kmJXeMJz2hViNdf1QY2UZ/FXDpd2uo290NV8kTCamtV1
	6orD9wP3jN0IsN3wCspn4obuMOLIDjhLQXVeuEdus0SykDlB7pWHXTq6VkMsmUJX3oz5ju5onoX4D
	BZ48iCY+2po71sbHriPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaqm-0002k3-4A; Wed, 19 Jun 2019 13:42:08 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdao4-0007fT-3X
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:21 +0000
Received: by mail-lf1-x144.google.com with SMTP id z15so12125420lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JgoqV2cDcN8qep+dFwSVNFFWA5ygZnpJwYXRjhsgwuw=;
 b=Z5MdL/jG2l2hOo6RiC4Ogmktaw8a1Uk+Hg4tUtGTO0YClpfeAeR97NBiAv+SOw2pHT
 H4pD6ekKt5cEhUEG3F0BFwFasTuuxRq6l3YF0nL1mZ53VEdyAQ9hrXcV+Fzypf57R7uL
 ozqCApUZ87rv29SHahY21GpTaetlBC2VpWVH1+pAslPAJ+tuTTxaPziF6wp4TUDJtoM9
 VEkgPbwAckPV3zV2L2D5bwbkUDQRTtjtLo2/3wFNkNHsJAx3qSMxfqliMUj1zRsOv+7h
 El7CgozCz2kHrqvKtk7pFfAMss008ZlUpTjmOYPw1DpvPiBR2DZdV3G+uqSDlo3eOxbV
 qxhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JgoqV2cDcN8qep+dFwSVNFFWA5ygZnpJwYXRjhsgwuw=;
 b=F7PCtGcyPXaEme3k9aZh6GwW2BbdisVV79/TyaVkGn7Pi/ELvplKUma/oR/Fj1t0Bd
 EhcoKbkV9DNwrjkTT4wFqZ7uJuQZoN48j9iKG+nkiDC2oHzsXbfwWYJJUsS89mWS/sof
 J5EkbtZn1NMRDB+xAai7WTK38sQwCT0gKqgXR+6t4kXsjfSabI0/1rfftkjRvCjHz+hU
 lO0NGEcjphpywfms8HZ675E2HFBvq56idaVsLHTDf0HvzP2d10Hr1PsXU+6Kbpzxe93V
 ZpYecW8GGeIIQY3BnZfYEesXSy/Pp/Xz983SuJIifi/9dc2sXq2/b4w/8owUHM0PvhYr
 6iNg==
X-Gm-Message-State: APjAAAV2x9p9EvzzqdjnUdMjMjJUmPSeijtG9+GyGaS2kmfTGJAoCYvn
 ciu1r8udN0J+DqZsrwgbtu/s2w==
X-Google-Smtp-Source: APXvYqxebke6TGFMwNHRuHiExfO6euZ1q7mDA34gn0k42nzUAyVi6V4WwM8aUJqJwOgqDBuNNowaJw==
X-Received: by 2002:ac2:5337:: with SMTP id f23mr22724329lfh.15.1560951558312; 
 Wed, 19 Jun 2019 06:39:18 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t67sm3117230lje.19.2019.06.19.06.39.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:39:17 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:26:47 -0700
From: Olof Johansson <olof@lixom.net>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [GIT PULL] arm64: dts: juno: updates for v5.3
Message-ID: <20190619132647.7nj4xpkpfr6mopfx@localhost>
References: <20190613142148.GA7283@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613142148.GA7283@e107155-lin>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063920_233042_E5A3A2D5 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, ARM SoC Team <arm@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 03:21:48PM +0100, Sudeep Holla wrote:
> Hi ARM SoC Team,
> 
> Please pull !
> 
> Regards,
> Sudeep
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/juno-updates-5.3
> 
> for you to fetch changes up to 7f8e78ca90e257e5fc8c1f34be309637fab688cd:
> 
>   arm64: dts: juno: set the right partition type for NOR flash (2019-05-28 11:35:11 +0100)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
