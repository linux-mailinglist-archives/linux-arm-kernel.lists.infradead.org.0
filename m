Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF80E5775
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPOl2itNdtfinlsbf8hgsjhmo09/lDuWXc2cq6wdJsQ=; b=OBgvqFjmRpuprH
	QfN7QfwV8iANhC3PRB9yDFH9QoouuyGUmzU4ws38skey4SgFhhLNgyT2YBDAD6gm8C/oZfA+pzZjT
	fgSSSRAC5oEp69IiaWRSwJvOSbHRH18VxSfeoBE6UDRyZhrg1Chimj5vCeI8Ep+f3fN1axKbMGhZi
	reXoaIdBqEXb+VulQFMxtNThuUtIkqhfV95hEv0Sb2r2Sf69HF9hA+R4tImyg2WfZaE20dwCsUzGD
	O6uy/0h19YiglCdoQvg9/6h6vcpBcc0XBT5if5HozeI0NsGgU26Fvj39sX/df6AYQRK//wYiYj/M5
	78kKX1UDezBBYokuqfIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9lr-0003fg-U5; Sat, 26 Oct 2019 00:17:31 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9le-0003fC-69
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 00:17:19 +0000
Received: by mail-oi1-f193.google.com with SMTP id s71so2727313oih.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 17:17:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hOjPJa1yemSBeswP+tAkd60Q1n8Cz2I13yekyg60bMs=;
 b=FCcKwY/Mst67cu+aOJAZyVVFSYw2nxLIQ5efjus/YvVhDbkRNsZyQalUy2L0zl+N9F
 wfGCXEB5KBapgcZlcG0Rvd/0PYpyu6jxJqaZJh+G/ycUOdHnOdHDE3q3woO9TVzxqjmF
 4D+KK2xazbyKM2sgO1qB9wWyT4HbJGIoaaaRn5rC0JQMfHnoklOeemphUDRGvfHdWoxB
 SKpK7ty1SzphdrDPhvY/kkYCg3pqXsaSoQn7LU72M7gP9YmFIfKvB13bj+IiCYWfS13h
 8qGcg4+LLEDGu4CKh3EylxOlDe5q9WnPwIO5ZKVU4MKa1eGjtUNX8pLvMt0QjfdThn3m
 mDTA==
X-Gm-Message-State: APjAAAW7V9bPLqJycvmEI4Jtz93piWK7JEhQJWjt9W8ufgUj7VRpqk90
 qRKeQdoHV1/cVX1yVOyBXQ==
X-Google-Smtp-Source: APXvYqxd4vKbJn9lsrGOqXR83eEuUycJBvh2/M5MZg+CzayStyy9jDWnKKzdUVTCR1NP6qxJRVlvLQ==
X-Received: by 2002:aca:448:: with SMTP id 69mr5087878oie.2.1572049036409;
 Fri, 25 Oct 2019 17:17:16 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l12sm1002948oii.48.2019.10.25.17.17.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 17:17:15 -0700 (PDT)
Date: Fri, 25 Oct 2019 19:17:15 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: renesas: Document R-Car M3-W+
 SoC DT bindings
Message-ID: <20191026001715.GA6299@bogus>
References: <20191023122911.12166-1-geert+renesas@glider.be>
 <20191023122911.12166-2-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023122911.12166-2-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_171718_228898_90B1B6AE 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Eugeniu Rosca <erosca@de.adit-jv.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 14:29:07 +0200, Geert Uytterhoeven wrote:
> Add device tree binding documentation for the Renesas R-Car M3-W+
> (R8A77961) SoC.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
> v2:
>   - Add Reviewed-by.
> ---
>  Documentation/devicetree/bindings/arm/renesas.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
