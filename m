Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395D4B69A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lflblAdUBr7SvYoXlMkkEjyf1RzIsscYDlfcIotyYaI=; b=ZLKYmx7n72A48H
	+1DeA16gU+cg9KLeOPya95IQYB+52AC/tfsCkE9Op4j0UII0y0m5wE0DA3CdyAvYPldwAsvS6ZxpC
	f8O9FcfzZmGVEmSajmr2o3u2v2OTuiaVepQPXsACReZQ5aB834n6WRZAVblkyUWOkH+gddTSmH/xz
	DjpdQ0lAKLky5cU2x8G/8SjO9hXab7h7eygqrX+T6+qAcDZF12AWUcbonESQcFo/yfRFNdSEYHaBA
	2Tw/IT0BR8O7sGAf7BBR+i+xMRaMUGC1aNvTyCFo+Rp3yNCTJ6rLIVeXPyOKAzB9idD/Gz5rhYBj6
	U20f0y7k1rxFs/R4Elyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqMY-0008NX-Hb; Sun, 28 Apr 2019 20:25:26 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHM-0008Bd-9c
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:20:07 +0000
Received: by mail-lf1-x143.google.com with SMTP id i68so6201156lfi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3dIVvC+MR+L0wsGCt/+00eAggIxbLnOsQ0t6cOQQvPM=;
 b=Xf0ngrkkqsbOgDazYS3iEaq416sGquHH/DhSQ/G3z+PRF/F7+vzSWMgYn62pgNU6Jt
 A1l227ntcOQFLLfrbg3oslHCwS0h87y6b1V8VPKDO5q3uTHr2QI5xGVXORkI5Q+0Wbc5
 irerdKY7aOIAIrnhAcILalbrLmGnnRqs/L+TtonPSfCsR/pxzQ9QIK8BH9LR7sJenmrt
 TaC90khKIvcwPX31v8HEm6ZT6eshdwzCsSkxaKqTaWLIQ3ayBv/Hvp3R8kCJPDK0otGl
 PHWntFWVnCWEDwJEKIhtI+srU8XIIi/HZMetm/MqoQe7qZWJKD1Q+cOmfhrPLbDmq5yI
 Gz0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3dIVvC+MR+L0wsGCt/+00eAggIxbLnOsQ0t6cOQQvPM=;
 b=Jfy6fq3vEnD5hTQBhurO0c+Y86Ro/WmTUdwz7LfmN7SgQ12YB9ycpvClA3CB240Wlq
 wTT04oL4q+u4Jns85KoZgcLIx+KE/JrTc/aR1QFARIixQRKD4bBvSJCdW6P7BbuUXKYs
 DZIiPpSu9reMZySXg8BEotnJY2LbplWvFu8PfjH1rNSQSEUanszY0Ma4J9FLBmYEBwct
 EgK8ct+ly6m+cswUoQtvUk9y9w2+Rr/XWqrgEW7nPa/fp1qOQfOvowAVskWoGc441+Vl
 PEIHNMGYac/Dg8vFgSpFnlheEsZivRbr9ZCLuINMHHmEC7n+ZsjYy3uK77fzm43mvRGH
 yHpw==
X-Gm-Message-State: APjAAAWloNEbQZAkAzVgQkQakkP2x9EbwUS0GGplvJwZp2piYOGj3zzZ
 8cXGNgwwnhNG8FbOqqqPUC9+lQ==
X-Google-Smtp-Source: APXvYqy4lzUtWieq0ZEpbdsrDR3oT5/do6l+w43pSGxubsDMKjiR7Xr0rZiizXiYc2//BsXYuAc1Ow==
X-Received: by 2002:a19:cb09:: with SMTP id b9mr30862688lfg.55.1556482802553; 
 Sun, 28 Apr 2019 13:20:02 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t9sm4108531lfk.20.2019.04.28.13.20.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:20:01 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:50:22 -0700
From: Olof Johansson <olof@lixom.net>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [GIT PULL] arm64: dts: Amlogic updates for v5.2, round 2
Message-ID: <20190428195022.z2ig4vb23rgv4ryd@localhost>
References: <7hmukj9zsw.fsf@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7hmukj9zsw.fsf@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132004_499886_EA28FD63 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 21, 2019 at 07:51:43AM -0700, Kevin Hilman wrote:
> Olof, Arnd,
> 
> Here's a 2nd round of changes for the 64-bit SoCs from Amlogic.
> 
> Note that in order to support display/gfx and USb on these, there's a
> dependency on new clocks and resets also added this cycle.  Those
> dependencies are already queued in the respecitive maintainer trees for
> v5.2, and I've merged those tags into this branch as well to avoid any
> build breakage.
> 
> Please pull,
> 
> Thanks,
> 
> Kevin
> 
> 
> The following changes since commit e2cffeb398f4830b004774444809ee256b9bc653:
> 
>   arm64: dts: meson-g12a: Add CMA reserved memory (2019-03-29 14:19:42 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt64-2
> 
> for you to fetch changes up to 659f2563d323b09ca12b0e70bb6a50c1b25af3ee:
> 
>   arm64: dts: meson-g12a-u200: Add support for Video Display (2019-04-16 11:21:46 -0700)


Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
