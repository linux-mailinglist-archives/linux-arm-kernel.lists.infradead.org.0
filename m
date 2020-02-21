Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A759E1681BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 16:34:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHn54yKleHG7Zsr6hCONWKWeH4wkYIMVqhikKpaJUyI=; b=usd67pKZIByy2B
	zyUGCfEggxiBjpndLG5dk6shRbiZqGMjAy2GDwqmTX/VieHVZpAPzVhj6GunAPgojRMdgyXNFgieL
	/BAszmS9gfzNkNO1pd3arJGy8UxJMLRYoH1iCDUjAkbRWcMu4RbB1Jm/29mbHNdrgZKU1kPquRaoY
	Ci+sPeZcl1zoSC3NA/Q18Bh9vNkWZem258uw5knXplq5gW2PH+ztRwSt5t112C2C1U/qdVfca2JQw
	eGcRn7kOiYUUg9SU/+9URoVWnkwev6w1mCuk/3/QRWFBK5Blypx3YiUs++gfkhKbup9B/j8Q9XmbX
	t8f6n994nhFUR/eGZJtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5AJq-0004OE-7O; Fri, 21 Feb 2020 15:34:22 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5AJh-0004No-96
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 15:34:14 +0000
Received: by mail-lf1-x143.google.com with SMTP id l16so1805183lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 07:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hUVfMiXxCwbSjtH9BPcnP06NcLeQvKTFfCk+TkAB1ZQ=;
 b=v90zLbE5oSFF85/nmKa9caaE43xtNO2sg0peoa6K/LaorENVEkOf35lATcCgMyTbPW
 O69VCm2Xttmp1nfwqSxxxy9Z1qj2m0SM9sgeOCvFYl6ECFGp8Z49HGtUdDD7nDXZV52M
 7mVPCdX9y3erbnBlOsk9iMOXmAKwPffElO75JsVMyUHRTzF0K94XzifctntrM7BCB0Ih
 fQWoyZ9Vw8c/u6cRD6ECP8tO3GWZezpVnii5ZYj2mp/KTrGI7hxBaziucNlZ/+MH44i7
 oNQMfu6cTpDPUepThAKF9qA3+I22/r3p1UKcvLrsvEjQ5WzRxqInd4YIw+8dM1T1IxQa
 crrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hUVfMiXxCwbSjtH9BPcnP06NcLeQvKTFfCk+TkAB1ZQ=;
 b=Df45MbqZYGv/q2bw1INUnjKq/2nYO/QPFVa3CjhP71K8Vh5Tbsk7rL/EkxYzCUCoHw
 IMFbhHGvyIcEPCNhq8zHvbU23zQ4rWF/agsGEeDUfdtWlw5fOlXfi+SOLtAx8gHaC/xr
 OCbuEzWCWgF9zzJHGHiezuaF5/lZyC92Abkk+zBSfCBhWIbIablCzPMNBipsqg2/P4Qv
 fTbNCwjBOPiOiw4Xji5o16FvHcE5Z5xdUztQkPCw94FOT0BBLkXMEIdz+sYCfiQwtLrx
 XplGptxir0D2g+q3rYJb083MsDBe27UzO69Rp1Y8BES5GVzphEfxTTuZXEtKG6FzurUE
 aUiQ==
X-Gm-Message-State: APjAAAWXhbly1JIDFfbyPp1aGeFr4jRVU0Gi1jtziv/1yv2vIXoPgvoq
 fqtvKS4c5V02GPrfngh4+VGsBQeCAgYLfv6IMyf0KLutvLo=
X-Google-Smtp-Source: APXvYqxFOhbB45zhwJACKnRWGrffnbDn/50wsrqM8zfRboGUcRtR/fIOZXVdUDsZuFjz9JDddI6CuEa9zN+Z1wPCOKA=
X-Received: by 2002:ac2:5499:: with SMTP id t25mr19779301lfk.194.1582299251375; 
 Fri, 21 Feb 2020 07:34:11 -0800 (PST)
MIME-Version: 1.0
References: <cover.1582216144.git.leonard.crestez@nxp.com>
 <bd7ad5fd755739a6d8d5f4f65e03b3ca4f457bd2.1582216144.git.leonard.crestez@nxp.com>
In-Reply-To: <bd7ad5fd755739a6d8d5f4f65e03b3ca4f457bd2.1582216144.git.leonard.crestez@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 16:34:00 +0100
Message-ID: <CACRpkdbB0xUF14aG5kVtmQ-AuwZVNKYq8_mW41jdQ_OfcNq8KQ@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] pinctrl: imx: scu: Align imx sc msg structs to 4
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_073413_318975_036AD586 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stefan Agner <stefan@agner.ch>, Franck LENORMAND <franck.lenormand@nxp.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 5:29 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:

> The imx SC api strongly assumes that messages are composed out of
> 4-bytes words but some of our message structs have odd sizeofs.
>
> This produces many oopses with CONFIG_KASAN=y.
>
> Fix by marking with __aligned(4).
>
> Fixes: b96eea718bf6 ("pinctrl: fsl: add scu based pinctrl support")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Patch applied for fixes. KASan needs to work.
Thanks for fixing this!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
