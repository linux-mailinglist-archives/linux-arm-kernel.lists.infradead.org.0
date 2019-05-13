Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688171B4FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:In-Reply-To:To:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=5VHY6uU+P4WBDv+4n24FklWCDV/2PcNXHVPTWTOTrsg=; b=GaiVOTiSs2L6EXCrXfeOQJSFb
	VY7P+deqW3zMtuCYlHWQEC4enF9MtBJQxvc8rwgfVjeeIlyTpoHnS6VIIR89ZPFPnyfWrQlEqsaTe
	XtcUePT0q+tprvP1GMaHCRP62vs0j8MbBnSvBoHcx07bAw3b9vJkCzRUsOi9yrfIGkQ1I292bxk7A
	tn9fJi3HmNfNsg18lS7u76bjO2z6Yfmf0oOxj73wN585ivtX1eN8B7hq2iXYfKMB6q5RUY2Wf7Nrf
	1fau9oNh8Sifqo/RsgoU//trbvuXgkv7PEMs3VfSNUJjxgPhktaveFWP/jIIjSa/G66klYL/aEcJi
	Jls9wZIcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ9CR-00020h-SK; Mon, 13 May 2019 11:32:55 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9CJ-0001zo-Bn
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:32:48 +0000
Received: by mail-pf1-x441.google.com with SMTP id z28so7076998pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 04:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zaltys-org.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:cc:in-reply-to:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=oW2OGfo2kmTLuf4Kc5CGIE4FQWJunf5Se7PBzqxMT+k=;
 b=QyMS1KkvVFMpgE8NWSvXdmK/oaHre2INuuntPie9HgV+miKlaRnV1PjPxBWhMwbA7Z
 mvnM8/inBQ015PcrGGYELYZXcPIWZoEra7stEA33UbOdFDDqtafe3k0xWiL4xDMZfN14
 oRgt0iFijQzgyJ7ipOWy8U4tPQYbqUhL8ZaEf3dYxSxdlacM2ix2wCyYRU9Hrvo5msIR
 /PSDuzWF6cuZaqs0QEXOXSPx9jqBz/8kW0DKR0vP4TjoL/bOG5vAgTdKCTdDZO8UaZ4+
 y8XSBnFPLCsmt9FbYFpuVEER9KiWJ5AmZdE/vwaD2c3yewD02JewIBif9h1kaLakn6ys
 82XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:in-reply-to:message-id:date
 :user-agent:mime-version:content-transfer-encoding:content-language;
 bh=oW2OGfo2kmTLuf4Kc5CGIE4FQWJunf5Se7PBzqxMT+k=;
 b=tsSD1omTaeHgtcmn3NIYYQth80TEcTXusZBpSB0QG+vZZFKv+DYAhtvA0gPY8NfGeK
 hSE9g+6c4B8sW2pQEGVLteVfZ0oPHLwjvGNbtr+XFOxCqpG+oPzUW3zZYaJ4jEzMBxTL
 V/eZPskqHftdW70YNrQeBEDK78pGkK0p/okWgyMX4hU8qKU2faiT8p2GnkWLVGjdaxAf
 j0BOFTX9IoVbPQvDtX6GDeGI2cM+Fcc49qHIp/UW3vlOri7+brfajzA8Fyq9+sO8O7tK
 +4icPShuZHOaTKrPsTaKLK6WD2i0cVYO7l5ZtkQW1YPI7n5k/oZ10ih1/b3BDQkzkfr6
 BeTA==
X-Gm-Message-State: APjAAAU1j92k8ao/Pb80TB62V7e6IALmIwwDUF/m8HHY0jnYaTuVCkkG
 mjtsJUnLWq07fGzu8dpoOTCTUA==
X-Google-Smtp-Source: APXvYqxmZhyuK0mcNDMhg97F7hXXFjrF+5Xi3FPN/3a4oxJ4C/VPadqCq4QSeE7IoTblppgKCkskFw==
X-Received: by 2002:a63:7989:: with SMTP id
 u131mr21610419pgc.180.1557747164024; 
 Mon, 13 May 2019 04:32:44 -0700 (PDT)
Received: from [172.28.0.10] (122-59-127-127-fibre.sparkbb.co.nz.
 [122.59.127.127])
 by smtp.googlemail.com with ESMTPSA id r9sm19107632pfc.173.2019.05.13.04.32.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 04:32:43 -0700 (PDT)
From: James Grant <jamesg@zaltys.org>
Subject: Re: [PATCH 0/5] usb: gadget: udc: lpc32xx: add stotg04 phy support
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Felipe Balbi <balbi@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>
In-Reply-To: <20190409120908.12079-1-alexandre.belloni@bootlin.com>
Message-ID: <efaaff85-ac39-f0e2-e042-7d6fd0c59054@zaltys.org>
Date: Mon, 13 May 2019 23:32:38 +1200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-AU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_043247_537163_E1FF3606 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested with a board containing LPC3250 SOC and STOTG04 PHY by using 
serial gadget.

Needed patch "[PATCH] usb: gadget: udc: lpc32xx: allocate descriptor 
with GFP_ATOMIC" also.

Tested-by: James Grant <jamesg@zaltys.org>

Regards,
James Grant.

On 09/04/2019 14:09, Alexandre Belloni Wrote:
> Hi,
>
> This series starts to clean up the lpc32xx udc driver and also repairs
> interrupt handling so hotplugging actually works. The design I tested
> that on uses an stotg04 instead of the usual isp1301 so support for that
> is also added.
>
> A bit more work is needed to get the RNDIS gadget driver to work.
>
> Alexandre Belloni (5):
>    usb: gadget: udc: lpc32xx: simplify probe
>    usb: gadget: udc: lpc32xx: simplify vbus handling
>    usb: gadget: udc: lpc32xx: properly setup phy interrupts
>    usb: gadget: udc: lpc32xx: add support for stotg04 phy
>    usb: gadget: udc: lpc32xx: rework interrupt handling
>
>   drivers/usb/gadget/udc/lpc32xx_udc.c | 167 +++++++++++----------------
>   1 file changed, 66 insertions(+), 101 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
