Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275411E836D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WGoG3usD75tPxy6+bZJfcEfM73DeiKNdf5fbp8YCxM=; b=XayxTsqSonR/CQ
	/U4I37L/pPq/g7pOkGg5jz+1s78U9HSDfoulNTtuK5PcBjkDwp8wlICUyVWaClT5f0QdH8wAwxQUY
	329QRnuyhUOEtBE9r3FhB4SjqlYMpZXNE4Je3eBq8rZRL2S8sNaf0a1Fyko82FFevtU4ZeM3KLfkJ
	LxdbZLFXixVsVHrH8jD1dd1tjOXb54u1vHWcttqIWfDWdocxwnn4TbAcM+66nA0YEYaeqxLRe2nRU
	QP/poebdU5vUaDOo7dM0QriAb/WnHecS+M672ABxC6ic/b8DXkQ5ZvxkcXkU8FRGCDs67R7mHo0TU
	A7cQuD3NZaiw5jpoqRGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehhe-0002eq-St; Fri, 29 May 2020 16:17:50 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehhT-0002eE-Qb
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:17:40 +0000
Received: by mail-il1-f196.google.com with SMTP id 18so3008662iln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 09:17:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1WA+w4gWKVFAKdOjyjOP/tEtWPocATjUQITVK+3DOw8=;
 b=Z/q+Re3vd87OUcaY6w6BJw+jg50JFq2wkZEss0yvBnP4LWRnOy8sxdGKWkouCq6bfj
 8utM+LmA4Ram0CxKJT7IYSiX4fnexvzUiE4vp1ciPeFPLIlWvaZ+gcdYouMU1ripfmsX
 59duSzawEMorrfqKEbB/iTrNvhozSJQ3Zcd7KC7Y227/r/LCEYpOg/Znr1wQMSexk6gf
 L3qQkbpcCQMC8ZA/M66PTlnAeEGtkRavHu1/D5WvUeT1NN/ZA2XCien+nuX5EMF7h3rc
 /nMnJFZAum+zZtmSgGy6zJ5S8T7G6I5nDO5h5hI+dGLurdtaX/KjC5FSbN2YdThndB1/
 iwmw==
X-Gm-Message-State: AOAM533odpOQ/7BSzmcVkLGbnkikRLZO2JPFoB1ul9QPUal3mEN5X3Th
 xZm337UAYVOSeAkCpjuQ+w==
X-Google-Smtp-Source: ABdhPJzaiMsri3Ce6ct811n/Nx3VT+C3nOOEcWn2ikVVXzQHkkLZAWZnsnOcN0C90jGOSCtG3QTx+Q==
X-Received: by 2002:a92:9142:: with SMTP id t63mr6838165ild.191.1590769056769; 
 Fri, 29 May 2020 09:17:36 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id j63sm1083926ilg.50.2020.05.29.09.17.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 09:17:35 -0700 (PDT)
Received: (nullmailer pid 2494095 invoked by uid 1000);
 Fri, 29 May 2020 16:17:32 -0000
Date: Fri, 29 May 2020 10:17:32 -0600
From: Rob Herring <robh@kernel.org>
To: dillon.minfei@gmail.com
Subject: Re: [PATCH v6 4/9] dt-bindings: display: panel: Add ilitek ili9341
 panel bindings
Message-ID: <20200529161732.GA2493963@bogus>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
 <1590564453-24499-5-git-send-email-dillon.minfei@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590564453-24499-5-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_091739_861229_0AFB3D32 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: dillonhua@gmail.com, airlied@linux.ie, linus.walleij@linaro.org,
 dri-devel@lists.freedesktop.org, thierry.reding@gmail.com, sam@ravnborg.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-clk@vger.kernel.org,
 andy.shevchenko@gmail.com, p.zabel@pengutronix.de, mturquette@baylibre.com,
 devicetree@vger.kernel.org, alexandre.torgue@st.com, robh+dt@kernel.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, noralf@tronnes.org,
 broonie@kernel.org, mcoquelin.stm32@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 27 May 2020 15:27:28 +0800, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> Add documentation for "ilitek,ili9341" panel.
> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---
>  .../bindings/display/panel/ilitek,ili9341.yaml     | 69 ++++++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
