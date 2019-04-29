Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FB1E865
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ILJX4FQk/Gc70NIP3SHVyxJD0NHvl5sj4+L5RgAf+8=; b=nAW9AN1Z1+2k6N
	52AQamwZpY8Bmk5pAmfWHsoXF0acZoXxg+b3xKTyWS0gp+0whl6dbiVb6bWp0JXHhxN51yD5Ikaoc
	ntaMFufBlZ5A6lbauFEEWmFpTE3WIcM/cHfA2Urs0XfJ/imVignAMzBmc05rfJP7H9IWZkaq3H1qC
	pZUbhzGU3N0cWGkm4zrEDuTcC6U+zRVluoCvmqQ+gNAPCZBvF22vwclvjJqUVGLPNkPScnuAiq+mf
	b9J5CJYsbzOC7zjyBpwJj6zzolfkj+WahhlRwbrbxJ5YVseWTYRfV/Ls4CJi/BIPQkQGEcYCUT0lv
	WWmj2JCsiJRu5+kywPaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9lh-0003iq-K0; Mon, 29 Apr 2019 17:08:41 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9kl-0002hj-At
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:07:45 +0000
Received: by mail-lj1-x242.google.com with SMTP id y8so3664329ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KBcye4QhzqKeoqaUyjY0zUegijoOmKCtv+D+WD7N80U=;
 b=WsysmdJNQpdFgTxByPJjxVYyt44jZUz1071ayVnzymPZSRkbOWraosPIsQs5nrvrpi
 dEPUjuq3I02ZlAfyK7xxnM4tOoas+uJtm9idlQlr1yOJzyyMbiE5xMFdAWj9LVfgjP1g
 TOrNyVfWod23M6c3dDXqv+ONKGCShToWl6fP/gbSW6MFTl43l+CAX7F4VcHRxImu17ay
 wNsbgfRrEt2zRh1ELpCE4vTGMyZQbA9+cThoMEuoK0Ffsh+v06b73ru/lz1+mimBnQ18
 TA3GwNp+EFxI1PTFt4oXcKuafO9+TbAy4BhU7oDCtCLwwk7ha6Icrphwsh/fxY8X1wBm
 r5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KBcye4QhzqKeoqaUyjY0zUegijoOmKCtv+D+WD7N80U=;
 b=bh+/ikFFJypRE7eHCi++CuYnxXhnsnIJolSNfdBO4kx70cwSMUQATQCH3AkxGmczf2
 UvXQ+S41wejFMz4gdndVdk+MlQXBgOkBr7J/cpUl+Eu++1uvcApGeTKovPAfJ6WN51nX
 8V0xelQpcpKVI0x2ZLzEBIse9Zx5NcFF9V+lRt6f4vxFI11fIdGb5EH73a7lvAcdBsI5
 DdMAUMQBB4D7EQ6TcA/faKNAdC+uo43tanIQuf3YXBh1TgKy4EXjBebrmNcO+MMUwGB1
 dg/cxcKU8ktebptbUMdlMQCi8WXtlMyvKNXBpPvWzV0WaqKkuso+9jLEBRo+89A7/W/k
 nQfw==
X-Gm-Message-State: APjAAAUoXJ6p/fHoh8oqt21wNcU/fzkfVTahwndSITa9lQqUhibNYsNj
 KI4fEzAlNDrMFkzOPYOg+ozWbQ==
X-Google-Smtp-Source: APXvYqxM4RPsZkp/nC4kvTatz1eeZBXvr8Mz1aclQeqA9IzfrDVLoDaZ7SuYTaMwIj8m/7mmCyAG6g==
X-Received: by 2002:a2e:8703:: with SMTP id m3mr32054572lji.107.1556557661780; 
 Mon, 29 Apr 2019 10:07:41 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v23sm2076378ljk.14.2019.04.29.10.07.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:39 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:29:10 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 6/6] i.MX defconfig update for 5.2
Message-ID: <20190429162910.l27ewbfvvestb474@localhost>
References: <20190422082836.3734-1-shawnguo@kernel.org>
 <20190422082836.3734-6-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190422082836.3734-6-shawnguo@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100743_573421_750C57F1 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 22, 2019 at 04:28:36PM +0800, Shawn Guo wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-defconfig-5.2
> 
> for you to fetch changes up to a3f12aac21848796f5b5c6e9ce2f04e411ec2129:
> 
>   arm64: defconfig: NVMEM_IMX_OCOTP=y for imx8m (2019-04-22 10:33:53 +0800)
> 
> ----------------------------------------------------------------
> i.MX defconfig update for 5.2:
>  - Enable PCF857X GPIO expander and SIOX bus driver support for
>    imx_v6_v7_defconfig.
>  - Enable more drivers for i.MX8 platform support in arm64 defconfig:
>    SNVS RTC, SCU Watchdog, SPI, i.MX8MM pinctrl and clock, LPI2C,
>    ROHM_BD718XX PMIC and OCOTP NVMEM.

All of these are enabled as =y. I don't think all of them are critical for
booting the system up to a rootfs. Can you please switch over any non-critical
drivers to =m?

(Not merged)


Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
