Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D24979F118
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 19:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPPr8ZQsrNhEtzur3DylhHDujUnon+eKIwD7EzvIU6k=; b=SOYBBs10njqS5i
	jrhcie64XSVZAMvaYheBZaXtVfZCFCxgiCptBihOwstkiNo8/0H5AjXtM/waQOLJBeDCcGzitprGp
	Ud809c/lFyjs5LsRPSRfemDmPtLQuD+Nk7owIP77Vr0VxgR1gmKy4tbHM/2PuxcXSuD5aaI/yesWW
	X+RbFWBcW++ndYx11Wf+KgW5OXH5Joa826590vJ2xjXHpVfh/M09W5UMx2O/PGnDhaIcyyTe3hLay
	+f8BFl7fTPhH5XPMuZWDCUZ0WwH4alL2ZGfGrkETGgKaKOy5ApxBC2YUTsjP6oJOoA4QPt0ySZVIM
	dpmKfe6JT8t5FsMBWbSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2etu-0005dB-40; Tue, 27 Aug 2019 17:04:58 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2etm-0005Xn-C3
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 17:04:51 +0000
Received: by mail-oi1-f193.google.com with SMTP id t24so15502353oij.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 10:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MOuzbil80+G9gYzAiopiCVDBooAH3B/XNeV0uY3F0I8=;
 b=R9GE+1LEzq3CwWoh8o3aINsAgtRtGCGDuzB+++MZUjsDbad1eg/kVNrTUVkqfL1oZJ
 L4LeMSCTjt6VxLvVuguxpp0xyYxMlqIYFuWL8g0mC8TE8Ji2OjUTPSSa6LLKOILOWZO9
 l5wySpQHd22K7dFPGx5AAp+D3we/iT+wEeSn9U5rHGESDggOfBfoVl24Rz+iijm9wBns
 Y7arqwp20Jzkuu844suU7iFlgzZYy9sSGbdUo8yTfz30ia6LFWT94xpoI4cB7NiribbE
 8zIdPvTUlLpF+y+RKlrBD/WgKuw8TYeWYMKSJj+0WDpF69LYlM8JOVagEmr8Uim2otwD
 BGYg==
X-Gm-Message-State: APjAAAWi7+Ur9fhBzzLLLExurFEz4gtyPbEJYXaEIJ4Ibgu/o1tqeeYE
 Z8yccNnHMOwA3bHq3ZA0bA==
X-Google-Smtp-Source: APXvYqxQM/gESOiP+h1wYgpZhd53hKVRGNNezbbV85qz8HiBzlfPBARHfluEK6KErDc/DhbhvNrKoQ==
X-Received: by 2002:a54:4414:: with SMTP id k20mr1968312oiw.120.1566925489593; 
 Tue, 27 Aug 2019 10:04:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r3sm5366680otq.10.2019.08.27.10.04.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 10:04:48 -0700 (PDT)
Date: Tue, 27 Aug 2019 12:04:48 -0500
From: Rob Herring <robh@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH V4 01/11] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Message-ID: <20190827170448.GA15803@bogus>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-2-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566299605-15641-2-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_100450_414778_5B6850B1 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 sboyd@kernel.org, mturquette@baylibre.com, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019 07:13:15 -0400, Dong Aisheng wrote:
> There's a few limitations on the original one cell clock binding
> (#clock-cells = <1>) that we have to define some SW clock IDs for device
> tree to reference. This may cause troubles if we want to use common
> clock IDs for multi platforms support when the clock of those platforms
> are mostly the same.
> e.g. Current clock IDs name are defined with SS prefix.
> 
> However the device may reside in different SS across CPUs, that means the
> SS prefix may not valid anymore for a new SoC. Furthermore, the device
> availability of those clocks may also vary a bit.
> 
> For such situation, we want to eliminate the using of SW Clock IDs and
> change to use a more close to HW one instead.
> For SCU clocks usage, only two params required: Resource id + Clock Type.
> Both parameters are platform independent. So we could use two cells binding
> to pass those parameters,
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <kernel@pengutronix.de>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> ChangeLog:
> v3->v4:
>  * add some comments for various clock types
> v2->v3:
>  * Changed to two cells binding and register all clocks in driver
>    instead of parse from device tree.
> v1->v2:
>  * changed to one cell binding inspired by arm,scpi.txt
>    Documentation/devicetree/bindings/arm/arm,scpi.txt
>    Resource ID is encoded in 'reg' property.
>    Clock type is encoded in generic clock-indices property.
>    Then we don't have to search all the DT nodes to fetch
>    those two value to construct clocks which is relatively
>    low efficiency.
>  * Add required power-domain property as well.
> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 12 ++++++-----
>  include/dt-bindings/firmware/imx/rsrc.h            | 23 ++++++++++++++++++++++
>  2 files changed, 30 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
