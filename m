Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D96E5780
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxoq2fwzQJ8EGssIwCoiHO0X1iTWHwB4DPJYM7H2w+4=; b=HWEeCdl6hzsTao
	LFq+hOhm6DPwsY496vhnbMXxoCnpLMtGedKRt8EsOZITYftBQzO0rXmVfji37ZFdBHZCEADMoiNaH
	6lB4dLbOvHa+nGIYDCiFXTP7kagvL2gJNtKQ3U3HWRit9eyMFqh2bL+4donBuxGTJpZTZnJsDF4lL
	6nYGEu/iKaclg557IEiWVHyMwt+gwfTORWF/dyJcI6WDA25K0pVp9Mr3D+vO65Kb4SWHa3bUGSchz
	WV5mydZ+HUVwWODnRCw7aovAEqjkEBkKNwVKs/+LYwkJMPy9hm4Oyh8/rezP7VJ54y5tWOe+ukN06
	9bIfTzmUXLbVW2TrohoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9mw-0004Qk-Jx; Sat, 26 Oct 2019 00:18:38 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9mQ-0004Em-FS
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 00:18:10 +0000
Received: by mail-oi1-f194.google.com with SMTP id v186so2754085oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 17:18:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kAHHIN8vS8UUv509RkFpLb/+oWPUc2iyGFZFwFaLR/k=;
 b=FAaP1HHe/o1/XBJY1E/G0pBkSeAfiA4Nry3i6VRgGb3aGZRpHv/8GXA34dMttBP6YB
 obCUE/k9iYTpVdbCRYLajeN97ppERskVObcteVWiuy7D+CvgYWXoPkaP9CsSeYPCssyI
 0TiI5bf1FtNpByo+/kIboeACGzPf+iCTekASLI07zOSB7K09NuDvT0Pe1YUTFaroORrS
 n6PFA+JuM+Gy1Z54OWblCJR2c3zopYqLGAJlC5x6+lJbZ1wHs3qWirnsVslQJZX10Phl
 SthJARtM1LYzPz8OjcSyFjzkyYCTJP/TkaFs2tRwRFRDrLDEarZfUl39pvnp1ExbnWIk
 YsdA==
X-Gm-Message-State: APjAAAXvEfptrni47fKp7dy9WxcfYw4Z/iTielrLRnxFTVJxKLSYJWFE
 Mx95wNV6curv4j0LtgR6ow==
X-Google-Smtp-Source: APXvYqyosPquK5laKybO3xjMJrCw8EQ1wcIgeL6RpXq9onJ3VTHPKxb7wRexpEUQvbAv7r3ZzGaiCw==
X-Received: by 2002:a05:6808:6d5:: with SMTP id
 m21mr4552300oih.166.1572049085268; 
 Fri, 25 Oct 2019 17:18:05 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o2sm1255195ota.3.2019.10.25.17.18.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 17:18:04 -0700 (PDT)
Date: Fri, 25 Oct 2019 19:18:04 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 4/5] dt-bindings: power: rcar-sysc: Document r8a77961
 support
Message-ID: <20191026001804.GA7927@bogus>
References: <20191023122911.12166-1-geert+renesas@glider.be>
 <20191023122911.12166-5-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023122911.12166-5-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_171806_555602_B13CF1BC 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Wed, 23 Oct 2019 14:29:10 +0200, Geert Uytterhoeven wrote:
> Add DT binding documentation for the System Controller in the Renesas
> R-Car M3-W+ (R8A77961) SoC.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
> v2:
>   - Add Reviewed-by.
> ---
>  Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
