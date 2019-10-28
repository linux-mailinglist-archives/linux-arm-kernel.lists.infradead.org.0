Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA13DE7903
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 20:12:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yH2NforpDrYQKhaRTR1NVXEIxtSivAyyCX2geMi83hQ=; b=edOyEtPmcsEQSz
	i44UsCAfFjXTjTa9tpqie8cxRCXxScbqXuQGAJ4RVRzywbdn8X0TzCfOXVWCjJFxICNb4mmLBYR7L
	rVLhE/4BRpUpzxrf5hsxxSgLM+VCZ/WCPRRqv63Qe66JLYqQpv37qlf1TbS3YEf6I0E5EPll69j1q
	c9f+9KnDLP/jkIJCkEUpRMV5iriwWM2l1jBI1zTnZEW3mva5RBlBzn6nKkDajxVgnxnCGwbTpmCV5
	TNEGkTVoh5AAOAq3eQEZ8DYXORhSa8NgMbzrOFiC40cJrAjNkVOVcEhHQpiIlJ09d2NsCXAHw1RLE
	kfzd8dREBuClIyBplI/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPAR7-0003Zd-NB; Mon, 28 Oct 2019 19:12:17 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPAQv-0003ZE-Nq
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 19:12:07 +0000
Received: from marcel-macbook.fritz.box (p4FEFC197.dip0.t-ipconnect.de
 [79.239.193.151])
 by mail.holtmann.org (Postfix) with ESMTPSA id E9522CECD0;
 Mon, 28 Oct 2019 20:21:03 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3594.4.19\))
Subject: Re: [PATCH 1/3] dt-bindings: net: bluetooth: add DT binding for
 rtl8723bs
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20191026204116.95119-2-bonstra@bonstra.fr.eu.org>
Date: Mon, 28 Oct 2019 20:12:02 +0100
Message-Id: <E5E89FA4-141A-4096-98FA-42403BAF0ECB@holtmann.org>
References: <20191026204116.95119-1-bonstra@bonstra.fr.eu.org>
 <20191026204116.95119-2-bonstra@bonstra.fr.eu.org>
To: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
X-Mailer: Apple Mail (2.3594.4.19)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_121205_922012_2ADB55FE 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Johan Hedberg <johan.hedberg@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hugo,

> The rtl_bt driver already supports rtl8723bs devices on ACPI platforms.
> This commit adds bindings for DT-only platforms.
> 
> Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
> ---
> .../bindings/net/realtek,rtl8723bs-bt.txt     | 25 +++++++++++++++++++
> 1 file changed, 25 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.txt

please document this in net/realtek-bluetooth.txt in a generic fashion for potentially all Realtek devices. Similar to what has been done for Broadcom etc.

> 
> diff --git a/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.txt b/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.txt
> new file mode 100644
> index 000000000000..16b5cf799103
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.txt
> @@ -0,0 +1,25 @@
> +Realtek rtl8723bs Bluetooth controller
> +======================================
> +
> +This documents the binding structure and properties for the serial
> +attached rtl8723bs Bluetooth controller.
> +
> +Required properties:
> +- compatible: must be "realtek,rt8723bs-bt"
> +
> +Optional properties:
> +- enable-gpio: gpio line controlling the power down (BT_DIS#) signal
> +- device-wake: gpio line controlling the device wakeup (BT_WAKE) signal
> +- realtek,config-name: postfix added to the name of the firmware file
> +  containing the chip configuration

This needs an ACK from Rob before I consider applying it.

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
