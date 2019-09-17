Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CD7B548E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 19:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4U71hWw83zU0u5Gl77f4f7XpDm1FS/LozPs70tE68ZI=; b=gAC14FB5/61/qb
	5d6kSn+R+Ebd+31ca0F93CwXstOHMveDJUUguFwQGxuXBgvObgRC/X+yGPRPD1RSLlY9mjbUQ6FJy
	HdTaSL4b1xs46+n8YtBQP4oxpxjSTHNxRN4OX2mkPJKBoIzHZAiWBVgn7aKzgSocO3BswQSjpxijP
	BiVcI6MER6KQVBFCcMUkSKRDuuIK+8FOcI6xQmnV1ApaxZCDUcJwkhuLCW3YmzqF0+d1ywcMP2/Sb
	qc2hsq9VBlGsBcDSswBtTa3AHVZQW3WAQtX8yO34PI9ZbFnJNnplOYUHdilUg2Wgual/byz76Wy+n
	MFAu79pULsQao9B94jjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHab-00040K-HC; Tue, 17 Sep 2019 17:48:33 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHaO-0003zv-6n
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 17:48:21 +0000
Received: by mail-oi1-f196.google.com with SMTP id i16so3654184oie.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 10:48:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OLNPrRxDPRbWhwGlQA4d3JzAWazNN4nV438P8IDTTRw=;
 b=RFkG7vV6w8TgjsD12p2ACW7PIisePbN5ppdccSyscK+NLUxKj9BIhrYc+Bdjt5LgZH
 lxPgbT6cbzlcKyjOrgnFVLaEKuJEjUJVA7jN6aCaC/tBUUwo5/NkWaF3Ib7aE+bptWqS
 frIklkVaf0m/7TlV2xtXREHwIs0+duMo6n/V1uIeI+i3G0ZtnSiSIhWaVz02GaXBcf40
 DGVt+D+CmYVKkAXVSKrq045+osnlgeP6wbiKdQd8PazJ84Qv5KfWuaiJP66ljbRM7E19
 EEbSiY+m3ryi02h+ckubHxJa5qf9r7FFsaPpq1oTe4rdToW4e5klKPJneVC9tU9gHUF1
 wy7w==
X-Gm-Message-State: APjAAAXSjnJxIyWlbhWBfn0w70GvrGEpHSE9BMe42iC6LTsGWnSS2qlT
 nNCCXvghQV+WMttw6CJ2Zw==
X-Google-Smtp-Source: APXvYqxNJazxNhfPpyZsGDNi6/fGR8tESyF7OTgG4GBaUNLvJb1qsI+fGEqf8ccBQ1yOyJ5iAh9d7Q==
X-Received: by 2002:aca:5dd4:: with SMTP id r203mr4828782oib.67.1568742499482; 
 Tue, 17 Sep 2019 10:48:19 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e2sm876135otk.6.2019.09.17.10.48.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 10:48:18 -0700 (PDT)
Date: Tue, 17 Sep 2019 12:48:17 -0500
From: Rob Herring <robh@kernel.org>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCHv5 01/10] dt-bindings: omap: add new binding for PRM
 instances
Message-ID: <20190917174817.GA27938@bogus>
References: <20190912113916.20093-1-t-kristo@ti.com>
 <20190912113916.20093-2-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912113916.20093-2-t-kristo@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_104820_254219_4059B4CF 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, tony@atomide.com, robh+dt@kernel.org,
 p.zabel@pengutronix.de, ssantosh@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Sep 2019 14:39:07 +0300, Tero Kristo wrote:
> Add new binding for OMAP PRM (Power and Reset Manager) instances. Each
> of these will act as a power domain controller and potentially as a reset
> provider.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
> v5: - dropped the clocks property as the dependency towards clocks was
>       removed
>     - changed the name of the node to be power-controller
> 
>  .../devicetree/bindings/arm/omap/prm-inst.txt | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
