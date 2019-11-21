Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D59105A77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 20:37:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnjBbmj6wvfzv2nUrOEqUbQElkdYvY/aoeMOC52wF5k=; b=qflu7WLXv8qK8y
	UXrqFhj7E3GU0PLfpV+hTf25DEd+72FZQZUaM70EvoZJma0N/EG/MBx0MPQKqeaMKJwHKQK92REch
	cxciqLWYzxT8asmlk7eCyawkP4EJ1BLBHyzybVXbD+eVexgAu+4TpXmHuyuSqt7CBkyLr/I7hpb7F
	EMu93n0MmTXl9/pupVKpaXwGDkEBNNRPvifAjXJ49oqcCQDeaHpMDTFdz2n16VNt6mm1rjd7M2rlq
	o7O9XLr42/hdlW/R6ALHBwIwECyQ2X2UQUyOuczQGvOB7kK6TTUd4QOIufDPopTz6uzXm2/UWShUm
	gInY8pt+wNyjm64n6qGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXsH7-00022r-Fv; Thu, 21 Nov 2019 19:37:57 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsGx-00021r-Ka; Thu, 21 Nov 2019 19:37:48 +0000
Received: by mail-oi1-f196.google.com with SMTP id m193so4342251oig.0;
 Thu, 21 Nov 2019 11:37:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tMER4MOHixp2wY9ZjS4RrN2RrDNX7H+o1z/zXkM48ZU=;
 b=XaUzvB4OBBh6WGpG1rsulZ6wBvYE0BZSYrU9epoToS0VrT8rZBKZRr96px5Tuk0Cw8
 Y6UMQjg/UQzNSr2SfjNnkEGclyTGyv9m1c8r4ITbmmlQ8/xv8JpX5PqLg+aSiHnGK1WF
 Yw+Vr52c9G6b1MOWbNGIH7hb+dYM3bWqSUDarIQfBp0Oz+ZfR26Ng+NSiPuiz44Q79d6
 aIJiD3xukhVvh2FVjJmkJSAyG2DxsgTdkR5Hum6atTlBpv6yWgpv3A5T3UHszYCvIrZV
 nULjvWu4kMtYg4VI3JfBBafuHw/THOZ75Zwyq8t9I0Yek94SCssovo4CJMvkvh2EPlZS
 ZB1w==
X-Gm-Message-State: APjAAAUWxkrRhbFum0vFtnsO4jgMQ2wSRj8hWTcynDW60aVFCn7q0Nip
 Pdjd++I59UGHD6Pqe+YRSQ==
X-Google-Smtp-Source: APXvYqxz3r1XfhG46Xqzohy//cfJAs84lDW7vsquvPUXB2FPHrRH/1ETgZRryOu7acvqdws+X02tgA==
X-Received: by 2002:aca:4ac5:: with SMTP id x188mr8823046oia.148.1574365065094; 
 Thu, 21 Nov 2019 11:37:45 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e88sm1305777ote.39.2019.11.21.11.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 11:37:44 -0800 (PST)
Date: Thu, 21 Nov 2019 13:37:43 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: mtd: Convert stm32 fmc2-nand bindings to
 json-schema
Message-ID: <20191121193743.GA3627@bogus>
References: <20191121130615.13007-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121130615.13007-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_113747_672297_FDCA1817 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Christophe Kerello <christophe.kerello@st.com>, vigneshr@ti.com,
 richard@nod.at, linux-kernel@vger.kernel.org, marek.vasut@gmail.com,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 Benjamin Gaignard <benjamin.gaignard@st.com>, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019 14:06:15 +0100, Benjamin Gaignard wrote:
> Convert the STM32 fmc2-nand binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> CC: Christophe Kerello <christophe.kerello@st.com>
> ---
>  .../bindings/mtd/st,stm32-fmc2-nand.yaml           | 98 ++++++++++++++++++++++
>  .../devicetree/bindings/mtd/stm32-fmc2-nand.txt    | 61 --------------
>  2 files changed, 98 insertions(+), 61 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/st,stm32-fmc2-nand.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mtd/stm32-fmc2-nand.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
