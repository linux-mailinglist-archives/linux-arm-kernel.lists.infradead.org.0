Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57880127065
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 23:07:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zslMuePdrEHRQiSA9D5P/mQwh2S38DeOQGvuw3x/jd4=; b=u//TjyYzQa3Bty
	6IdPqN73c6VLyZNrPAGRPf/8O01lYq7Pz+WKO97RCmjP5Kd8SVkyDIVKYSvT495UJqX+gfhIrAfhi
	dbFfGqjNuDNKKKi8lUsL/s+wHZY1eupi+Otoi2HxB3pRT0JDqCw5siVkxnHSQKviQ/xGITIYgCRfj
	Y3Wdyqpy8EIeeX6crKmhZ+VCFhfjRSUzQGVrfKYwEM1CFNyFXvQuim6KVs7i2SXa8UVgasfshzXCr
	9WLgDDMhwj7/MKSAqACjhSLOPbNw7kW5gP/Uly5EXx8ChwkU94Dd5TX20UgseZcmzCaZW2lc1e3E4
	IBIP7QtxO6hJWfXjvxQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3xB-0001iR-Rk; Thu, 19 Dec 2019 22:07:29 +0000
Received: from mail-yw1-f68.google.com ([209.85.161.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3uv-00058X-74
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 22:05:10 +0000
Received: by mail-yw1-f68.google.com with SMTP id x138so2786171ywd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 14:05:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1ZLXo5NjpSRAxo1kpGOmOXM5hSzlfuVkSp439RA+RFk=;
 b=Ajl8RdvuiY7xYmXqWevcyvQlAyL/d2bTRc33RObq24oY//Iup9+SzsvJlTqd+fzXYN
 +GywntLLk4Frh6F3ObNt4eSXwFkA9fOiB92+/gGX8zAHMA0lubosu7GqU+60/Sucfrif
 VVUYMJgL8Tdq1BGXn5XjrmiVGQLOQD1ioqeuOzzg3dXW7/KrI57heaHDPE7YpdQcYvq7
 urdd3KfyLmCk6cMz4gD21aRndYCs3UDNkLDVhS+PpdV6xa5yxc8A6XtrFLlPM6TgztaP
 oJp4eI0Kgwmnc88NxLF+4QY4cbKn7R4v+hDBrZ4/kUKHxc8iQ4R13+MUK5aW5ASHmnVh
 Q7HA==
X-Gm-Message-State: APjAAAWFu1lb6fzDp8R9KpSqkXfYvYNQGVwNDI+Y8WEbhLxMyUh07Xje
 YUR1iGV76rM6C79vDe9q1Q==
X-Google-Smtp-Source: APXvYqwGDJJUF+JP/PfFSSCbn62gaMUqUnaNPm8Ka78UNu1rFv1DVCnAhHZw9+75RosiSxzI4EHmkg==
X-Received: by 2002:a0d:c243:: with SMTP id e64mr8252091ywd.12.1576793107781; 
 Thu, 19 Dec 2019 14:05:07 -0800 (PST)
Received: from localhost (ip-99-203-15-82.pools.spcsdns.net. [99.203.15.82])
 by smtp.gmail.com with ESMTPSA id h193sm2928138ywc.88.2019.12.19.14.04.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 14:05:07 -0800 (PST)
Date: Thu, 19 Dec 2019 16:03:46 -0600
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 1/2] dt-bindings: PCI: Add UniPhier PCIe endpoint
 controller description
Message-ID: <20191219215617.GA11666@bogus>
References: <1576116138-16501-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1576116138-16501-2-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576116138-16501-2-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_140509_296979_45D778F6 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Dec 2019 11:02:17 +0900, Kunihiko Hayashi wrote:
> Add DT bindings for PCIe controller implemented in UniPhier SoCs
> when configured in endpoint mode. This controller is based on
> the DesignWare PCIe core.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/pci/uniphier-pcie-ep.txt   | 47 ++++++++++++++++++++++
>  MAINTAINERS                                        |  2 +-
>  2 files changed, 48 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/uniphier-pcie-ep.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
