Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43676DB270
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 18:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7B6AwgGwXy/m0bUasX0UgRmcUY1eRRWzyj7q/1cX9Q=; b=RrJSs1D8Tqwdor
	3pXqly/r+U6mK2qdbeDEwaEBOBVdkToP+VJ7vAuaf9gi5EA149fAhoGPIcHM1iwPBuOcNTNU5QlhQ
	2lLp/8qYlxGwkEfiOphUNxIfqCRWyyBhZ4oQip+e/dgW+FwxSsddB9jgfdjtv27k1GNn4xFivfVZQ
	uSKoGJ3hC967+PtkwyKQ+a1R8Aw+IPQRi+HY/JovRyVO82FZTuF31myaTnlmniM6PxYrk1QqkDfye
	+dESoaAuRrP96vEzg76TG9zbjWeZRi+03D6yqLWi97c9WLl84DjjTp++0ErJxW9x/Cwmc9PxiUa+s
	csdCHIerqf+WLk0lwmrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL8jc-0000Wn-I9; Thu, 17 Oct 2019 16:34:44 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL8jS-0000WE-U8
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 16:34:36 +0000
Received: by mail-ot1-f67.google.com with SMTP id o44so2424726ota.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 09:34:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C3mMcajmmWiTF2tnnxoirKHCmnTAKZDTtWXx5ZDHeWs=;
 b=e9NqegKITj9YzQfSPA4wwY67OkgZBRwEBU9KpwD2K3fRPAi20hTlfw148WMsKKsuXR
 HRDrG9FqfG7Qfyh0ymyMG/qSWrXM6QF1e/1zBTvhGVotJG3QeyWMaxSuctOjouK7jnGE
 YB7l+9/2gMsPl9RQbd3bt/jm9xQnfaMyBDvtM2+PRMEYtJcFR8yhoSaeOpGsl5v7bzdh
 sCTHHJE86GsbVPUi2Ll//y00gz+iaqCIkt3inMaMxvntGb7OnxO4MzADUIDBpved2bVh
 i59w5iOdXMZqPJjYaJdGpV0SEupguWG8R+8S1MzKs1Q4scfRixfQVDXABGRc+Q69meLI
 79vA==
X-Gm-Message-State: APjAAAXEzunSK+QmpQg6FE1NgAil5+4GHVjDCBSGdxL3yRFRc+cV/DZ4
 wKCex2lyyaQc/M/hm7MLjbk9nJ4=
X-Google-Smtp-Source: APXvYqxmXr4i5Zk+4RgsYpkljl8yHKw0u/wDt5mYRIh6dw01K8bE2nEDXt13Ws7kQI7FRmola1U7ow==
X-Received: by 2002:a9d:6a93:: with SMTP id l19mr3934654otq.196.1571330072588; 
 Thu, 17 Oct 2019 09:34:32 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l30sm711247otl.74.2019.10.17.09.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 09:34:31 -0700 (PDT)
Date: Thu, 17 Oct 2019 11:34:30 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v3] ASoC: dt-bindings: Convert Allwinner A10 codec to a
 schema
Message-ID: <20191017163430.GA18716@bogus>
References: <20191016104355.65169-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016104355.65169-1-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_093434_970499_A2FFEB3B 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 broonie@kernel.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 16 Oct 2019 12:43:55 +0200, Maxime Ripard wrote:
> The Allwinner SoCs have an embedded audio codec that is supported in Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> 
> ---
> 
> Changes from v2:
>   - Change the audio-routing values to an enum, and enforce boundaries on
>     the size
>   - Add restrictions to the possible values of audio-routing
> 
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../sound/allwinner,sun4i-a10-codec.yaml      | 267 ++++++++++++++++++
>  .../devicetree/bindings/sound/sun4i-codec.txt |  94 ------
>  2 files changed, 267 insertions(+), 94 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun4i-codec.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
