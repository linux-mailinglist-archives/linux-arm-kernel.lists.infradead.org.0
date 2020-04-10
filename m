Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539FE1A4961
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 19:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6Dd72kAA52E/cFOKvXWibcIkYIm2sCUuGgkAJSBKuU=; b=VjNKEAUZxQ62YF
	PQokfZTNsCx2xHeN+5B/LllL3WWPXneqnbM9O6IT3qELnUws/4KnMKiejs1ACpc1IaNfVlMj9UDZ1
	Q9SOR9HGwUFzav3VmE8gwmAZpUsiEyd9ZS87VzwDgckai9Y/r7Di/pu6ENWKMBVM2wu8J/u5WntEN
	RgLeb9P1xf9g1fzWzdpshP2jP03fgKLZXsMspiSx3Qg4m0d9X2zUxUGfJL6PF4AcAWnSsk/77rBu8
	o6Krn6bMcvDHCgeBiaG7HDL5+f5yP3OO4vHVJFUiuCSDyYJG6sJr7QijijufOZ7T4hX1SjVB5HHq1
	8tpcHoX7rKjVcittMRDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMxdI-0007TT-Li; Fri, 10 Apr 2020 17:40:00 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMxcp-0007AH-SU
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 17:39:33 +0000
Received: by mail-ot1-f68.google.com with SMTP id g23so2521112otq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 10:39:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PrxNLugD3AgqUIYRVagUZqMyr4O+BINFn4HTbSjFd9A=;
 b=DqD63kn3rzooM1qobojTo75Ig5smtkg0Oai3rieEAeCINjNHrviJ92k6kaZnbQR5Ri
 fPGe7BPza5WIBhJ9UfvytKEBiuu6A20aIflNZ3mcxENXMZDEVfVODXiLXbidS4B8iXFB
 NRF1oSGjiE/hl1sYn1fgGaEUSV9Xt/2HsjcYRLc0PiHhdYT8xizL2nFhfRDP77WUjMf4
 P9S/TuhsYABQTiBAyEjYZ2HEC7aC1/5ElxXmRDl4AyMBzNsA7i7ew41FWuU35wi8U3rU
 gOOKPy4SqmIYrkh1+MB8325BKgzW6LKWU7P9tRGEzPL2PG4alv2ifYT/GVOvMClnhLgL
 xoDA==
X-Gm-Message-State: AGi0PubW0J7gH6uIxuU+pXqH0sEkVIEZjdRjv4vUh+o3LkGUxavm2nt7
 JRmJ3nyNh9W44aThD10JqA==
X-Google-Smtp-Source: APiQypJF0eQ8X+7TC7Fkb4legMcTFdHBhmQgkuNTyMXpSh0rMHGvjq0EqP+unhp8RP3f+8RHjMsb6A==
X-Received: by 2002:a05:6830:1350:: with SMTP id
 r16mr3255212otq.140.1586540370592; 
 Fri, 10 Apr 2020 10:39:30 -0700 (PDT)
Received: from rob-hp-laptop (ip-99-203-29-27.pools.spcsdns.net.
 [99.203.29.27])
 by smtp.gmail.com with ESMTPSA id a5sm1676295oot.5.2020.04.10.10.39.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 10:39:30 -0700 (PDT)
Received: (nullmailer pid 24513 invoked by uid 1000);
 Fri, 10 Apr 2020 17:23:00 -0000
Date: Fri, 10 Apr 2020 12:23:00 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v4 5/5] ARM: dts: add Protonic RVT board
Message-ID: <20200410172300.GA24406@bogus>
References: <20200330120640.9810-1-o.rempel@pengutronix.de>
 <20200330120640.9810-6-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330120640.9810-6-o.rempel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_103931_945164_C32CD423 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 14:06:40 +0200, Oleksij Rempel wrote:
> Protonic RVT is an internal development platform for a wireless ISObus
> Virtual Terminal based on COTS tablets, and the predecessor of the WD2
> platform.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/imx6dl-prtrvt.dts           | 203 ++++++++++++++++++
>  3 files changed, 205 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6dl-prtrvt.dts
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
