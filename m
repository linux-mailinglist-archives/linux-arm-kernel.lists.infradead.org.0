Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4261A54FD6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4oZd4qXwV15XosgbfOUqzrQfBscRUtwRjmQo9/OQH8=; b=D7YX9fOZ0FGfpb
	Pntuy9tBkRz91Ipj3MMmqQQU+ENhsRibDSrH+ZKxQHUk479FsDQDP0ED0DtvZcCfUyjjtZRlSuHck
	KJdAwUDd9Uqbh4v6xTljLBFB/Hz3jjfWVl72Y2bHxjuernH7vqdsmEdP769XWRW0PeOZqVwDaqcNx
	ZZVmNLUH9uTeL6+xub4fxI3yukbCOuTgqs3drmj3pyFFXisyIYbaRtg2y+TF/Xv+8utz2kvBXJt0a
	afONEWj/FnfCy+kSJtHHeiya8Q6tN8/m+RusDW/jxORTUaP82ayWNpWNInJLYFcQhQtEaFzFBpd/5
	LYw7mhRH0upssfpaANtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflBY-0004vy-NT; Tue, 25 Jun 2019 13:08:32 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl7w-0001YU-Sr
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:53 +0000
Received: by mail-lf1-x141.google.com with SMTP id a25so12587711lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TlUuZT0bMmqEGb0gZA/e8+9GQjvzG1BvoAMh5r6tsAI=;
 b=buRYqyPESo1QdE7VXPt6RVOCCP7PauVE6AorZfRUwKAzFpud4X+ZqIEOpWhqW+/1qi
 +gx3cGanB/UormWo277jGwBxBOPAVxjqclWB4oZ2PwvG/rSR4WXNoyzgCUjRmovaDET3
 pefljqc4uEEe9R3z6yVDna1uCzi3A6xFcaj1FWOGNf3WqMXLxZSg7clCJFs78KxysMi9
 SuUnx9zLiJP2dmunzU+in+qacHcuJuIOBeGxpoTnRyt4caJCQ5b8M89ttynIdvwuRhdE
 KlojGlnaYeoOQH5M9o8xBrWyaDCE15kY+VUT3uPVtHMuNX1yCwheFs6z79rLp2hqxfYr
 pyjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TlUuZT0bMmqEGb0gZA/e8+9GQjvzG1BvoAMh5r6tsAI=;
 b=ahm3maajE/X48OZSQv6UkpwVfC7a8DAqAuP4u1WcaaSfFVoWffLzjsLGYe4rP9XvYd
 2LIkq8/lxx37bzK6PRF9OkdRNrY9VsFAwP6B/jntYYV4YdNTOGeaFIKt6Xx9GBbIrbu/
 IxjRxm/YsLCa6l6ORaToZuZRbcUTjClrzgCJK+kXcBPkz6BWmlpEE6MgIBFKTI4FQPMX
 0EHiLWWVGPPfU6c8AygAgNvK1wQoLoIsh2EVDgjswyLhGPyUaqrzho2KctzbJRaWICE4
 VCexYa70tS0K0lT8fvSL+gIKkrXtTcqDbAISF/voMMBgPVuYSxpRPyz5EQrxLx3+hb6I
 DKew==
X-Gm-Message-State: APjAAAWUUz9OwyZTr0YmQ3p9LR03BMPsuLW60q11/Wgvr5jRTMjZLCF3
 xqcG2ZVdR6yn7NkulNGePpJvn+jtYSoGqQ==
X-Google-Smtp-Source: APXvYqwLbJZ5xA2uJ4b3HGjtFMPdIY4cFcfc6BfIHb5uSTH0RLInJ6gxfR53NFfHddiFf93+UK6HOg==
X-Received: by 2002:a05:6512:29a:: with SMTP id
 j26mr45182326lfp.44.1561467887011; 
 Tue, 25 Jun 2019 06:04:47 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id o9sm1932476lfb.47.2019.06.25.06.04.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:45 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:41:13 -0700
From: Olof Johansson <olof@lixom.net>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [GIT PULL] soc: Amlogic driver updates for v5.3
Message-ID: <20190625124113.onwiktixyw3vlqsg@localhost>
References: <7hlfxweyh8.fsf@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7hlfxweyh8.fsf@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060449_116186_0BBD3EA1 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 02:30:27PM -0700, Kevin Hilman wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-drivers
> 
> for you to fetch changes up to 9a98fdf5b6e635d9d9710f87e1da42aeab12ff0d:
> 
>   soc: amlogic: canvas: add support for Meson8, Meson8b and Meson8m2 (2019-05-22 18:19:14 -0700)
> 
> ----------------------------------------------------------------
> soc: Amlogic driver updates for v5.3
> - canvas: add support for Meson8*

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
