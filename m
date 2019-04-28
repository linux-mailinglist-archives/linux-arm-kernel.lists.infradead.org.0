Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C55B68F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0I1fO7uKu213o7yDhCKWoEUNICf3RwFUxWCfTNbzHc=; b=gyaPli0en6h85w
	tumHoS9xUjyiMW37XN5Ivpl5aEl88DsFj/0FGtPFvGp1D+uiN9zRlHZIKSp3jMP0VisI41xpqBPXK
	rDgM/2S51H3teLQ9Gox7Z8nkSRWxDBwQbiEkVZBLWoy0hvGpQksVjdVN9B2KmLYe8vD+C2mzxJY0c
	g4QHCrQGxTkmjUkVOben81aHROmUFeLuEgICsqtZahro+Wc5oI3/geTIP/zCrcdXf+X7QMY/EuSSL
	XKIbQVMj+rYPYhEPTFus5DAuuho2c2LBsyv6yAT+g7VL8fvpGRPNseuy/wWPS60n1wm0OJVC35dlw
	pJ6qHnEpQK6o8LDo5f+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqKt-0004xa-Im; Sun, 28 Apr 2019 20:23:43 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqH0-0007sv-CR
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:52 +0000
Received: by mail-lj1-x244.google.com with SMTP id e18so1562804lja.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ney1S/+C9Vfp9LY+6VpfwHLWvH2eTNHbqlqbUo3Vz/E=;
 b=dpB09cUyZttcDYsyCJOb6GLKez+6KV7GkcL6noQLL/URNxbNW5E6byqRtGhjFbEKQF
 QlzgSQihK1mHW/lGEeboJrP7G9nwMv8CpDyKPYYHj0m7MN0iMKiKP1qGhXM+v33tz2SJ
 Xv6kQ0gyIZrobrih3WjI+/4o4puiJ/HV/lXf8Bv9ZkUqqaDMX6ExYyPd1xf+HQdu6TIK
 vToVZKggkJJKd5Ux2ImcWkUroJmAQYmU5n4Cnf9uUGLyTuQTi9xLNLdGrKMCjeMK7Xz1
 0x/Hd2Dtzr0DW8wvdIwiJmsmTEZbO+1VT+x/brT/rCol+bLQ4VIV8eP93ZI6kcLECXCX
 2X3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ney1S/+C9Vfp9LY+6VpfwHLWvH2eTNHbqlqbUo3Vz/E=;
 b=nlOBHxMbaoX/O+wFS/yW07rQEzl4mnYkS6cHud+6NxSVx0ZDEzj0j5M9yN5iG45u8D
 JddlVvBqSESRkxxKJYQK5iKZEgnhILWvs+hUyjF1OChhyEHwGBLGqyOR66La8Um+J8oO
 L0eESdJOOcD/PG4g9M/SCqaxvZQAHw/+pyd4XvdDJmp6gE5ptUfTNpwm0sg05PJJOrwW
 4CxFG47YEAIFQW8+GPiH5nelt52I3pxLp9jE2r/5njU6ZoEhQTJm4P/AM1HckDlY/K+B
 YwKU22lOVvAC15FUXGYgKMpEG4egXKSqEbquXGr8fT4R2nuW3jIfsi+lKXs8mNK/bZCY
 toXw==
X-Gm-Message-State: APjAAAWTH5OL6qlVTu9pZZdVOXtrYApnOQlvtiuvmaoSirk5JE2e2JIp
 tKjK3Mm5zgDMdG2fC4FKbUmH7A==
X-Google-Smtp-Source: APXvYqzk5TWpgUrXf5aEibxKymVTSq0gHsqoD4Y0TZYmz8ZlQ/q3H+1QHBBK5GmYPg6Vbj1+2R7CpQ==
X-Received: by 2002:a2e:9155:: with SMTP id q21mr18382199ljg.178.1556482780853; 
 Sun, 28 Apr 2019 13:19:40 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a28sm8483753lfk.54.2019.04.28.13.19.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:39 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:39:02 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL] pinmux dts defines for am335x for v5.2
Message-ID: <20190428193902.7tj2yyfcolk44crm@localhost>
References: <pull-1555431314-599391@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1555431314-599391@atomide.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131943_249479_DAC0ED92 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: linux-omap@vger.kernel.org, arm@kernel.org,
 Christina Quast <cquast@hanoverdisplays.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 09:16:58AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.2/dt-am3-signed
> 
> for you to fetch changes up to e5b258e53e58a3afd228bbef4d376c7a470cfa58:
> 
>   ARM: dts: am335x: wega: Replaced register offsets with defines (2019-04-15 08:26:28 -0700)
> 
> ----------------------------------------------------------------
> Add am335x pinmux defines and start using them
> 
> This series of changes adds a new pinmux instance defines for am335x,
> and a new AM33XX_PADCONF macro. And then the rest of the series updates
> the dts files to use it.
> 
> The reasons for doing this is the pinmux configuration has been hard to
> use and read. And we need to do this for eventually for moving to use
> values.
> 
> This change is done one machine at a time, and can be easily reverted
> as needed in case of unexpected trouble. The old macro is still working,
> and we're planning to keep it around until we eventually change to use

Merged, thanks!


-Olof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
