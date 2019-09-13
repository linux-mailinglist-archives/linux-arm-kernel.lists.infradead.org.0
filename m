Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 919A8B2247
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DAZraRkD1qf4lTtYcnWDMcnPJAdR1X8PI1i9uC6Gths=; b=WNkKn4M3haTyUM/9PvhGAoHTLq
	zQmpaDxAkC72E7cO48SDOCjID10e0rEEeHWlxHFWXMcLLY3H68I8ifPbfqj1EeXlUK9NwHcSZUwEG
	Y53/sXaThaBopj9AJganZQS0FTmcvHD9BBw2+mYR+O+laMX/VUxtOK+H3OOjtkYcqVy8f8ofV0E3w
	/zKrs0v2tNoZq6PnEKbTdeca4/b8hfdSz3gjmBVQCDA5vasaYb1nYHrO82Edxl3WXIAM1vT4dOkdY
	yp6aqGPVBj+7oNBvHjDukiV9tVJGFkYDFTW2e7+dWncZP4vzhIJhVjIRYCWGLVNYY8YmB6j+eqLnC
	B6WvXXHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mj9-0004Ga-Ap; Fri, 13 Sep 2019 14:39:11 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mgP-0002VI-9D; Fri, 13 Sep 2019 14:36:24 +0000
Received: by mail-oi1-f196.google.com with SMTP id e12so2834533oie.0;
 Fri, 13 Sep 2019 07:36:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=YbpiQzIM3eQL4XQ34vYEddsWeG9VMivV31FLcj+hIuc=;
 b=q8WiDbYPzs1AdOZmwm0KN7Hmwu5jbtgwyLH6gMbMOC88CSgaSIXJlWDNcoDPhnHhEJ
 6pyvsydc+oAr5972jxk2KRfW34UnlzcRC7i06W/yPvrUv+jcDQYhsLkWCkqE0gSeqSVa
 5o3TqMswFOXBHSSdAz55o8THIpt8A/0Z73hpaVsai8O2AMwpmIfY8C9FhQcEksVEp4f2
 zOf8raRdN42+R64rcCDBkVGbl4/BitNYlAfNPSEoVDqRNZSi9nbwi6jqxAHCJ5+mNV9w
 Kf0TZvFsBh8lkwD6oYgOR4/fYEB+lhZlUM1/qGHUJfJgSEe8JzbcPCEaa/3t7KdTAfMV
 mcGg==
X-Gm-Message-State: APjAAAWwGLjCEI/jht/4c5vMoThRCXdjybF7+rHkdQV8XYpYAoR9wjHp
 CewRZCzujdEQ6/5W/b6ZKQ==
X-Google-Smtp-Source: APXvYqyjj6rIVWDuqKwqqDB6O49ywBjZD3PZQ4+xjM00i6c2gbMnanfPNY4AfSDhsOstHiycfTtKVQ==
X-Received: by 2002:aca:ed0a:: with SMTP id l10mr3624662oih.83.1568385380257; 
 Fri, 13 Sep 2019 07:36:20 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h20sm4239119otj.81.2019.09.13.07.36.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 07:36:19 -0700 (PDT)
Message-ID: <5d7ba963.1c69fb81.4869.eb19@mx.google.com>
Date: Fri, 13 Sep 2019 15:36:18 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/6] dt-bindings: pci: amlogic,
 meson-pcie: Add G12A bindings
References: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
 <1567950178-4466-2-git-send-email-narmstrong@baylibre.com>
In-Reply-To: <1567950178-4466-2-git-send-email-narmstrong@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073623_351167_395DA4E0 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 repk@triplefau.lt, maz@kernel.org, bhelgaas@google.com,
 linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun,  8 Sep 2019 13:42:53 +0000, Neil Armstrong wrote:
> Add PCIE bindings for the Amlogic G12A SoC, the support is the same
> but the PHY is shared with USB3 to control the differential lines.
> 
> Thus this adds a phy phandle to control the PHY, and sets invalid
> MIPI clock as optional for G12A.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../devicetree/bindings/pci/amlogic,meson-pcie.txt   | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
