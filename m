Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9357EF0D6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:56:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrPO86ixhdoGhzMz6Y50Uey8+1ge0pw6O9v5FmUTr9E=; b=Ysx903MoHTUKWO
	aqE2XcVmdA7ASnli0wt/PoAf7btr897zOzEm389t2hOcHLcf/ujYIxNDxc5hPQ5BmkMvsiYrGsLOe
	rwzJ9Ie6D9Q2EJbV0/ddqe//BaM+Aa80jTqFzCxBxbNcPModQEQvBXhLEUFewjYsyDCv7GN3iqL44
	Wvrvi0ULbndkl++WSvhEcrwlGYeAwsof4vz82oLERYNf4IAzXjVpgTKhKTQn8rMdGUt1CWllYjd6U
	QK1j583/dmv9mdWeUAoHITN6IyJ+01LXK6Vhf+IXPyS1cwbFs99FDW/IMIzPozOArFt62I0q7VNZq
	0jYNcqcpbmNgiKYvDAtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCQD-0007ml-Md; Wed, 06 Nov 2019 03:55:53 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCQ6-0007m5-VY
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:55:48 +0000
Received: by mail-oi1-f193.google.com with SMTP id j7so19763377oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 19:55:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HjUAd9X8fjLKsDxJpN2012RcMafvu6lngdZt6RcTJmE=;
 b=EC/j1FErp0k/8r7NnuReO/wA5t6mrLImm3ezc2KdxgFGNFt6xU9NfcnGJLaRAKRzqL
 jw+WuSry9VvJyT7cUM4lkpgDzGXinzhSs+UxBCWsVCbAqTq+MNJG7tSf040HUD75GBUG
 uNaRxYvH/luLju6dVNbBTfmnw+e7O372DeiBD0PsocezVGnySvJ5Cj9iMKqlEgSLn7Dr
 BJke3o8EGX3+lbjDqzhya2jvA6tXpdv9E3UG/DGIXxBmh6JhZDG1UwjvGlEwT0jWSqMP
 LqMr4qjxRGKUAFdN10VO6LO60DpjdhM9BnoxWhjrBfFvOGbS4yWmRXkXsQZodbh/ypef
 7pNA==
X-Gm-Message-State: APjAAAVG/0uKnMZzBEZE8SRfUKJY3F1tYOQWKHSl5bCGa1uiFA5HNGOR
 emupfjI5kDTOdcRI47sbHA==
X-Google-Smtp-Source: APXvYqxJkijcKLeyFdKVWB0o60ED3NvjcHRUtiDM4zKRWEtVlOO/Z5sLKo86HRD5S3kjvC0jks7g6Q==
X-Received: by 2002:aca:c753:: with SMTP id x80mr337979oif.115.1573012545901; 
 Tue, 05 Nov 2019 19:55:45 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c23sm6055178oiy.20.2019.11.05.19.55.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:55:45 -0800 (PST)
Date: Tue, 5 Nov 2019 21:55:44 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: thermal: Define BCM7216 thermal sensor
 compatible
Message-ID: <20191106035544.GA29667@bogus>
References: <20191030182132.25763-1-f.fainelli@gmail.com>
 <20191030182132.25763-4-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030182132.25763-4-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_195547_014354_F2AE55AD 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 30 Oct 2019 11:21:29 -0700, Florian Fainelli wrote:
> BCM7216 is a 16nm process STB chip, which requires a different
> compatible string to differentiate different temperature formulas.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../devicetree/bindings/thermal/brcm,avs-tmon.txt         | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
