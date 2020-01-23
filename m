Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23C7146BC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 15:51:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2k6M9Sy5g9lxkL/dBkt5prqGIYLwhHNMB5L74HrEnlA=; b=aWfYuAnxsPTsbg
	tOHx5zy2YZH9JD7irUn+mayR6CVqKnt3GS0eSXJz+NJBDrVUA6JDOvS2BDdN1ntwUiyrvzz9OPfnJ
	SIAsnn+7beP9n98LorD99kWMJ7FSYVuui4BlXMbyNAWUfvdrDZEwxx/kk+207e305dX7vHMnS/b8U
	21beyS46so+S7NoQkmSMrzOat2gmMtcwmX7pAbty+OhRCZscrnoFKCxSj+9j/zyPkTo1idFJyjT0y
	0wObTuS2N/E0RPFq7BHede+cHn4a0vRhbtFyLQL0Q8sndGk0uyRvckwa/IhZY1HNhsoqt/9JZChEa
	FIvJbvL1tymt8CaQFOPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudoy-0001Fu-Fi; Thu, 23 Jan 2020 14:51:00 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudog-0001F9-Ir
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 14:50:43 +0000
Received: by mail-lf1-x141.google.com with SMTP id m30so2478643lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 06:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fNTKUOvPaK7NGZPdn9RrwLDwm3nxspv1+FNYwv3C3hM=;
 b=qNzbAggNf44Rjyi3xYv12GbLVPoWqZaEGnVV865MBvv6jFfDzRtp4lOna6Rgm4rgvc
 pXliObXDmabJwqfsEkby+uUceYrj9wJFfeWWmo7UIi7yjws0apqOXVdy6sq+tifkxkyJ
 WJ1w2CzfVPxAiHupGieQE0pSn3n43ScymKcvFNCn7HGnmo9TVWnuAL8CSvRgn37iGczT
 +QToDC6Zr4hjR2FvfO97FxNd9RacVRcMy+5gfNp8sdObik/cuPXSxrq5pSLv/lQBQcos
 Emm0PCLfAkk60QWURSKRv/BYfrvv/11/Cfrb785duxuKS4o1Nx6SQwiIUcp2P08VKKXW
 7ppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fNTKUOvPaK7NGZPdn9RrwLDwm3nxspv1+FNYwv3C3hM=;
 b=BheqFHXeZhQkZaJfAmcEva844vPACeKmOWWQSUFFLtAgHPOoprtqtqyt8HCWHdBBcN
 4DhnH/FLUBNIqcAM2kr9LTRQ03/d4P4uUxYVCvRog2+ZELzXyvT/H2FdZ8/p9hFgAEz9
 fxL5FWtgVcWRdgdrXLZgmZBKTSfh8ig+wRnwX5Pi04uzcSMYa1udM1gKlBsKM5HuErdZ
 DzEu5In6r1QgqZq7Yl2wqZGMvi25ky7IRzibD2LcN4A9Cqh10nR0CXvIuwNbMIUir3bf
 /4E5gVCbaQuD4FYfaAVq8QdZ6JZhlf7tUgUs6Jv3KuhE8bLPt8rSYEMCTQQgzmHWF5rl
 vrgA==
X-Gm-Message-State: APjAAAXnRbBU+i6wEVZ3GHNx/sv5DdXJkFO5Su5uE7nohFORiBZ1DEQW
 +Tu0Bh2oA1MCRhZGSYXPBePZAtf6xM0tUTpzPVdkNg==
X-Google-Smtp-Source: APXvYqxGwUR1H9HYGs2wE0Gbmgjwgzwz74XfSo69PdeiRrNPsM7q47aeOmg84PC9sjlXyry/YWLldmwkbBajFIoCZ68=
X-Received: by 2002:ac2:4d04:: with SMTP id r4mr4985943lfi.77.1579791040844;
 Thu, 23 Jan 2020 06:50:40 -0800 (PST)
MIME-Version: 1.0
References: <1579052348-32167-1-git-send-email-Anson.Huang@nxp.com>
 <1579052348-32167-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1579052348-32167-2-git-send-email-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 23 Jan 2020 15:50:30 +0100
Message-ID: <CACRpkdZ_v93Laaz-=1-CyOWPr86VAaeeArGRc5a18NgHNiuf=g@mail.gmail.com>
Subject: Re: [PATCH V9 2/3] pinctrl: freescale: Add i.MX8MP pinctrl driver
 support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_065042_694707_A93BF724 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

> Add the pinctrl driver support for i.MX8MP.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

Patch applied with Fabio's review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
