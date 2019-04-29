Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7B4E874
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WaXNllIEH+Uu6d5WyZWAy1V65+cRt/a8/VORUBCnUbY=; b=ohyqQsDBzR1fN0
	sk9IRooOsEadn3GAkmoupcxMt09WbcepcZVmLs48axujgm0bE9t8uZ0eimc9y+TUEk2PAhdbFSpkj
	SYX4j2p9zBbJ+HxpVTSpg9ysiUrovRoJVwHyoG8rQfrErGi/JiZdLaCpF92N8VSiQZx6pd5SBZ763
	AHr6RT/vZJSUzflEI6sbXeQyEUMQ3Rm3Gs9m4Xul+Dpxl9pV4cQ6hdYeFeilxNbeEx5hP9WA8t6Ba
	v3AdJi09Wwb93dgSn8MYYkRGLhrUjBIbOITq4gB6U6LbflzWRH0HYnN+wtQCvqcmzQMCw9a/P51eQ
	JydmZWmbVML6ZGi+p71Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9o4-0007FW-Gp; Mon, 29 Apr 2019 17:11:08 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9l9-00038o-Eh
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:19 +0000
Received: by mail-lj1-x244.google.com with SMTP id q10so10060178ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2MM/SQxH0xi/dLbldkpRZ3xZzelVcDhinHfICShSvRs=;
 b=EnDwkY2NpC1LV/E17KwS7l2QXxnU/kFI9iLnSdXs4K6xairSIG9vrCH90cKl6pfkxI
 IY47sOWi3uAXP4Rhfklomjhs8OgrHuMe9sMUU4NXLggDVohZuYl4HK+q+aD5rYpZjwME
 Gr6ds/ZosGzuhqvD9R1K5ZlR+iHmEqNklku+p1jXxNImXWJmOlt/kl27h6E+NIV/mOne
 3brWYSE7N3Lyn+dvSe+C4CGxL5FRmbfnniusGLwOUwFkj9zfCekkRIG2nEcjjd5Ds389
 X7Ncxrr2xJgUrMbgYFRPei7SzOIo5A4Ql+Z6XDyQzo9nDivKByFWk961r9kCdoVt089H
 O/Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2MM/SQxH0xi/dLbldkpRZ3xZzelVcDhinHfICShSvRs=;
 b=HWcpbmFMcsWTb2C0dMT0JMypaju0JjSgDQR/3TIutKnDo00ngz2eoiilzTSLA55CdB
 OE18itAsT309qXbNAXVAzFo3nOo6Zd627NzpIiT6nkVhTDJBeoISc5KDzpldOvkpXvCc
 0Gh3R89gvByjUCjQ2kWezR8+UFn8ptU3Bh9YTfm0VeEOW6oMGOEmCMgem0G20O8duJqM
 8CaXEOCoBvsaa2W5dKW2ov2xRh6D2ID34kQ4v1T3NGB+wd7lr/A/zsh3Xo48lV7DbLns
 DI+peom8e7qd6W8/JWE7Hlnc/YhIsk3lWuCaFLpL19vBnC3wKO41za4ZoJwWqKr7UxPH
 BWzw==
X-Gm-Message-State: APjAAAUGkYi01nFGimWjO5OgG84i+0flu9vLRvneLAD/bKerH6ibpkNU
 DmiyzUlpR9bAooT1CXEtb1nUTw==
X-Google-Smtp-Source: APXvYqwrH6ikLrvCdpPbOkgdjQzFwGN3U7F4PP7IEJHxShbeHK/CN2zXQTMpgfgNah9DtC0PCWPrUg==
X-Received: by 2002:a2e:7616:: with SMTP id r22mr14593040ljc.1.1556557685562; 
 Mon, 29 Apr 2019 10:08:05 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id w8sm7458081lfn.95.2019.04.29.10.08.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:04 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:49:00 -0700
From: Olof Johansson <olof@lixom.net>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [GIT PULL] ARM: mvebu: arm64 for v5.2 (#1)
Message-ID: <20190429164900.hlxweoccqzsf2tlj@localhost>
References: <87tvep6td4.fsf@FE-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tvep6td4.fsf@FE-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100808_469521_A5F3689E 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 10:03:35AM +0200, Gregory CLEMENT wrote:
> Hi,
> 
> Here is the first pull request for arm64 for mvebu for v5.2.
> 
> Gregory
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/linux-mvebu.git tags/mvebu-arm64-5.2-1
> 
> for you to fetch changes up to 04eb7fd961bc8ea587cb5cc8639491c7d3d38471:
> 
>   arm64: defconfig: enable mv-xor driver (2019-04-21 15:46:39 +0200)
> 
> ----------------------------------------------------------------
> mvebu arm64 for 5.2 (part 1)
> 
>  - Update the defconfig to enable the mv-xor driver found on the
>    Armada 3700
> 
> ----------------------------------------------------------------
> Thomas Petazzoni (1):
>       arm64: defconfig: enable mv-xor driver

Merged, but it'd be nice if these drivers could be changed to tristate.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
