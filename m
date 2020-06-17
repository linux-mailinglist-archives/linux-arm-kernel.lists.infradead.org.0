Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5731FD910
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdZh50vuOqfbhasjfvfT4HsSz5gyuLOes2aQgG0Ck9E=; b=k8X6pz7bu8dlhm
	loF49z8W18Rp9DeqH5ooEXAZdQPNy5c5oaK3uLpgYOuoAuk0RUVXaVIhIfuLWJsibwMB04tWaRfCi
	YpXfsaPv6IsjIgWPy9/XMl0JMTO+ycWO/fUZu89+2YXgvtF+xQy8F4hnTDS9qPWADQ/j6TAd/qlCV
	WiYF3sj/KZpq0jcHK6YZdmcEBTZoKsM2jIz+TxS8XTOEQTQIIyRYiE6gzoILdGlmKNsc7iqTmXtA2
	auYFKA0sgA3ka6sVt5bPcifgx/oo3AKTUERVpXLyLIVcgnQVVdMfeRaQJjcpWuIcf5r4Mmvw2+D9t
	LE+FsXvQ4LlHxOF3iP5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlgjb-0003ry-Uv; Wed, 17 Jun 2020 22:40:43 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlgjM-0003pQ-5C
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:40:29 +0000
Received: by mail-il1-f195.google.com with SMTP id t8so3937129ilm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 15:40:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Zfs6fQ9dNu1WR3lr294IASeX3pxyyPciqezJugqbLdg=;
 b=ryQJKZJ1QditaoSooO4TbkK5wzbQs2yaz1EzWaNmFUssqq8PDacYBm4SWL9ODkgrSs
 axzt5/nehx6/LGdsdZOgwhODZmLQ5aMh+RCa9zVVhWTfiichlZ1g3l43fzCIfg9VXkig
 x3bF9D0LetL/V2Y9kCnGbiZAhnFomuDUr4TvWFCbwRLyr5kprvcx4msDmB3hbYiDDwIF
 /NZp5w7HUYJ6yXcRXu77JSZUuJTI++4TFHQmU1X0UrRQ4iwM7ikwXP1fu0Uc0CKT+gYZ
 RS33g1rfwepJOIgDSaREYVS4dSLarGQ/M+EkWHmKCRlxShEX8wPh2tYLN2KYyWLFfsCE
 cL5w==
X-Gm-Message-State: AOAM530PGKHoI9C228nc6JXwT4zFwQrV00zQk4d0zOmfGiCdbrq62cgq
 nyRcsupodlmxp18us6Uvog==
X-Google-Smtp-Source: ABdhPJzRwz/0uaYi76fA5Zd1pUASZHPvWS/+PxMD1pnVAfG3nH0ehNSUR64R0ytuzMsQ9XxUG4dQDg==
X-Received: by 2002:a05:6e02:ef2:: with SMTP id
 j18mr1221721ilk.69.1592433627244; 
 Wed, 17 Jun 2020 15:40:27 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id c85sm537559ilg.41.2020.06.17.15.40.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 15:40:26 -0700 (PDT)
Received: (nullmailer pid 2970050 invoked by uid 1000);
 Wed, 17 Jun 2020 22:40:25 -0000
Date: Wed, 17 Jun 2020 16:40:25 -0600
From: Rob Herring <robh@kernel.org>
To: Jordan Crouse <jcrouse@codeaurora.org>
Subject: Re: [PATCH v8 3/7] dt-bindings: arm-smmu: Add compatible string for
 Adreno GPU SMMU
Message-ID: <20200617224025.GA2969998@bogus>
References: <20200611222128.28826-1-jcrouse@codeaurora.org>
 <20200611222128.28826-4-jcrouse@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611222128.28826-4-jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_154028_264944_4C56E2C4 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: freedreno@lists.freedesktop.org, Will Deacon <will@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jun 2020 16:21:24 -0600, Jordan Crouse wrote:
> Every Qcom Adreno GPU has an embedded SMMU for its own use. These
> devices depend on unique features such as split pagetables,
> different stall/halt requirements and other settings. Identify them
> with a compatible string so that they can be identified in the
> arm-smmu implementation specific code.
> 
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> ---
> 
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
