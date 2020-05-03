Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE3B1C2DC3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YgsPDm2yL7h0DrQS6/wJWlgAkYmwoi8uuTa00+1WtY=; b=pDUU+EfK3QN1eI
	AgsQaWKm+oqSV9cK+SeD393w7sw5gtJ4TqHc5/Q8mnTmP/8cDM9pgLh3Y7Tn/W/yuvL00D/2M6x6D
	a2VtKII+z8bn6BCm18a2tOGxHTEhBG83wAX/VHLDNhPew7ovib1Bl9xIzP0iZOIr+bdUD+wJj0NYw
	10w68g0lkRcu+tcg5TJA9J2SBKGeBFWxO7bXHCb49lVX/3KLDv9e50fJ6aWqvIx+NUsLewKSKms0P
	xCUbF0B5ADBkVpnddTinmOJpugMNkDukna3Zhgdo1jGgWZ0mXCEeU3nZf5sjfUXVBjCOcxBT/2X9a
	rVSLeIedcNLmDhyACKZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGzo-00089n-Uk; Sun, 03 May 2020 15:57:36 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGxs-0006ZY-LK
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:55:37 +0000
Received: by mail-oi1-f196.google.com with SMTP id j16so4431998oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 08:55:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9q8wbZYRPSqQx47Qv6StuG7MMHileffP2EgPKwq6m5E=;
 b=GHdKElOlXE+jBuUoGhCpFWcud3r2rTFPKWQTBknQOeiN04K26x9N2NWM2PGLLBZYmd
 PI+sKklyg2NKW0fV6enfxCmd8JKWzy31HD6T7NR269Wlmw7EiXKlH1TgRmFsGCPunjUa
 DJsROX9veyOdY7rHdKxc5fn4t3BkEeTt/g58fPvMsHeaM7Ygw5ftWRj0PeZgLfET/4PG
 qkjXL/3uabhoCho32qTvOVpJhgrZuECBDygc3i0CPVIcRjS5Ti0N/A16jX1YbNsYscaZ
 mvXnxk7nZn8wYj0QRM0SVrOgVU0Ljhw/hl7jYOPkIZhhQ2Pc/I7Fj+xHxUdeO8thl3Ct
 lQMA==
X-Gm-Message-State: AGi0PuZGaKOILz+TqUPEV1aCjfWeychWb9ofuo8a/2M8dcxatFlbRYxy
 ErykAz6F3pn1t30kGKCpNw==
X-Google-Smtp-Source: APiQypIUHBG+6CETz5iYd3KTYNZ/l+5zZP55EATPbVy0cOYyjC2WTEqT/392JI4+a6Me1XA+mwdXeg==
X-Received: by 2002:aca:7209:: with SMTP id p9mr6246139oic.168.1588521335438; 
 Sun, 03 May 2020 08:55:35 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e15sm2515290otr.36.2020.05.03.08.55.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 08:55:34 -0700 (PDT)
Received: (nullmailer pid 20682 invoked by uid 1000);
 Sun, 03 May 2020 15:55:34 -0000
Date: Sun, 3 May 2020 10:55:34 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 4/8] dt-bindings: phy: Convert Calxeda ComboPHY
 binding to json-schema
Message-ID: <20200503155534.GA20627@bogus>
References: <20200430211054.30466-1-andre.przywara@arm.com>
 <20200430211054.30466-5-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430211054.30466-5-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085536_731229_E41BEDB1 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 22:10:50 +0100, Andre Przywara wrote:
> Convert the Calxeda ComboPHY binding to DT schema format using
> json-schema.
> There is no driver in the Linux kernel matching the compatible
> string, but the nodes are parsed by the SATA driver, which links to them
> using its port-phys property.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/phy/calxeda-combophy.txt         | 17 -------
>  .../bindings/phy/calxeda-combophy.yaml        | 51 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 17 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/calxeda-combophy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
