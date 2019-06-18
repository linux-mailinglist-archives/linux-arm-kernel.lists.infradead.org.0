Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F2C4AC03
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMQOq7G+DovGO/5h+gAyikFUCa+GxJb3DxJNuhNbIR0=; b=jTMk7rx2pXE21Q
	S8IOs+xTb/RWzQQgy5qRYoVKaBma2uetwqbb8pwVXCT2F3KwOKelpRZRsp4BscdCn4tY+Q0r9FYCb
	MP/ut6KGYG/Lo9QgW5pyehHPq1RHu1JaVVJ38zCNWnE5zYrUwX9rFhgZMlNBmaY2yM1UOVESA2lxy
	oD+oTnR1T1lgeUy0thBueh2OCgo8SRq5Z8tlp1kgxsMfSKJe7vVwdA0klBSZah47ORrcGkqIY0cJ2
	C7HqHW5cNRdcAp43X0CUJA9UUXYHM4lTK7Ne1nmI0QEefvFNDjFX4vKZuafJWg9bDqtQWSMIR8Sks
	7qiVm0POZuM0GXR2CiSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKwr-00058g-2E; Tue, 18 Jun 2019 20:43:21 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKwe-00058O-W0
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:43:10 +0000
Received: by mail-ot1-x342.google.com with SMTP id e8so15924477otl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 13:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QyVmAgn2/ADZTeFvTvc5soQ9bwH2xTxtcHLwxv1lczw=;
 b=qa1wjVgI5rCT8ZKRcGF119YgCb/1p+uRb2IXiLAELUbmvypJNrkJKmdXVKbHWPNKc7
 kL5DmRPCHoXkd78jv4xuO06ZrFt5G8Kx8mvjb4CcEDPYTjQmBpCcJXtqgCJEE4pWq4sP
 1RzSc/9FHA7hI9rHoAUBNTY2wWtB+jKOubmvsByOLwOdbgyQZyyHntZjd6+8LkpXIXTi
 jZRBWRG6R6QvKIa0IGYysZ3MsX9E4eY+JZ1rrgqiAUwVOFIbZenlNkh7GgUwGO7JRuq0
 vHvHrsqZaDY9Sy8mG6vDSrudEZDKts9sd7RWptF1lO4SDVpbLuIInXC77PNaMb+9cFUT
 FUAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QyVmAgn2/ADZTeFvTvc5soQ9bwH2xTxtcHLwxv1lczw=;
 b=Z+ZjTnU3yDpYKJDfl2ufjQt3H07ncbLYb0Wngoi3CRjq5jBhoed0PQDXCNgsHX6hBY
 WQQGMZbFqDzj6LS1Xw/SayKnM3ar96+y0s6U/r0XyYRCcgdMaKVVwvCEF6yCYV2M6iPh
 RGxgfA9TeHswSnQZNQSR0cYRk21lURuiqYyOXbON4FwW/XdzqWHAoIcK1G2/YHxz1BGo
 N0FY8tWg2fpEuVrwNiMLmNCHuLBwa/+8kY49MeXFQT4U/V+K78ARcvBtlgEJOOPvTqx1
 kcdLsaheW7LKF05JNgBJ/DGF2C9x2bt5aujW+WZg1givFzhquKbnumyDeXC06Y7vmq2k
 n1hA==
X-Gm-Message-State: APjAAAXCsR4Tyad/Dzy+TtAXisIUWAc6S5H80h6HpCKdEfztgOeVZqX1
 AXjPW1Ymxulq5PABX+VLmjPM9A1DUlGr1B4/JZ8=
X-Google-Smtp-Source: APXvYqx3uypgm5u60182DZP002f1pXqni8MBRmNseHSnue/Gn6NM0Z6mwoXhO4bu4UBXMRrIuhYQlNWFgrS8bSAw4yQ=
X-Received: by 2002:a9d:39a6:: with SMTP id y35mr23888615otb.81.1560890584820; 
 Tue, 18 Jun 2019 13:43:04 -0700 (PDT)
MIME-Version: 1.0
References: <5d089fb6.1c69fb81.4f92.9134@mx.google.com>
 <7hr27qdedo.fsf@baylibre.com>
In-Reply-To: <7hr27qdedo.fsf@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 18 Jun 2019 22:42:53 +0200
Message-ID: <CAFBinCCrpQNU_JtL0SwEGbwWZ2Qy-b2m5rdjuE0__nDRORGTiQ@mail.gmail.com>
Subject: Re: next/master boot bisection: next-20190617 on
 sun8i-h2-plus-orangepi-zero
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_134309_031787_65529189 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jose Abreu <joabreu@synopsys.com>, "kernelci.org bot" <bot@kernelci.org>,
 tomeu.vizoso@collabora.com, Andrew Lunn <andrew@lunn.ch>,
 guillaume.tucker@collabora.com, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 broonie@kernel.org, matthew.hart@linaro.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, mgalka@collabora.com,
 enric.balletbo@collabora.com, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 6:53 PM Kevin Hilman <khilman@baylibre.com> wrote:
[...]
> This seems to have broken on several sunxi SoCs, but also a MIPS SoC
> (pistachio_marduk):
>
> https://storage.kernelci.org/next/master/next-20190618/mips/pistachio_defconfig/gcc-8/lab-baylibre-seattle/boot-pistachio_marduk.html
today I learned why initializing arrays on the stack is important
too bad gcc didn't warn that I was about to shoot myself (or someone
else) in the foot :/

I just sent a fix: [0]

sorry for this issue and thanks to Kernel CI for even pointing out the
offending commit (this makes things a lot easier than just yelling
that "something is broken")


Martin


[0] https://patchwork.ozlabs.org/patch/1118313/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
