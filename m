Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AB0163493
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:14:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2/HVoIYJHjPN4Wod9ESqemITKt+yEVKCsj6O8XAp5Y=; b=eySRyvaNscZIMr
	8bk7VwUODWNN5THqR6q90ozvCmerWOkHuPMdyHO1LhuusF/Q3mzwJhTKz1KxxCF5Q55fVYT5XdCXZ
	Sru2H9XfZaqP6wQX2PxUUpIIjT+73/kxYJHcRvdMb1rb4pFipfj01u2rMQryVKQCYYcXSWJS7hhJk
	oODfgWJMnNNGqz15N6baogD9lr6gCs+wtQR5XVwFVSswbtJMkSvQjCxhmWovMjcYtvuQ+ItovyfSF
	8v55vs+8eCreBpZodykT8McPCLN3NBih1aye7eRyu6hkAO2uRQPO1cdWlc/xbb6U+OscECAQUSqsJ
	mrSsmNyj7GR07mv7yuYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ACA-0008Iv-SS; Tue, 18 Feb 2020 21:14:18 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ABj-00089C-HW; Tue, 18 Feb 2020 21:13:53 +0000
Received: by mail-oi1-f195.google.com with SMTP id i1so21586929oie.8;
 Tue, 18 Feb 2020 13:13:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Wsp21LIcG4NslijziS7uyMDJScAYzOtQaO+9/p80IQ4=;
 b=huKNAzTQ/RfSRJ39e+WFreo6GHjoZdO1b2u2XwURPkxRxf+3kL2J1QKLAD2aNVqwrO
 gl8E5bJzMqc5WGFk6uZ8ra5hv6I63Kq9AcyaJ4LwLlluMGRIyQ/aA8/J1b/HiHhZObPA
 V39p2fUBBuCBgRdbduB18MFfNzr+8QtgHoqyDkv3UXUpn7zIsdxQ4uiVmMml9/xrIyiI
 okXxWlTdoX3YF8Gn1NAorC5XpSZQGLUvGPq8Qla19REPIKiVlB4OK1Vh/8v+e+OmNefz
 QelacGR965CpgkFjKZQJfPx+d9vBsUIBkjC7j/59WqlJ6J1OZ511/wrubwvNJCzXrxUN
 uzOg==
X-Gm-Message-State: APjAAAWmR2p/Y53mbriAQvsSzKpH+bsKMGtFaATmM0KN/cA11V1iRWiz
 03/8noHOKXiyCZ/CX12FMQ==
X-Google-Smtp-Source: APXvYqzV9oocyBJZGvkp1bADAbLS2xQl21KF+EyRyietsBdKoEM/3HRmoC9kQcpKj2d8Pz3raOUtlA==
X-Received: by 2002:aca:3542:: with SMTP id c63mr2575156oia.135.1582060430256; 
 Tue, 18 Feb 2020 13:13:50 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m185sm13530oia.26.2020.02.18.13.13.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 13:13:49 -0800 (PST)
Received: (nullmailer pid 15304 invoked by uid 1000);
 Tue, 18 Feb 2020 21:13:48 -0000
Date: Tue, 18 Feb 2020 15:13:48 -0600
From: Rob Herring <robh@kernel.org>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v4 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car
 PCIe  endpoint controller
Message-ID: <20200218211348.GA15246@bogus>
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200208183641.6674-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200208183641.6674-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_131351_634587_0C63B4D3 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jingoo Han <jingoohan1@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  8 Feb 2020 18:36:39 +0000, Lad Prabhakar wrote:
> This patch adds the bindings for the R-Car PCIe endpoint driver.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/pci/rcar-pci-ep.yaml       | 76 ++++++++++++++++++++++
>  1 file changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
