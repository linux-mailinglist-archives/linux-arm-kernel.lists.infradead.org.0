Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3CC4BA3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9whu9+325T2Oh62Clpqv2ICek4oU3I/Q8pkZWMG1gY=; b=R/V+9hzhUnUEl/
	SWo0qr3ThpC7559o6fTCxRXwrqMzS0I2qlG/S/aoDZkgNyKuBVVMtQs+9gJC4OAIxuqEUnbq4r+Jb
	jmus/RwuFBYG7LtyJoowipGK2XBl4icvCkPORgjes36Fu7WbDppp2lQuDcaeGRs5o4cd6P7raePwf
	0MO93n2dWlJTB5utae7EcYioAiDyUbQ/ncM6VejhFPHY7DKvlhwkWm2NQXmNere6UkKO+Oj1mY6o0
	fw+BEeTdcju5aVbdH5g0fxCQQutedzslLUfNAsUydCzQPiFjOhx+xQ19HX9vNSjkA3GQMlHfn9tlM
	veZPFQsMxqjNA0b/sSFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdapg-0001cy-Vg; Wed, 19 Jun 2019 13:41:00 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdanq-0007SS-6x
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:07 +0000
Received: by mail-lf1-x143.google.com with SMTP id a25so12160456lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0VIXks4JVJi6NW7o9HNww47+bDvO8ASarITv0RvaBUo=;
 b=TqIC1pHo984jnhUkBBpDE0frE4b7fL4HoMZfMOx6EY0sGxeCVv0XkMOMEFBvyjOgmQ
 JHVJ9qYUVIZmg76cGOylZeRwyVluGLhfQiLWSM0tF/Kzq0GhtEsWFpjrsAqv2nj5kWa4
 1mtTk7zYKgzyt1hptU5230z6b5TZIVaqRuAbPeVnL1rEtW1W5Tclzj0SHw8QxQyrsGuY
 1D7ox+dUdrqpErS+26V31uEc+jk97Bywe+Wo7/szLRJwuSUF2OJiskKzTxy2ME4QO484
 TQ36ueN6d7/Zz6G1J0tF3dMAF8UJaow8GIwibn1c3Hh2Nr3toVeaDHJwpJFX5xZm003n
 a9Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0VIXks4JVJi6NW7o9HNww47+bDvO8ASarITv0RvaBUo=;
 b=VG197X6h9mwLQ4ZwSMhBDHrlktCTA/oW79MG18hVXNLPc0nJ80cPUHPDj1GqN0Wxha
 5eNLHc8qnDElccs4ae4oCVQmNjhb5MxKpKbMjZxAFmbh4tQKRZE6uqSg69kASEk9EnH+
 w/bKMaQ8N+WTEA4E7GejmK6VGeg2AXvnulIRsLZBytoj8e0Pba3mrkgjQXqggvbTRFW8
 BJf3rdTZZBZRCi/04wvWoLs5BEPQMW37bzKz0FOPx64eAhLKWPSU+7LMp5qRo4B7RqIK
 yH3fOQ4qrXhE7/UIABqipafgVF+2d3Q+x/dgnQT7gvKjBbaWRPvWPfCu9l0V87FfORXr
 lA6Q==
X-Gm-Message-State: APjAAAXpxGvh5ev81c9LtUrL/1sXFJvgLJoegzlJCZUSfgYVOEJUJoHv
 jogy1sfSFQ/1Ysk+1EWCzJ3L6Q==
X-Google-Smtp-Source: APXvYqzr/XXLfjI7uNapd/di0jPGKmIFm17xwjLoTuYr6O6ArJTj+H64hYp1vfV66Fz4Kz20uLWHkQ==
X-Received: by 2002:a19:4a49:: with SMTP id x70mr24014323lfa.151.1560951544755; 
 Wed, 19 Jun 2019 06:39:04 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id q13sm2665763lfk.65.2019.06.19.06.39.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:39:03 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:17:44 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <agross@kernel.org>
Subject: Re: [PATCH] arm64: qcom: qcs404: Add reset-cells to GCC node
Message-ID: <20190619131744.qk56iqqd4cxttdxp@localhost>
References: <1560053972-32273-1-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560053972-32273-1-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063906_284114_619FD28A 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-msm@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 08, 2019 at 11:19:32PM -0500, Andy Gross wrote:
> This patch adds a reset-cells property to the gcc controller on the QCS404.
> Without this in place, we get warnings like the following if nodes reference
> a gcc reset:
> 
> arch/arm64/boot/dts/qcom/qcs404.dtsi:261.38-310.5: Warning (resets_property):
> /soc@0/remoteproc@b00000: Missing property '#reset-cells' in node
> /soc@0/clock-controller@1800000 or bad phandle (referred from resets[0])
>   also defined at arch/arm64/boot/dts/qcom/qcs404-evb.dtsi:82.18-84.3
>   DTC     arch/arm64/boot/dts/qcom/qcs404-evb-4000.dtb
> arch/arm64/boot/dts/qcom/qcs404.dtsi:261.38-310.5: Warning (resets_property):
> /soc@0/remoteproc@b00000: Missing property '#reset-cells' in node
> /soc@0/clock-controller@1800000 or bad phandle (referred from resets[0])
>   also defined at arch/arm64/boot/dts/qcom/qcs404-evb.dtsi:82.18-84.3
> 
> Signed-off-by: Andy Gross <agross@kernel.org>

Applied to arm/dt. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
