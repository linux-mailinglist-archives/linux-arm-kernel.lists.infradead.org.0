Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7485F15D61F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=HmfEz2XRiKEiVNVyZw462XxV/+ZA+XZG8kS4M5jDCSI=; b=jqeZz6ISU2aBaQ
	mHDxfoDKsu1iHeba5hAloHGjQG/zPxl+4Ti6MCqtnl81beo2T9JUmgjKV27yLeLsPJBXyHqauvkmT
	EsKYpyHlnKitE//pcvCAkwqmojql6qImS2qilEIDlx5FZ1mmJZsvsIjlzm+S2vo0OWq45l2I1nRoe
	fhIMzAVYo5AoEl7S601uGHutbLxfcZzACbwuNOg4AsTXEZc1eObf3QjQ6O1+/D0ZjyA5ql7qEveqc
	82EkJGIuXFFKMpQZXizSU7UbOFYpF1A2QnuFAotMmtjii+YZbmLGzKB7VAnB/YeNDSUBkF0nGquA2
	KxKvEwTlLdM6WbWS2SMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2YdT-0007Nr-Pc; Fri, 14 Feb 2020 10:55:51 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2YdL-0007N8-EF
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:55:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 49556ADDA;
 Fri, 14 Feb 2020 10:55:41 +0000 (UTC)
In-Reply-To: <20200213025930.27943-4-jaedon.shin@gmail.com>
Date: Fri, 14 Feb 2020 11:55:23 +0100
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Jaedon Shin" <jaedon.shin@gmail.com>, "Florian Fainelli"
 <f.fainelli@gmail.com>, <bcm-kernel-feedback-list@broadcom.com>
Subject: Re: [PATCH 3/3] PCI: brcmstb: Drop clk_put when probe fails and remove
Message-Id: <C0LTYJ7DK8YA.1TZ11JH5XC7JB@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_025543_624767_4389AE5A 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Jaedon Shin <jaedon.shin@gmail.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Gregory
 Fong <gregory.0xf0@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu Feb 13, 2020 at 11:59 AM, Jaedon Shin wrote:
> devm_clk_get* APIs are device managed and get freed automatically when
> the device detaches. so there is no reason to explicitly call clk_put()
> in probe or remove functions.
>
> Signed-off-by: Jaedon Shin <jaedon.shin@gmail.com>
> ---

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!

> drivers/pci/controller/pcie-brcmstb.c | 1 -
> 1 file changed, 1 deletion(-)
>
> diff --git a/drivers/pci/controller/pcie-brcmstb.c
> b/drivers/pci/controller/pcie-brcmstb.c
> index 0e0ca39a680b..3e48d9e238bb 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -972,7 +972,6 @@ static void __brcm_pcie_remove(struct brcm_pcie
> *pcie)
> brcm_pcie_turn_off(pcie);
> brcm_pcie_regulator_disable(pcie);
> clk_disable_unprepare(pcie->clk);
> - clk_put(pcie->clk);
> }
>  
> static int brcm_pcie_remove(struct platform_device *pdev)
> --
> 2.21.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
