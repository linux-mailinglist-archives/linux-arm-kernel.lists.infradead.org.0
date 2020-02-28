Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6D0173BEF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:43:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XZiw/ZxJee00TKSOsbDth9JAfmshb/w81OzBWJh6ag=; b=XGC4M+mJ+DZjlE
	KjcJS0LZFI3XQs4Uh6a5SHtFqU8JfPSQxtVw7Rz0+MUw5v+cwTR9iaodx4YX3bFWKwnJDD1G14rZ1
	BW6cGaztieuflgk3EokFKZF9dyWaWBkpCYcEA/3Sw0UL+8SI7GHUTSLyLTBl1taJu8I8p3bnHivWD
	aUFfa0Qhp48cOLDOrDqNYvpNyyX+WSGnOd1LAl+svwd8u6ErOSOSK72vQoxMjs6W7jj0YysAI7VkN
	IGQnUv80GoKWh97YZ2YTo6aB7+JtZEQn1RpcqWcBOXu+pZ5+LzK3K/paxxdn2BJqajcNaBuGb2xKe
	BkbbJGIaRXrWshLK3TAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hnE-0006ST-OG; Fri, 28 Feb 2020 15:43:12 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hm9-0005sC-1X; Fri, 28 Feb 2020 15:42:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id d138so2081777wmd.5;
 Fri, 28 Feb 2020 07:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IJMCbQr8gSPH+b/sm3hd4i0Wx4L3qYeT/ZG3eWxcMSg=;
 b=qalBZFfGTeBq97wx4bKT5ES5+8Vr830pNz0mANkUaOAGPwjXV8mpYesHWh0xAnAPY/
 lB8iQGhw9Fofdzz8qndxhF5pWekrcHA8vSA2tTxVV7QfcjlNObMteD/LzviTuE3J/Ja8
 HvdEQIznu6z4Bk4LWcJceH4PMn9bLDrv/cYITsiRYL356u7M2TePhMe/2qEwCBRf4SkQ
 AP6lO8EBHatOLcEAycqA5SVnCsdK7ZG7wEwP6xN8lLRGnzeW/owLkM8V2BNl1Ap6MJOh
 MjXzwzEF8InWncNmLLTcptWqMwy7iT8VwCSrygxDXplqXjm+ql6i0ihGuS1tswkbwiaG
 v4bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IJMCbQr8gSPH+b/sm3hd4i0Wx4L3qYeT/ZG3eWxcMSg=;
 b=OtO4JJMwGCYyZDMokW2RixsVl9kFYvkDqW++DYeDPFia1zGRP6cb7dlIzyO6XWTpwU
 F5pjWTdkRlRTmppuqmqubG2JY9PKzkDu9TXQwi2i3U6myo8T+xxlZqaJxqd9B4t8Vowz
 5W7bFescQ4klbaDzz/9KkkGnm1wsHF45VOrSn7zhJsKa+l7q+2zTgxstSme4Nd6r6DrU
 ANmQITMPFK0dI5WGTu3P4PxuO6TmtcNSVGwejO5HqRcKgryjJxCWRAMEZJVyMfJtMZh8
 RtUk6Q1a1g+iocurthKcA4qcX5cFcRkbQKrgl6q5x3abCW0h79At1mGSpXd4F27ivYBX
 35bg==
X-Gm-Message-State: APjAAAWDXBDZhtyN3j4mP0OQzesJ4AGm88yUzHu467+DzvdxCk59grrJ
 jHQRvzyKRRUy77gV0VGxB+Q=
X-Google-Smtp-Source: APXvYqx2ARGqNtOob4sRn7xEbT9W4deKtORU8SXhzdmDNYePt3KXJa2mafIKaL6r+ZBncANzMkJXMw==
X-Received: by 2002:a1c:c344:: with SMTP id t65mr5248276wmf.97.1582904523429; 
 Fri, 28 Feb 2020 07:42:03 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2510:d000:3855:fd13:6b76:a11b])
 by smtp.gmail.com with ESMTPSA id k16sm13355349wrd.17.2020.02.28.07.42.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 07:42:02 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v5 3/7] PCI: rcar: Fix calculating mask for PCIEPAMR register
Date: Fri, 28 Feb 2020 15:41:18 +0000
Message-Id: <20200228154122.14164-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_074205_194621_071848DC 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mask value was calculated incorrectly for PCIEPAMR register if the
size was less than 128 bytes. Fix this issue by adding a check on size.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/pci/controller/pcie-rcar.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
index 41275f9..90d47b21 100644
--- a/drivers/pci/controller/pcie-rcar.c
+++ b/drivers/pci/controller/pcie-rcar.c
@@ -75,7 +75,10 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
 	 * keeps things pretty simple.
 	 */
 	size = resource_size(res);
-	mask = (roundup_pow_of_two(size) / SZ_128) - 1;
+	if (size > 128)
+		mask = (roundup_pow_of_two(size) / SZ_128) - 1;
+	else
+		mask = 0x0;
 	rcar_pci_write_reg(base, mask << 7, PCIEPAMR(win));
 
 	if (res->flags & IORESOURCE_IO)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
