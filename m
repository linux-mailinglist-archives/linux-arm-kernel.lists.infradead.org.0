Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381B8170B77
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 23:23:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDqdwl9H4yt5i69mb22OpuSlQdDurFD3VKXkoSe+juY=; b=c3ucm35swQQ78k
	ycIGPRysLt8gTwe9bDSHfzM6e9zQIxC66LR3yhUWCy8bdxHsLOWwdaz2Au/b8DYiFtCXQYGCcfe06
	NNzjfYgfqpfkCNJgy5l10tNEoPN7CGe7+dMWmIx8f6UBpQI02siolHL1JcSbJ/xTN1uiLn/WONQp8
	ycfWGhvJSAtG/SFY0MiDZxSifkTrieTeIqZNbM016H7SNiN+78eSOe+w3iH8siHHzZ+fuzuwSKTZM
	GjILHOxgRSRQa2f5r6oka4GEGwmFgtpVxk3/SJANK1sSovGUTtUY0brTYBSHBUfwrZI5bn6ueD7Wx
	0AvYpefsbLzi1vj6cJBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j755h-0003c9-Tq; Wed, 26 Feb 2020 22:23:41 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j755Y-0003bj-1c; Wed, 26 Feb 2020 22:23:33 +0000
Received: by mail-ot1-f66.google.com with SMTP id j16so1059716otl.1;
 Wed, 26 Feb 2020 14:23:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9/KR8/ro7ANRurfSfz9QDDSqoIKmisafRnjItkiqO1U=;
 b=Hpz4c0YT1Lbh4amvdci43gGPXr6KAZrZXL00PeS0ssn6Z4zSkOxqbQNcQmyVRAcOlq
 qfIW/Ta0WalwWMc8HjwzM9mBD8gZh4o41PTtaVkPkzXxGEcEr2NJvNpfxJrE2zPsg60e
 N0zavOTEDj5fV3JYujdGl7IzltqVueFxz7VUUBGxZbB8WCWBB6U8uMsuYUHyhJe/DSMl
 PU/KjokHB4OBr7ql9V6u43ndlHXs819gcVc9aI8drjxBrXiGjBLQIFrB5Bj5gAB5SK58
 TqNjs86pnz1ycjJiESLWjinQnkhKqBMIOh1sanVCPVb807Sh3SCUy/H4MKgURaokdXAE
 F3Aw==
X-Gm-Message-State: APjAAAUUlv5Y/bSx6qjl0AR5q0SD31AwcRIk67X2C53MwQRguc5Q516i
 1KQCm1dd/rtoGhOthVSSOip84azsyg==
X-Google-Smtp-Source: APXvYqxQoc+Y2Yxgre6xns0v4FBKE/B92IK5PIDzgAyBU4JtbAuTWwoJBOY8QPJnsvQfCddn4rj14g==
X-Received: by 2002:a9d:2dea:: with SMTP id g97mr841706otb.33.1582755811422;
 Wed, 26 Feb 2020 14:23:31 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a30sm1226839otc.79.2020.02.26.14.23.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:23:30 -0800 (PST)
Received: (nullmailer pid 9442 invoked by uid 1000);
 Wed, 26 Feb 2020 22:23:30 -0000
Date: Wed, 26 Feb 2020 16:23:30 -0600
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/4] dt-bindings: i2c: Document I2C controller binding
 for MT6797 SoC
Message-ID: <20200226222330.GA9392@bogus>
References: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
 <20200222162444.11590-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222162444.11590-2-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_142332_097061_E9CFD274 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 matthias.bgg@gmail.com, adamboardman@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 22 Feb 2020 21:54:41 +0530, Manivannan Sadhasivam wrote:
> I2C controller driver for MT6577 SoC is reused for MT6797 SoC. Hence,
> document that in DT binding.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
