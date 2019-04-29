Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3EEDC53
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4Cz1I/1XRFKTmFvU137z3yaeRoJaX1Enf9rQgQeYAM=; b=fU7GJbFFWUvdxF
	oJ3wKgGb1k/SlTSAg2R5stBjD5myVSZ7GqYrxeH19QK+eLBo+3o3kpldOwqE24LdioZZCdNhknf79
	kqb4Kv+LvAXZD4Ua+asNkcwrql8bBGmRK7eDRsqIqJHNKqh8kRFOn0anpWZeCNKYOX0mkLvZDM0wU
	KHqvq7veiFkTAa2Y/QAtgQ0lmqK+4n82VsFN/Vpr3mxMawzFMH/eKuDf/v9K6r8eD7eUS7ebHjYdB
	PWU3QvB9k9pOM4nDZWAGC10fOI6ZOY5Jc+xm9d/zW0/IwLBDemB9i+JmfB57FmiXbTuALTS1qprp6
	JxVEIyeJAvEC0xENvKnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Cr-0005R4-3U; Mon, 29 Apr 2019 06:56:05 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0C7-0004pU-HA
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:22 +0000
Received: by mail-lf1-x141.google.com with SMTP id w23so6947411lfc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uQ0M3kqEovToVRAy71tzWRCOIWwo8jCLOl+DSwKEQi8=;
 b=yLBEyFP/1Uryno0mlE5nUrm+bSXArFHFkanRz3N1F+RPNGH/60A3Z5vFFpMn+7s6Sm
 Mo59pMG+XxrUCqmSURPpB12Yi6ruRXo9swU5PNWjmogP5K344jz0peHQ4Kg4gn808LY0
 43RPrvdOPyx5Urr/wzdUl0TBQPDHNEWFRF5JGcO6zOArJvlNbBxWtqfuvdryv9CubTBq
 wwLJSBp+6HJxM088GygJG34PUGHpI05VcckDhh6P+iWCEXIxRuaksNYDLdHD4206WjQv
 01e2KfBkVUPre3shRlSRvo220xGIoH+TPoTLCyhw4LMxLhr8SCPmchtR5qK8MpcElvYD
 bzMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uQ0M3kqEovToVRAy71tzWRCOIWwo8jCLOl+DSwKEQi8=;
 b=naEuT5lSEQ/kASb1JvRyOz+3662djPtb2Vqr38gccrH75VC3Qel05u3fkrWmCnA0TJ
 mEUupUWEDqH3wi8D2q8UIxnSagWEGEVS9X0oWtr94Rp26oWcfVOX/3MX6YTw17SGM31w
 rAkbRkjqYBv+HeEu34DyezGKyjH/YiG2wjJDesK5IAVoX4izBudmtxvGPpmJYYegu/dH
 21da7Ga0vgDwKZNegd160bVSqymFERzCsxpk4vg9lxlZucyDUVRWncCK8ddhY2WMIP+B
 9Kdz6XvF5x076Afy7rlN4IveKYOf9gQ1M61WcLUc5cvDTdTaAw5jalfM0iDoPsq6bP/+
 lqog==
X-Gm-Message-State: APjAAAUUHrRoahzwttdGSvjwjFTggHbeTtCDCHkLRRfxN5GoFPd4AIrk
 Jl89TyrFPxOnVHNnmH78lvUlBQ==
X-Google-Smtp-Source: APXvYqyIpXA1W9U9khiBW5Aeg5sKxj1A2pY8tQwgbbEQgXEUJ7XjutNJ0hTJ4UuaTkzvH7PpZqUmWQ==
X-Received: by 2002:ac2:4148:: with SMTP id c8mr27915519lfi.2.1556520917941;
 Sun, 28 Apr 2019 23:55:17 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id y20sm7255527lfe.8.2019.04.28.23.55.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:16 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:03:53 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL 2/3] ti-sysc driver changes for omaps for v5.2
Message-ID: <20190429060353.45vk2anagak44z3o@localhost>
References: <pull-1555087688-487222@atomide.com>
 <pull-1555087688-487222@atomide.com-2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1555087688-487222@atomide.com-2>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235519_957584_4D4F7DB5 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 12, 2019 at 10:02:06AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit 8b30919a4e3c7aba32dd72e8208147a6496cb16c:
> 
>   ARM: OMAP2+: Handle reset quirks for dynamically allocated modules (2019-03-26 11:26:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.2/ti-sysc-signed
> 
> for you to fetch changes up to d59b60564cbfe77d85c2f51b29941d8ed14984d1:
> 
>   bus: ti-sysc: Add generic enable/disable functions (2019-04-09 08:58:48 -0700)
> 
> ----------------------------------------------------------------
> Driver changes for ti-sysc for v5.2 merge window
> 
> This series of changes for ti-sysc interconnect target module driver
> gets us to the point where we can actually drop legacy platform data
> for many devices in favor of device tree data.
> 
> To do this, we improve ti-sysc driver not to rely on platform data
> callbacks to manage module clocks, and handle more quirks needed for
> some devices. Also few minor fixes are needed, but were considered
> not needed to be sent separately as they only show up with this series.
> 
> Then we drop several thousands of lines of legacy platform data for
> omap4, omap5, dra7, am335x and am437x. We drop platform data for mmc,
> i2c, gpio and uart devices to start with as those are typically
> easily tested on all devices. In case of unexpected issues, we can just
> add back the legacy platform data for a single device type if needed.
> 
> Finally we add initial support for enabling and disabling some devices
> without legacy platform data callbacks. I was planning on sending the
> dropping of legacy platform data as a separate series, but already
> applied Roger's patch on top and pushed it out.
> 
> Note that this series depends on related SoC and is based on those.

Nice cleanup!

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
