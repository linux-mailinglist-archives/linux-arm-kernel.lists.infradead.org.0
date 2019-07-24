Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15DD73F94
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93eV7KYH7cmGFgOTgkEWrtoEg2qUv0PA+dF/O3o63Xg=; b=fYeq7ilQ4OD9tU
	FFe6V3bAahxY0PWqstm5HEr5xhOFpAIk1s1RqGW/Hksbmt+hFflgCNMvmgriV8H12iVwZyaj1AqFt
	+PchX3QqYaEStr+U0Qr8GN/tTjPQqR/ZkCtE0q34vHz6Hkb8weNQKLZEXbHYekYZpPHLn2dligUv3
	KQ6KkVcqjVFKNLXl9zl3EEph3PB3J75XquOUnoYzzDDDi4+sXEn0SAvfxs22xI2MjpMZaH0bLGoZA
	BLIXJHFEO293FDZurNnbcAOCg2ON+opno9WNqSpdD5+VAF04H9fJKfU/EnENXjdTj0fxcwtAl6GMC
	1uopJaw2jjuQIvhLG47Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNxS-0007zw-UE; Wed, 24 Jul 2019 20:33:54 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNxD-0007yz-Qh
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 20:33:41 +0000
Received: by mail-io1-f68.google.com with SMTP id s7so92305457iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 13:33:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hWxG43uUzUPGcDAeTJWX9/ElhRTOT4ivffhul3s+rgA=;
 b=YCh1gQYYEIoY78SpcF0lb+Zm5cvY3E5ChboyUSuckrR8eWbNPlpmQSye0B2WE5JB8z
 rH1DEGRiI+0XliJXlwzPNQI70yqZS5fTskCatrTaf+Iqzgt/LIZZHiwDt3m737of4f9h
 dlhsw5ERFVppW+Q6lxcczhGKWiPoLfnGNd5otkgKDwPhkwUu8krxHxN02K7FZxVB2ZuS
 yecTVOkgvdZ3gOmlG13OjFfvsWrSAP1Y4e17M+B0QytiXbNGQ0gkdAYIi2ISDep1Q+Ls
 vl+UgLzoF8KQo/JGNfQgSXsPzXQr+ydHGPvPaRJdZRSPtxSaE67dQDLey6WnFXgNFjkd
 cDig==
X-Gm-Message-State: APjAAAUi0sF3ReWxmFLT+aVKvNeXbE12jPWw1+4V/D7RSkNTfOiBxTXJ
 T7mZN7PkfoNSP984aTZEsQ==
X-Google-Smtp-Source: APXvYqy956/3Br9VEhD6l1nrDo5N42Sw/FVSNlfk7v1cZXU6Bmsg2phvVL23Wpj7HoceLR69D9he5A==
X-Received: by 2002:a02:c7c7:: with SMTP id s7mr27166379jao.37.1564000418767; 
 Wed, 24 Jul 2019 13:33:38 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id c17sm35498762ioo.82.2019.07.24.13.33.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:33:38 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:33:37 -0600
From: Rob Herring <robh@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH v7 1/6] dt-bindings: ap806: add the cluster clock node in
 the syscon file
Message-ID: <20190724203337.GA20268@bogus>
References: <20190710134346.30239-1-gregory.clement@bootlin.com>
 <20190710134346.30239-2-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710134346.30239-2-gregory.clement@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_133339_866835_54A00F87 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?iso-8859-1?Q?Miqu=E8l?= Raynal <miquel.raynal@bootlin.com>,
 linux-clk@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jul 2019 15:43:41 +0200, Gregory CLEMENT wrote:
> Document the device tree binding for the cluster clock controllers found
> in the Armada 7K/8K SoCs.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  .../arm/marvell/ap806-system-controller.txt   | 31 +++++++++++++++++--
>  1 file changed, 29 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
