Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D930D6933
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 20:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11d4nTHuxY//idQWFDLa7rwzB3kB7apsKr9rDAnW5N8=; b=N5tWPNh1PJwuH4
	fuLGoO3c3cW7vi4pUZ/GCRPOzsmBUYSior12tF/tbZdMOMMs5pmDpbJeUZjVHHAPJA74rdc5iuyD/
	FOcJ7Hjj3gJQhH12h47WI1oPHXCSIk4b48yZcy2/V0RCkjftgI33ae8CCY3Ysp7LrTdlXOlqas0q7
	5qU9U4sOi6Bo5AV0RwioqwHNpsyWsD43geA9sY3s9VYjeGY3FDQdOqsw0vnQ8T8gJKfIOLFB2GD+1
	cfO0H+EplRjgN/tqylFZ2PZVi9dAJ9LrNAY+791M3KyFALxLNMGjvHz2iyepL+5dOHwJI4P6c4syp
	4FID0eqCzJCTfDqDQIyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK4ou-000751-B0; Mon, 14 Oct 2019 18:11:48 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK4oj-00074h-7W
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 18:11:38 +0000
Received: by mail-ot1-f66.google.com with SMTP id 89so14560152oth.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 11:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vnVDhuScvkPvo4RwDVc8DWG75Gjqf1s3V7qBRLbqCOQ=;
 b=QAwaWpA+k19AIsm8zxtbsUtlsDhNyqphk6zTIlxWLLjfPyoMibFhjZZZBJ7RXj6C9I
 MU5IJ7weeFnft3x0jH8HLceUoE2RdicqEMv5fuEcyWjGGp5cDhvFu0DOeyo3AxMq5OAE
 2xb+/Qt7/qjQQpNryXLyqW8YelUbB4WAhy0fF+4pbfy0siF+wVk6tv+Q041LehG3eQyf
 bMv8fDafool4jjHGBqzmcpCgnTu0t2eq11kRGY7ds/8zFivak0S5JmrpKzv0v+WVJAP/
 GUg1j+R6XxEodICjk/zz7R9Il6luOG4msRj6Y7fdcNbYsifJNHUOqUAifO9qDtPgOFoS
 34fw==
X-Gm-Message-State: APjAAAUMp0NLu8xvIyqnLM+RYqOS6K0QH9G24n/1ahp5I+xpJn9/GG1f
 vQel/tKuLHOr922ry+nHrw==
X-Google-Smtp-Source: APXvYqwt3ZBPq4LqtpgI59FJFua/51xF4TfLIs6OjOADJgM4VMCS2ku/+KVb7nuJpUHzNQheLssvAg==
X-Received: by 2002:a05:6830:1be3:: with SMTP id
 k3mr26208614otb.180.1571076696479; 
 Mon, 14 Oct 2019 11:11:36 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t10sm5581297oib.49.2019.10.14.11.11.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 11:11:35 -0700 (PDT)
Date: Mon, 14 Oct 2019 13:11:35 -0500
From: Rob Herring <robh@kernel.org>
To: Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: sdhci-of-at91: new compatible string
 and update properties
Message-ID: <20191014181135.GA4428@bogus>
References: <20191011103340.26749-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011103340.26749-1-ludovic.desroches@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_111137_269439_240B8127 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com, Ludovic Desroches <ludovic.desroches@microchip.com>,
 robh+dt@kernel.org, Eugen.Hristev@microchip.com, claudiu.beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 11 Oct 2019 12:33:37 +0200, Ludovic Desroches wrote:
> There is a new compatible string for the SAM9X60 sdhci device. It involves
> an update of the properties about the clocks stuff.
> 
> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> ---
> 
> Changes:
> - v2: remove the extra example and fix node label
> 
> This patch conflicts with Nicolas' one: "dt-bindings: sdhci-of-at91: add
> the microchip,sdcal-inverted property". Let me know which one has to be
> rebased or you can handle it.
> 
> Ludovic
> 
> 
>  .../devicetree/bindings/mmc/sdhci-atmel.txt       | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
