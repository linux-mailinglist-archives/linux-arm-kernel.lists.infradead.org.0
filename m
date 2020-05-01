Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 527B21C1A06
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BJ5LkJ1ejMk9fTi6WmYVyGMFd2YCYUwpJQL8zTQ+gY=; b=DYttGaokPxBfif
	gVuX5IgvOAdmorJVPvdCRXTByh23FHIQ1ONBazrTjLzhpd2ApMfiTp2ekXoEhqbKHNrTET/2fKlsp
	/5icoL3dq38HuVDVhh8GSIpw2BJuDeSFF4khXg/R0k2SUHg0qi3NdZNhZiNmloRmQUnOgZUvm/GYW
	cl+cB7WX1ChF+iQmgwshxekIT/jfApHrwiJ+UN63P6CPDSmyV2gKBPdwIt/4GUPRJ9kcnYI+Kl6Ye
	d7FuV4BjcbV20vvfHWFBMTQYUC+wMBWU78fXI6N+QNEgNpKxBE0NmNGUnHBOW/Jk4zp+O221Ao2wX
	r+a0hdaqc4m3x/rCWb2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXtp-0006fU-Rv; Fri, 01 May 2020 15:48:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXtg-0006ea-8f; Fri, 01 May 2020 15:48:17 +0000
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72FE2216FD;
 Fri,  1 May 2020 15:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588348095;
 bh=sBnS1EAfBQE4efMp26hhUr4f8wzrVS3x6YefMaqZz78=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DOPwEHGEjZEqnMfaWUQKHWkEMEd+Tmn4mT/4fCOCQuSLDpdqM5LvI/prO07lQVkNY
 9djefE/1vYJ58NdJdo9JImILf5z5Eu9mrGb48pPQtkIdIBgtEO3yfRBTLD3QcMvqCj
 PoC7eZ1+mBwZI7qhAbq6/geugvC9ZrxiCaHFzlyM=
Received: by mail-ot1-f41.google.com with SMTP id g14so2846012otg.10;
 Fri, 01 May 2020 08:48:15 -0700 (PDT)
X-Gm-Message-State: AGi0Pua7PwQbVora68AmRh8wYvyoX4NYZywy3+lMUAtEpJRAFcadEaJz
 N872NRlHDOuDXGr7YIed/f5i6TwNfgK6IPxs/Q==
X-Google-Smtp-Source: APiQypLSuc1ficUgLIosueT06J05P8GWHscTEPVhw4ZK+6CAG+77HGOr9d8WOB+9XJU4M5RRsaeSpyrJ9RGJ98tkcT8=
X-Received: by 2002:a9d:1441:: with SMTP id h59mr4125612oth.192.1588348094755; 
 Fri, 01 May 2020 08:48:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200501142831.35174-1-james.quinlan@broadcom.com>
 <20200501142831.35174-4-james.quinlan@broadcom.com>
In-Reply-To: <20200501142831.35174-4-james.quinlan@broadcom.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 1 May 2020 10:48:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKjRYXbtDVRnR6POfKtLBHULn=VGHSe2KFj1PTWSbA57g@mail.gmail.com>
Message-ID: <CAL_JsqKjRYXbtDVRnR6POfKtLBHULn=VGHSe2KFj1PTWSbA57g@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: PCI: brcmstb: New prop 'aspm-no-l0s'
To: Jim Quinlan <james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_084816_328402_07E5EE27 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 "open list:PCI SUBSYSTEM" <linux-pci@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 1, 2020 at 9:29 AM Jim Quinlan <james.quinlan@broadcom.com> wrote:
>
> From: Jim Quinlan <jquinlan@broadcom.com>
>
> For various reasons, one may want to disable the ASPM L0s
> capability.
>
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> ---
>  Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> index 77d3e81a437b..084e4cf68b95 100644
> --- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> @@ -56,6 +56,10 @@ properties:
>      description: Indicates usage of spread-spectrum clocking.
>      type: boolean
>
> +  aspm-no-l0s:
> +    description: Disables ASPM L0s capability.
> +    type: boolean

Copied from rockchip-pcie-host.txt? Let's make this a standard
property. It should be documented here[1].

Then this doc just needs 'aspm-no-l0s: true' to indicate you are using it.

Rob

[1] https://github.com/devicetree-org/dt-schema/blob/master/schemas/pci/pci-bus.yaml

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
