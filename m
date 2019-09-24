Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2246BD24B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 21:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7QqPYxG7mxZAEUqGLCoY2GovUcdmMxTdnRPHcgZHDg=; b=dN7SgxrAErmhBB
	csyi/kkWKdY+FiqaJLKG07xLON1GDQkQIHkcuJinL2H+ff3w2LimTRrJ00kKGDaxOBK3f4bj9D2gv
	xM6FzFbKBfBaZ8fV1NNOThocMobDrj8kDEknokBRlcci9NbzwLv4K3RNeQSlYWD0yfB5lhkQ5pb0N
	oyGpiglIwVcX8Qwq8yyo+lYsKkOuJCZvfveNs4ik2scI5bYthz06KN9hzkJWYeX/nFuoJeNOZLpa3
	A5q4McMTEL6iHcK/L9r1hRaGtpkls1+ER6iHsLBwxRGb+0LOHiPFb3/n/lDqtc5bjVK+w/DGkd8uh
	i/C0F56C2smwcbA9my/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCq4u-0007yV-6I; Tue, 24 Sep 2019 19:02:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCq20-0006Ci-18
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 18:59:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id b128so1918488pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 11:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=S+NemDcyACE9qaE3AzZLyHri3U+LN0BbGdBBWP83xAQ=;
 b=C6+uN6EFptObBbReMx4otiZx5Z/xanbuyya/+Ka+EGaS1zvrzaICMGr1kf+Ke7gRpV
 PfQEj9G8xcA/t+Lqa7K71ZZ2bZOFxa7t6+gjOcc7MLayuBgYzbf/NUPAdFUEPH6PGn7n
 zpMaKwedE7HVNxymY+ZW7OR99yVBPJAXmjiR4xd4zHCObJuFL6e1foJNWo39kraazHHo
 fBoSH0k/r1oAbb3XqOfsq/2CUhpHAs47LcxEahsSFrCYlWrm6ICUE8YNl9ZJfU/IDm1Q
 v2N5MmSucHAsNvjrf9ivzpewivzKVtxO9zL+AbUZdMfpQUqTr1zU4YbYltuFYNLCh4R9
 pYsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=S+NemDcyACE9qaE3AzZLyHri3U+LN0BbGdBBWP83xAQ=;
 b=U9CWupBIeJZ0ym7J3/7KD+4RNrHGYyR61mKpip1GxJTKC9bIOtsoW1Ci+k+/vpCyek
 6DNYCElyXGanebPJQicmIkbMMJ9XTNcnhMUijF6e+0Vtt0R0BEZMJuvPRLbdnRmCujyN
 QDSPfP+eTgQg+kpRyTbyFJi9uUdO11hGrF0F+EW3KbADstaHu1hu5tCnzrnLKbKML/AS
 L7h542BUq1uZOxOHyAuojEiSyFCwbvW0NgPECkOCc6QxvT7bYUR/DpO4IubKDF6gtRQD
 L6UG30VNI2cZwwnsWgCKFZQ4HzHotE218S9PYUBn0MVuqVM/BoPPA5EgMX31S64jhLX3
 PGlQ==
X-Gm-Message-State: APjAAAWkm7DeAezlITi7Cp+WLcdGQ56Ckzd6RhCkq4d9xDy5m27Sy2+j
 y/0vsG5JZFNfYfjSxxnhpxBPpw==
X-Google-Smtp-Source: APXvYqwBoEwDBTyuhiKLpoZslSVm3448hn+4VMKYnLGOo9+/IWR6JjsrRaebH1qxvZxp8hANK6Y9FQ==
X-Received: by 2002:aa7:8e55:: with SMTP id d21mr4895272pfr.241.1569351563237; 
 Tue, 24 Sep 2019 11:59:23 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 69sm3370025pfb.145.2019.09.24.11.59.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 24 Sep 2019 11:59:22 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, lorenzo.pieralisi@arm.com,
 kishon@ti.com, bhelgaas@google.com, andrew.murray@arm.com
Subject: Re: [PATCH v2 0/6] arm64: dts: meson-g12: add support for PCIe
In-Reply-To: <20190916125022.10754-1-narmstrong@baylibre.com>
References: <20190916125022.10754-1-narmstrong@baylibre.com>
Date: Tue, 24 Sep 2019 11:59:21 -0700
Message-ID: <7h4l117c6u.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_115924_233351_E981D2C0 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: gouwa@khadas.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-pci@vger.kernel.org, nick@khadas.com, linux-kernel@vger.kernel.org,
 yue.wang@Amlogic.com, repk@triplefau.lt, maz@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> This patchset :
> - updates the Amlogic PCI bindings for G12A
> - reworks the Amlogic PCIe driver to make use of the
> G12a USB3+PCIe Combo PHY instead of directly writing in
> the PHY register
> - adds the necessary operations to the G12a USB3+PCIe Combo PHY driver
> - adds the PCIe Node for G12A, G12B and SM1 SoCs
> - adds the commented support for the S922X, A311D and S905D3 based
> VIM3 boards.
>
> The VIM3 schematic can be found at [1].
>
> This patchset is dependent on Remi's "Fix reset assertion via gpio descriptor"
> patch at [2].
>
> This patchset has been tested in a A311D VIM3 and S905D3 VIM3L using a
> 128Go TS128GMTE110S NVMe PCIe module.
>
> For indication, here is a bonnie++ run as ext4 formatted on the VIM3:
>      ------Sequential Output------ --Sequential Input- --Random-
>      -Per Chr- --Block-- -Rewrite- -Per Chr- --Block-- --Seeks--
> Size K/sec %CP K/sec %CP K/sec %CP K/sec %CP K/sec %CP /sec %CP
>   4G 93865  99 312837  96 194487  23 102808  97 415501 21 +++++ +++
>
> and the S905D3 VIM3L version:
>      ------Sequential Output------ --Sequential Input- --Random-
>      -Per Chr- --Block-- -Rewrite- -Per Chr- --Block-- --Seeks--
> Size K/sec %CP K/sec %CP K/sec %CP K/sec %CP K/sec %CP  /sec %CP
>   4G 52144  95 71766  21 47302  10 57078  98 415469  44 +++++ +++
>
> Changes since v1 at [3]:
>  - Collected Andrew's and Rob's Reviewed-by tags
>  - Added missing calls to phy_init/phy_exit
>  - Fixes has_shared_phy handling for MIPI clock
>  - Add comment in the DT concerning firmware setting the right properties
>  - Added SM1 Power Domain to PCIe node
>
> [1] https://docs.khadas.com/vim3/HardwareDocs.html
> [2] https://patchwork.kernel.org/patch/11125261/
> [3] https://patchwork.kernel.org/cover/11136927/
>
> Neil Armstrong (6):
>   dt-bindings: pci: amlogic,meson-pcie: Add G12A bindings
>   PCI: amlogic: Fix probed clock names
>   PCI: amlogic: meson: Add support for G12A
>   phy: meson-g12a-usb3-pcie: Add support for PCIe mode
>   arm64: dts: meson-g12a: Add PCIe node
>   arm64: dts: khadas-vim3: add commented support for PCIe

Queued the "arm64: dts" patches for v5.5,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
