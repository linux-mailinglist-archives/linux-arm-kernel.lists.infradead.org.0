Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5263910ED55
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 17:39:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBozY8Or0XBSeDTf63tY+f7Js3jC48AUcmfUtEpE/yE=; b=s1mmpp2QHgcvTe
	fVO6qP93WOwBQBB7T+hNnzMvJD3ZS1ndg3ybafb5ma1nebYGM9+b8xFVyj2dLPfkbg7+Vd2CTYynQ
	vgPeB8lFNSNBycwf3L3wPov1vu2NOl0hzT8OL8/ahzH+FiiHM1H6chBdmuz5l65aOH13oN6G2DhXb
	fmr0tmeSTMF7G0XCaOyAbVtZpau6O14TroSdKDu81RE4U1bCsbnq4ROH1gFLjzEPlsEJLCa1RNH/r
	PaDVvVN1YBdxL6pywpvuvImByOn7AZEHKpl4FELwgg1tomZ+4VMFS9YZvyA6BRbw5G4KfkajOasRe
	xSp+vxtOH7k2yScDTayQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iboje-0000r1-FT; Mon, 02 Dec 2019 16:39:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibojV-0000ps-S5; Mon, 02 Dec 2019 16:39:35 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A341217D9;
 Mon,  2 Dec 2019 16:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575304770;
 bh=BOYd7FIUwuN3tAA+k+QFiEnMWMetmq+s99CxPTiHIaU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zm2zuNr9W2dNwDK5mUKR3imz9kS2EL/vujtjBzVLAd9K9LlJiT7e2rpwNtCW+qQkh
 7trKeuBmMtlBlO4PiFNIxyT6iZMy7KaV77aqzH6YF/ucVdUQSngDxem1qQ4AHkO50P
 bp/hQfTMYHp4DFxIQyhe45ziL3hs+7hpOOif3jmE=
Received: by mail-qt1-f180.google.com with SMTP id i17so361756qtq.1;
 Mon, 02 Dec 2019 08:39:29 -0800 (PST)
X-Gm-Message-State: APjAAAXqny0l6DJfVgAtKwCEPdmApXcKdEHWMGI2sJoQVW5rtTAbZx0f
 +UKw/TWQClST5l5ibzFkYJwOioA4doO0cyG7DA==
X-Google-Smtp-Source: APXvYqwEfzQjYccT2wMEqMX5wDQatL2N4tHp4A7ns8FSpZxZv0Ca+4EE0DOAgrU16BLEIRXVuEDqcV+whmWoa1VfvRI=
X-Received: by 2002:ac8:341d:: with SMTP id u29mr179567qtb.300.1575304769066; 
 Mon, 02 Dec 2019 08:39:29 -0800 (PST)
MIME-Version: 1.0
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-3-nsaenzjulienne@suse.de>
In-Reply-To: <20191126091946.7970-3-nsaenzjulienne@suse.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 2 Dec 2019 10:39:18 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ=xXWVmnEJc7=Hg_NXhbHnCgkCOUMKRfmq7CKiGzg3Hg@mail.gmail.com>
Message-ID: <CAL_JsqJ=xXWVmnEJc7=Hg_NXhbHnCgkCOUMKRfmq7CKiGzg3Hg@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] dt-bindings: PCI: Add bindings for brcmstb's PCIe
 device
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_083933_943060_E320D75B 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Phil Elwell <phil@raspberrypi.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Eric Anholt <eric@anholt.net>,
 Matthias Brugger <mbrugger@suse.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, PCI <linux-pci@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 3:20 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> From: Jim Quinlan <james.quinlan@broadcom.com>
>
> The DT bindings description of the brcmstb PCIe device is described.
> This node can only be used for now on the Raspberry Pi 4.
>
> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>
> ---
>
> Changes since v2:
>   - Add pci reference schema
>   - Drop all default properties
>   - Assume msi-controller and msi-parent are properly defined
>   - Add num entries on multiple properties
>   - use unevaluatedProperties
>   - Update required properties
>   - Fix license
>
> Changes since v1:
>   - Fix commit Subject
>   - Remove linux,pci-domain
>
> This was based on Jim's original submission[1], converted to yaml and
> adapted to the RPi4 case.
>
> [1] https://patchwork.kernel.org/patch/10605937/
>
>  .../bindings/pci/brcm,stb-pcie.yaml           | 97 +++++++++++++++++++
>  1 file changed, 97 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
