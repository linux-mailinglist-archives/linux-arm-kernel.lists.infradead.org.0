Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60614168092
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:44:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BZOWgP+fExfxvVl7KRimuiG3gYJFDrW8jNYa3xkS4w=; b=gYaTdF8IfVBV/b
	2cxC0uLjjMqoT7UCj4zimvf72zv0/vqOtHS5YPpHMTX17znS47+2GuDQx1ki6OHebKft/ZTtehWZ8
	MUlSjP1oFLgpybtXd3+8IicBCwyXoVMA8AassefhO0KFI4qmL2+CwAQzMx7aEq9Io9jATYds0xsst
	6RD/Ma31NC4wLfokwWXagYQT2+KEZvARCnao7g0a5OtjSTJX07eFBWGutG+CMCxFTZn4adLGisZx8
	tL7sz4YdfA0B8irVXgep0PRQxcNkQKW8NtABJw19WkjoSCQDd+AlBJqozlSB7tfDJ0Fcq2VWxRYf8
	GgoU+tRoOkPhF1bxKxWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j59XG-00069i-3N; Fri, 21 Feb 2020 14:44:10 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j59X6-00069L-Eq
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:44:01 +0000
Received: by mail-lj1-x244.google.com with SMTP id q8so2415886ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 06:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zxyoG6nAOs3iDcNS4Z1SWTTrzy8IIEIHsRCmOX+8xu8=;
 b=inQU1TfpUZ0CBu0amQil1sCPaEvQ1X8UG63hrSvoCXKC9OkJUw4NMr6UZu1quhG+L9
 m8YCxsLYKkVSCb89IEHwGlTUj0tH/crnSogq6yuDyx0qPbP6ihLIMc/zM/wz7Jd5bfZX
 xqdCioCkyRNOG+0cX3werPRMLlItgEq+fIuGgib/XzcQgBpWVVecshjDu2aNJLc1l4yi
 TTCnHBUb9eqLDB5NnruRQGWv0DiUiWCHYv1y6fdAC6syv9Ba0POKaArPytKmQVSZhyHN
 9/f92rq53NN4462mByG3m2loQLus9vC/HY17sDr+Eczq05z38i4HtQGxUAhrVtZtf5sz
 50tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zxyoG6nAOs3iDcNS4Z1SWTTrzy8IIEIHsRCmOX+8xu8=;
 b=JNsKfyQnfic/mf+vKO/PMcGfMVQkbuZQmDqhxBKXqXX9gKXWc2uP0YIvK74LkjUDw5
 7lPBLfRkXsfbEDEU9NFuFCet6bN10DE4VG3KsbRgh6VP6Rt3+/FOCcEJNh/jctZEQzAW
 R7MOGCr1nVY67pIj/h49BDpvYTBksj+ZYk6uMVban4Sj2sm19hJHxNeySMuax+CkF0qg
 aiS2Zi4BjFKxvVLKD3Vc/iCovXKq5Du9EFPqQVRYOqeDiBCuiAVzUyY85Hi3zwWpkwT0
 dhGEgGdQUqRrjNkhO6MaZw2J1rNnLQpIt6jJXpdLb+jvjBRGLKTNJFJBcP8AhTmyHKI9
 Ystg==
X-Gm-Message-State: APjAAAVvSEQeTYHJkovr0pwqcYtXFawlByWmxMTgTYdJ1ACtEH9r5Jiy
 Wbhg10Rvvyc6sRA8Ns+Mtbmun2BzxrfKYcPvFkORa68TlcM=
X-Google-Smtp-Source: APXvYqyb3t85xjKPwhD4gyHOTimxwHuO6OJKXBDhsaLSjnAYbEB8tiQngZaDfestVaUMXo0GwsmKGj6lvPD5AwNsoeE=
X-Received: by 2002:a2e:7d0c:: with SMTP id y12mr23189523ljc.39.1582296238375; 
 Fri, 21 Feb 2020 06:43:58 -0800 (PST)
MIME-Version: 1.0
References: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
 <1582012300-30260-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1582012300-30260-2-git-send-email-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 15:43:47 +0100
Message-ID: <CACRpkdYuC4iiuKrRWnH6Rrr_AV+F54_AT9X9BdktPaaie5zy3w@mail.gmail.com>
Subject: Re: [PATCH V4 2/4] dt-bindings: pinctrl: Convert i.MX8MM to
 json-schema
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_064400_504612_F717FC00 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <Linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 8:57 AM Anson Huang <Anson.Huang@nxp.com> wrote:

> Convert the i.MX8MM pinctrl binding to DT schema format using json-schema
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V3:
>         - use uint32-matrix instead of uint32-array for fsl,pins.

Patch applied with Rob's Review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
