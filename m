Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC68E1F68
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 17:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2NVpJdpa3MgwbnGyzjzQjWh1jRANQ+JdOjTiNi8980=; b=QOlE5SX7XKv1R1
	c2vJ5vUVYIlqRnTqOx9bIqf4WzlD8e+Nuc3bqjdbDcOS/9bLptg/dPq5yhA0CdPzInc9ZXs4jm7hU
	f/7hYKuc/yVPAU+3axAFmKhe/Zoaw9ECOEVI5+Pq3EQSr2PszgjKei2TXsv9lZOev0heCNvqkCWaD
	iw2fHUwG1mFCSiMTMd4Igl0szQGWEAlgG/gjhsDmJYC2ipNyrPfolux8YQrtTVvUTpEIrf+B6Ufdj
	LCmcNWubRB36hqQMS19eVlNn72CXFHzUDp7QgNbg7PlCDn2dZWROzK4HDNbOdL87wplpeDPYQqfmF
	QblU7TNKpQR+E47LEfig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNIfa-0000EC-W4; Wed, 23 Oct 2019 15:35:31 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNIfR-0000Dh-0c
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 15:35:22 +0000
Received: by mail-lf1-x142.google.com with SMTP id i15so9014333lfo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 08:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=r0AHO+iZQwUCHfdIYV8Wa6zqLU10ZfRb/not/CAB0WQ=;
 b=ZLntprIAeEU7SvtCdiJd/+jTvnlr0XFeij2QHwlUmD4HD4bEP9JUPQhoiwky9aUC+P
 I6wVhWquAjxqME/dmmrIeWARoXHL1/o2kLjX1StDYdmIY6HcoxkPVqZ4ivoZiExJLfAi
 WrB58dep/dUr80HRsfMu7I4NQ8xXxEAJrr2BHQIspFOe2rgnLqncSAxoJVrJlL1fvCgD
 R4kA/IX3ocE9mFGcqMR8znAZhvnlrzoPTDvMXvYq3McQO4dg7vms1/jyay3TdYYdmw5t
 5OhIG/CWbqbKjosLO3S3rltdybZvJY/msSg4clQvkgCi/TEUeWWs0dt+LSFTGSBr6LYZ
 0X8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r0AHO+iZQwUCHfdIYV8Wa6zqLU10ZfRb/not/CAB0WQ=;
 b=m2seIYltmmEseK7U1ZYOOQ28SQ0XiXAFezmB7Zs7hJQUjXrqmY2AZ5i8hACfVXIJjl
 5UKi1duI3edums0DSl0cs/wey2MqPOJrRVrFlbhP6qmcyMscyxs8xIQKTTQRzeM8l8pJ
 321phPHxzyP7H6rI+e8ipf5G7XRx/dFfXtBFVTkfucAweINV+iSt4itC7pIA2kqVjNtG
 2IKabt6zOmuTdkh+5iuVIJ9qVMOzmNY7fIfWyC3Hcf79w0aRqX2g/DqbDh4NZcpxULEM
 p4VuahfaeQJFC+LuZxna2yz5SjAUW2QpAeIqS7xbQoLKwNfhcumrB6BUjebGJYWhUpRH
 N0Kw==
X-Gm-Message-State: APjAAAXJ2/A5HySIq9ZAd/6rXJ6UOaephz2AxUYoR8fKopsiTv9MJp7t
 WFZllXdzj4MVDMEZFnOxdJ8iNQ==
X-Google-Smtp-Source: APXvYqyOlY4atypVhOL1yqzbbPyfZ1wJ9ba1YmTgk6YLHKhbhro6xTmdXp671iNJfrPpEE0rcAdkqA==
X-Received: by 2002:a19:820e:: with SMTP id e14mr7671548lfd.29.1571844917430; 
 Wed, 23 Oct 2019 08:35:17 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f16sm9721444lfc.26.2019.10.23.08.35.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 23 Oct 2019 08:35:16 -0700 (PDT)
Date: Wed, 23 Oct 2019 08:34:52 -0700
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [GIT PULL] Allwinner Fixes for 5.4
Message-ID: <20191023153452.3nmtq2pbo6ohriv6@localhost>
References: <80085a57-c40f-4bed-a9c3-19858d87564e.lettre@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <80085a57-c40f-4bed-a9c3-19858d87564e.lettre@localhost>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_083521_098618_82942CBF 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: soc@kernel.org, arm@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 08:51:06AM +0200, Maxime Ripard wrote:
> Hi,
> 
> Please pull the following changes for the current release.
> 
> Thanks!
> Maxime
> 
> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> 
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-fixes-for-5.4-1
> 
> for you to fetch changes up to cf03c691eb959f438c16d58ffd11f150b1a95b1e:
> 
>   ARM: dts: sun7i: Drop the module clock from the device tree (2019-10-07 14:12:09 +0200)
> 
> ----------------------------------------------------------------
> A number of fixes for this release, but mostly:
>   - A fixup for the A10 CSI DT binding merged during the 5.4-rc1 window
>   - A fix for a dt-binding error
>   - Addition of phy regulator delays
>   - The PMU on the A64 was found to be non-functional, so we've dropped it for now
> -----BEGIN PGP SIGNATURE-----
> 
> iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXa/4RQAKCRDj7w1vZxhR
> xU3XAQDYuCixpCCftKIhjcz+oultXqAJysDEE44dATwT1YfINgD/eBSwBw1l/Ni7
> yOumUvRZ1fJC3NO8e7vh9cYN9yy5tgw=
> =3/ru
> -----END PGP SIGNATURE-----

Your script seems to insert the PGP signature in a weird spot. It's not there
in the tag, so I'm guessing it's part of the email generation.

(Branch merged, thanks!)


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
