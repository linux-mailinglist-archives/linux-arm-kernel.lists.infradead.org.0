Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67255F0633
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 20:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OG7hCIpicbi3xCkad2Iw05XancXsUORNuBaVsySDq0=; b=ETpB63imVU0hpR
	EMQQKZ6lKyfUdEUb7ueNK4KS3anxgZtzMSJRbW6TMQVgBxISzNFksGzCSs7X4FW2cts7h2zuoPgHu
	3PQUEcswdrpTkXhU9UK/h9Y67kVz4mmiCav6m0MaxZlSiGgsMcEGeBMgTTqmVm8dG77gTFrOSIU+L
	U9F0YAp2CTC1RU5090FoK3fVFRnW74d2vVp4YFisTvT1+09L+oIPEtENmF36KTygLbvpybNjPR9h+
	xbYkXJyiuJxII7nISq3NiKTdzdmEdEqiOzOFl5v7SnpLVS/KzfWQU8vWc3qVVEsJpqoQP3qYnPSIF
	7GcBX++uy8bN7uxvmiZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS4ji-0003wn-Vp; Tue, 05 Nov 2019 19:43:31 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS4jV-0003ug-1d
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 19:43:18 +0000
Received: by mail-ot1-f65.google.com with SMTP id d5so6655776otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 11:43:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DxJeph9SMIl2HaoxiyZwlewIG04Tl4irjIR+yBHGfk8=;
 b=hfAtKbNm53atzcJQDWiEb495pczBCC7XaXU6ylB5uDVDkLo2e6zr/2BhCtv/yd9sPU
 MXodUXAWvP+sLIAhTcy5NMsQs79uKcybPcUJbHksaLKEDGHL3FUAN0UkxJqagfSnZX8P
 UFqwsO5htcLpuYKQ17W3Dzj6o8y52V05aBNPMauh3x9dpnuOAqRNkJlWESkldjtXWVBm
 nKEqhLtIGjfQGvnAk4/o2v2/D8kY9qNlZeT+JdnyFOq1wDRkvDUrk6LMxNo455e9rh3G
 Eq/kErqwv8mRsnVd5t9Ds5MWFA9mvp7EHKiDwbJ0brzJImbtYWiHnV3QqKY/7e3OuXPp
 OhWw==
X-Gm-Message-State: APjAAAXO7pyVHBWuEbmamaWspFztVXBNyQ45oPuNBot1snJTaByh/VCl
 1KJh5ygBKRhjOk8mRBfdjQ==
X-Google-Smtp-Source: APXvYqzGqoQJX7yypT0mKyxtD5PEOEBFSFjqnv7Ri+Z9HkmNdS3Js06cTZGsq26M5OG0tvHPTq6Gxw==
X-Received: by 2002:a9d:7846:: with SMTP id c6mr4364877otm.338.1572982996049; 
 Tue, 05 Nov 2019 11:43:16 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o203sm377657oia.4.2019.11.05.11.43.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 11:43:15 -0800 (PST)
Date: Tue, 5 Nov 2019 13:43:14 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 2/2] dt-bindings: power: Convert Samsung Exynos Power
 Domain bindings to json-schema
Message-ID: <20191105194314.GA16556@bogus>
References: <20191030173216.5993-1-krzk@kernel.org>
 <20191030173216.5993-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030173216.5993-2-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_114317_082395_B99FFCA5 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 30 Oct 2019 18:32:16 +0100, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos Soc Power Domain bindings to DT schema format using
> json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v2:
> 1. Use new name of file in samsung,sysmmu.yaml and MAINTAINERS.
> 
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Remove unneeded types,
> 3. Add missing address in example and fix the name.
> ---
>  .../bindings/iommu/samsung,sysmmu.yaml        |  2 +-
>  .../devicetree/bindings/power/pd-samsung.txt  | 45 -------------
>  .../devicetree/bindings/power/pd-samsung.yaml | 66 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  4 files changed, 68 insertions(+), 47 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/pd-samsung.txt
>  create mode 100644 Documentation/devicetree/bindings/power/pd-samsung.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
