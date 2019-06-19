Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DDC4BC6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c98aK/Yy/oHc5tna9DsGsE8BM2JjySRHyGD0ccHDPtY=; b=s/ZBbajHZbJTe4
	fACgd/HFqf2RL4ZnFNT/EciZv6G/jSmG6F5DHaQymHqOoNiIZz4jcVp6jgrg0QEK82rBD4bxsvOhw
	B/4QQ2ScrSkQ/WiNSzbnS5jMibMsGnzDxF+IlUk3XK8MJf+FtKfMUmaotZ3i/FLL/cFUTrvuyD3kJ
	uekWl00ZDwkRlZY21l9Q6hkRuunbJ/QJxqa0GOkWhiSKU7yL0CNe/vuY2Br+iMJmywU7ntFQUENgU
	PQcnne3mbqTIz3BQ5eNUq6XTgvR1XPe+yynwDhd7aUpvM+PhEvlg568CNTT66PPKqXC2l3xSQ5h6g
	3mGQFXigPyl8LyUlu5Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcBt-0003Rn-P7; Wed, 19 Jun 2019 15:08:01 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcA0-0002Ga-Jd
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:06:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id r9so3622748ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CLJF5UoD0PkktcnwFEog1D4I3y+sELYQ4QMuolgvp6s=;
 b=yEAuqHd/teD0bEa7Wvv7EtSMZmX8mb6QsDEE3Aerx0LAnx2E4q6Gw+E4oHeMkrbx4X
 L+xDstCW0A1lRuwgSgfSXAYw+P8g9iFRxygf80S2I3D385MHj3PSi2CAKckN85Rcml/M
 GibXtG1D5ovltPNE9NE9LU3HTHrveAE9Y2fReaVv2Gb9J4bLzc9RbfZnHJrhUjp8Gu4z
 j0P7DZ1TPe0OjdPmch+r7FGd7w0u69YMAmiqJ9fpNqsS3DWd8X9mG8TlP+DXaTKcVDhI
 aNbhxe/mhawugb1K+RNV+ZFx1xApKMhMXwOVZIL8ylN8hNFDdEHyThk8HvrWIzdbfzbZ
 xFkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CLJF5UoD0PkktcnwFEog1D4I3y+sELYQ4QMuolgvp6s=;
 b=jyYIvaDCyuwxu22c/gvj2DiJVtua+fuD8B7VX2LIE1jqWJ9JTpoJ0krwj8Ygu+Ysl3
 ZkqG0FVu1CZgGu2lEuj1FmPaHhzCWK+gOABSfncvxi3w1USANkSh35hXCCakzdtYrrTI
 5Qc0gp2dPM+GzDOJ+0LrGFTA6eT+q6KWJ/EhzkYpBV+EXcSOurXFtcWKaLyPK2oC1A+7
 UPa1yCs64iI7lBtVG6XV3ngkba3SQiJhFS9ICFBKDA5AyjmD4r2HNkxYO6llQQK7G6Lp
 o93gguKebSp0nM2iyMc1g+IMCYEy5AJrjk0uPsh7/pC3Kocyu5Ecr+sjxUUvuiYEzizj
 hG/A==
X-Gm-Message-State: APjAAAUMjLdQK7+8FHbPOiq7hvZR5dNIxedn6dEZk59Qcq1ZC5eEScir
 zLdArXMzE9wNLgTDRXMqTsVYcg==
X-Google-Smtp-Source: APXvYqyMLO96BhAhlytIE+Ka8kFdXOnwnlt/Y3Ev1WHd9s/vwbPB0/i4dHhJQ2MiOCAxa7GBxsCb+A==
X-Received: by 2002:a2e:9155:: with SMTP id q21mr35693704ljg.198.1560956763090; 
 Wed, 19 Jun 2019 08:06:03 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t12sm3132540ljj.26.2019.06.19.08.06.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:06:01 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:12:30 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3] ARM: configs: Remove useless UEVENT_HELPER_PATH
Message-ID: <20190619141230.rtgeunr23gybv7u2@localhost>
References: <20190604185229.7393-1-krzk@kernel.org>
 <CAJKOXPd4LVFGgonbsuxii-5Fu5wWhxU9yotLHw+OXsPcxYw_3g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJKOXPd4LVFGgonbsuxii-5Fu5wWhxU9yotLHw+OXsPcxYw_3g@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080604_700067_5CDA3CD4 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, arm@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 04:53:53PM +0200, Krzysztof Kozlowski wrote:
> On Tue, 4 Jun 2019 at 20:52, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > Remove the CONFIG_UEVENT_HELPER_PATH because:
> > 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
> >    CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
> >    made default to 'n',
> > 2. It is not recommended (help message: "This should not be used today
> >    [...] creates a high system load") and was kept only for ancient
> >    userland,
> > 3. Certain userland specifically requests it to be disabled (systemd
> >    README: "Legacy hotplug slows down the system and confuses udev").
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > For vexpress:
> > Acked-by: Sudeep Holla <sudeep.holla@arm.com>
> >
> > ---
> >
> > Changes since v2:
> > 1. Remove unrelated files.
> > 2. Add Geert's ack.
> >
> > Changes sice v3:
> > 1. Change also mini2440_defconfig.
> > 2. Add more acks.
> 
> Hi Arnd and Olof,
> 
> Do you want to apply it directly or maybe I can send it along with
> other my defconfig pull request?

Oh, just saw v3, since it didn't thread with v2.

Applied already with the equivalent fixups, so we're good.

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
