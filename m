Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9041DC0EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FQ5o/SjkBEwoI3DFrWCYhAjLCGtIrN5OnHOqi5tQf8=; b=O51AOhMvwDzRgR
	nM0i73VfFwNDpZHajpQFYbx/r/OpLXHhEUM2Sm+OyR/+h5J7MTDV/v3XLQeOihFlWDsPvqCZhJByU
	OBRYLZAy1FziScKg7tlty2ecQayEe7vJNYb1t0CWE/aTy/6mwKLsP6lPLdf9s6XeXe67Oe9THNP1y
	xEGQSPTgz1Phue0x/cAQ8mY4JFf8pHMEvFciFfaS7wD0Jv3sgJIDxl+6sXmmy2F4yMAAITxZ7OuYx
	v33TAyCajM7+M/hoE9CwyM0CFPwREZwPC762PezpUhGI5DCFe69K1WVz4uWWXRgJOL2SM9onfdPcl
	IyvGQeUqAJKzEe9GbnNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVuu-0002L3-KD; Wed, 20 May 2020 21:06:20 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVuk-0002K6-07
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 21:06:11 +0000
Received: by mail-io1-f68.google.com with SMTP id x5so4948262ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 14:06:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=09WBBiNg8+91WX/1ofp/cbQVZYmY4/wJ7S0gDVoiaZk=;
 b=Hen3nsL5qQ/O5TxoThnW4xaJZyiX8OL49KTXIU31DbvfmOyYXTb4RTJNcPoLNLZEIx
 A6yaQZcYeM3V1yuDLEPFHGoZpVlpukWZo81cb7hBCLtnvwA21We1KSRl1AKKq8Ru5+/J
 iYpD85/kKBIhTP2UICxPZITtwPqTlAESy0JdXYAK/fO9hBY/NsabvCpAChADYCtsc3AR
 53/uVgwZBzhWrCZZY/VElzuJHK+cZARL0svYbEqFH54ALmaqW1fZqfV3kwSPq0XpKPYd
 bj6acF5WyHuInBLzwnDNHsf3gw4K7kcUg7pl3P/iS+K39uCe1DvhgQmO0iVnJrHeVQTa
 UQ1A==
X-Gm-Message-State: AOAM533uYF2+0JcnalAPF5jB+q63BF/V8h6fCRC2a7WnIPTKy5EUKIHt
 MM55tFc8JlUpvCEkTleMhg==
X-Google-Smtp-Source: ABdhPJzagkFCHWiZjW5SLGpSt8Lquwvefwmka684NQTnQdAmOG8QYT+tbPEiButaZUh++R9xb/u2hg==
X-Received: by 2002:a02:c00e:: with SMTP id y14mr938022jai.15.1590008767247;
 Wed, 20 May 2020 14:06:07 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id t18sm1953577ili.24.2020.05.20.14.06.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 14:06:06 -0700 (PDT)
Received: (nullmailer pid 583652 invoked by uid 1000);
 Wed, 20 May 2020 21:06:05 -0000
Date: Wed, 20 May 2020 15:06:05 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 04/14] PCI: cadence: Add support to start link and
 verify link status
Message-ID: <20200520210605.GA583572@bogus>
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-5-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506151429.12255-5-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_140610_040802_9F222FF4 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
 Arnd Bergmann <arnd@arndb.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 20:44:19 +0530, Kishon Vijay Abraham I wrote:
> Add cdns_pcie_ops to start link and verify link status. The registers
> to start link and to check link status is in Platform specific PCIe
> wrapper. Add support for platform specific drivers to add callback
> functions for the PCIe Cadence core to start link and verify link status.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../pci/controller/cadence/pcie-cadence-ep.c  |  8 +++++
>  .../controller/cadence/pcie-cadence-host.c    | 28 +++++++++++++++++
>  drivers/pci/controller/cadence/pcie-cadence.h | 30 +++++++++++++++++++
>  3 files changed, 66 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
