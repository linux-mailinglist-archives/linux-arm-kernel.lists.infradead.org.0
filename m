Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB368167FE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3NITcq6ULl4FZSGCE4ICiDn9d3rIwBmiZxgqt/gRQs=; b=UKTHa93aSBaD76
	EJnOTy3Bf7KN8mx/7E3k/xu4IQ5vRZcCsGkEfy9GL7SAe61s6ynO2rRa8Xjw+U7W+BAAo4fR06qwz
	ln9rHX9fehf2BXpuOFUNqXK3CXndqBkuy6QHNMFXYaF5pmnOu79aB4PjiogZ5xpMPhsbbGeWch3pZ
	p2mQEgAjBWaQyzgsjXRXOUUgVL+oZ1GDdP/CSu4G1v7t9tKw7vdx+dw1cAxSf4EPLGb5slLx+2IDJ
	doVWLAJtpY3wHBkEaFFLQx7bzOeqEkt1XkXk/1Pkb7G/MKgL+uF4PhNSnEPKnaZiKBQmr4SiVzg0D
	WYwEZSk02EzuMMUBBrZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j595b-00024k-15; Fri, 21 Feb 2020 14:15:35 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j595F-0001y0-GM
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:15:14 +0000
Received: by mail-lf1-x141.google.com with SMTP id l18so1621939lfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 06:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AkDE61A38BuP/ygTbozBgf5MHpH9Vo95SRLvSWO439k=;
 b=t6Dtm2xouaekc2EYrWLEiRUk9zuzsx/ycSUdwto1vsa8hH21/0n0fsS5EpTujeRKQY
 8cObip8/t43obcYamNuVdIlHszzzCp5VGj6iyMSEieDfy/vR/lx5E6LccTtYZ83AOfyP
 oZECnvFBM1fTQI9Hc933Gn3ZkAOWB0Exf7IQsnk3yy+tySMBmH1NCFPCdUsmF7AiPWXH
 VKMqvJr6BsuzUCZxCOut1irILOrmr8G6HWBoZcUMvtJbz6e6OPfpV0CUqlZO9WuoScWy
 Nt4NTixxcAszC3FBbeBToY0zMqja6JoruuxoS5PaAyrp82LcAs4KNPi7QOHqHXoKyOdB
 Ap/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AkDE61A38BuP/ygTbozBgf5MHpH9Vo95SRLvSWO439k=;
 b=DtzuuAQLO7ps1Xrv5H4XbRHqs8KMQWTLxX86kApEND1bQ5Ocj1bh4qsJ23vHohV3CZ
 /nnrETHDMb8GRTevmMJ2USC5j23Bp12Pn8K7tDeik1S2B4QOIY4291tG52qHgIeDy6ZI
 BBzHELL9XQa3EVABIZdFkng0oj/MwUmXNABZfcYTlbstQ61W2uDBumsZKCcCh91l5szk
 6rH9W1Ij2YBB0KyMgsDIBLGOEaOnzOX2Ycum0OYBoEVXOn9eYf3rYn1X0PrmdIFBYxfa
 Hr6XhG22Xh+thqrf55K7xskO3g8Rk6jmYQTRy551p8Cj0o2If5TR7Zk7ITecnMmVu40X
 QDPA==
X-Gm-Message-State: APjAAAWnQRS2V4aXNF4vpJnKlfTH3mW4V0/OUyhAjj6yJKMDSk1M8ugK
 lRXCi32/NK6F07njQ6rPZM8HYh41ueZy6BdhZch9nw==
X-Google-Smtp-Source: APXvYqzecyE8QpYi6cdaz/TQalK+k7VYi+YdD5LPqzgQdo1IqXlfsRa0zlv4Hf96qBf+2V4EYlojhnrFM8/XTBOXs04=
X-Received: by 2002:a19:5e1d:: with SMTP id s29mr20122200lfb.21.1582294511956; 
 Fri, 21 Feb 2020 06:15:11 -0800 (PST)
MIME-Version: 1.0
References: <20200117213340.47714-1-samuel@sholland.org>
In-Reply-To: <20200117213340.47714-1-samuel@sholland.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 15:15:01 +0100
Message-ID: <CACRpkdYtmRWai8X4yAxNt57zT2eUyLdkDaYCmB=0BU62zAa81g@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: sunxi: Forward calls to irq_set_irq_wake
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_061513_567262_37DEFB24 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <mripard@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 10:33 PM Samuel Holland <samuel@sholland.org> wrote:

> The pinctrl irqchip may be connected to an irqchip that implements the
> .irq_set_wake callback, such as the R_INTC on A31 and newer sunxi SoCs.
> In order for GPIOs to be able to trigger wakeup, the IRQ from the
> pinctrl to the upper irqchip must also be enabled for wakeup. Since the
> kernel's IRQ core already manages the "wake_depth" of each IRQ, no
> additional accounting is needed in the pinctrl driver.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Patch applied with Maxime's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
