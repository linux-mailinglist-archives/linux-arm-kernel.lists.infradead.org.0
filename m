Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F372105A64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 20:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIeyh59uyuGH2xR77i+dgiDEA5Po6J8xQNUfWGrHe7Y=; b=Ae6iw+7J6/qSpa
	BwrPLf0TJ7rQrypx4FlJQhiUAcFLDNy4kkkB7XyE2IrCZRUGqMtGH6kGjUHG4xnyLmKcIjoZSyIAU
	rjrbAcNgfHgKU5SVtg4AOqelNPqGosXdsqNGfbFw+JDMae2aubw0tAX0+dYkQCvXGE4C7RGyqf6Ew
	oqP0yIkh5vdgDV969nvDMFWgpQCP54J8bq5W0l42JY31LvuUxSuCsZd7MR2yli1052hHe/k81EoxM
	5QVVtYW5pFC1z/y+jiLYs4HebxnNVKIBTeqDrpbQB0cRz3FQFUKfogvqPQ3mya7nKV9WbsiKeb7VQ
	IZGW4ksVHmr2xL+S8z8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXs7y-00067s-I8; Thu, 21 Nov 2019 19:28:30 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXs7m-000660-Hv; Thu, 21 Nov 2019 19:28:19 +0000
Received: by mail-ot1-f66.google.com with SMTP id l14so3977088oti.10;
 Thu, 21 Nov 2019 11:28:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CHTfKDAdZLhL1Zm6CO6s2kP8nxK/JV3N7UW7tF4nQP4=;
 b=NtJJm3ZWy+UzDnIfTpRXd53uu8RFR/1vedLc7p85yCOXohuMYpOU99bbKU+XjUFgwn
 0BOEcl9WjkIeUY5lO2CYRkm955jVMOwL4pJnSA83JnPeud4f6qKPvrjM4vCQNAJG7iKl
 3sZdSuVF8O7Fq/pb8VoE+OuIDTaUkAhGdUtEpp3Y/YBd8cpyrze4l+FkjhoyzeQIqzLH
 RvYlxHLkX7rkofjC6QTXBlkm9BZlqg/JF61ZdVVdEuRtrXdtHtuiEgbKfi8QvwELdfcz
 bpEJAko7qXJKC0QP/w66jICSFKuCbbzVsQXXpSldIpZrQm4OUu7yuq8/VvjfpPameECX
 C2cw==
X-Gm-Message-State: APjAAAWd7k21CXHjS/lYYulUPiI91PbpCyYJSXy4n6nTKCfIeQzf+bv5
 UulHiJuvgUu0XNwvrsUJvg==
X-Google-Smtp-Source: APXvYqwSY+m1VVKP1lJWWFMDzjmXAD1VirqNMJL368kLdu7zD5Tqa73Qd9dLlvlXyGQDu+Uma4tvig==
X-Received: by 2002:a9d:365:: with SMTP id 92mr8439326otv.9.1574364497464;
 Thu, 21 Nov 2019 11:28:17 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u204sm1219085oig.35.2019.11.21.11.28.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 11:28:16 -0800 (PST)
Date: Thu, 21 Nov 2019 13:28:16 -0600
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: Document the Amlogic Meson SDHC
 MMC host controller
Message-ID: <20191121192816.GA7377@bogus>
References: <20191117142716.154764-1-martin.blumenstingl@googlemail.com>
 <20191117142716.154764-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191117142716.154764-2-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_112818_587441_F096EB07 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 jianxin.pan@amlogic.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 17, 2019 at 03:27:15PM +0100, Martin Blumenstingl wrote:
> This documents the devicetree bindings for the SDHC MMC host controller
> found in Meson6, Meson8, Meson8b and Meson8m2 SoCs. It can use a
> bus-width of 1/4/8-bit and it supports eMMC spec 4.4x/4.5x including
> HS200 mode (up to 100MHz clock).
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../bindings/mmc/amlogic,meson-mx-sdhc.yaml   | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
