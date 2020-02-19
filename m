Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027E3164614
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9x5fv88Cl8++59Np5ton7n9PDR0EJ8KsGoTn80/XYv8=; b=Wq7q+MYK9Z5BFN
	cqVR8N6QQeXUS9FzvMhVjVTsxpyTdxd/hnusbQci3+zjVzBhRP7m+m/uks7K+eBilHXYnqdYToso4
	j8fmgOCo8e0kxhGvWub7atlRyq0pRVQkdsSXboYSTlBxVLhD5nwi9dWGIn5jPkUC5LJi4DCJ9PjeC
	FjWShuIoZ2NnPd8R6pUrKIU3QAVUw9P+2XY+G953rH3ui3xiYgLBrJLmvtM3aN6RAUf3vLtjS8+gG
	fCm4fANOTIraoppgoVnXw6ni7t0MsUx8c5x2156ofmRrRUVsg2KGjiYEEWaea1wj1PSKOwxweS+Il
	uE64Ws5ffLVCK5p0ncxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Pnk-0004eb-K8; Wed, 19 Feb 2020 13:54:08 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4PnR-0004V9-Vl
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:53:52 +0000
Received: by mail-oi1-f196.google.com with SMTP id d62so23799028oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 05:53:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E2rxf7SPwcgMTCE3K5oM6SSprAcPTnFFVvcz8mMphIc=;
 b=W5FDUDsJJLNpGOW1SusWL51s5KX/IN9Joj9dM9vetBnz3diJocYptAwKnhseQno4ot
 1GHpDYf5E5NS4/cM7oZ2w6tG86YaurAkeYFZZrvOh6NdVW45u0RBhzqwb3iD4naxEztt
 tUm4Lc6n854/xDXrqeAoVeI2jzSAVL5LW3PNMdQOwSl47RQANQUHvZlAMvD2+dfZFdFS
 eovPwcOhTIINUO8A9s9G0umpZq5YVdvHqqY3jkaoxL5O/vYZrDwbNLggPCj/8wapPewK
 +n0yo/y9z/Tav+sK8Wk4PGMGF5JhyxoikAOVP525ZwP7LoKKBzp5wugfF0ML8PmfUQ1o
 LvUQ==
X-Gm-Message-State: APjAAAUiDl0HaNsjrpcSnhLotM5UwvBI45VBsV3gFomIW6+WT47w5cke
 +3sClVkx51Dfg+stTFlZvg==
X-Google-Smtp-Source: APXvYqwMJGVebJ0gKcE0QNmF2FJsBNguLXG/bpvWNsk6/5ZNGmKQ4j0O9Fd7bFZgKeFdrJCKWzJYdw==
X-Received: by 2002:aca:ea43:: with SMTP id i64mr4733986oih.30.1582120426367; 
 Wed, 19 Feb 2020 05:53:46 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k17sm700771oic.45.2020.02.19.05.53.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 05:53:45 -0800 (PST)
Received: (nullmailer pid 17381 invoked by uid 1000);
 Wed, 19 Feb 2020 13:53:44 -0000
Date: Wed, 19 Feb 2020 07:53:44 -0600
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: dmaengine: Add UniPhier external DMA
 controller bindings
Message-ID: <20200219135344.GA15319@bogus>
References: <1582077141-16793-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1582077141-16793-2-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582077141-16793-2-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_055350_051853_AFCBD387 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 10:52:20 +0900, Kunihiko Hayashi wrote:
> Add devicetree binding documentation for external DMA controller
> implemented on Socionext UniPhier SOCs.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/dma/socionext,uniphier-xdmac.yaml     | 63 ++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml: Additional properties are not allowed ('additinalProperties' was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml: Additional properties are not allowed ('additinalProperties' was unexpected)
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.example.dts] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1240464
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
