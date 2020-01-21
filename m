Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E701446BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lumcCzwI3thgtkH+QklRjqOsqWLciBm9wSArqI/xWGw=; b=ARKTC4TReHW2Zr
	S/kM3BpmT0Yp8hG/SWV2AR70ni0WgbLiVSSsTRiPpQjWUUJyJKCyRSQ6GdhZlwaEvqzVicn+K5xUk
	Al2QClHtQy4A4fjbo88Dh7OLnzcc4T+AqEPacqrDbQ7iXmU2a3NUiH396jjLuITKKECtgK5coGUm/
	NzrCh9DodwaRJOztm2ZhhKMgIaJPCvyb3j8D8SN8wihv/7FFL14tCw3I4yHIF64UEUMtxicobatbW
	P+RnPUt6HcXyVFY7pXz6DM5SEHAFyRpB553jXBmoaZOrhwHvw9s9zNmlzLyyi/NM7s2qBrsRVi87q
	nNz9ExmhI8F1UHQ/MtfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1Zh-00057d-5n; Tue, 21 Jan 2020 22:00:41 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1ZR-00056m-Ke
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:00:31 +0000
Received: by mail-oi1-f196.google.com with SMTP id z2so4153438oih.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 14:00:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KLk2O/IKuSbiV0tR8rjrjmOXKw++jN6rlAX6P6oLFbI=;
 b=iGQ6aizFsIglHxKYV8f+/fKguWuF3iMPHY1ZsC4uG767KZCatu7iUt3tr4CJDONqLX
 X7f9T9oBDMmGSfei221NTK8gyoXN9oDzHcOiXn6FQ/hkPrXMo/vymt+zb370EC2ZSKho
 YNOm7h7xa/OaKl0+jnOgyt+pava7S540fYL3JU0kiigpscaxz2iBbzllna6x8V5Bj+V7
 hDSLZSNVtGRKaBCH6EbnGm5A7hIgEIanisS+kxAbOBkqHkClkuYM1Hod9v43hWs2iMYd
 xMjR++7x6dDN3evzS1AXSoKEdXMx8QJuLboDzqchOC5kbaZgpZq4NRHo4DZ5xA+0qzcz
 eqBg==
X-Gm-Message-State: APjAAAVg1cswsdniwgtrUHGu5pzG3/1sXVFFWghEGO3OGgvXwCqpf+6a
 /XqMvi97/xka9B8qv9A5aA==
X-Google-Smtp-Source: APXvYqyrJcCLm65IFp9RrnaNPk0Kj24N9+PbvJbLGG+xddxwNzL2Rmb4y7wEB7BGH5EV0QhX139X+w==
X-Received: by 2002:aca:c74e:: with SMTP id x75mr4769148oif.140.1579644024678; 
 Tue, 21 Jan 2020 14:00:24 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 69sm13989543oth.17.2020.01.21.14.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 14:00:23 -0800 (PST)
Received: (nullmailer pid 13395 invoked by uid 1000);
 Tue, 21 Jan 2020 22:00:22 -0000
Date: Tue, 21 Jan 2020 16:00:22 -0600
From: Rob Herring <robh@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH v3] ASoC: dt-bindings: stm32: convert spdfirx to
 json-schema
Message-ID: <20200121220022.GA12737@bogus>
References: <20200117170352.16040-1-olivier.moysan@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117170352.16040-1-olivier.moysan@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_140025_677441_3F676AA0 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, robh@kernel.org, alsa-devel@alsa-project.org,
 olivier.moysan@st.com, alexandre.torgue@st.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, tiwai@suse.com, lgirdwood@gmail.com,
 broonie@kernel.org, mcoquelin.stm32@gmail.com, perex@perex.cz,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Jan 2020 18:03:52 +0100, Olivier Moysan wrote:
> Convert the STM32 SPDIFRX bindings to DT schema format using json-schema.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
> Changes in v2:
> - Add "additionalProperties: false"
> - Also change minItems to 2 for dmas property, as both DMAs are required.
> 
> Changes in v3:
> - Drop minItems/maxItems for dmas property, remove ref to stm32-dma.txt.
> ---
>  .../bindings/sound/st,stm32-spdifrx.txt       | 56 -------------
>  .../bindings/sound/st,stm32-spdifrx.yaml      | 80 +++++++++++++++++++
>  2 files changed, 80 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
