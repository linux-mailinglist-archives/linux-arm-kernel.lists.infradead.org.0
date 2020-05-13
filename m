Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DFF1D04D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 04:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIOTtKJ1+eGXthZD/xHst8XulCmRBpOWuy++/H87zqM=; b=quOpoI222LK0Et
	Sjc+PufVodtk+pu25t5wtMGVRawKQyPidjG3b4wQVfg0MjHP0ls+WV9D7X/Op3dwaRtyPLKej3xtV
	XufBcq+jM15v8XjF+HszUAr2TW2b8HJE0+e9pStkbG4DYWNAht2g+BvEGnXx4l4ftNkmXp33CZGPR
	jthzsxeg/9WSIGQ/QclaWL956JmWT9dDsqm6gtmZ2lrVlMDGye6Tr1W3kliccNfk4vADKwA/Z9m6+
	fp/UpurpLrz/wBrCXTjQluu62W0Qw/wbo2z7OCrdRq2AMaFBhh4aFl+R+onSqHFFbxqTS5NdktHbR
	wssPRLM0lqOCwuBKLVuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYh2l-0001Au-Dz; Wed, 13 May 2020 02:22:47 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYh2e-0001AP-9k
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 02:22:41 +0000
Received: by mail-oi1-f196.google.com with SMTP id 19so20127961oiy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 19:22:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AaR/7VLqy6LVKQz0uPuHWvPqsrRu/xq4udfPwcoi4i4=;
 b=X8+pTMTQJW1VXehpcMH9EHAVm3n37RUtmKWA0nd5ZymXpXjAw6cbdhRcgjzLG755JV
 VQ1TUCbkSA2PsARHj8SUf3Jto53Fx4X2L5G+Xn9PXkGij57H8EvfqovMWIOgTEikCp7+
 pIevYG85cOOa5RpSvOe9VQP9nLP12X5TX97FolL+x+KIJr1F/8XdhHoVeIiUnJ2Gb+Oo
 9rju69wZLamjhq4kPBoZEQHqW6qDago2IsxWpqdFXQCawCAA2OSH7vL7zh6q3NCXCM5E
 hkPS0bPrGv2PffLBKhSuMujXqsJkIgPRFRJqduur5XF/V4CCkou8iOM5XpRb6Jyk4Xrb
 iftg==
X-Gm-Message-State: AGi0PubBnVd7khulOmU8FsAdTERPBWDA2rSA+pHwgm+uV+vtCXNBPObe
 78KBLz3TN+j51+nHUqo3dQ==
X-Google-Smtp-Source: APiQypINVeEjqdUUaUFDCRteAcuJFXQ0VcFRi9yLFbPpHTTIaQYCJC8fJUkJltCCW9Ho2P4Z1GY8Xw==
X-Received: by 2002:aca:1818:: with SMTP id h24mr26212488oih.71.1589336559137; 
 Tue, 12 May 2020 19:22:39 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q3sm1359956oth.2.2020.05.12.19.22.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 19:22:38 -0700 (PDT)
Received: (nullmailer pid 22790 invoked by uid 1000);
 Wed, 13 May 2020 02:22:37 -0000
Date: Tue, 12 May 2020 21:22:37 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v3 2/5] dt-bindings: display: sun8i-mixer: Allow for an
 iommu property
Message-ID: <20200513022237.GA22733@bogus>
References: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
 <ef88e9d96eafe3f921cfbe087c5f0a25a5dd41ac.1588673353.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef88e9d96eafe3f921cfbe087c5f0a25a5dd41ac.1588673353.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_192240_337266_5C4DD1D9 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  5 May 2020 12:09:31 +0200, Maxime Ripard wrote:
> The H6 mixer is attached to an IOMMU, so let's allow that property to be
> set in the bindings.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
