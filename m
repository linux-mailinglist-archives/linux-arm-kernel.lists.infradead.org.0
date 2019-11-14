Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D6DFD0F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 23:28:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyeOwTB9GEjAVucCufa0itw4Vc7RE5WP6eVNDa51lng=; b=e+LDPcETNJlRIH
	leqs7ajrD8CCn/nTmnLGmBJBiBJSltQ+NqINFJP3oYWXgr7jVR1v3U/z1uNSVlIbX3WiBqd1i3I0K
	hDKU4vU8pYB4b5Zpsb1QPl1SkyYkBKgp0wHAtn18Sai19BLsO7EzTuIuD7jq/V6txR9gbnf2Ej+O/
	eUMSr7D3D8GnXGQ86nFKxBNURl/SzHDWMMOIWivFVERJJUWl/QEO5dhsJervk0sV6S/LCxz7k+k52
	UnQtB9mPp58xNSMSZUeUJUCOoHgbI/HeLxyg9TZObt5i+2iXZxwTo2iw6Ehhstsp0W0pmC+LLa0ny
	H51B5DT/91r2Mzl2gn8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVNam-0006y4-MZ; Thu, 14 Nov 2019 22:27:56 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVNab-0006xF-FX
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 22:27:46 +0000
Received: by mail-oi1-f196.google.com with SMTP id l202so6873179oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 14:27:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=Cq0LD8yuKCnh2UTHogff41GNJ+0SDF9ePhudesBQyZU=;
 b=Ojl5ejfkaE/E9Tg5c/f4uWDKTasdNvuhTcxJmpU1ZktCV7nwYlFihr2KjUBxGacs3H
 B6LD6ISJF09cW7pseqYmPjLEYyskityUlfEaiW6acSQIXyJf9zd6EMJnVj609SdG42IO
 RJUqh4VTbvaCTM20RkABQk6Y7k4wiTTJqg5SerJRcnG876Q+SZ1A8zL6ST9Z1ckHl3Md
 rs7ePn+2OxPuthrG2tX6rBNymM+JDRsEXWm06T4a7CHxgT6ItzgMtxgxW8+wkOZ0eiom
 4TgBqToQ52aeaFuwdNEre0hqQz4MTFGz/V+HU0xQ0UrU5RPOf++SPcEVphqkclveyWBM
 No7w==
X-Gm-Message-State: APjAAAUwppmt0ArKeNtF1AHOlsDKzJ7+xucdUIvnyDkY/fhBwNLTyf+7
 X3/3QB9kWBGkzEzM70uUsw==
X-Google-Smtp-Source: APXvYqx1PQt5sf4JKKbpGfkraBP3rybv7qUasEttesaViZEp6krjgQxVXIm2ZR69LyO0X3dVn2oYyg==
X-Received: by 2002:a05:6808:5c3:: with SMTP id
 d3mr5373342oij.81.1573770462944; 
 Thu, 14 Nov 2019 14:27:42 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m11sm2217136otp.15.2019.11.14.14.27.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 14:27:42 -0800 (PST)
Date: Thu, 14 Nov 2019 16:27:41 -0600
From: Rob Herring <robh@kernel.org>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH 3/4] dt-bindings: ARM: at91: Document SAMA5D27 WLSOM1 and
 Evaluation Kit
Message-ID: <20191114222741.GA28212@bogus>
References: <1573543139-8533-1-git-send-email-eugen.hristev@microchip.com>
 <1573543139-8533-3-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573543139-8533-3-git-send-email-eugen.hristev@microchip.com>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_142745_518142_69EC4E84 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, Eugen.Hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 07:19:54 +0000, <Eugen.Hristev@microchip.com> wrote:
> 
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Document device tree binding of SAMA5D27 WLSOM1 - Wireless module;
> and SAMA5D27 WLSOM1 EK - Wireless module evaluation kit, from Microchip.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
