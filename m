Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6446216AC66
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:58:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpTks0gHfIT6w3NXd1CxWxW+Y+ye/aCH6D07Od6lUjY=; b=KYjFe0jEcVBEcw
	Xq/REEl10No3FsMWWNaTusp7htWCM2uavTU27uGoZasxfAOERrWn2IpWRsdeESldq70kXlg17yry9
	68kXN6ub3G894AwJ7LRHQjtMDK+Q+nV8Ccrb97xFzFN5+brazjs0vUq88IK5bSK8BgAbs/V8lKQ8C
	E6ht4VkldrRJAkkN/Zt6FIdzIYJzBLa//kErfX9ZB0/fdud/o6BdbUnUi1tFkN4/HDlzNi3cqTV38
	iADtSanDa1AaZWT2k9gKNMQ3jzVMg1TyGrOUNbiTPFMbJzk7/o7pp7eeX6pJy9vYcmfaw3JrXTjBG
	R3MSDCFX9ANo3nMfrlCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H3P-0001LZ-SB; Mon, 24 Feb 2020 16:57:59 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H2w-0001Cp-1E
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:57:31 +0000
Received: by mail-ot1-f68.google.com with SMTP id r27so9308862otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 08:57:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6g/0/6uHeJ9SHvtHOygjn4v068gQNv45K/NSYSZDP4E=;
 b=AkedGDJSXTQ5tUKJUvVzypOVtu6sTawYRl0UUE3aHZ261e7IqgSHJditR5se3yax6M
 uFGZuaET8hBwykCUPGV7niAahDbqFEHrPeFmwdTWJ5c0F9rYFJ8Neao80fzHb9ULeP0o
 42GmfYxDv1WIzC50TKnDwypj687a0wXSA3xZ26kbR1u4MbYwbaYDkHtbhpZ1rwQoVpHE
 i1kBXr/1/zp+sMUzr+vlgJKLnqV4SDudazb5GJTL8H2Q81E8hI9mn0pTrrewp3JcGx3u
 btDUVqheEm87NT0nvBxo0H3ADCvkcsPMrgj1e1+JWt37l0K1mrg54BojI9SWynbRXn7x
 PnHA==
X-Gm-Message-State: APjAAAV5ZaOoenSeQ8f4eUQWH3DBXssxiB0rNnN8yNaSpm9vW8Bu7L41
 acHblwOHObLHzETq84935Q==
X-Google-Smtp-Source: APXvYqzBSMqtk4LzoxQnFIH5IwbuCE4Q4g+OfNbeilXK0aQ5gXGWn1SAYGX3ICKI7wCB5mXfcqXu7A==
X-Received: by 2002:a05:6830:1d8b:: with SMTP id
 y11mr42737812oti.4.1582563448155; 
 Mon, 24 Feb 2020 08:57:28 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a1sm4610066oti.2.2020.02.24.08.57.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 08:57:27 -0800 (PST)
Received: (nullmailer pid 27821 invoked by uid 1000);
 Mon, 24 Feb 2020 16:57:26 -0000
Date: Mon, 24 Feb 2020 10:57:26 -0600
From: Rob Herring <robh@kernel.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: clean up PCIE DRIVER FOR CAVIUM THUNDERX
Message-ID: <20200224165726.GA27161@bogus>
References: <20200223090950.5259-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223090950.5259-1-lukas.bulwahn@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085730_104503_C454A879 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 David Daney <david.daney@cavium.com>, linux-pci@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>, Robert Richter <rrichter@marvell.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 10:09:50AM +0100, Lukas Bulwahn wrote:
> Commit e1ac611f57c9 ("dt-bindings: PCI: Convert generic host binding to
> DT schema") combines all information from pci-thunder-{pem,ecam}.txt
> into host-generic-pci.yaml, and deleted the two files in
> Documentation/devicetree/bindings/pci/.
> 
> Since then, ./scripts/get_maintainer.pl --self-test complains:
> 
>   no file matches F: Documentation/devicetree/bindings/pci/pci-thunder-*
> 
> As the PCIE DRIVER FOR CAVIUM THUNDERX-relevant information is only a
> small part of the host-generic-pci.yaml, do not add this file to the
> PCIE DRIVER FOR CAVIUM THUNDERX entry, and only drop the reference to
> the removed files.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> Robert, are you still the maintainer of this driver?
> Rob Herring, please pick this patch.
> applies cleanly on current master and next-20200221

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
