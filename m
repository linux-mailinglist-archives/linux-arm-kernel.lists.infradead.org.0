Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04AC146BD0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 15:52:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjfx9h3mpTV2utAXdXtoqRKzc4l3/10g8hE8bi2lya4=; b=PqIhqE97JxraVD
	4x2qvzN1ywqpprFoqWoU39I834TrYuO6FQFiea2rCjq6wF2Hofh/438Fkv0I19yW5XrOBDSKuTtg8
	hz6oL7ZYdcP/g0n6NI5OSkIObIoTkCxrROseqmnD9ddDijz+KmL5P+YCs1/y+NfwpkjWgELyqmVDx
	YPlZEdEsNTXM1Ymk4XSQuBm9jJHzIsE5XD52YvQuHov21FI6p+656SKgNbfqadz3+2yVc2rS8SNiy
	TDY79Hhl9L17MnIf/2hO3SK4kmX6ysMtWblfjpIqGS2t0I7MuFZcB0t7IWqXwLt0l4r2p1nFuocON
	3PJ2cDJHRFjRJCOJkJww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudpx-0001oe-DL; Thu, 23 Jan 2020 14:52:01 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudpk-0001mN-Ed
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 14:51:49 +0000
Received: by mail-lj1-x241.google.com with SMTP id q8so3713495ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 06:51:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wpQpzwBJizxiZM4AGXXfpA6ecY69PSZfjTnWJHiGDa8=;
 b=zHHe+/KcMiM2OVqtuB66pI12fZZ+m42MLWk7c4e0dwk+4PVcDAQRQGkH2bom2snRGQ
 s+BsUvWWCWn/MTDjvUDExBq6c17YH5kx0F4CyCRcPZrbl/ZMpiu+YXXREZiuP9fjopAh
 6nzwPYR7jzYP/oLmPaeeXd80oppKKn5v+bFxr+JOdkrzoxP4QoNZX3OSQRYmjxTLSpIN
 yUkUlNtjQoav+EWcGkkpcxkEmCFm0rUVno0+e+/fbqaGdQVmakXRyM+6XPcgkluEwF6X
 h2FXrOfSJ2GEh5c6vvNjJv0+7qB0BJ5/fpXc/LPTa+mWWKNODEoyiZzCO5tRzLTQrV18
 FARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wpQpzwBJizxiZM4AGXXfpA6ecY69PSZfjTnWJHiGDa8=;
 b=lz1MXtmAKyPdeKG4i5zVXZYDeVAvuvPfTRLArbZabfxDgP3QsvrabDnTmKCgqFcZQN
 JVRYSpCS7jz47n+N9jiX/U0JwkaLPOd8gPnHctPD4YzqKRByFT7u7tRi0fgxdjluVQWw
 jhCoOIDDe1Lc7YLt7BY+eMG6fFBNDVDkv2x+mJRMCzMIkevWe7SBpONYS8Pq31IBe0Np
 G7WcbTHkH8mcyy+NS8V9HrlacQ4Du4CcRW0nKahKtJ0/4X5jvKJlkecrfMn3zBpanopi
 oM99H9Nl54ub8OvM72/9j94e352MH5otBg0TeBA8EwJp3NzuzDff07Vb4BBKCHlnGLu8
 x0MQ==
X-Gm-Message-State: APjAAAXB4aQ8MDPGchkSZ5hChb9tM9qiPjx+cBJF9SVynka2AEaILfHp
 BXOoU8SLgatIXn9Xylfo9XykKD6IK69rof8kCL37CA==
X-Google-Smtp-Source: APXvYqyoaYqckC3ntGOF9x1FJqnlzYv1mgmrXUtrx2aG4vyVoA1H0f/fn7kbACbF5D4nDS8JX1hzZHSRQ8oee+Zg/Dg=
X-Received: by 2002:a2e:9143:: with SMTP id q3mr23150980ljg.199.1579791106444; 
 Thu, 23 Jan 2020 06:51:46 -0800 (PST)
MIME-Version: 1.0
References: <1579052348-32167-1-git-send-email-Anson.Huang@nxp.com>
 <1579052348-32167-3-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1579052348-32167-3-git-send-email-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 23 Jan 2020 15:51:35 +0100
Message-ID: <CACRpkdb5JEBqncC9gfPxM_TL4Prmiu5ZSn0kXt9mHBBp49p4Aw@mail.gmail.com>
Subject: Re: [PATCH V9 3/3] arm64: defconfig: Select CONFIG_PINCTRL_IMX8MP by
 default
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_065148_506519_0C90EAFA 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 NXP Linux Team <Linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, maxime@cerno.tech,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 2:43 AM Anson Huang <Anson.Huang@nxp.com> wrote:

> Enable CONFIG_PINCTRL_IMX8MP by default to support i.MX8MP
> pinctrl driver.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Please merge this one patch through the ARM SoC tree.
If don't know who collects the Freescale/iMX patches for
ARM SoC right now....

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
