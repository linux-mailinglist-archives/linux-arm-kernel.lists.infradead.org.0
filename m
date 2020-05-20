Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069A91DA62F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8VEmI0Wt0GvfFOHphTCUZqmc8avu5WLP8rStKguTt0=; b=KYcIiBd3h0lZbM
	1FbYNrXe3Ilyd2UsZsDOHbmwIddQ9INyP/sYECGHAIhYeS8ULd70W9F7nAsgPUA+2pszZHBdecK2D
	eXSFZXtl6HaWlA3NeLcIpWlQGC5Aeuoco6m4c+W0w0QWBHp+8i4xTnB30l+3kqc+KN6nkjkvOhw2Q
	Dsnm4q4bi9BWWQcBp8WI8g/29MtpFdceTULEkcYh92ap5/txgn98z2hP1jY6Q9ee403e91QBqbQfu
	wtEcYB9Wdo+4NWUYECZjiU4Fkln37ta2KtLNPI5f9u111l05rb19lGGhRy4Qmljmspnt/JIEkFN2T
	REzBK/2FKGJSr1edmOmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCId-0001rF-Le; Wed, 20 May 2020 00:09:31 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCH4-0000cP-7M
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:07:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id t11so612402pgg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 17:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nLMfwQbrlF1iv4LcSoROIabrcfKs0/jUzCRJPsjpM/g=;
 b=Gqo34c3m0MlNoFL+YXBmISvMCjL1uAr1dCIk+C2xcHpi/NSgJAkMkbIB54SVo3iPr2
 HaZgzNyTF1lmEeD7MvMTZmyASk+yYU+KRNjjuLz/gkNyajNTTMpy+westprggwgYHgeu
 H18O/XFDeMrrZ83+TekriuOSfUOKTYo0bQjBP5XEEJhAzPLW0eDyNm1lAycXCLgPH4my
 5OkzNS9XRiDor39MYDWxeHHIJeNebLJIzM8O/UVe8sZHS6hWPl2jBe+/MjLVYqVeFwWD
 C1Qm8oJgZQMAeE32cJMZ0614HbLkp4WCrD4CJKa70EWir5uchhrv0+WONADhNEGNEUXk
 QOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nLMfwQbrlF1iv4LcSoROIabrcfKs0/jUzCRJPsjpM/g=;
 b=fIlzFTZgJt+WQ9dkwQ97gFnNywprzphmcvwR7WGJMles1hBpxPG3E3jfdi/+NAatXd
 o3ARHZQH55WsTzydWC5EHClAox80JsIFf1QA4zdbOliILMBgkkXQYaRuz2XZbycN0VDy
 LJ68/S8fSdbPS66GQDp1bY6zrd1W2ZABEP4G4mi89CpYhbdfoN+PVP7AWYntWYfHi7Gm
 U0vOKS8Jb7yaNP9IZW/Psy7zbK9c1eCPbVCH66WCL/Pp+Gvz9tvr9+Cg59JK16nZxm+H
 85DGfusy67FsRhBUpOchWp2JgOBUveUbqfqLZIglZDSSDNghw0pHb8gqyUj1NgIgawmP
 sEFA==
X-Gm-Message-State: AOAM531V0WSt8Xkby2YpjW9jMPFekggeoJWd5w+oENYz1XDaVJKWmnAx
 yyhAmzQxvsU+vs0Q+fTYUpLOJQ==
X-Google-Smtp-Source: ABdhPJzsFZRQ9C+8oILR+S4MtBFIKYd2qCmva0PiBVlgTEiaWCLW5r8plQBhSkfJpMmL9SFle7gCyA==
X-Received: by 2002:a63:7519:: with SMTP id q25mr1555590pgc.224.1589933272730; 
 Tue, 19 May 2020 17:07:52 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id go14sm504705pjb.42.2020.05.19.17.07.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 17:07:52 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-amlogic@lists.infradead.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 0/2] ARM: dts: meson8b/m2: RGMII improvements
Date: Tue, 19 May 2020 17:07:46 -0700
Message-Id: <158993320300.34448.6005768486014716103.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200512215148.540322-1-martin.blumenstingl@googlemail.com>
References: <20200512215148.540322-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_170754_559204_F2CF828C 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: andrew@lunn.ch, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 23:51:46 +0200, Martin Blumenstingl wrote:
> the fist patch in this series connects FCLK_DIV2 to the PRG_ETH
> "additional" registers for the dwmac Ethernet controller.
> Now that we know how RGMII and FCLK_DIV2 are connected we can
> add this dependency to get rid of CLK_IS_CRITICAL for FCLK_DIV2
> at some point.
> 
> The second patch fixes the RX and TX delay. The 4ns TX delay which
> we have used so far is incorrect and only worked because we were
> using an unsupported clock divider in the PRG_ETH registers. That
> divider has been fixed with commit bd6f48546b9c ("net: stmmac:
> dwmac-meson8b: Fix the RGMII TX delay on Meson8b/8m2 SoCs").
> Instead of "just" fixing the TX delay we can even do better and
> switch to phy-mode = "rgmii-id" to let the PHY generate the RX
> and TX delay. However, previously we didn't know that there was
> an RX delay applied by the MAC on these boards. Only the additional
> information from Jianxin in the other series [0] made us aware
> of this. Without the other series there will be a 4ns RX delay
> (2ns from the MAC and additional 2ns from the PHY). Due to this
> dependency I did not add a Fixes tag, because backporting these
> .dts patches without their runtime dependency will break stable
> kernels.
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: meson: Add the Ethernet "timing-adjustment" clock
      commit: b632506c5af22a9a7c63674fc605d24cf94d585b
[2/2] ARM: dts: meson: Switch existing boards with RGMII PHY to "rgmii-id"
      commit: 005231128e9e97461e81fa32421957a7664317ca

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
