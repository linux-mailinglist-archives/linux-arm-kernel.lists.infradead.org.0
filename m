Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4887170299
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:35:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psuoLGdwL/K5lT6vChkWjvlUP4p9j8wHDvINnl3xs2Q=; b=L+q8TRNk7tmZ2M
	/Hnw4Wcu17ZEccZKHIXuF69SFpjSXTv94AIxWyfsH/1GG9MRSpmXfI7RFMEa3LDRbFyOLTonhVphS
	xEsKXvDLEtB/ppNeYDNU8qF84T92VSR0WIreR/rvrR5WXy2uJ80IHNxgZ+QmFwiA+bSNbCsaiY8Lx
	RbHC8wsoUX32rmwWf8WgR0UlD06+Zhfqduejuyo/AOpy2j1vy99zbuSZnFz0O0yKjFcwV1/i6pcPo
	iHFqFj4tXzkLJ0rOXq761FvdCtDkqmS74JaDwYF/i0BSwFPcmZ1+plU6DAagbWnTL2gMSrwibsNKK
	Jzgjdj4GVuprAmwm3ozw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6yiU-0006ud-EJ; Wed, 26 Feb 2020 15:35:18 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6yiD-0006ZJ-4r
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:35:02 +0000
Received: by mail-oi1-f195.google.com with SMTP id v19so3395478oic.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 07:35:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bmr+8NPwfz+6SLFnXLs13Acg+Mnt/J7K/fZ7YI8qSb0=;
 b=IV1Unj8klX2qsXUAw/z1GSLfudFsMLFrzCG6e8qdfBwT5Ajsg+Q+MM2BLT1QZDropu
 6JEpi3wVvDJOrdm35sjtbEnMpBmKM6Nj2R/kTH+0CnLnMqL4mWmsFgXdMgBGKY5r5L1S
 He0DI8HRXSGsM6slWaDc7mX92G0mq3H6wnKL4DHFidkURMpXf1TTx9hYBlWbAEKX1Psh
 NK5B5rKMkViSsQ1ulBxTkU7x2oVsB1eaFfhEWJcc0PcUtQ6E9BOFvYNEzeO3Pc6zhDVd
 2R6T4SmE+DGvph9O3ewLVqBkPCpzrejiePD5HnMSh2enYyAvDA55B/38m3rVNz4bExJz
 uHdQ==
X-Gm-Message-State: APjAAAVS1d1RmQ6lAOp0+OgiliHUCvPXXGwdRGHxQ3OWWpbSMbU/m1bZ
 X6d+mB48x3wibvSfZYJIsA==
X-Google-Smtp-Source: APXvYqyHUnpLxu/riNnSSfDyvvYs4QZHHYnlgt+uqnMpGbtPWPsEKcDtzAWDevIt0bUYTrayLJRwgw==
X-Received: by 2002:aca:b703:: with SMTP id h3mr3596325oif.148.1582731300302; 
 Wed, 26 Feb 2020 07:35:00 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l12sm891627oth.9.2020.02.26.07.34.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 07:34:59 -0800 (PST)
Received: (nullmailer pid 13066 invoked by uid 1000);
 Wed, 26 Feb 2020 15:34:58 -0000
Date: Wed, 26 Feb 2020 09:34:58 -0600
From: Rob Herring <robh@kernel.org>
To: Manish Narani <manish.narani@xilinx.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: arasan: Document
 'xlnx,versal-8.9a' controller
Message-ID: <20200226153458.GA13010@bogus>
References: <1582115313-115667-1-git-send-email-manish.narani@xilinx.com>
 <1582115313-115667-2-git-send-email-manish.narani@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582115313-115667-2-git-send-email-manish.narani@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_073501_188155_BA4C0344 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 michal.simek@xilinx.com, adrian.hunter@intel.com, robh+dt@kernel.org,
 Manish Narani <manish.narani@xilinx.com>, git@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 17:58:32 +0530, Manish Narani wrote:
> Add documentation for 'xlnx,versal-8.9a' SDHCI controller followed by
> example.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  .../devicetree/bindings/mmc/arasan,sdhci.txt      | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
