Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1E11DA62E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:09:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfXlsxxRVas4q4PzIk/d0ygDurpt/jWfQXAp/s3Bmek=; b=b3vPA8kpDIyWAI
	69nk6Y9lZL7JwK4ycsxFYUeQDbmvZkeRcblOfmU2faawLjCuowATgqb6X89TW/au2KfwPI0YiYfpS
	0MLLNXWgJgwTcHw8vtcnkFlUFblQuutvg+wtgIf0cVMao0TfH5koq5gUQYRBILgYoNr6Nft5XAz78
	dBW/JEV1ge2Ms9uBZDbgYYmI8A+4MZx+GPiLM8gAUm9Ss1iV25cw5zoAUCIbQMTN7+P8u9DRz/TxG
	hrR3AR1fgvLr02J05w98HmcHbqRVGuSV101a01tyPZpQHhXwVvm/rUyMAMaH5Bjo+CdE2YLCOPtKL
	rERJvNtoRS1rnZe7SNjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCIL-0001eN-Vk; Wed, 20 May 2020 00:09:13 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCH2-0000VZ-Ie
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:07:54 +0000
Received: by mail-pl1-x644.google.com with SMTP id d3so597028pln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 17:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7E+96xLWXR0/8hTuHXZFZz8+gdr1UiuXEJRZqhXw6X8=;
 b=Un58eWjKctefrHRqJ7dvLIb7h0CPEt1iuXzxR4n6qCP42XpGpHDwdTrRBb8PUXaAQg
 RhZKNOwt+EIDA2KgD0SaK8LdZNQoP5sJrMbj7Y7Zq0E0V78tPE0/lRWWYF5QX2c2bikH
 1FIhVCjJGAAbPHuYgUelWXSgf4gKjJSGu3XBaBBsjuZi0BuZ9qdywxDNVGK/AYtr/hOH
 uy9nwtgdpyyFM+uk1CRZCJEn59m+0tfqRpdHwerg5gK1G/Vb+oSrlru5xR86WxFzNat7
 XgZ9n1GZAEuOty9dXFkbRVOcYUXb492Fyay+gUFKaQytL0zjwZ3/Wdd+PczxxDQ/0jjL
 5yFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7E+96xLWXR0/8hTuHXZFZz8+gdr1UiuXEJRZqhXw6X8=;
 b=qKZwZdoUq4D92cTyGD1adHFF2d9lfqNz3WIx0lH8qKAKDvoYXDfylIO4zeY+3LzJ3t
 D+3PxSHp+kH2jKx+CEZsYfbZ6gnvrvUlIAicnxloJmdGLQ/ooXFwBxusLdgmzsu/ndVj
 VRI99IdYDHk/YvXtALcAniLfSjoDTUVrCZ3xVOAN7xei+4ioK052Km0OfsY56gL3DALI
 yLK5+S65ZzAlVoCr65F8ZqSKHNZBKWs8GA01FHtYCkkW2fzrQQ1djjZwtzw6oaZePg/D
 Yr8JNM1lHRcOsO65FNSwsVuaBEt1kALFSRRgnva1ZTiEfM0dTqJ0F+x+NDY1NiNqwruc
 fdPw==
X-Gm-Message-State: AOAM533AIWcOuAbH2lk+vLED2qoFdmc0DLEdDfu+yFytYrqqC5HINUY0
 nSw04E9Hp41Uk7/3PTG9uPHqnw==
X-Google-Smtp-Source: ABdhPJwJXapV3XSyLdWBlyJa/j1Qrxy4J3disNJEFzP9hMGHSRWKAhJBD6HgUG+V+BJQnf+U8c014w==
X-Received: by 2002:a17:90a:2a03:: with SMTP id
 i3mr2158657pjd.29.1589933270413; 
 Tue, 19 May 2020 17:07:50 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id y13sm501497pfq.107.2020.05.19.17.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 17:07:49 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH v8 0/3] arm64: dts: meson: add dts/bindings for SmartLabs
 SML-5442TW
Date: Tue, 19 May 2020 17:07:44 -0700
Message-Id: <158993320300.34448.2467899478322210990.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510124129.31575-1-christianshewitt@gmail.com>
References: <20200510124129.31575-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_170752_623027_F092AA9C 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 10 May 2020 12:41:26 +0000, Christian Hewitt wrote:
> This series adds new bindings and a device-tree file for the Smartlabs
> SML-5442TW set-top box which is based on the P231 reference design.
> 
> As requested, I have reworked the device-tree on the p23x-q20x dtsi. I
> have also re-added the BT device with new bindings that have now  been
> merged in bluetooth-next for inclusion in Linux 5.8. See [1].
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: add vendor prefix for Smartlabs LLC
      commit: bc15895e142396fed5ebf1f60139d9ca9a56a4e4
[2/3] dt-bindings: arm: amlogic: add support for the Smartlabs SML-5442TW
      commit: 341e85047bdbc0196c91ccb4612ffab87bae9cfe
[3/3] arm64: dts: meson: add support for the Smartlabs SML-5442TW
      commit: 1d6ece87b750cf26fed4eb794ea0b2fc7ff2be10

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
