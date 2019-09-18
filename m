Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14C9B63CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIF69NqqLqaUI1/atAbGV3ENS0+8sff93Aa9i0jJfMA=; b=VkuHPuqjH64LKd
	xi9JLRPdlxRNyczRRAyHO6JAomuLNDif7nJhLLJR1gM2ayssQcm2eQl/lXuPoYwI0LnoKcjALwiH4
	8+rThYa2kGFiiFu0BpOAYdhGCp+LmX+V0yr6WcsOBekKWxk0MHFBTv1hjBSN7sdliKn07XBpWtJeV
	ctk/XY29rEQlqGUgXAnrmCDARteuZLvlugWqSgkVocgRd7rBLVPMz/kURIx0z2tZ9PwQ9mkZYtK9y
	l4bh67oEXEFo8ZwH+itIM79KUd2h3kE/afx4gAbukCtlOMDMlah8st+kNS14EtIhPZYdd0oQH11V5
	IS9m2Z1tSy7Hl3+XhEkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZWa-0003aW-NH; Wed, 18 Sep 2019 12:57:36 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZVA-0003Nb-DA
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:56:10 +0000
Received: by mail-oi1-f196.google.com with SMTP id w17so5834048oiw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:56:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ReA/o+x2vyuqjFCUqAB1yNYGSIto+aghusagtGQT+Yw=;
 b=gkJR9nFu75A1r8ePt/hNYDstN4cyXJK4hg1Wtxn9Yw4eh7/5uV34YDiJ+hRWZ2jFCa
 WMRXmLstGh6NGaOkiFVmi7BC7eXlOWFIcPu4gBM4KoTBY0LD4QPKS2p6cAVrfRyHdtl9
 RzuZs+VdUvp5PctW5g2zXft2AI/rQb9v7QCcb0eNhwTe5csgOP/hc9hgs8ICdHuaSv3P
 Jdg0pWQTxtLUMPeJuJi0TVqVaevBeMfZ8R4JXAzGILwmak+J/67Rts/lkXywlJKT1Yqq
 cM5oqrhM0VhhEExH8TtCNf8wlr1ZzZUTEcoVeMmcj4ywy9C3qpA0+PtYAL2mVETkL578
 o4wQ==
X-Gm-Message-State: APjAAAUfKBRkSBZvQ1mxItvf33J2AJEgC3lalanwcr4ZvziURxINPex4
 IYryqM7pTuTMTy/3s2x5EQ==
X-Google-Smtp-Source: APXvYqyI08mETSJl68juHYwpSNiK/1VK+99TD6jA1kRhVRKRECzk7usQXauXvTJmWRD3J2KLPDFI8g==
X-Received: by 2002:aca:ed52:: with SMTP id l79mr1885758oih.47.1568811367689; 
 Wed, 18 Sep 2019 05:56:07 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 5sm1815779otp.20.2019.09.18.05.56.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 05:56:07 -0700 (PDT)
Date: Wed, 18 Sep 2019 07:56:06 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 02/11] dt-bindings: power: syscon-poweroff: Convert
 bindings to json-schema
Message-ID: <20190918125606.GA29089@bogus>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092007.9946-2-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055609_099691_A8446579 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  7 Sep 2019 11:19:58 +0200, Krzysztof Kozlowski wrote:
> Convert the Syscon poweroff bindings to DT schema format using
> json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Remove unneeded maxItems from uint32 fields,
> 2. Simplify if-else-then.
> ---
>  .../bindings/power/reset/syscon-poweroff.txt  | 30 ----------
>  .../bindings/power/reset/syscon-poweroff.yaml | 60 +++++++++++++++++++
>  2 files changed, 60 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/reset/syscon-poweroff.txt
>  create mode 100644 Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
