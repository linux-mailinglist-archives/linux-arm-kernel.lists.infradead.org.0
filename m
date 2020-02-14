Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7194915D645
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 12:07:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=1tBrCSFNTUZuqzHBM9Mzzbr3scGJvzgKTlXcgxEjRNw=; b=JTKFDny8yuVEs3
	FuUVkSURJDkKaIZM2GkPhOJsMhNvdc3lOeXXJN9RrCIfwNxF4esaSTMNDptglq4Bxi5UN6Uch96we
	tV5vYzkk31LXgleld/XkDuunqhr1uyLTHk7QTDAYx60pqqgmT6OYWdPSYLzOz0GHsTl8F/MRpXgoJ
	ki/MFrmdfV59WqMlUqVZqf/qlI0Fu5LE31soCGlLzk2TfU6nfi6c2iQXPt3l70yVpJE8fPKd1s9K2
	wbvf4haVLLs0RdUdni+Z4C7WGxjDO+N+XY64Bqyi7WUH/wagMD3QIyypiPQIRpDWQDtGNHCiYgTIj
	2aIx8LMslJlETCA2LXAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2YoR-00035K-TP; Fri, 14 Feb 2020 11:07:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2YoH-00034t-Qv
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 11:07:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 59713B383;
 Fri, 14 Feb 2020 11:07:00 +0000 (UTC)
In-Reply-To: <20200213025930.27943-3-jaedon.shin@gmail.com>
Date: Fri, 14 Feb 2020 12:01:58 +0100
Subject: Re: [PATCH 2/3] PCI: brcmstb: Add regulator support
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Jaedon Shin" <jaedon.shin@gmail.com>, "Florian Fainelli"
 <f.fainelli@gmail.com>, <bcm-kernel-feedback-list@broadcom.com>
Message-Id: <C0LU3KQRE3WZ.3EDDA7IKJ2T3X@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_030702_014981_8E4AA870 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Jaedon Shin <jaedon.shin@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu Feb 13, 2020 at 11:59 AM, Jaedon Shin wrote:
> @@ -173,8 +174,79 @@ struct brcm_pcie {
> int gen;
> u64 msi_target_addr;
> struct brcm_msi *msi;
> +#ifdef CONFIG_REGULATOR

Correct me if I'm wrong, but I don't think these #ifdefs are necessary
(same below). The regulator code defines empty functions and relevant
structures even when not enabled.

Regards,
Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
