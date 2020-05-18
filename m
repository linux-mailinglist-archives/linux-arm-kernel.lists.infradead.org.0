Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62C11D8979
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 22:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWUs1KADwMoTbfhnu8gAicYwvWW6GTlylLQ34sxx9ZE=; b=hJT3IRqvnfIQZB
	lAmRLsmsCuyTg7vQa6k8bIo1wRiAYjACtn5acqLxgTKGY5zLsSF29KUbBUIh1g6tjclGyE6Gyb1o4
	sDa/VJScNMEDxytezCQftyZDbul3CTKvIWW4BASuQKLvq5j6EZzlpuut4Ql1zV43VFMTnfsrwndyP
	K5dei5eDPLhrK3nmmTDNSl8vgmV+xlgKIcoSQIh/Xcz3SPOuAxkFnFVaE5oHhXPr/0/ZfapFnRTdA
	oRi7MbfiKWEAJHdAQs0/lyX80nByfNr4xx7QpJYuFvtgPxx5MX/uJLSbVOtfAFtwKwYcCtjCppTo2
	6zHMhggLeChdHNTXXmIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jambz-0004wt-R6; Mon, 18 May 2020 20:43:47 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jambm-0004wE-UK; Mon, 18 May 2020 20:43:36 +0000
Received: by mail-io1-f66.google.com with SMTP id e18so12185532iog.9;
 Mon, 18 May 2020 13:43:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XxCSYRBQHg2fQ234CjMgF6ixZHHxXyujUgSJb+Q5Djs=;
 b=LrS65H9uAgvDXd9z0aeEJGd8r2U/IJLaJNDhf6AKk6BOnC2wIvS8VlwiQX6f8Xpyga
 IqPdVts0QDHrOOPJ4eDlkhvmbW5Esv44sZM87jBR1fy+xLzaKw0gADN0lrBeLxZ/qLAJ
 RyfO9ZXRgX6Gx9VQ0Yn2QGgNdC6nOn6DDUMC8uZFLc5rkGidXOGO9tIz3+JZx0aAC7yb
 IDeDC21G753Qoo8c/8pDLSqQ15z+h4r5BtL26sUBjswlMQhgmFSTx8FSfkhtDM8JzSHV
 x8zfABMLw9zjqCFu71Kh10TG7t3cZxPJu+6nLBI3YHdg/0/DAlEnQ23jhUfEQXHAehff
 Ke7g==
X-Gm-Message-State: AOAM530bg4QiD3Wbd3tX/PhnnWE4AKe37UnZagO3ivKtAfGhMwOU95lO
 zqAVkc2ao2z7XLzowDmoug==
X-Google-Smtp-Source: ABdhPJxwJtVIGcJC/9Eof0tcXkBvMbAy6LDRx8MkkwQ05jU/N4ORpjfLUk+XbSpM4BB0PSUKRW7gJA==
X-Received: by 2002:a5d:970e:: with SMTP id h14mr15891433iol.117.1589834613971; 
 Mon, 18 May 2020 13:43:33 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id h10sm4327382ioe.3.2020.05.18.13.43.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 13:43:33 -0700 (PDT)
Received: (nullmailer pid 13972 invoked by uid 1000);
 Mon, 18 May 2020 20:43:32 -0000
Date: Mon, 18 May 2020 14:43:32 -0600
From: Rob Herring <robh@kernel.org>
To: l4stpr0gr4m@gmail.com
Subject: Re: [PATCH] docs/devicetree/i2c: brcm, bcm2835: fix node id in example
Message-ID: <20200518204332.GA13919@bogus>
References: <1589140701-7516-1-git-send-email-l4stpr0gr4m@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589140701-7516-1-git-send-email-l4stpr0gr4m@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_134334_978384_F5D370BC 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 trivial@kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 nsaenzjulienne@suse.de, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 04:58:21 +0900,  wrote:
> From: Kangmin Park <l4stpr0gr4m@gmail.com>
> 
> This is a trivial patch to fix node id to match the reg in example.
> 
> Signed-off-by: Kangmin Park <l4stpr0gr4m@gmail.com>
> ---
>  Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
