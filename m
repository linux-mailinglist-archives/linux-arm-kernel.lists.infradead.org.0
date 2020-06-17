Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552811FD897
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4YW+Jr+8JieGEvU9utfBWKmW9+JeVS6qKpiPsh1Lh0=; b=Z6alZM3Bc8JbrS
	9ZYAkJFv8Z1mbwDR4qItnyFgfBFztcEBtFlN2DxBPY3zRGhDpZ3/pehSrg0zO9nsNgiiYYHyPOv/Q
	1Uqijtx7X2CN0gEzeHKmWW75sJ8TSIGs6J9LeYPtdAp+FjhC6M9lDIjZJvrAKY3mymG0djHY63vzB
	373gx4wwTo86ScXE9tnUAr73fR1XDrMkXpJU2LDvrTmpPueFKvK1jQ0rKhrSSLvSNHCmPTrGYAyCY
	IWAlPx9k+eAzvoYjuTs97uVgdk8ZAWr6Sjt+6pBChMkO6cwYV/VN1FFd2cJnLBSPD6TW3BcrS4g/J
	YGhiNCBdQ6UMHZ/+Tn1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlgOX-00052S-On; Wed, 17 Jun 2020 22:18:57 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlgNv-0004Zg-CT; Wed, 17 Jun 2020 22:18:21 +0000
Received: by mail-il1-f196.google.com with SMTP id i1so3860485ils.11;
 Wed, 17 Jun 2020 15:18:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Uz7g0bB18ztxeQgM+/H4yxv4w/AtkVlw+WDwFr6g8Ao=;
 b=cLAn3Uy2JGBY4VCicjcrIKA77BQn3VluMHTTHDrkTdGafcEEOci4r8iID25LTq7+nz
 QakZ7nQaDBGu4f1uHu37WGmN1+9CeYDqwL/ELHsqFlHbP7DZkj11AARW4x5VXD1N2xEj
 hVfws41xhtx1oUExAXDbMadNvSnKxV3PlZ7yfoFnOEXFMtFqfybVowe1JqUV5q+XWKoT
 vvTbxFaC+ih8qss+Yge88gVsFxDXt9RXJWk2x8AbBlPJcL+aHYNjjECTH60BWlXlubdh
 2Iy79dc1lHEey/hg7M/7jz4kkoWBAlwFkxbVE4JhQ+GMlpAKwPNExl6ArA67N5V1SymF
 VS0w==
X-Gm-Message-State: AOAM532KhCxiQmkh3Xuodwadqn5W4sJVlRh73gQ5C8CzKoVnHZBqc5Ck
 9pUeBNfEl3TPpLSQd+V2rw==
X-Google-Smtp-Source: ABdhPJwldBKKgVwMhWTp6+BTPDjZ5+GjxiMRxxsH5coqpGLhBPEg/c67Ti4jXWHLFczF1LllOIWBwg==
X-Received: by 2002:a92:cb03:: with SMTP id s3mr1132707ilo.161.1592432298592; 
 Wed, 17 Jun 2020 15:18:18 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id t72sm552531ilk.23.2020.06.17.15.18.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 15:18:18 -0700 (PDT)
Received: (nullmailer pid 2934152 invoked by uid 1000);
 Wed, 17 Jun 2020 22:18:17 -0000
Date: Wed, 17 Jun 2020 16:18:17 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/2] dt-bindings: clk: g12a-clkc: Add NNA CLK Source
 clock IDs
Message-ID: <20200617221817.GA2934098@bogus>
References: <20200610083012.5024-1-narmstrong@baylibre.com>
 <20200610083012.5024-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610083012.5024-2-narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_151819_435853_D9B1D454 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Dmitry Shmidt <dimitrysh@google.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 10:30:11 +0200, Neil Armstrong wrote:
> From: Dmitry Shmidt <dimitrysh@google.com>
> 
> This adds the Neural Network Accelerator IP source clocks.
> 
> Signed-off-by: Dmitry Shmidt <dimitrysh@google.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  include/dt-bindings/clock/g12a-clkc.h | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
