Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 122301D09F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 22:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obXcA8pYpINFUnJpu3z6iYC2nHSZ71/Jv+MPYSApKLU=; b=TXYlXOpdWDeqVU
	llwHTTzBrc4j2wnffVoEUsEXbulmcwGxJ7bRKFym8APdaum3o2sLr3TT0Wncp6ecz1GRA6T2IJXBK
	wpqOZvIHx8KtgsbU2Wp0sSD443+mElhM6x3fLoM/ZaOHNwWyKzFpfzcKgLXznYqbEOD5J32sVqnvr
	39s3MHnc6p5ZFravnU3wI6sFDPTHUxAvkHvV0mC3b3W+3iIIQ8+1FT5F+QuzBIoVCsTo/PBhMIloB
	gcN4mZ+on0qawMeHxH9xIjYY8Ki2ZVMajAVXP+rERPurF2id4pdf1E1/tNzPcLvxHLZLDzefv+HY+
	A0qOvwgE6w4SOnAdqRkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQe26-0007uk-Pf; Tue, 14 May 2019 20:28:18 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQe1z-0007tm-3O; Tue, 14 May 2019 20:28:12 +0000
Received: by mail-oi1-f196.google.com with SMTP id f4so130883oib.4;
 Tue, 14 May 2019 13:28:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/xEQhRe1Pra6YVRpwyMFKIovwszsqjuMIre3+73jdVw=;
 b=il7PAuYsI6dTqjYeKuGDLbsaDk638EwtNaNjyFTAp4T8gLypcboV3DlO5kN0XxBdkK
 Z3f59JH7Po3Twxjef4qud9Gtd8WVm2Ou0pf4AojCHu1v723g05jtcI3QmuVcbNwaNRyW
 Qos19dK9rVV7ZBOslZWFZV+3xlXIaPsJ7zWj2UCZU8L535CxtarIHy/dSae7vyab0qLC
 /BxDPrEzo1EcUv9xSAolNt++m/RCZwkzkZqEo51hsFwoNInWWmEdc2vAQYk3Vwx3x7DI
 fqxpQdoBF8j16RHoaIL8dM+c1GlQFdhv+Vonsr6hOVwu0dxnxElTTF6bZ1cdjMM+jVRm
 oNmw==
X-Gm-Message-State: APjAAAVf0MBJkjz+nfIn9Ju9bZobfDWqPdliPUC+1Ol1Qe+CiTSYP12K
 OD0ytAVk/iYzJADWn5Mq0g==
X-Google-Smtp-Source: APXvYqwH5J0KSSwtut0OTNe86vsNzvw9QHm7hI902PxNhh3qNuE4E8bI0xQtbTD5Y+FzANVluP7iug==
X-Received: by 2002:aca:aa8b:: with SMTP id t133mr4038437oie.101.1557865690412; 
 Tue, 14 May 2019 13:28:10 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g3sm6652578oif.25.2019.05.14.13.28.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 13:28:09 -0700 (PDT)
Date: Tue, 14 May 2019 15:28:08 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: mfd: mt6397: Add bindings for MT6392
 PMIC
Message-ID: <20190514202808.GA21263@bogus>
References: <20190513161026.31308-1-fparent@baylibre.com>
 <20190513161026.31308-4-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513161026.31308-4-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_132811_137369_02443AB7 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 18:10:24 +0200, Fabien Parent wrote:
> Add the currently supported bindings for the MT6392 PMIC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
> 
> V2:
> 	* New patch
> 
> ---
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
