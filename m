Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545251DA00D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zjIHaR0VsxxqmJgHBBb1pexw6nhfr7cA1UU+oYOZzk=; b=KQ2P3d885ASRDv
	42trrQjilSR9xwxtNfqCNt45pq3KbBuUGoD7kINd+0ZQBuhGLRYAfiW7uAzRkOVAlKU4u7h6L8Gsf
	MdjkZG+HQMpF/GejxrDCJjoD8nqhb7O+vtPWl0JpCHUJEvj7ooc1oXYIPSAdQuiT96mhxH1EwZ/07
	Rb9EjInwWNnUqs4qN08bDkgTk0Uie4OjAv7RXm7ZzkqHIboUBJhxcvmr9caVnTlkQX1aO8r0DPShB
	7vdz8joNDMLKSAlwQfNufkY0wtJnKpKCdCNuqqgRL0cohPwTsfmtiyQwRbs6vEpPawQtky+gd2Yny
	EmhYJocQKhAM2K+0axVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7Nu-0000Yf-Ua; Tue, 19 May 2020 18:54:39 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7Nl-0000Y4-B0
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:54:30 +0000
Received: by mail-io1-f67.google.com with SMTP id k18so363974ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6yvH5f7eUCT+zbMbOyCn4vCw24ZmYs3FmNu5W792pm0=;
 b=aOfNVSPTcK+AOpq9vDTDO1Gmp1ogAgC9P3fx811czQhnbsMKp3UOcXw47G7zewvQrO
 v4tCI/HrcPjr4LajcBeqS7CayMW7PG5kjMup8uziYH06hYM3QW3FoNE80FkcST060Fnu
 ujUiniU/oZPigCKLH4YMeOdhS8BfS2KQWdpRxl6OFpjZ/sg3y1ek9gjleJHdOMietpVW
 c0ldhZ6oQuJh4aYwJ7WpuwKqgbw0X7ISONDxwz5q0zzATzStt1wXI3x/FnD539WqgFyI
 XiWiYxXyyP0CYN49/baE8b139h5kD/XUiPcPrHOKgUc3fKSvGSbja7IT2UHFS3TB4ac0
 qJyw==
X-Gm-Message-State: AOAM531PQHIwhTuNBsj+0+i3UNoIZzCWV45cNJQmfQw0ZujRYiZRNWiy
 SFOAqAXDGrrcBQmK6dVzjg==
X-Google-Smtp-Source: ABdhPJwPDjdIGewcxeFramxh57H6SU+K6yPvEAifYkQTl4FsSaib4a/QCfxo70sUCE+/ZCEgwvDkkw==
X-Received: by 2002:a6b:6a13:: with SMTP id x19mr303517iog.175.1589914468730; 
 Tue, 19 May 2020 11:54:28 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id 7sm176362ion.52.2020.05.19.11.54.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:54:28 -0700 (PDT)
Received: (nullmailer pid 468859 invoked by uid 1000);
 Tue, 19 May 2020 18:54:27 -0000
Date: Tue, 19 May 2020 12:54:27 -0600
From: Rob Herring <robh@kernel.org>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: soc: ti: add binding for k3
 platforms chipid module
Message-ID: <20200519185427.GA468784@bogus>
References: <20200512123449.16517-1-grygorii.strashko@ti.com>
 <20200512123449.16517-2-grygorii.strashko@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512123449.16517-2-grygorii.strashko@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_115429_375535_C27144EA 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Dave Gerlach <d-gerlach@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 15:34:48 +0300, Grygorii Strashko wrote:
> Add DT binding for Texas Instruments K3 Multicore SoC platforms chipid
> module which is represented by CTRLMMR_xxx_JTAGID register and contains
> information about SoC id and revision.
> 
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
> Reviewed-by: Tero Kristo <t-kristo@ti.com>
> ---
>  .../bindings/soc/ti/k3-socinfo.yaml           | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
