Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B176654FBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTz6FT9nt5U0sv+kHSeNgbMjjZTp2MS/WMJiVXU3s2o=; b=cQb/eJs5mi/5cX
	HLQedxWpEKeZ6bv9qg900mZ6DuupinITHdzJc1UmcIKANSiL3PnfNKF/1tec09xa2/xITLPoFkGkp
	KcA5v+PPIu8VTdX25x0YHzZSPL9kXbyC9Nt59od1sOyTg6EzMjF/34EH9rDSLvgv6MdY7UaMl69xM
	CTTcTg2JmGMw9820vbCdDyHZKvAr9OdQuVSYTmslYrnZqGycqNqOHbvhlNzxfP0DyR21mXRWcSpPT
	1jmsxSqDrBDc/hhVm7TGN2FPKWa8iufLcVD2qDYEoQ/bdzF/K0t7vgK4fHb60Ki9cHUZLscBPz1Gs
	EXhdBiImmRshOJWKZ/gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl89-0001Tm-Ii; Tue, 25 Jun 2019 13:05:01 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl7c-0001Gw-39
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:29 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so16174239ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=lPv5IiwZi/qVzddwdiHeLst6KphXvcBVBZQ/ceZIAcU=;
 b=K7CkxYtuN77fOmkMLMVkMuRjpjIY3F6dk2EFHtKzM/w3q6KATdq3XNcUNpFsgFaJiz
 IlPfeEmPgvB29wUex70kqHwaezkcVPiCUqwNlCzvoMxff1TSodC1qDX2KAe+RMqol6bP
 SGUrA9DlB9TY1rgsUwZyU7YjZhmuWCmvc9ZPlA2e3iVKKUTcZdLx8BRNKr55qg7hwABx
 MOWLb7Xzge3+EXv8Zvi9cDIJn1jD214z/yEwlGmPAE7/6PbntEwA7AQ3YdchtNb7IijI
 n8nk8g3AMw718/qI3FFFGkreEhBn73a3VBlFBqwvFq5WKeh6D7PhdN/D3QzMNRlOiF3B
 ox9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=lPv5IiwZi/qVzddwdiHeLst6KphXvcBVBZQ/ceZIAcU=;
 b=Tw8aQTCSMRLCGC0p9+yB9BPldc5WYU1SRiakc+L2y8M+25I78xnyEgTT0x2C8r2OTg
 ccMV28Ob1NGnxl+DX0vy2Z6HHEt5N/y5q6HatKPlXERIRCtGdiGqbodtcRnWO4JJgIrL
 wGwXevj5QK5IpFGtYQGxFDSLunWhAMFhWy+/wZADOd0kNSfK6Z2OwYwptuhBn/Dkys55
 osKzfK6SkMEKHaq7z7DxCGxsjsZ/vqMUzFyuUx50VmKqmNwWdPAxiAR4HZzy+Xnnyb1o
 GwkjVkTV2ugzZtimXAknWsCDXnLlTJeGDCp6DQ3X/CwR8gPh3gsmA38wXxGqDXBshl4W
 sgKg==
X-Gm-Message-State: APjAAAUwNc3el1A0R1WQW31HXcLT1ZUukIvitbHVjuA0PLc65AYU4jyl
 NQgkmF73ecufawg2ldFpfpPTmA==
X-Google-Smtp-Source: APXvYqwYoUhCxeyvRDo2O8PaTLPIs81VJApKM2NdTUdRQil7IcYv2tqN4CTGO2c4nCKMJmRY4SXn0g==
X-Received: by 2002:a05:651c:95:: with SMTP id
 21mr36942889ljq.128.1561467866338; 
 Tue, 25 Jun 2019 06:04:26 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id r84sm2603995lja.54.2019.06.25.06.04.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:24 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:15:52 -0700
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [GIT PULL] Allwinner arm64 defconfig Changes for 5.3
Message-ID: <20190625121552.gso5dc7n6a7dka2z@localhost>
References: <e4e2f9cf-d986-4648-a196-fba54f048edf.lettre@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e4e2f9cf-d986-4648-a196-fba54f048edf.lettre@localhost>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060428_139809_6DA3928F 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 21, 2019 at 10:13:58AM +0200, Maxime Ripard wrote:
> Hi,
> =

> Please pull the following changes for the next release.
> =

> Thanks!
> Maxime
> =

> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0eb=
d9:
> =

>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> =

> are available in the Git repository at:
> =

>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/ta=
gs/sunxi-config64-for-5.3-201906210813
> =

> for you to fetch changes up to dae335bcae86cab8f5e1df32d9c0ec200585a92d:
> =

>   arm64: defconfig: enable Allwinner DMA drivers (2019-06-11 10:28:18 +02=
00)
> =

> ----------------------------------------------------------------
> Our usual bunch of arm64 defconfig changes, this time mostly to enable
> some missing drivers for the Allwinner A64.
> =

> ----------------------------------------------------------------
> Cl=E9ment P=E9ron (2):
>       arm64: defconfig: enable sunxi watchdog
>       arm64: defconfig: enable Allwinner DMA drivers
> =

> Yangtao Li (1):
>       arm64: defconfig: add allwinner sid support

Is there a reason this isn't a module? I don't think it's needed to mount
rootfs.

(Not merged until clarified).


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
