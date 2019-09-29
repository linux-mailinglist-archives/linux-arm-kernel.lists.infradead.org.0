Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB01C18F5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 20:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XWIgfv8OqBgS9TN2dSzHttscOtixcFpQR/DSHtN3aI=; b=TgI1L7gDAMEkkU
	drh/8g1W32f7LZOLDmBY/QK04qUazt54ckaS4WJKKTKFg9+8biRd07Djym5yK6PacEDe69j2fAKfo
	96ULsgOn9pOrkkQxV8PZ0CpJ+lsBKpbI5LGmoP1Vi+yssEtQ/S4GFBEvTOgVkqJxRuoKzqt52CPCG
	skcQiE0IaVR15HIeGhBXqMDg1JzpfCFEZMY5ehGcQIPeELGpeiroUEHwJej/MbQm0qeMbaXzOBAwn
	UdJCgSWm0/wDSWMRbBjEKBS9xIqkgUfUe8Zh+PlLe7KEtLIfCDFfHQjx+dVqS2EAg/BN705lqFCJe
	5/LFwpn/Vijm8x+JpgrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdqR-00035A-U7; Sun, 29 Sep 2019 18:22:55 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEdpx-0002vH-Jr
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 18:22:26 +0000
Received: by mail-lf1-x141.google.com with SMTP id q11so5326904lfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 11:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/GO4FoIF23z9uWn00UbU2BdUkZ0+OAL+wp3AO4KDJjQ=;
 b=YRgAeGNfVjEQCjWkxIGQDXsMLtDwC/xYouvsCdD4Shp7rkL0iLfeOlRtfCDxFomWm0
 G/xHVT/18rTZsrC7uKp9stYevvZIJTlieKzen/nJ/RnDEV7G22GyoHIjYC4KF6CBb6A/
 ViHz2F1GMgHK2Tj7cvUgEr4W5E0v7f3itaWiZsJkuJ5Pl+RfBDhvZMpXQ0oqeSF2n8sy
 bBk3t0FRuCm+eiDTE7HRaGodD4zbLyqqVqHrEwGhxXVkR3ShFA0oRJrCGw8f3N06Xl/D
 vfDcylgi0Ssp2C4Ayc2OA8W/2ssXeXsEJmDl1eDgCDQ4ixMYfDCaq48jdewFFxdTQoSK
 mKsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/GO4FoIF23z9uWn00UbU2BdUkZ0+OAL+wp3AO4KDJjQ=;
 b=gBHJKGCvAmv0QPXW3L3H911Pw/F7J+Q1IARmevuQg6sw/wds/UE2+nOI8PBtLINwIT
 t8cK2UUNG0ib3P+nXIGyvluRFVSf1If+PZTY9IShahPD7G7eoYSjw7ZlmnsEaTqCcAEn
 5QUG4JU0foVvw1ICsXebb+g5S9iPO2cBtf3ZmKYxjmA5k85Vz+PEah56Q8br/s16SIOp
 hFWyMaBtjUUzBCBVEGbIgZo1XktA1OxpnMzAS29X70ngE7OTxhbhTIwVKup4N7yA2eBm
 frP0ds+O7YNEJLJ6QCvTEy3tedKaR7Ns7sVLhX6kch3RxrR6fRJUqn30FNMhiURCcJYy
 nqbQ==
X-Gm-Message-State: APjAAAUzws6v2ULcO2c/HbgpPtCvEpkwnSrRg+b4lnjqE258qzU2rfRs
 OCUHyNgDQhht3+1T+nzWqpIAFR9ev572OQ==
X-Google-Smtp-Source: APXvYqyOYEq9CmvSLcrYKNKKcBaSvai+dng0dea9xtrVsTmpJDzHLhxuZ5e2O9a0tomlN8PvAPkEYg==
X-Received: by 2002:a19:381a:: with SMTP id f26mr8778800lfa.168.1569781341873; 
 Sun, 29 Sep 2019 11:22:21 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id i17sm2520983ljd.2.2019.09.29.11.22.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Sep 2019 11:22:20 -0700 (PDT)
Date: Sun, 29 Sep 2019 10:49:39 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL] fixes for omaps for v5.4 merge window
Message-ID: <20190929174939.5sgz6klvqzfcalkp@localhost>
References: <pull-1568819401-72461@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1568819401-72461@atomide.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_112225_653711_CE7C8EC5 
X-CRM114-Status: GOOD (  13.24  )
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
Cc: soc@kernel.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 08:10:24AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit 4a65bbb9109ed7edd4b6ed7168ced48abb8561a2:
> 
>   soc: ti: pm33xx: Make two symbols static (2019-08-13 05:05:38 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/fixes-5.4-merge-window
> 
> for you to fetch changes up to a4c8723a162e6244fb01944fbf446750575dba59:
> 
>   bus: ti-sysc: Remove unpaired sysc_clkdm_deny_idle() (2019-09-06 12:57:46 -0700)
> 
> ----------------------------------------------------------------
> Fixes for omap variants
> 
> Few fixes for ti-sysc interconnect target module driver for no-idle
> quirks that caused nfsroot to fail on some dra7 boards.
> 
> And let's fixes to get LCD working again for logicpd board that got
> broken a while back with removal of panel-dpi driver. We need to now
> use generic CONFIG_DRM_PANEL_SIMPLE instead.

Thanks, merged.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
