Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40CE5ACF5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 20:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rDs43S9HsaamRl2yUyp49lmSmvqzSCIVcplx+WTlKg=; b=Z8DQRWXjHXxmTc
	w9tI/msqEVqLnnH9IDGPzTwYL0sEM6a09HNjXS7fVMxEOcViwPf5SYlB1aap5VhEaGBxtu7qbAMMy
	WqUqQnR1FP/q6eBtN10CMyRIyPUh+1uDiDZd3tLtW5dfGLkXGJhjnkuJOF2Oz2ngQqy4HZvUmR1Xs
	hO8rN+Cw+IJBH7q73TZxuUyPm/z0mjmVUN5abBY43wmNEDXTJ5qJCOoXdgZCrKxPIeKooHbY9ZYv9
	kXo1+tonUm5jMGrTTKDVvjCWZrduDFZS9OWn3C60IclYMwnYtGgbYtEEXVDculA9kR2hnTZ2hsH4E
	wDeRHLzlDtB8ddWoD/DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhIXr-00053j-3E; Sat, 29 Jun 2019 18:57:55 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhIXk-00053E-9Z
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 18:57:49 +0000
Received: by mail-pl1-x642.google.com with SMTP id c14so5083986plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 11:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0uwyMT5kJax/pL1jOjeLm1qOkWd4WLOXSR140tRuxek=;
 b=qN+7iBT07Kph9Rpi4qRmEYDRkGQSIyxa1AWRbuJoBD/GGBsgzv9EMLYZuBaybUkJPO
 928wSxRDL9iLFs9beRDmk8SaNEj3mGyQoCN7bE8qbp0hRGLUAfTX7PO6m6uhB/LAPom0
 TQELEMAje8JWX3kYiW+M6fYbdopJBNzBmmR8zBYEgM++zeqmSrZ1abMqRZ2OenGZhzI1
 gyy/JljHBQug3tZ4WsdRuG/p7M+K0GDWCHc6SOIJ074oBQxeF0BExI23iJ+SsrzdI7Xw
 QcVf9q9vK77QxtQhJFRE8WFu7fXDtBlF4j68xMnYVLdherYFN0d4Df39R19oivkg49qW
 0MdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0uwyMT5kJax/pL1jOjeLm1qOkWd4WLOXSR140tRuxek=;
 b=Oajzq49VQfnxnXCtXJNacLxRQey/Nk86Rccda1XGQVLZeJIG4qvKyu8fLGPItx3ZBW
 0KzU+TUdhZseNMhsrIIaUg62DNIMvOChWBaHjd/MyPs+80uophJqMIt4WSMlpQiv4xVM
 TBbyhfXqLs9ivSECVMn8LJg3JCNw2TqwCyu03xHHUJCpcRaZ+mpPG7o8apSU0SyqTPAz
 uL3XuvHgd1Zjkd4/1IMzZIXtpBJvtfN72xVXlTHeoUKGHtsyS+sZLfjfWMh0R4M6DKWo
 6rSdLv3RdmxpeEfIDfsVtRSfwDpDI5OSs5M//BVTebtWvw0VsizEmvDBYrVzCSla0W9L
 Zrlg==
X-Gm-Message-State: APjAAAUybSNmZIG+jgq0nmxwq43VxooOln8HfCPdGBHiFCBFYZN5fEED
 gPcGvl5fno63LUO1aVG4Yqwtfg==
X-Google-Smtp-Source: APXvYqw9J7xQauFQr3WOlY6Dt3tYd3yx0nLfr/60YZFabkrGW26ZmmZkZYy/tKhQ/MO/onltwhqghg==
X-Received: by 2002:a17:902:9688:: with SMTP id
 n8mr18660494plp.227.1561834665686; 
 Sat, 29 Jun 2019 11:57:45 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s129sm5781898pfb.186.2019.06.29.11.57.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 29 Jun 2019 11:57:44 -0700 (PDT)
Date: Sat, 29 Jun 2019 11:57:42 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 0/3] Add HwSpinlock support for TI K3 SoCs
Message-ID: <20190629185742.GC23094@builder>
References: <20190531021321.14025-1-s-anna@ti.com>
 <90211f72-7ce4-94e5-aef7-bbe14266dfbb@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90211f72-7ce4-94e5-aef7-bbe14266dfbb@ti.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_115748_368010_4071B442 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-remoteproc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 24 Jun 13:38 PDT 2019, Suman Anna wrote:

> Hi Bjorn,
> 

Hi Suman,

> On 5/30/19 9:13 PM, Suman Anna wrote:
> > Hi Bjorn,
> > 
> > The following series adds the support for the HwSpinlock IP present
> > on the newer TI K3 AM65x and J721E SoCs. The first 2 patches are
> > related to the K3 support, and the last patch is a minor debug related
> > trace to see the number of locks registered on each SoC.
> > 
> > I will be posting the DT nodes once the binding is acked.
> 
> If you do not have any comments, can you please pick up this series for
> 5.3 merge window?
> 

I was waiting for Rob's ack on the dt change, but as it's just a minor
modification I've merged the series.

Thanks,
Bjorn

> Thanks,
> Suman
> 
> > 
> > regards
> > Suman
> > 
> > Suman Anna (3):
> >   dt-bindings: hwlock: Update OMAP binding for TI K3 SoCs
> >   hwspinlock/omap: Add support for TI K3 SoCs
> >   hwspinlock/omap: Add a trace during probe
> > 
> >  .../bindings/hwlock/omap-hwspinlock.txt       | 25 +++++++++++++++----
> >  drivers/hwspinlock/Kconfig                    |  2 +-
> >  drivers/hwspinlock/omap_hwspinlock.c          |  4 +++
> >  3 files changed, 25 insertions(+), 6 deletions(-)
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
