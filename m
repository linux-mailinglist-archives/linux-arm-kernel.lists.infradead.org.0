Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF61219348A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 00:24:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFKknKRs/9c3aPTXSn24SREiCCJmpuihRx2h1He+/w8=; b=h2jJylwMUnZS0A
	R5+vEb7gJFcluu06VYI5PMabhiMu04QVq5hVGJrQqqKxWTX6z3B0Z4XqUDnUgF+3EZhcSt9J6henu
	i/3Oj1OQGPyt6DjXBx+xU886t7fkfbgS8MoC1kyky85fmZhHloU0AinLhTXEZFAksJrZ/4b0WjxIw
	CTkvSKRjPHN+1VjuNRPtJIVuFEGaIrgpUh6UDXTaipLPTB0bRj6Dd1emKOqG6fD0haTsAo00Iv8IO
	S6tC3XijEHYhJP79Sh3ofFe98NGIznOV+8WzU9QYy87yS/qcnqGvwGAbJ5HsCuogciaMUx+PiU3YG
	HqpniZ5PGXkyPn/504AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHFNG-0008ML-Cp; Wed, 25 Mar 2020 23:23:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHFN5-0008Lv-Eb
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 23:23:41 +0000
Received: by mail-lj1-x243.google.com with SMTP id p14so4426086lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 16:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pzH05cCCMpVmHYF3oKcpm8etu/QybMtAIGeitvxhj1Q=;
 b=WsSMMtpKb0V9yha9xppOQV22HjAGLYImHQyE8yg9neTuzz/nvoNw5ji+hwqqFg6hr3
 eB9INx4p4jfTld8Qe4C3ld7jai8lFsCq83RgddMC5yJrwE7wfIr0lRqucaUWViadoI33
 WeTPrKbBBJvypG6oTC976eAJ/thZPFgWF3kyc1psAcc9B2BmC+xrz2nl6YmZRDh93dbv
 1XYDlZbOgU1OttNHAL+wQWA07ngBhdFag18MwBQxk/oY/Lv1oehlKCkjLaAErvNTAQaY
 FEgiaNA/t/3AXYRG3PyOV+a048N0obhrQg6f6Dqpxa74yd3yC0LactbyPwxxruNChYqM
 VVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pzH05cCCMpVmHYF3oKcpm8etu/QybMtAIGeitvxhj1Q=;
 b=X+LGKwUwRumVggcJcOsyempi+qC6nilE0vaZRoZAvqTzy9Th/ACempOJVbNXFuGBQO
 HbXS4R5IbPZRTe12LUO2OiwvkXt7i4ViJ6uboAR7a6iU/A1g+8kPsLpGO03bWB0MhiUT
 vzOY/UTd4N0XoZF8xJjmD488PrR8NhYswJ3PV5v93MRodmv8eUTkAL8K7fpvhJkD1Yl2
 jwXOUZJlv6LD8VMZWhcYQUF3824tR8cmCawFuim83zlh4/s0ui890Ln/QfSGxK1TticF
 gEYD7mmuFgciMlueo4q3OYrAGmlH8z4wQh/5bNL151xrsHCu0LN3Wifkst6YWl+aucTQ
 X9vg==
X-Gm-Message-State: ANhLgQ0mu39EUWsgUlGhzxzKjCJVOMllV90fBBZ6vKNyimw4oWtQ0ZOR
 pR5sqNd1sb0qiJOW+Uvs+Iww81uFCxEwdbz4EobNI/bFyYE=
X-Google-Smtp-Source: APiQypITGq57Kb/lzahVkrlExUhwLPINcscG+bHPEiaOYa6DIp+J67M4OUdwol6kgmk28bTrywFON1xEgyHN3jB+qx8=
X-Received: by 2002:a2e:9a90:: with SMTP id p16mr3485374lji.277.1585178616927; 
 Wed, 25 Mar 2020 16:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
 <1584070036-26447-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584070036-26447-2-git-send-email-peng.fan@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Mar 2020 00:23:25 +0100
Message-ID: <CACRpkdakXz2QCsbAqN0AxXJ2o8ZWzJ9_h0b4w8SCvtME4Uk_3g@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: freescale: drop the dependency on ARM64 for
 i.MX8M
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_162339_636607_58DCA0FA 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 4:34 AM <peng.fan@nxp.com> wrote:

> From: Peng Fan <peng.fan@nxp.com>
>
> Moving to support aarch32 mode on aarch64 hardware, need to drop
> the dependency on ARM64 to make the driver could be selected for
> ARM32.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Patch applied with Arnd's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
