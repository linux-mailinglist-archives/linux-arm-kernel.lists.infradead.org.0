Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE3DE87D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwA6az8RJV+nhgD+u4JwdhsSB/A+38PVtOrbZzmrCug=; b=bSZLaZDWFkU8jP
	kD/IqYpWzhZNGzv7uy7R6BImeRYO8V/tkjzRaQLz16xktqUlDOCfh6XjpErOEggQ24nIY6vrgPklA
	PYb3zKOriLda7Uoo6GuLvehEifvpWsNRYXjctxkFb8vP/geq2fF8u3lr2RhQr/q/BUfHNWNxRZ2rh
	00/i6G9NhOOaSadGAY68nbdWUcVp1Vfc7gh5JMdK5RAAkRekZr6Tf5lm4M9O6suWtFpW9SG9UPERj
	QWZFMQwdHGevEPzrskPNYuPf+Y3/rB6WNMzqhzbN7l7TbAKf+OVBSMm1uAwbh80uhXdWkysCMWJst
	7/OR6+WQHlpMP2aEagFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9p9-0000VO-I1; Mon, 29 Apr 2019 17:12:15 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lS-0003a2-Bh
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:55 +0000
Received: by mail-lf1-x141.google.com with SMTP id j11so8618663lfm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BwIJ9jvJjTPtmIuNUi+jzS5O1ffE19llaBGI2OHGpyA=;
 b=C3TvIbUV2AijVn5AwG6jRxwbopqcktl4R+7ospfgsMnnUWs6RMrReD1E7e4xF/ay57
 lIftkCeL4D+LjT249H6ib9HRra9Wg1UYBWeE209CRRRR7/KFkqhw0JAabguc/yUVw8b7
 XzOa/gGBCSYKg9GoEEdSfOEHeobtvQHN2XJq2A263aHcT9gK6pt+n0E7YrE6U+6LchDU
 A1T/BF5Om+L7YXRMIEwOiU475snjLoY2N8GGvd07MbLHMr0x7gSGnUwuXqVlJVrRRUTO
 JzyzGJF4Kf2ct2IKIuPbP3Bh2YYtp0Xjr32hgyWNd4P2VjnHWhN2YByrJltOS1TZkmut
 l0Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BwIJ9jvJjTPtmIuNUi+jzS5O1ffE19llaBGI2OHGpyA=;
 b=FidA6VNfNp0232k9X7f8zNUkQlDFiLP5OLtiXDqfGWlsFvGMCAqGOKv21INaVi/1kK
 jmuCrvdJ9b/IWSzC0gf2Km9vhMYSka7qutKLi3B+B6VO9nLCPvECAb/K4ON3b1EE9mOf
 efLwJ29bSUS8o/XlAxSrXx45V+8BbNRIThUcDNxV6nIcygGbtLvfIOkDEhcqfTrVNm5I
 tS2C/Ak80352fJ7zCMVyMrWFJ0o4iCnHj2aDsrHz0HjlhhEdhx+OrcNpHUglPFs3dCX4
 Vowy0QCDTa9sxrS0+CZfLAx57czR0YojELW5Bnl3DnLzPylEi1CMOzeaQxXjgj15IpXH
 ApBg==
X-Gm-Message-State: APjAAAXcHhqC7vkYjYxo2qlEnQzfa28SHCXD6fQZm8SuaS3HNiZb/oB9
 VcM590QhUObRoBPGbOMnY9216A==
X-Google-Smtp-Source: APXvYqy5qf0XrSG7O2GG1ImVUzHdDiyIR/8Jj398WH2fEnvqatsTeaX+zp2kBDUyUvQDzXXXygPHZw==
X-Received: by 2002:a19:ee17:: with SMTP id g23mr33952790lfb.43.1556557704787; 
 Mon, 29 Apr 2019 10:08:24 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id c17sm5330056lff.84.2019.04.29.10.08.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:23 -0700 (PDT)
Date: Mon, 29 Apr 2019 10:05:40 -0700
From: Olof Johansson <olof@lixom.net>
To: Patrick Venture <venture@google.com>
Subject: Re: [PATCH 1/2] ARM: dts: aspeed: Add aspeed-p2a-ctrl node
Message-ID: <20190429170540.27bc3fu6nvab2vc5@localhost>
References: <20190425194853.140617-1-venture@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190425194853.140617-1-venture@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100826_996742_F6B8F2DD 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arm@kernel.org,
 linux-aspeed@lists.ozlabs.org, andrew@aj.id.au, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 25, 2019 at 12:48:53PM -0700, Patrick Venture wrote:
> Add a node for the aspeed-p2a-ctrl module.  This node, when enabled will
> disable the PCI-to-AHB bridge and then allow control of this bridge via
> ioctls, and access via mmap.
> 
> Signed-off-by: Patrick Venture <venture@google.com>

Patrick,

Please send these to Joel and Andrew (and cc the mailing lists). No need to
send patches that there are active maintainers for to arm@kernel.org directly.

(As a matter of fact, drivers/soc/aspeed should go through them too, even if
I applied the first patch directly just now).


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
