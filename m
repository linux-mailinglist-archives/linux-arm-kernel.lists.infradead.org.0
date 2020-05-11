Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF841CE752
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 23:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZJYW2XtBy7M2/xIX1rseOXgLpchNEBROolMS/C9Q7g=; b=MGjkIDvY3ghc7B
	V7UcovZz/IU6EwGvha62E1jF7qVFzw4YFytVvd9FOOy6yPgisZnGJt5g4trp1KF4BcpOCn3psJcDW
	O68e0f7999Wr/uFU9a7jiP2nJgYHucFkhCELbhFWWFZSbe9dXR59iHf957WZ167VFs0yWxD03FCz8
	STDLcR+nJZOXYjo+kxavAp61Pbvvb1ZDdzDZKzCWUTSLuAji0RuPY4lfYRTjIPdBQYEgpzdFIa2RI
	7/mEqdW87YESYBYlbut8XVOUMLIrKAFipAtLezpUe+oGAWXJsP4Z3/AyD8RIdwhnoMJWEA2rBDymL
	wkzOZTmnTruZFXpOLJfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFrn-0003Vf-Fr; Mon, 11 May 2020 21:21:39 +0000
Received: from mail-oo1-f67.google.com ([209.85.161.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFrf-0003Uz-Sq
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 21:21:33 +0000
Received: by mail-oo1-f67.google.com with SMTP id b3so578218oob.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 14:21:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BuN92xQKE1O2gCcfAoLZqAomgXd8adBPnCrmK9Ay5OI=;
 b=q010rXCbXr/X/Mt8uLQtTZQzR6WeJRmE+GclbDoQBwYzUYkgM+Gbm3oI8rmGS53fcR
 TmE4JhnM+nRZhcVZyL8oA0LLQHQij+c3poUKtC73X3XaWh2CziQT1HCWYpg39Iveziiy
 tgQdfEj4vFNStidJ5bW1NBKS3F7a/rfcKWq0gGGtbkTUA04psaxwkl8mmEzyMHkL0CwI
 BQpkco5jMrfloVgOLGLvjXOtOByZrNXHfirXK3iE8tCHKtuiRQ33MXlGOMyuUyZW+Ecf
 NPalwjE+7xOt9GWqkwQs8xXzYCc9mN5XGCJgR8Kzgn3bHgbWFGM3rDJ1Yudwjbs+1QKu
 42vA==
X-Gm-Message-State: AGi0Pua0qVOepiGig7aE6AYbdQcJqkjlP5iSjtS7xjwifx7SgNGPExoJ
 tojC2IDdqSEIsPz55YPlf+8TOpo=
X-Google-Smtp-Source: APiQypLnylkh5RtyKnJucQVNptDtrvSqg94sFVspZqr+nL1wlN/fvMFck/XbwCiTrWyJMEwAhkexgA==
X-Received: by 2002:a4a:86cd:: with SMTP id y13mr6631353ooh.87.1589232090833; 
 Mon, 11 May 2020 14:21:30 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 85sm4919969oie.17.2020.05.11.14.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:21:30 -0700 (PDT)
Received: (nullmailer pid 32549 invoked by uid 1000);
 Mon, 11 May 2020 21:21:29 -0000
Date: Mon, 11 May 2020 16:21:29 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v2] dt-bindings: spi: Convert UniPhier SPI controller to
 json-schema
Message-ID: <20200511212129.GA32453@bogus>
References: <1587720562-15293-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587720562-15293-1-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_142132_551075_4CDF7C4C 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 18:29:22 +0900, Kunihiko Hayashi wrote:
> Convert UniPhier SPI controller binding to DT schema format.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
> 
> Changes since v1:
> - Put "#address-cells" and "#size-cells" into the required list
> 
>  .../bindings/spi/socionext,uniphier-spi.yaml       | 57 ++++++++++++++++++++++
>  .../devicetree/bindings/spi/spi-uniphier.txt       | 28 -----------
>  2 files changed, 57 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-uniphier.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
