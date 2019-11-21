Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8C6105D63
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 00:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKu90Wtaq3aZtuS/3TYE9VnpBkojgJ/9nCbrEudLPsI=; b=mxlHWa04r3lcvn
	eXdFff6B+fengkSi+0T6CO9K2IaSgAw5+WRoSDDd9SBOUNhX7E3ECC7RgwxJsjT3rSgLaYkfETZ7T
	c54ZefCfXko4QTrIerhXvj+BaBAwRZ0OagybS2vMh6CGzE5GuM/vl0l34dL6S91xCJVrfE9WWB4v5
	R9JxHtkgAn7CIOF/KfvN+fpNP1HYYvWgxRmHGePvY3Fe4HDXTQuSr861rGwy6pMCdIv+GgVzui4J2
	wEoEqERr7HrrW0rPDckWaWnr8H2rV46Lnszjz9LP865nffGzdE/z0p7cnwe9LfA4TNGpdf+bFHUim
	3fLKT26duh0xZldR/kKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXw9W-0006OK-59; Thu, 21 Nov 2019 23:46:22 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXw9L-0006NE-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 23:46:13 +0000
Received: by mail-io1-xd41.google.com with SMTP id j20so5672101ioo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 15:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=sRD24CZU3AA7e2Mtg/NoNBcTmeTnpOy0Fn8hZegqJhU=;
 b=dw/zbwX8lizHuxbYkQ37HvOTPMHVT1O74unioWCCsP5FWziIY32mR9aVshQjoffH0T
 80d1AP0tQOVmnjweBlGc2hW70TiBfDcfyxPn+R/h1Ec1uToFhEK3rjblbH5zBDKXjcJJ
 EwqwsPUj/n6Zja6eLxu2N/HsgurnGu+Eav6SlPkUVbXbbQgxsgJWqzyZlBreG9tEeUPL
 zQgwz8+R42jKYAHNV+uVlpvntohxWvXoV7F/EXkhFsTnGAhVJP4Dh16H5FIbTVMr4XCW
 Tl5HJeNYtHd9ZaiEk60UiO857HQbqySBryM0yXC+BASU1t4b56s5PsnQQvgAKISojrKC
 DCZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=sRD24CZU3AA7e2Mtg/NoNBcTmeTnpOy0Fn8hZegqJhU=;
 b=SPH44JO3iBwhwOChjzBGzUIDvLGKQGdWQGrETZjZpz2rda7nwP1uaVQmfoTsot/+ml
 eSbM1ad1g3WAzx4ApPyf++S/+GJLMM2e/vG/k3Krt09uqCuv7SLtAV4/nPDY+jPBLSsF
 IwX6sc9SQNqaZUVnosQ3KOiECEVVa6f0a7w/8bSBCws2dgAi0yazEsOvlZDps27yy57M
 T1WIURpaCQ4P6eGNOUWlcpOuLAlSx1qQ959px1c9v/GalAHk43h/sBy5a1jxzwjnFkDl
 mJPteeMH40ULYOo/GebcD6Zk5+Q5V9cpDOhj1rHNy1hzCKnsDS7nilWKJBtj4stCnMg9
 2/Hg==
X-Gm-Message-State: APjAAAWdnmIpWxE5w7Nnn+fY6yY7HUMKDXWJ262DcaBms5eLtWZy1pmH
 GTysgGNfl2qS1SMQcBJUsJ9/Rg==
X-Google-Smtp-Source: APXvYqylVPal8XuHdeMGWRQk4bl4C77IYa6VGNLsq0lu8kumK0eFdylj7srKX7AWphuL35T0EhGFQg==
X-Received: by 2002:a5e:8b4a:: with SMTP id z10mr10230626iom.200.1574379970746; 
 Thu, 21 Nov 2019 15:46:10 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id h22sm4217098pgn.78.2019.11.21.15.46.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 21 Nov 2019 15:46:10 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: meson8: fix the size of the PMU registers
In-Reply-To: <20191117154154.170960-1-martin.blumenstingl@googlemail.com>
References: <20191117154154.170960-1-martin.blumenstingl@googlemail.com>
Date: Thu, 21 Nov 2019 15:46:09 -0800
Message-ID: <7hlfs8n67y.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_154611_846936_E3C5ABE2 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> The PMU registers are at least 0x18 bytes wide. Meson8b already uses a
> size of 0x18. The structure of the PMU registers on Meson8 and Meson8b
> is similar but not identical.
>
> Meson8 and Meson8b have the following registers in common (starting at
> AOBUS + 0xe0):
>   #define AO_RTI_PWR_A9_CNTL0 0xe0 (0x38 << 2)
>   #define AO_RTI_PWR_A9_CNTL1 0xe4 (0x39 << 2)
>   #define AO_RTI_GEN_PWR_SLEEP0 0xe8 (0x3a << 2)
>   #define AO_RTI_GEN_PWR_ISO0 0x4c (0x3b << 2)
>
> Meson8b additionally has these three registers:
>   #define AO_RTI_GEN_PWR_ACK0 0xf0 (0x3c << 2)
>   #define AO_RTI_PWR_A9_MEM_PD0 0xf4 (0x3d << 2)
>   #define AO_RTI_PWR_A9_MEM_PD1 0xf8 (0x3e << 2)
>
> Thus we can assume that the register size of the PMU IP blocks is
> identical on both SoCs (and Meson8 just contains some reserved registers
> in that area) because the CEC registers start right after the PMU
> (AO_RTI_*) registers at AOBUS + 0x100 (0x40 << 2).
>
> The upcoming power domain driver will need to read and write the
> AO_RTI_GEN_PWR_SLEEP0 and AO_RTI_GEN_PWR_ISO0 registers, so the updated
> size is needed for that driver to work.
>
> Fixes: 4a5a27116b447d ("ARM: dts: meson8: add support for booting the secondary CPU cores")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued as a fix for v5.5-rc,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
