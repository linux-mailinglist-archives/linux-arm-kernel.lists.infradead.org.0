Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D49E1A4956
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 19:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLQ0dWlJhQDcNIaHrpCyPhV4jri7hrLBxGwJXuYQAcQ=; b=XFdLO1+Mu5B5du
	p92weqIT1XvckE+5dCXTujj43nsfF5gO/+2SCaLR8+ABR3NegZ9z+1Zx+GO5CPQFiIgjcr42VFNfR
	BPqZdRnyKFm5i+bCqjWuJnxJzF4swGbFzz5TfJWmJoOWKH7hKmQVW6Fl1gYyVanQqfc29On85SKn+
	O9UQnR2PDjD1ttqgFRmK/ll3qZ1Cf9WQFVHyll1DygE1mZ88GfOFai8G4D6HZ4QHNXwfgVs0n+ghZ
	Y1dkAWec7svululahNntApW61n8k6QORHEEks9YxEG7jt/6W66SZAEplG1GC5ViFdkWvwCVR0PjjA
	lD3s/cAqVz5t4FBkC10Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMxcf-0006np-2h; Fri, 10 Apr 2020 17:39:21 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMxcL-0006bL-E3; Fri, 10 Apr 2020 17:39:02 +0000
Received: by mail-ot1-f66.google.com with SMTP id q2so2495106otk.7;
 Fri, 10 Apr 2020 10:38:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9dA79p/fJYP1exJyfDyndCj6b9oBdHgsFtR15+WKLmA=;
 b=evAAPR/C/Gk+YNIoSsdZsqbEkwTVQAjl3drDApazuwpsK38xzSDljTovlPiV4EOfKv
 Ot8Qrw4NIFbzfT48BobX931ZgE/HS5rM4++CrdS18dv7iKaNqsh40FeXQr1u4tsEq/iD
 NY++JQjRqWlWPMvRxHQkNlLY7iwXSJ7dS0mZ9PhidgDUZ0UkJiMgPNvK2MpvjBJeosQ/
 z2Gwq3uUyck+Zm6idZ6z+hGgK9Lbnk2owW1O8ld5uAOQa5Pc/2i2QS0/XvPnEYyi3ith
 9KEsluuJpj1qGg9uC3OWB+hLpmAZ4kcM2k0aHvJKKJgg49CuEe5q33bCl2Zh/gvv1aQv
 efBw==
X-Gm-Message-State: AGi0PubO/dphov9cz9DLpUeJz+dY3jPFZmaIBW9lv5WCFEjyM+ut9vJr
 iGmw+IQHdwTiW5WsVibM2Q==
X-Google-Smtp-Source: APiQypLnV0lWs3/a0m0yM5wOMFXyJ6eGdqLn+x7dWPvHkUdeb3HuMNfRq1B+n0WGttYYQQyMwRIjFw==
X-Received: by 2002:a9d:2056:: with SMTP id n80mr5211844ota.281.1586540338638; 
 Fri, 10 Apr 2020 10:38:58 -0700 (PDT)
Received: from rob-hp-laptop (ip-99-203-29-27.pools.spcsdns.net.
 [99.203.29.27])
 by smtp.gmail.com with ESMTPSA id x17sm1544589oif.28.2020.04.10.10.38.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 10:38:57 -0700 (PDT)
Received: (nullmailer pid 23157 invoked by uid 1000);
 Fri, 10 Apr 2020 16:37:18 -0000
Date: Fri, 10 Apr 2020 11:37:18 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/5] dt-bindings: sram: Add Amlogic SCP SRAM compatibles
Message-ID: <20200410163718.GA22705@bogus>
References: <20200326165958.19274-1-narmstrong@baylibre.com>
 <20200326165958.19274-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326165958.19274-2-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_103901_504438_39A38979 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 17:59:54 +0100, Neil Armstrong wrote:
> Add compatibles for the Amlogic SCP SRAM memory zones.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/sram/sram.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
