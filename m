Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66043176874
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 00:48:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VGRQYvyNC+AlFrKVOma7akjuMoKq62ASKBUV8eM6Lg=; b=Zkyl6Vpd8Re+30
	fEbEQAzypkaMG2VD5AH9Lpr6XiOCJn/6EIA93ZPYcBKd2+YuF9nR1E7YmrFS5eG4uChW16Tmn9KIl
	6OTLn7ElvCZyTewbcQWuQk/yrUhH+vhWLkPx/RSW13SDTCYlv3bbNdlgTMSbemG/5mcwXjp5NyM12
	4miqG+/MRgRXmDdh3+wHvwPiWV38tQsOExmLv8moIx8na5TKVogrXEGTo7cnz03Dx3N8BSiiTo988
	sfDwOQu/RUx5hP1GABSdikTLqT1ezaUU9XTxwR2ewOJKN2p0HkGzKqPF7c0NDHdUVnjiFMQmDebX1
	tFgsEsyEf7ByTAnRsTCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8unj-0007GP-UT; Mon, 02 Mar 2020 23:48:43 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8una-0007Fy-Ai; Mon, 02 Mar 2020 23:48:35 +0000
Received: by mail-oi1-f196.google.com with SMTP id d62so1090284oia.11;
 Mon, 02 Mar 2020 15:48:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IRKRL6bsVR25jdnkySlY9nrjsKRKvfWFUdg3jJgqhvM=;
 b=B1wWZd9C33pCYT7J9R5R0kHhI6v5RHWeXeftr/TJKI+ttYA0bLgMAAdYwPHNAonx0x
 SX/c8no8S6rFE1NMEwDvInBWi9KmJzryurijeY4h7o+R14b8+iAHELqB+6FZVGWJizkM
 WafxS3O2+aMFZot9eo8bmuK4sreq+zPOZQRM3ctQTqbYC/sahZ0GD/3PpM9ntD/QKFya
 9J6KbvnRbnO/GCyxXAz/IIMhkt5/eNLzd9GNJCh+DW5ftRbN+OQCu4sgpEh+RDqy/L6L
 CppEG/4HB1JRON2OyoLeNCf7fuoAElxvyVdcPbVY4ekgnnE4QU05jD3LiB0zxxbtkaSS
 I+jA==
X-Gm-Message-State: ANhLgQ0lw8Chyx+5KpzbF0EPVjzIj7ObmurBv1dzRH69MOL0R/FYxndb
 NoJJzaWW/O4qraNwV7JRLg==
X-Google-Smtp-Source: ADFU+vt2I73Ny42c4sY9uLWCMSp6hK6ClCvDil8321kkwWDH86USwR7muQDsWqWnRb7qcFSntFukew==
X-Received: by 2002:aca:1011:: with SMTP id 17mr678618oiq.72.1583192913409;
 Mon, 02 Mar 2020 15:48:33 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z19sm4129288otp.81.2020.03.02.15.48.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 15:48:32 -0800 (PST)
Received: (nullmailer pid 31830 invoked by uid 1000);
 Mon, 02 Mar 2020 23:48:32 -0000
Date: Mon, 2 Mar 2020 17:48:32 -0600
From: Rob Herring <robh@kernel.org>
To: Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: add vendor prefix for SmartLabs LLC
Message-ID: <20200302234831.GA31775@bogus>
References: <1583036241-88937-1-git-send-email-christianshewitt@gmail.com>
 <1583036241-88937-2-git-send-email-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583036241-88937-2-git-send-email-christianshewitt@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_154834_371266_2F586181 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Kevin Hilman <khilman@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org,
 =?iso-8859-1?Q?Jer=F4me?= Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun,  1 Mar 2020 08:17:19 +0400, Christian Hewitt wrote:
> SmartLabs LLC are a professional integrator of Interactive TV solutions
> and IPTV/VOD devices [1].
> 
> [1] https://www.smartlabs.tv/en/about/
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
