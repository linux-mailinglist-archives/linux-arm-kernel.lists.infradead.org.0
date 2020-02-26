Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 133EC17061A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 18:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ROCpR9F3u21nV33+yFBqolyEz1O/mfMaaE4InIdMhc=; b=BY1E9EnqAwEgyI
	bSvwkuzdGgLs2K6gu5XmoQ+KbVGnwkiXMLDAP8rc3QZRfVg18MaQbFMWjtG3CxTUyOpKmN6dvDpfD
	wezvAaPZn7SjAAfkfgaO/EU5xiqDcxb09MXCvDw6pIWtCUaFjTuFHDbZ8j+bTfiFlxnK7PJlJIPrP
	qBcZBcnv4wDpzjLEz1p3pU3NWc98iB5Z4doFU7WzL9RJ6uu6qBZkI7N+rATu2vSIZTgiwh/xkbjdm
	8KLdx43IV6zTlloLG/gBmpw8ij9PPGk7+oF4+t3v7vmSh7DE1+Y4YZNCtEftqADIH5YSF+f5ebgEL
	/JxuEbCJfa/qOYM/rKew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70Tm-0000m5-Jt; Wed, 26 Feb 2020 17:28:14 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70Ta-0000lb-VO
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 17:28:04 +0000
Received: by mail-oi1-f196.google.com with SMTP id q81so333444oig.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 09:28:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=t83+nB3W6oXdApXXRMLwz8oHqiI3quakZhUjW8Nn9Jk=;
 b=PFa5wKEQV25difumm1CWzCPVbJbQGi592Oz2HEMPEvXJLJnKG2+4BpwEOsHa7YLy1O
 ujG2Zcai/DYwKW19KML+/DIWlUGK4TgHJEbIHSD6We7GotmxgW5AnaPo2xkaHCXP4L6H
 9DGtbBX9UTQhX2/E6FuOOzgff+2GoiY9k/n1aoVyHkUvnuRyx3FZ+LyC6QNRXqV4LZ00
 Th7587bTNUyBFsD2UZA1nlPj7OeJAnZCy0a5RU2VB3hDEyPQyn1w4Ru2jr5Uv5m5zaBW
 yYSt9aVowZRPrgXpKARjDBVw6iE1U1z8KQzKuLfdOmath0kTTtHQJcnBeos98HrITROz
 kGkQ==
X-Gm-Message-State: APjAAAVqXE+x/bHTEcIPbOFnXHEDVGIivtoS+kcBssHV+i62sEx0XPBz
 7VFQuRPQ3hx1H1ro2BvOCei66LLDVg==
X-Google-Smtp-Source: APXvYqxIZscytpwpjUEBs4aKZOxXofyE3s8jmDy1RE4Sc6pXr02J+2XwFazqn2VQDBxT94r/V+dHvw==
X-Received: by 2002:a05:6808:aa8:: with SMTP id r8mr50338oij.7.1582738082288; 
 Wed, 26 Feb 2020 09:28:02 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v134sm1004026oia.38.2020.02.26.09.28.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 09:28:01 -0800 (PST)
Received: (nullmailer pid 10384 invoked by uid 1000);
 Wed, 26 Feb 2020 17:28:00 -0000
Date: Wed, 26 Feb 2020 11:28:00 -0600
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [RESEND PATCH v4 1/2] dt-bindings: dmaengine: Add UniPhier
 external DMA controller bindings
Message-ID: <20200226172800.GA10328@bogus>
References: <1582271550-3403-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1582271550-3403-2-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582271550-3403-2-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_092803_009647_D0B9C1AC 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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

On Fri, 21 Feb 2020 16:52:29 +0900, Kunihiko Hayashi wrote:
> Add devicetree binding documentation for external DMA controller
> implemented on Socionext UniPhier SOCs.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/dma/socionext,uniphier-xdmac.yaml     | 63 ++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
