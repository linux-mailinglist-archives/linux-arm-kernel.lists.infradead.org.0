Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0ACC1348B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:59:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGn4+4fI8ndBK+eTcTixW9cuH1zvuKmVl/seUDQUJ54=; b=CwW7B0B49lD8w6
	lK3gm6uV6dXo2MtqRzbGLR1vpnDPQeB+JY5HORacwr7vC0tRFnJFVFd0b0V6TrOfe3HFMPJxe199W
	ThlCxSWRSBd2pBOYEMxG4j4J3ZAGTqFrtCMDwOL07jx71UZVeintcB7alX2mSGUdnUyEFcFhF//E6
	ezrXZe8/LgfIRGw7RwcRJvTM/r7QFlKvoZbQNuqbAPoj/o+8I79gi5fBP1EP8H9DPd7y3UVOeCihV
	QQcbyI7gJVRnslmOLMe6xhgne0O1YRw7TO/knNXU5c1e3M+0wnPzdLW5XHuVb4RqOKyMryZ3Gb5wP
	/OabkbKyFzEFd7ehj/AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipEfX-0000VH-SX; Wed, 08 Jan 2020 16:58:55 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipEfQ-0000Ty-6X
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 16:58:49 +0000
Received: by mail-oi1-f195.google.com with SMTP id p125so3207613oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 08:58:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TEWqrKckxXi7QmpFNDQI2lr/8vlOr4RUJSG6WcBUQm8=;
 b=OEMd9k4njftS2DtEzlQqPu/b25ove2BdEbDkpiI/iZlxszkKOaIaMUSwAPzZfMa3hr
 6PaLvkX00ebz/sAGskesc0OSCfPsI+2WVIKO29nXnHfvTwPTayZG++xS7K9rdwAdrBbF
 4OLp9zXhNsn8+O0Gxjjvb6fr3rPjibnv1ujLND1AoceMaYUqLXfSkEnEsnn7038NAS21
 JBOyqNYkIXnia6qkQ5/fowZZJvGK7z/8BCE1CoerkMqHtQfwh4yLaMabUph0Ef3YX3jI
 vAW7Kej8arohBRpm4ONQaKe7nY8ASE5LPDRAguNky75UmD7tKwkAc74/+YxJODkDz4an
 eZNw==
X-Gm-Message-State: APjAAAU/h7rH3THQrXaxN5fuSV9JOnVWN1Tlza8mwNNXeSGzItzYAMjf
 OWLZwxvQK98KkJNy6LeGyGCijVU=
X-Google-Smtp-Source: APXvYqzurZ4vqu+Bf5oigP3o8Cdu0Kocz/gpOQScyFcixDKERSmjOvbyLl1ELUpf/8BZ/6aqtMrRrQ==
X-Received: by 2002:aca:75cc:: with SMTP id q195mr3689600oic.178.1578502727078; 
 Wed, 08 Jan 2020 08:58:47 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g61sm1293054otb.53.2020.01.08.08.58.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:58:46 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220333
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 10:58:45 -0600
Date: Wed, 8 Jan 2020 10:58:45 -0600
From: Rob Herring <robh@kernel.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH 1/2] dt-bindings: iommu: Add binding for MediaTek MT8167
 IOMMU
Message-ID: <20200108165845.GA8360@bogus>
References: <20200103162632.109553-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103162632.109553-1-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_085848_232777_285782DF 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, joro@8bytes.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  3 Jan 2020 17:26:31 +0100, Fabien Parent wrote:
> This commit adds IOMMU binding documentation for the MT8167 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/iommu/mediatek,iommu.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
