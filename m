Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C38318DB62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 23:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T8OAEraxPQjWj8Po5+3Lg+OtPV94eIOXdnRKD7SeWDM=; b=V5NmeNvmPeByfK
	QFJSNpS/z3syvsWz4D3TBuY8F+5OOQyMKU71KFAaJr4pZt8hHST3zPRePb3IFxipza2IHzLV9jyl8
	h+/+/UkHTUPR6SqPccvrRW4LyzV5aQL0NQtwjTjz7hYN206CZy7jBxJeY2NPvAO3lrhUGVtMhGEG2
	sQkdb74ogsX5wSYPP2ur/p7FRusyiK7S5ys9TfNw9PF4IRdWZ97ZQrPCrQhBM1jZvlzxcfCC3yNbn
	c0mUjljJCb63LhtaWgtfx3+UyDr1cijRVlWde6dMu6CuIwlMbG2WwRHN2vWiAjb0k2lnZtmohtGK+
	ApWIYN9fgwneSJKWEJyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFQZ8-0005jk-Bn; Fri, 20 Mar 2020 22:56:34 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFQYf-0005Vc-VS
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 22:56:07 +0000
Received: by mail-io1-f68.google.com with SMTP id q128so7695523iof.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 15:56:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=If8ZGUiYaRNsPj48As/65Y+MiI4TR33cXbEvCIdYniA=;
 b=JhpNN9mK1M3Cq0KJ8oAG+CXHrBtl5tuUiclbzwxvYGT6IgZqLLpzowFpDW2WrtEnMq
 GwR0Jkrs1ZOvkmnXmI2FfeB/irr0PGszSYtEHHE9NR0fZSm9X8Ho++EOdljReKtkq/kQ
 jeTusGQ9Oq34FN9gG2oKjf9bSenUYI9LH14GPYf2NY59phBfro0dLH9uRrrM1HC6zktX
 hYRxViSHvN/sEJJE6UGslH/RxTO9hjVAzO78QYODfmmZ8x8BL9JCp3G1M2gRRMx3mEZw
 /Y+zGyWjyp3+R/E4Jp+IJFdd57ZGeQcnSHOReziROdCx6nLnJmBL+UVuzNees8jToOSe
 p8VQ==
X-Gm-Message-State: ANhLgQ2jR5eOHGI+CNp3VNG3OPrO+m4N5PNKBQrPT6zkYNx1VrZVIBl2
 ZwrDUp+AwGp40Cz0v/AERVhP2nI=
X-Google-Smtp-Source: ADFU+vvimgOh9nMdjOeQExAYUtVnr5XDKxKRBYQ48DdJMmrDzu2gfFgAP+2UBEehfBEpmTboFrheMw==
X-Received: by 2002:a5d:9301:: with SMTP id l1mr9713673ion.68.1584744965363;
 Fri, 20 Mar 2020 15:56:05 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id h70sm1413733ilf.8.2020.03.20.15.56.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 15:56:04 -0700 (PDT)
Received: (nullmailer pid 24038 invoked by uid 1000);
 Fri, 20 Mar 2020 22:56:02 -0000
Date: Fri, 20 Mar 2020 16:56:02 -0600
From: Rob Herring <robh@kernel.org>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH net-next v5 05/11] dt-binding: ti: am65x: document mcu
 cpsw nuss
Message-ID: <20200320225602.GA23955@bogus>
References: <20200319162806.25705-1-grygorii.strashko@ti.com>
 <20200319162806.25705-6-grygorii.strashko@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319162806.25705-6-grygorii.strashko@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_155606_006686_9A895A10 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Mar 2020 18:28:00 +0200, Grygorii Strashko wrote:
> Document device tree bindings for The TI AM654x/J721E SoC Gigabit Ethernet MAC
> (Media Access Controller - CPSW2G NUSS). The CPSW NUSS provides Ethernet packet
> communication for the device.
> 
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Tested-by: Murali Karicheri <m-karicheri2@ti.com>
> ---
>  .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   | 226 ++++++++++++++++++
>  1 file changed, 226 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
