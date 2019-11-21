Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFAE1054A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:39:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4IFl3EsGqc0CaFZkG6H+ZyPhKN/qOIzqunJtMXXN8Y=; b=fxxf26NOuCVub1
	hchKj9eZWFavrmzGPPIQHv8QUVsqRrSJ2x33ho77v0nZ+bT8jjQ3TsPOsE6ExRtXS0Za4uwG9kfMX
	vW7p6bWp2Gqj4dhKqpq5lUWn8cUSPAD2mBqx4b+TESrTnLrd6x87z7MkQ0r0YkTonoD0yBqRsH+zJ
	wbHNOV+Hp8rY8EmU5658FYq8oGidzlJ8u/0DwEU3iGHakpb6rpQn6aJLOi3Mr3+YrqGMWdCHhsHme
	zBqJWY+ayxv36PApjNvuZOhDe36lJqIEs1umedxDjkKCbqo1epesC3tJB/bKpdepWCcvQ2Im7TR2/
	7bJDz2XMGKdVPLN2XvAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnbt-0003mh-Mu; Thu, 21 Nov 2019 14:39:05 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnbl-0003le-V1
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:38:59 +0000
Received: by mail-ot1-f67.google.com with SMTP id d5so3114772otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 06:38:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0blBAL3wZkz50HycghqiK2pciwvxeqAeMTt/kJRNm5g=;
 b=STdbj+O44hKkj+5qprTEUSqS7vheed/0DByY2lXvEF2XAPIIemNfEqtZiTWcF6OfGV
 WFXWASAQG80/6ya0j5nzGjhrOyMw9L77MB99owVQ9A3UYfCh3b52cKur7Qq3JvTJuITG
 qPkIx9s2PoGLv4lkFkj1KAosINzdYpeaORRNY0YwjFaa9kwvCzYzuVlZkFtKScOQELxR
 /GqirwP7Gn1lv9tXPG9oHJEbtcCQplP76/SJd/GzDseEU3LmQCdfeR9KTsWuRZT4obBu
 +lIOFbme6q0da1nz7d/x5shheamJ73wPk6nhy/x5OeD5wWpy0y/jH9BCSjsylSCO0hq2
 i8AQ==
X-Gm-Message-State: APjAAAWY8RObO+oSut1P95/EH9qINjycHWTOkB1YnLOyY44V4T7R1z7y
 wpkPxdtOzeh36WZa37o5yA==
X-Google-Smtp-Source: APXvYqwnaGGSvHw3eVxDSnMv1fQxO7SKEamfp9zxy8HwVAD1LSiD/kDoELucP/RnyFz5AWlq8jVXBQ==
X-Received: by 2002:a9d:7a93:: with SMTP id l19mr6448599otn.314.1574347136596; 
 Thu, 21 Nov 2019 06:38:56 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h39sm1055423oth.9.2019.11.21.06.38.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 06:38:56 -0800 (PST)
Date: Thu, 21 Nov 2019 08:38:55 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2] dt-bindings: spi: Convert stm32 QSPI bindings to
 json-schema
Message-ID: <20191121143855.GA23685@bogus>
References: <20191120194444.10540-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120194444.10540-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_063857_996951_B4B06FCD 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 broonie@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 20:44:44 +0100, Benjamin Gaignard wrote:
> Convert the STM32 QSPI binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in version 2:
> - fix subject
> - remove useless minItems and maxItems
>  .../devicetree/bindings/spi/spi-stm32-qspi.txt     | 47 ------------
>  .../devicetree/bindings/spi/st,stm32-qspi.yaml     | 83 ++++++++++++++++++++++
>  2 files changed, 83 insertions(+), 47 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
