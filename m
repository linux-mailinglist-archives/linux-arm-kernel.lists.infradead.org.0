Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0465BCED32
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 22:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ByXTJQAhSOFJdc46j4Vo7LOXOHf8qVK3EJ67pKA+M5Y=; b=Uz4eLcMGSe7h7A
	f1fmnNXeLV9txapNvFQbIozdZj/NTSw6nSlSEk7gDkxRtk3/XREIPCNIFipw5Cbj11RmVXb09pfvH
	rffYSNi8S9Du5dMMcTxHZuv8Hj1GvK9qSTUHpGA2a0rBZ3phLqQKB7+ZY0uiYAQaKN14SQ+Lr9evr
	oLy6cKAfmR3dvCOfKtoxVljq9s4TIMBAOKBeViPUYU5fEbVjUX+AQxXxqao+r0Z7fXgoUiYUNSQ0o
	JjRvdMIlCg3NWRU1wX3/1vWswmuwReyLvy3Ym97jDzPX6/9JTcr3ZcHm6QVMC2w0kwz2fGa94oz8J
	HlXVLp8F+ROi4/VGgrzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZLS-00079N-0y; Mon, 07 Oct 2019 20:11:02 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZLK-00078S-Hh; Mon, 07 Oct 2019 20:10:55 +0000
Received: by mail-oi1-x243.google.com with SMTP id x3so12854645oig.2;
 Mon, 07 Oct 2019 13:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EgoI/BpstzExvfapSP/r9rpFlNEylt0wDd7mLlzkxGQ=;
 b=f0iot5HOwYxLeGOm8csmxxtd6SWMKyklIHgREALK6AUANZrtWVO1P+Ig9PU3XicIMY
 yMut937g7KW5neV7E82AY6/GnCdXDgIXELS1pXswRMIH9QYfa+NW8+0KmyXoDb2ChZua
 F7CUPT0mlXK6AOtVjbG8gsYDstqbDyCmfmFp3RURqNEDYTqUE5SGX4VVKKPqUvzHZ4iw
 e9enIXSgwdxOER9HHzPGZIXgjDV+ttJX2teWyKKjLzC3esWbyX79bhJV29RkSru9h7kC
 3AyOWJrBIijj8QKtJ6s4vfoOaQZ+bCP2x3PHjZxUn03Od8kX83RfUR4cpatOTikgGIFX
 7QkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EgoI/BpstzExvfapSP/r9rpFlNEylt0wDd7mLlzkxGQ=;
 b=XEInC/TWUxa1Q6ybuylJ2osW2HcYs6B1GhgAeuBS7wspmjunQI5OKtICfy8zPUAbxc
 kP3UhVUva5f97gNp2TTd1hgiQRVf2g6CSe7L1y0ZISOyH9RLCMV6IaETY0Xt9Sl0RyvT
 FRkzWUkqXmT3t0RBDcTfC7uDHVKM9X0dm/8H6e/3Ji1sDXLTj4kgWYSxVzt18gLm2ePC
 vWBlhJFBvA+CvNgnA5h5Skh7A2FyA2ffJtPv58Xf8yCeaIdYinSTih9k1U600QAyMncJ
 hE5J5WSFg06gdqmuEzd19cpIQv1dRz0aJAkMTG0iD1Gqwvb1/FuTX/yCC1aInx25fji6
 bKiQ==
X-Gm-Message-State: APjAAAU4sds1CbdIgCSJrz4LP1bfzZCfs8KkIs+rXEt+UnbZ7hq8dXig
 80Vr3rK+CIWCjscvrdwNTTC1wfWdWU2lfVw7WBc=
X-Google-Smtp-Source: APXvYqyMUNIK/2LBX1NHC436+9DUvSuMC9kF8EqXAJrGmDjVk7EEXqFvCvKb9HsYzM4QU2sMjSM12j8ePZeFckHGReQ=
X-Received: by 2002:aca:5a0b:: with SMTP id o11mr889855oib.47.1570479051451;
 Mon, 07 Oct 2019 13:10:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-6-linux.amoon@gmail.com>
In-Reply-To: <20191007131649.1768-6-linux.amoon@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 7 Oct 2019 22:10:40 +0200
Message-ID: <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to
 y
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_131054_605800_A9FBAFD7 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-amlogic@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 3:17 PM Anand Moon <linux.amoon@gmail.com> wrote:
[...]
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index c9a867ac32d4..72f6a7dca0d6 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -774,7 +774,7 @@ CONFIG_MPL3115=m
>  CONFIG_PWM=y
>  CONFIG_PWM_BCM2835=m
>  CONFIG_PWM_CROS_EC=m
> -CONFIG_PWM_MESON=m
> +CONFIG_PWM_MESON=y
some time ago I submitted a similar patch for the 32-bit SoCs
it turned that that pwm-meson can be built as module because the
kernel will run without CPU DVFS as long as the clock and regulator
drivers are returning -EPROBE_DEFER (-517)

did you check whether there's some other problem like some unused
clock which is being disabled at that moment?
I've been hunting weird problems in the past where it turned out that
changing kernel config bits changed the boot timing - that masked the
original problem


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
