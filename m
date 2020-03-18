Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3F418A7D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 23:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFw0j5/BWZaAbvukEG4RFYSicF5psR21YlxurlsP5bc=; b=WSXmhPEfGvjohd
	AmfSjtB447J7QpPXYLhND2yjULc9AD9ODad9VI6eKftqD47PgxjLtPto5quqfO/mr4omTxp/3vy/R
	R2ozRxdeDa7Ht4zvcQgSgWUEHv1J8JVCu0ANez4+G7rSwajJN5eh2zwpcdEUtdzVAOxV6ve8VG0LY
	AW7JEVwjYjoxn0NJTj/Cy9qlEgXKesWwdW8FweCYD0qoNPb6O6CeibM9rJeDaLBsp2M0msXxY3rM8
	bLbNyKNteRfXAa5z4XLhUf+gggIozm9qymzRQBV2SUqZVyaT5lCaT9d3LLuoBuYIvUarmvBLHKgBO
	J+QM4GFJhNO8JawAygAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEgwB-0000R3-JC; Wed, 18 Mar 2020 22:13:19 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEgw1-0000Q3-35
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 22:13:10 +0000
Received: by mail-io1-f65.google.com with SMTP id v3so149038iom.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 15:13:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vI2oiWC9LH3F/wNwDpMAEyJ8ow2uL7hezjEKLRYLfkQ=;
 b=c+wigZQQKRC6iYvo4TMQcr4QrD+9wnH9kAOm4Ga1WBzGg1AzI5HgRAwDKTK5xuKc6M
 Hy0I7mc7GKRhj6mkmJ+RX7RQva8fX+ebv2EmbhQXTj8+vjToHWoJ7gHqoLXNfOVPhHaB
 +ePuBJLPTLYDoj1OrjQmCaUnwbOAlw51thOXZdRW8qKEZFXkdznOutbmuPZJwFCaAuah
 skVvmObygOld0vaPQeA26v+Z2guLhwN9DKX/PrCQRsAOXsY1QB8PImqpDmAIeLN3PDv9
 TjXsGMaRwnaIJBycxDo+qfaGQpsyRDPT3rWx34CLnJCYjihKoxqWHGQDeYoxUkKAPVmF
 9+PA==
X-Gm-Message-State: ANhLgQ1dK6LnDhj42wDuAdfTKytcDE1j7L1GQaiABuNot0+Y1hMGO8qA
 nl0HGzYItv/kUnJw+G2fPg==
X-Google-Smtp-Source: ADFU+vuQg+pvqCkdjOR+MTIxkrfGYLu3hbZ8HXPDkiEoRjoFQtoZWruFHZBgCjkV/KU7alX75sG5xg==
X-Received: by 2002:a02:6d2c:: with SMTP id m44mr233994jac.65.1584569587719;
 Wed, 18 Mar 2020 15:13:07 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id v21sm68954ios.39.2020.03.18.15.13.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 15:13:06 -0700 (PDT)
Received: (nullmailer pid 29033 invoked by uid 1000);
 Wed, 18 Mar 2020 22:13:04 -0000
Date: Wed, 18 Mar 2020 16:13:04 -0600
From: Rob Herring <robh@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V3 1/4] dt-bindings: fsl: add i.MX7ULP PMC binding doc
Message-ID: <20200318221304.GA28525@bogus>
References: <1584348944-19633-1-git-send-email-peng.fan@nxp.com>
 <1584348944-19633-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584348944-19633-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_151309_132842_DD671385 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Mar 2020 16:55:41 +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX7ULP Power Management Controller binding doc
> pmc0 is used by M4, pmc1 is used by A7, they have different
> register name and usage.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32 ++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/arm/freescale/imx7ulp_pmc.yaml#

See https://patchwork.ozlabs.org/patch/1255335
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
