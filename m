Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0DD5C5A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 00:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MM33T1Cz6+QvUwL2F2cl4GUiXS2C9SDjfxG1xHXjek=; b=hA4TVW/Q2Oxtno
	r80RshCGlFUWYwJ9H8JxdYygLWfQZE/AygmLtjzmugpN4jU2WM3ZUrrXfT8/ocSUK0LmpTBjEbFSN
	T0aTt5rzFg63fScm4A9nzE+UWjsHgnU3Zk1HHXFjZ38MPg3g7GbqyUfarN8PRaGv/ozE8Hy4pHBZc
	2zSo4eJoKtIajet1CLHmhvONYkXpBAQxaxs7lSsvrC8WPiAKj89K+450he+6enMOCD7xZKiQqQ86Y
	6TpwgCwxty4PNTSfOrvHbijPavCyDzrOnGPjySkAVdx21aJBjYjK0O2ZVPiRvF1CDxYuiMbx8yzyV
	4FRRUgozW90QfK2kbTfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi4jK-0002Fx-AM; Mon, 01 Jul 2019 22:24:58 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi4hc-0001Qs-0s
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 22:23:13 +0000
Received: by mail-lj1-x241.google.com with SMTP id m23so14807111lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 15:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PnICbOLKLSTEYP03kSCYudjIVv8794e14CdXUNk3vcQ=;
 b=MA7klYpyQgXA18iPN+EoN4DttYK4uivJil/U+XTlenHA4QQTga/TiMZILo8aeoL3sb
 2UEqimg8LxIF40JVUzcVRhwDDHQ/CpvxW/Hsk7lEPYyqfjVrHQiQhQYzJTc1K2pbt4jU
 Bz4I8gBPxINj9bPD1iwMxM4MHLzdBmUmYucjboeztNJR48wEewbDgrptAN5lXOWZKIrJ
 KLtOeD1o6h9uYqTgfenM+Z2kNsJfnKyjnwLYOzkfrdDAWl30P5aOI6835DxcPtt4Rb+9
 VMqBqEdx/FNZ26r9uw/q/Kb6XIv2RZ4biwoIMYROb/vexFhQvBqr5pXMEEq9AOAGAmfb
 eOlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PnICbOLKLSTEYP03kSCYudjIVv8794e14CdXUNk3vcQ=;
 b=Tp6wuHpf5piRwaYlf/xxvLQnUl5Xt0LHnGrg8Ly/0DG95dKGGuzCW3S5LTcFWuQR9T
 Oh9WLz8dCX9zPSfhjjDhp6c27Buuu0vgztKpGQjoFEoea6e2AMEj6RMMZJHwYG7FA5R5
 DmbCb19toIf1NRRqCbtQoHtGXVrFtD3LilCHL8cNhAUSi3p18dRCgWX0DdnAxR4lGB+F
 A864KoEqDbZnCqdcgT3h56yYIRCT2WSZP0lFHNESDA/73oz2U8ec/tSIK6LVIfbOdJtE
 eBriF8lRfwdC7YISpJ5nopfcQG6xzSQgV2Ikk8O+QwBBIjIpMrlwX8TqsKtf3b7Jg6EI
 PQsQ==
X-Gm-Message-State: APjAAAUftYW8LyrRPnQbWyaukVHOnLdUNlmy9FXgg3zeWNGGO3+1nMXW
 d7XjrgqzqhwsIr3sdr6t3LETrJOOwgA=
X-Google-Smtp-Source: APXvYqyRvSZ4k0h5+IEjAPVB3ySKoAKUMYglSsmTMEt4p4Z87oeZ8sE6Yqnf5YQNhBIcTcPmiHPOhA==
X-Received: by 2002:a2e:298a:: with SMTP id p10mr15053021ljp.74.1562019790232; 
 Mon, 01 Jul 2019 15:23:10 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id i62sm3483285lji.14.2019.07.01.15.23.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jul 2019 15:23:09 -0700 (PDT)
Date: Mon, 1 Jul 2019 15:16:32 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 2/2] Rockchip dts64 updates for 5.3 round 2
Message-ID: <20190701221632.7zcct6aek5yzzoli@localhost>
References: <1883297.MJ2kjSRBWT@phil>
 <1845795.d5AgpU8gu5@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1845795.d5AgpU8gu5@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_152312_377395_674092F7 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 11:34:19AM +0200, Heiko Stuebner wrote:
> The following changes since commit 45fa7c3838715b34ccea661e4b7b261d91668b17:
> 
>   arm64: dts: rockchip: add WiFi+BT support on ROCK Pi4 board (2019-06-04 15:38:54 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-dts64-2
> 
> for you to fetch changes up to e1d9149e8389f1690cdd4e4056766dd26488a0fe:
> 
>   arm64: dts: rockchip: Fix USB3 Type-C on rk3399-sapphire (2019-06-27 16:40:02 +0200)
> 
> ----------------------------------------------------------------
> New boards the Khadas Edge family of sbcs and the Hugsun X99 TV box,
> both based on rk3399. Small improvements for RockPi, Sapphire and
> rk3328-roc-cc boards. Improvements for the thermal handling on rk3399
> as well as the rock960 board. rk3399 dwc3 clock updates and a small
> start of the dtsi for the new rk3399pro (the one with the connected
> npu).

Merged, thanks!


-Olof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
