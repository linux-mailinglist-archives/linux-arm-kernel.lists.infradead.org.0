Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1390CB69E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UaAeaVRiZjSuInMZbQ4iW+dHfg3rtHBm93hqzj+DIXU=; b=Th4xaBAhBr5wkT
	yWpo/f5JhKjr+TI4Q55EldYCwweoulCGgoYSYfGS8GoPhOGE/13+wmpZhCvC0OO6sKczbUS3mfr/s
	Fh2MeY7TVKRnoJ1INpe/lQt+qdX6pmEaDLN85SxQYmIkCYILBS4W31Zz/9WG5VCp5GVDblpkIcHKG
	7OjBm8TWsoH35A3W/veA7vY8+Os2ftO6G3/V+DIP6USzvOqFb27xmFYdACzBbcuGR+PIkw2LVGSgX
	9JKcdu7jAtOMk/eeoWWJlYZWR46bmsBNbCohqcuYoHSFSNo3DzoFhqcieB44CwM/cT13QzGC6+7g9
	rZonRJWajuENMZeLANiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqND-0000nH-Hs; Sun, 28 Apr 2019 20:26:07 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHW-0008Ks-HQ
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:20:16 +0000
Received: by mail-lf1-x141.google.com with SMTP id o16so6339338lfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TPyg1y9Q87/9Y3r59zZfCu8n7LfVUlJ7kY4gLb9hA78=;
 b=IDkFZGTSB61n5mJ9Elr586r+vMfznsVK/7N+sbe/rwlx8lJN4rhs08sThLmOv7q4KG
 gtuUfTzSUOMpl87lipnXeF1jJEg8GPF43gEiReWp+w+kO4vYOXJJh2v3Otg80Uvz//nF
 lcPQGNryi/17b4DlEGXBNC+sYoeB0Lrlqhi/R2b46E6+W9V/v+7/bmCKCBZCEonwIvrT
 sbKQUpMG7gzh1LV+oNuL1CeaovtvCkehrM1d3QRQc6zw0jacrlP2wJ+p4cY07E/U4bYu
 q3XhalifDb9nJjbDkZAdCy9paFSSdk2TgL2PjV71lRe5+lHK41Jaw80T65EBtUK9M8aa
 xbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TPyg1y9Q87/9Y3r59zZfCu8n7LfVUlJ7kY4gLb9hA78=;
 b=kqnzIH6KwsCJpzIClUBk56KojN89nFkMjTFWbJ5HrrMSgF6h+viJflwMaYwftJUdzA
 1geCjjT3d2DoxZkkWVodp4z2d16z2loGwovC4Gi7E6MOiemOHc2bo0pncSsK4cjC7PKk
 Vdf/nxYBYewQfSUX13ANxySmdZoCQ/fjmhwGvPwCa+L9YL8rI1XBfAo8Tq6nGbDdKYHa
 +vTkhz1csvCGfbY7RQUIpmF9q7GMBtQJaDX7Lj5AWIAcO3KHl+rV/rNyepnLiLZaxdB+
 /plsm7FOJ7HcIk8DjJLnX4kzfKy/tSmS1UaImVeSDL1++5KX9tNEWYfoN3bYUEcvG7Rr
 i6oQ==
X-Gm-Message-State: APjAAAXYa1iNE1tQyXg9gt/jNF+ECdBGx5daPKpr3CBm6Xky52Zw9bK4
 Rp/AUFhQR5K52aupmZMwoxt8rg==
X-Google-Smtp-Source: APXvYqw3OKdkwn9J31EefeS4YHJdiIcbQV/jg0WCGY+ULdJVWByezMvMW4ce87IWcTS/NQUEeVTG4g==
X-Received: by 2002:ac2:4566:: with SMTP id k6mr30772494lfm.22.1556482812937; 
 Sun, 28 Apr 2019 13:20:12 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k21sm6531214ljk.21.2019.04.28.13.20.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:20:11 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:52:41 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <andygro@gmail.com>
Subject: Re: [GIT PULL] Qualcomm Device Tree updates for 5.2
Message-ID: <20190428195241.uf7fstblpmthowut@localhost>
References: <1555997248-11513-1-git-send-email-agross@kernel.org>
 <1555997248-11513-5-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555997248-11513-5-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132014_722285_A2E6B321 
X-CRM114-Status: GOOD (  12.59  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm@kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 12:27:28AM -0500, Andy Gross wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/agross/linux.git tags/qcom-dts-for-5.2
> 
> for you to fetch changes up to f3e35357cd460a8aeb48b8113dc4b761a7d5c828:
> 
>   ARM: dts: qcom: ipq4019: enlarge PCIe BAR range (2019-04-09 23:33:39 -0500)
> 
> ----------------------------------------------------------------
> Qualcomm Device Tree Changes for v5.2
> 
> * Add gpio ranges for Qualcomm platforms
> * Correct the IPQ4019 PCIe BAR range

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
