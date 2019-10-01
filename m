Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83B5C43AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jfgUVh5nIv+fk6t6q4oINWKBEydobgXxWC1n8e5iyE=; b=W29F2RMHFSp2sB
	gxlHk9Ten+sLIkY9Yk/pzfiTch2+K2nfcfwCHUIU2SDo9W/W6oJX5dpZ+NJ/z/O1Me07PztOSiBBK
	rw5P9t2Poo/qs0Ra51aoPH7qKm+RsApSD3FfuGCEtm4qOhcv6hyvzmHqee5YaIZO1WZPS0Ck7sUCG
	C8uSRN4lT802Us0NC8PI8UAolkE6e4LfRC+tXjv3BGCt7JrQZXkDf3niXWzy/GEZ12KNR1J1BWtcH
	5907oyEYCPFEyfxYj7WgPUYJgrS3FCNPOE98NKEb+1UXeCrCGnW1Vm6VHDnwvH3Yya6Xckr0uPtKr
	gPxDUdL9qhf0yq6brZAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQTx-0003uK-Cg; Tue, 01 Oct 2019 22:18:57 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQTr-0003th-Td
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 22:18:53 +0000
Received: by mail-io1-f66.google.com with SMTP id b19so24128348iob.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 15:18:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DfJAIFweW93qpKH43bI88X5hOnNXXwnGiqTtHYDlS8Y=;
 b=iLKMM5nb9e9ByO1ArA34ydBX8Yr0jNlR+N8EppcSfYQ8SrRB7xh+QjaY2CEWufuDGL
 ONiAIj+BAUZF3DjEUFJlujzQU6vWNc1BMb1+DPQAKYkahi+gInjGjqmd2X1X7YFc5BhV
 UMX5dkDytXx278AGCMm4kZ0Y5udUltSmbDhZtbILEnsyGh45YeyCuFMqP0FrkRW90WH2
 zUEArzyuUD9uLPcPCAzTNUGsTa749cUt7hOEzTpoc+rB50DXzqm6HuQjJyShCuWv3oto
 ur75FCw8aOBOuoTOFRwuMoTlu1PO3yWVm6LA1ciHnVomdBdU9mVHLS36mDTUzeNx6qjn
 UgBg==
X-Gm-Message-State: APjAAAWOSoIFUpIj+zGQPU5UO+NbZS8yF/IhFM2jrMMKJZEgEOMKcCHD
 IxWwVOLfWVrgN3UMLGghTA==
X-Google-Smtp-Source: APXvYqw+cA3p1NFGee+H9razWOXS0gfBSqg2+hdSyzNszuTUWBpTFckUxRqvMV0GBeoX54prTGAuxg==
X-Received: by 2002:a6b:6e02:: with SMTP id d2mr516455ioh.8.1569968331333;
 Tue, 01 Oct 2019 15:18:51 -0700 (PDT)
Received: from localhost ([2607:fb90:1780:6fbf:9c38:e932:436b:4079])
 by smtp.gmail.com with ESMTPSA id e15sm7398438ioe.33.2019.10.01.15.18.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:18:50 -0700 (PDT)
Date: Tue, 1 Oct 2019 17:18:48 -0500
From: Rob Herring <robh@kernel.org>
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6
 devicetree  bindings
Message-ID: <20191001221848.GA25201@bogus>
References: <1568980346-385840-1-git-send-email-s.riedmueller@phytec.de>
 <1568980346-385840-2-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568980346-385840-2-git-send-email-s.riedmueller@phytec.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_151851_950081_2B25E84D 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stefan Riedmueller <s.riedmueller@phytec.de>,
 Andrew Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Sep 2019 13:52:26 +0200, Stefan Riedmueller wrote:
> Add devicetree bindings for i.MX6 based phyCORE-i.MX6, phyBOARD-Mira and
> phyFLEX-i.MX6.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
> Changes in v2:
>  - Use seperate description for each board instead of squashing them into
>    the standard board.
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 37 ++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
