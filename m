Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D521ABD0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zk4Qn6X/5vSe2gkls1j8xqtLp7BuI8EFhaVCL8Ku3K8=; b=jD1uaoqvvA4kBi
	Lg8+RW4HbeNXZ1aDkyAVyj2zJiJdf99xeMjUJ1+e7HEMyiBUYf29+ae/YYeug15ngGlFsI+fNhwhI
	/fB1hGtXvqVBlT4VZ0Re70owt16EDwNmAAl9bL+Dx4apJ+oPHkEQjxHAJduqTLSXqP19pS8kprfiO
	UOADQDpG+8Ln6CXTg+Ca48fcbnrS9poxdIrujQd7EHntEq0XpqfnLag8AyX4A8hqxDinPbxTmlgaX
	dZEYaP2LRdU9lELntGHlrS5aTgVFgVpuz9NyYN9pdcHQno+ZFIdl2pUWWGcrTOTiw9Btw4Tmie2Us
	PTil159RHnoqymHm/kGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP12K-000087-8x; Thu, 16 Apr 2020 09:42:20 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP12A-00007R-Ng
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:42:11 +0000
Received: by mail-lj1-x242.google.com with SMTP id r24so7114217ljd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 02:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S+O7/evWJtIotBVQwpT2KqWk5rAQTrvcTqRSVKK6/9k=;
 b=GBO7Wy481+gwjzwWz6sPoxZqqVNth7p+TZXxXv9ZXZIuibsA7jpbfZ1R3Cltai4VE/
 T+Q6VWM8Q2rrpO4h9z7LSUUwDtPWLvpo/tgRtXFb00mvUDeFrnFf3yC1N4qAdzPUpqFm
 TdzpB+TgGyDntlMspEHwiEwmi7RkyzWoWHzpYbd4IXYRJiHIeQBBKmZLQ1gv3hnKR3O3
 ++3rNzyQ1L2/scInVP4zfxYgBan9tmTDcBBBpC/4+rNQU9yfyEWL/aRb4X2ZbPezw6N2
 vuVncMTVvXO7PsbL+fsmN08ROgpRe4jFNxIaEcMzDulqNGg4CKbv36dRq7yPUXGY+LDk
 i9Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S+O7/evWJtIotBVQwpT2KqWk5rAQTrvcTqRSVKK6/9k=;
 b=QTCvFPOWGpWwWaEfGTpudOYLy/SHALl6SmV1f+zn61tyvNrfJFrMZ79C8VaNIV2clI
 4sWLCvC2A5xd0J+b7nGMCn7aPHRSwC87KVnB58nl5/DMjx+K/KsKI8kFdQFJIEthE11j
 jYRsQiGTzGhFBsdUb/bkI/ZeJgBxo1nD8WRiJRl9iOB6TIHabwgBTt+mkfWoiAeRlWK1
 7td/DCpZBXOPxa7WkpLPOPVsiu8bUzJvo6exvNalraKkw+lab9AWgxebu1C2igVXJuCM
 hH+IZBQqCWML8ur5OsbTiPlKDdRNfypB0MtBTeyjHWpJjnW53P38Lz6+HBwwEClSfA4g
 8PPg==
X-Gm-Message-State: AGi0PubNVhDBMd0xxCZcjtjP9mv/aOZEiAOZqlK6BV8L4R2y8DNz5ars
 X2Dm7kRNqb5dbC6Si7K7LHXw1wFiFadowwh9gwBpMQ==
X-Google-Smtp-Source: APiQypLpGxFP3d0tO0AVQPx+QFHPQbTiqjrHkFQRQ+jm2jkrid0OXVlkJQdGNnguZKq4zibPaNOzMTt/O2P/KsUiIa0=
X-Received: by 2002:a2e:9605:: with SMTP id v5mr5725065ljh.258.1587030129422; 
 Thu, 16 Apr 2020 02:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <1585306559-13973-1-git-send-email-Anson.Huang@nxp.com>
 <1585306559-13973-3-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1585306559-13973-3-git-send-email-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 11:41:58 +0200
Message-ID: <CACRpkda4Bng5HqUdFCL4a+GMzyK-SqcfuDLjOaebS4ghtL4FsQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: defconfig: Enable CONFIG_PINCTRL_IMX8DXL by
 default
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_024210_771757_CB7E66D8 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Will Deacon <will@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Guenter Roeck <linux@roeck-us.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 12:03 PM Anson Huang <Anson.Huang@nxp.com> wrote:

> Enable CONFIG_PINCTRL_IMX8DXL by default to support i.MX8DXL
> pinctrl driver.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Please merge this through the SoC tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
