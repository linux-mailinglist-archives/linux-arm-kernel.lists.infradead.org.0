Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D84B61AB17F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 21:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmQ2k/VOJefVsSYsUyGswZKpM0A9Tezx2bVWrms62b8=; b=h/N1Xt0YpRvgRG
	/rrVyujZ3t+G14alXxouEa+G7jF5FLgPlguGv0mvVEL5D9U8R/DRtMXUjwhxTYDVK/HZxUKP9rtE6
	YOChlXj5BS/Wi53XLtEPdgNVNPftFhR5yrZFIvEtIyL2kZM9G6Y4vST37yMwbFuwjhchziNg2rcVH
	c+BW8Sg6T6XJBZXET7A+crNdRjvFMCZF0g6MSzY2MwdhA7HIqRep7NvbmNTdSSvqTtdUR0ywcyhLc
	UxfKWXMC4F5cryixNTkzY52FO6xMWT6rx/szkmbqVOrJHQW8EbJq5Rx0lFme/YcC7heKxd1SSX00T
	PbvnDQi3VvkAnUzHIoGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOnfs-0006Tb-6n; Wed, 15 Apr 2020 19:26:16 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOnfl-0006T2-Q5
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 19:26:10 +0000
Received: by mail-lj1-x242.google.com with SMTP id q22so5055577ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 12:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yEerOtnVW9ReUwhRZoIaZrpuT6uVSPq8/qTkpaJjzuA=;
 b=la6Ifd5mctiojkxzlf3AZj7V6OkRYDgq28hif+VciJJN1wUH96THFJ23JXYosHaMWx
 NjR3wB8DgAL53DLVyDdlCePvXfn7oyccyILjV2iwRbWrR9YM2dVp3JANlsgJ/dhm4dQw
 DfrAKi2Hz7xaSg4SMlt1+qcrsIiSpg8EcxaUaF0kqGGyQbm/Bkty91BuMJ+ynyFHjx7g
 r0yaWYI8a4fEdvxBrKi4vuBwkxg6jWC4dDEW5oy7LlQAwaXPrI7YcevVmUGAWy04/m9g
 /FFzls0Tky61cMNOO2WNKdD9FkTrHvnLEDVyGlutqk+bw2eckX+vhwHQXPqxWBAnRgQ4
 Da7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yEerOtnVW9ReUwhRZoIaZrpuT6uVSPq8/qTkpaJjzuA=;
 b=LPdeSaiWx169B9Qjz0p6/U0ZS2UEB5wrqscL97oLrPOSCegXPNuytdQpVUtz+6YXZC
 Qbo47aG2B5faVsUbZt8V1KRoeGDdoMx9VMd1Wms3gb6/uIZg3mBr2QJEFX5RcXNSaZSa
 t3rg4l0sUdXg443a7rp92sK/9QLUIdytAVGFUM7SZOYiSXiEKPWIKXRv4iS6rHKWwHuj
 eX/6A9YYqu8fVgHXWJLlLj+9q4UAE6CijrXeeas63W0SSJCuyO+9OaMy1bIK2O6WCzOb
 fQC73SoJ9gXbU3f3e5Ru9xTKUzBdcLVbcSDbjvKpm5s0f+L1tl9eay7GrSiMWSwkFTm5
 8SAw==
X-Gm-Message-State: AGi0PubuRnwFnkQVbut8OeB0RTxJeafOAOsxv8Fjs82GDkZ0qxF3L4gX
 24XFAAp7y2skNvZNC7iwWCyfONEh/HnYCs5oCdI=
X-Google-Smtp-Source: APiQypJXYy+GeInxhHxdIoYEC7BRlvmB+2gusgqFCjO+/tFRcwuY8FsLZ2/VepirEG/UjnrzbEuus26C3gedMNa7o0g=
X-Received: by 2002:a2e:7006:: with SMTP id l6mr4088422ljc.269.1586978765639; 
 Wed, 15 Apr 2020 12:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <E1jOkD3-00067R-RZ@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1jOkD3-00067R-RZ@rmk-PC.armlinux.org.uk>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 15 Apr 2020 16:26:35 -0300
Message-ID: <CAOMZO5Ahj9XRk-hG8ZxVzQP1424qPCkNX4BuWDJs-NW5f-jvAg@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: imx6-sr-som: add ethernet PHY configuration
To: Russell King <rmk+kernel@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_122609_845064_810C6AAB 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Wed, Apr 15, 2020 at 12:44 PM Russell King
<rmk+kernel@armlinux.org.uk> wrote:
>
> Add ethernet PHY configuration ahead of removing the quirk that
> configures the clocking mode for the PHY.  The RGMII delay is
> already set correctly.
>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
