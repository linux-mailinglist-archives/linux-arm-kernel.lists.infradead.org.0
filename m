Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147CE1D43F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 05:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+yDvqFnmMz3GkK+X0E+1ngR4jO9rbWH7MdCrdBP9oA=; b=C8Vk4NnJuC0Uy1
	WmM0xSXo/N7DTTaL1DHvSgQqfcfmSEIztDlFKA00JwetQanIWiAVF9qiL6Fqu6F2HwDXMKR6o3YaJ
	H6I7pWS89gG0ZQX2dwULYFRundpEtyKuQoWLJHatEP28t14NmqVsu3eFQKM6g93YcsvCHn4FeyVBd
	iFQ+pbKrwE+qvTS6Y2rLArBZr/OCvpBn1z5CtMHgEei665Ofon6dwWmdDR2SwaxXfpfFu5eoU9wDx
	oEHVX4RHORMubT5sK3p5WciyiosVmtKI5q3XTi/7RERaRlwrkDESjl6s3057rhX/oPhSNMipV1dyI
	s8UuninXZrbR4MqHkXRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQq4-0002lJ-Vr; Fri, 15 May 2020 03:16:44 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQpt-0002jz-FE
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 03:16:34 +0000
Received: by mail-oi1-f193.google.com with SMTP id v128so1003662oia.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 20:16:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0StfnlWCTTFp92r27GLv48pH80mCOZ4IKYTbMwwyGtI=;
 b=dRIZJE4Ke/7DZo+rvP4Vofg1kWDXmHvx349dSYlLhxBPgZDR48FNdiSocKETblDhJG
 rcfOh6jlTnLjTGkJeWClhXrF5ZvKz+yHWqk9cRgLDHyX+PwM974/xksjfpNIcvU2Q0Du
 PzeGvxv0o2PEK+GLkOLW9MmDgUemncQhAL5ioxOQlMcTCZU0T3TYdarEXyUEo4T7pTmJ
 2ip05oas9Yey3a1njRJWkn0KEWRSuI92MGpeCaO8Wk11fweMesk8w0sZ6BcSLyhcQ03R
 bQuov+Aq48y2KTtIsUQoor9I2TKv0Kbr0LYZphZvkS+/RwMKF2N3QgA31TsGu/xjf3jy
 kVEw==
X-Gm-Message-State: AOAM531/WYWZmfQcpplXhHYuT+G92nGtJfah0xGPtDACkECySISNdU6v
 8Vr4FGqMfYhN8wPWsRl5XA==
X-Google-Smtp-Source: ABdhPJyhFa2AewumsZDuk0U0TtsUF18nHvq+KZ9DfYIxW3gYTjTsJyd5oCQlaERXn3mGQPDIIlQDig==
X-Received: by 2002:aca:f454:: with SMTP id s81mr695553oih.138.1589512592606; 
 Thu, 14 May 2020 20:16:32 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h189sm313661oif.10.2020.05.14.20.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 20:16:32 -0700 (PDT)
Received: (nullmailer pid 3447 invoked by uid 1000);
 Fri, 15 May 2020 03:16:31 -0000
Date: Thu, 14 May 2020 22:16:31 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 19/20] dt-bindings: mali-midgard: Allow dma-coherent
Message-ID: <20200515031631.GA3388@bogus>
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-20-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513103016.130417-20-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_201633_510243_3C913819 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel@lists.freedesktop.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 11:30:15 +0100, Andre Przywara wrote:
> Add the boolean dma-coherent property to the list of allowed properties,
> since some boards (Arm Juno) integrate the GPU this way.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
