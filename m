Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E30CDC6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Le9MB/8muMYDGYg1iF/H9Z9oYcRSCYiF2uKm3CRVIk=; b=VeWVGm07/8agq3
	tKD5Z3gIqIdbn6Ci3/bvJahbO2BzQfx8rWOkKh49VkMudon7PeTnq6D/H06r8T5qfCHXgS0KxqxIA
	qv/yw39UE1e6HvKKyWF9dylbesY6OmO2GssN4DHh8hNRBAgOBSHYio0ULM0VE/vijFLL1VF1dsb11
	upPfM1aWyGHiW4s6/eZ5j0Rb2um4RYZIOLo3+lpgTLZrjAl2EDSP6MD4qu+/+pyt8lnpiUBIWSl8a
	J2mypQt3SsNFJPVyqGX1ORkijHQqsTJXC4betWlcJ0fHzjK9VE6su+149nHHO93SwgZhr89ykPij4
	3MSHb6t/R6jzaQrz2Vcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0GQ-00085j-0w; Mon, 29 Apr 2019 06:59:46 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0D3-0005v6-J6
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:43 +0000
Received: by mail-lf1-x142.google.com with SMTP id v1so7087368lfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=soVm4aaVWtNv0/v2MssMy1Ehr4h+hozIKfy3y9hTvhs=;
 b=zmMr/isEbf0K7llNokiW88YF2PQ5F5y+WqRAqd5gy847/eFZHQX6fUs8B1RMyjyg9Z
 fNIFweXYJr8xSp5z7XW1BYPY3LB/Xw2wXLNFHousvexHX7e8tJ5+8U+SMq13jxGpdKLt
 SyNm1+MfOxQDEhAYVJz5i7PVNE6QMgda2Wek3fdhT9ocAc7FilFPEDrJhrDOFg5Yh4OT
 EFP84cy4MN+uqo2qIzihpvuPIKOIkQ/iWef1Q93b0GapbULPxZBPPr/MbDOzRHtAbWMV
 wwYAgO7G8vhDLfwCUG1VUem+HYMeUM9BTujMYupvpp2EBkMGmxGmxQNcIoIYppfl4MgK
 YVSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=soVm4aaVWtNv0/v2MssMy1Ehr4h+hozIKfy3y9hTvhs=;
 b=EP4poBOpHic9vR22yQSZFDmrXu/sd0ZnvbHNjtEXQJU8I8/XEm1uGyVB2LPMlyr9vS
 e9ohYUPO5jTBiMh5dUf3wL23sFQhhAoVS2Mr5hkSg9PiFTSjZ+qL7hJr+EGE4dPYJXDv
 QtkAZnKFk1ilsK/9gevzF4beN/mzBoJ8lN6pAg84C4wh6k7j/TjOR9aZkN4GOeI336iD
 WsD9S6oPrxFe/q1ONGvY9HJEaOgs1LzpTtkhctpGRpnZYZS2RSk2mQAZlPOkl8vEZBuj
 ggy2DAkCsYV/KNO0geLsf65wUHU/t2at6qRsgDRydUhGWAHzlUqlrczc2FBKNZm9IDEz
 MajA==
X-Gm-Message-State: APjAAAViC/xQ5j4RWYxi1VzwwqmT/0+GSbcbJSNVpzLneApCb7gjpJTs
 Iy3KUxSLZtBoVBDGSqCVSm0NkA==
X-Google-Smtp-Source: APXvYqxQJW1XSVt9TMavEbM0xIHixil8OrQltgMCM89uJU6/ENroIZon4qben5SYbfW3K6tscJsQgw==
X-Received: by 2002:a19:7406:: with SMTP id v6mr7508583lfe.9.1556520975833;
 Sun, 28 Apr 2019 23:56:15 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v28sm7217734lfi.33.2019.04.28.23.56.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:14 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:39:32 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM64 Based SoC Defconfig Updates for v5.2
Message-ID: <20190429063932.iipl7p7j5irv6ili@localhost>
References: <cover.1555683540.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1555683540.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235618_281910_7F84452C 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 04:33:02PM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM64 based SoC defconfig updates for v5.2.
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm64-defconfig-for-v5.2
> 
> for you to fetch changes up to 940d1a288a598ee18afa25ee74f4ca124bddd364:
> 
>   arm64: defconfig: enable RX-8581 config option (2019-03-18 10:32:55 +0100)
> 
> ----------------------------------------------------------------
> Renesas ARM64 Based SoC Defconfig Updates for v5.2
> 
> + Enable support for RX-8571/RX-8581 RTC

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
