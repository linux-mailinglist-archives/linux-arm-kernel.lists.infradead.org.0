Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A315D180753
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMD/qu59uUXpOR+G/Ir3QrZ3ab6MRedHx6WCEeATodU=; b=HhNv+ueAOjWym4
	xzBlkVP4zP0LGxfHAzEXFfCZZmMKubG8aaL/PS7olv78sXvdXtcSa239knS8gqmPQuByouMSFb5hZ
	3cyLV+SLzat56dd/ZNiBoPwRhuvmtdxpyrfuflVZDJ6EAC1F+LnR7CMKk+ideFivVAgdyOYvNhdbU
	GaIMXOLgWw5SfH8jnRQX1tJhVNCBoWGr6yJ86Ypj94Xt5ruCiVhpnLMu+32LiBzApyTfCuE7XfRYF
	nj5k86l/Niunf/pEKDQxbJYD5RNidQbgU7lz55bjegXrHWlKi4F1H8NuShOoNpFg1oUxws9C9rF/E
	KBerHMxzDSBKfVK4wJxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjvI-0006eN-JO; Tue, 10 Mar 2020 18:48:12 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjm5-0003q6-0y
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:38:44 +0000
Received: by mail-oi1-f196.google.com with SMTP id l12so14931784oil.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 11:38:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rcKiHvyeeVweEFjKVsIEKKh5OdVQ21JonvREl9Oqx8E=;
 b=IhuxP9Gur2T9FzALkrfAm9GK5HP7WFx/gdLxJc+hakbIMcJIdlWfonscN2yZFypd1h
 ivkq6dP8OI/eLXKrO1x+HG/KSg02XOJenE9UypSt678e7z51rS8/Kic2ZLoxh0HocPhh
 2XudYKD2lzwIytBUkMIacBJ9iGNyNoF28tBIo9EVH2bCC9HJJjittA7D7D6qZxnQ4ByI
 m8zLi2kCzrC9+VNl0oarhVLlJ1FlKKF94kOxqkodvExxYOL4bEOicQ9UZc4vX7FXgQUx
 xP+vGR8qpUncw3bINP8o3f8E10DaRr1n2XKL3yTO2OPAXbE41PgLW2nMnPVV+2/dkNCG
 5qSw==
X-Gm-Message-State: ANhLgQ1rVjB1obog7TySPDCR010Zhh0cS7O63FDW5W17lQke6x1bROHw
 7zTkoTyCd+VjOGZqTiUDJw==
X-Google-Smtp-Source: ADFU+vsoV3qqlTEQdCVrmWtlFKB7yKGYbJtvxst09oJE3MqwGuSD0LEr/QkIJob56v6U03bQwXU4Mw==
X-Received: by 2002:aca:4d86:: with SMTP id a128mr1767381oib.96.1583865519689; 
 Tue, 10 Mar 2020 11:38:39 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l10sm4493995oii.29.2020.03.10.11.38.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 11:38:39 -0700 (PDT)
Received: (nullmailer pid 26679 invoked by uid 1000);
 Tue, 10 Mar 2020 18:38:38 -0000
Date: Tue, 10 Mar 2020 13:38:38 -0500
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v5 4/8] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
Message-ID: <20200310183838.GA25904@bogus>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-5-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310152003.2945170-5-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_113841_134033_4722FBB4 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Mar 2020 16:19:59 +0100, Thierry Reding wrote:
> From: Joseph Lo <josephl@nvidia.com>
> 
> Add the binding document for the external memory controller (EMC) which
> communicates with external LPDDR4 devices. It includes the bindings of
> the EMC node and a sub-node of EMC table which under the reserved memory
> node. The EMC table contains the data of the rates that EMC supported.
> 
> Signed-off-by: Joseph Lo <josephl@nvidia.com>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v5:
> - convert to dt-schema
> 
>  .../nvidia,tegra210-emc.yaml                  | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.example.dts:23.13-20: Warning (ranges_format): /example-0/reserved-memory:ranges: empty "ranges" property but its #address-cells (2) differs from /example-0 (1)
Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.example.dts:23.13-20: Warning (ranges_format): /example-0/reserved-memory:ranges: empty "ranges" property but its #size-cells (2) differs from /example-0 (1)

See https://patchwork.ozlabs.org/patch/1252240
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
