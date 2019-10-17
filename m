Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30587DB5CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 20:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fab4Vi1m5vsOM7a8I09mg/oBIk3oJ8c6mLPAw+rmQKg=; b=qioLpay0Pmlla2
	XE9zs8Pw97NzyqZm/6V7pq09q6FUPkUThrMrVCfrlIpeFdNb9bMq6G1jCKxG24Rrnz1wgjZ7XF8XU
	0xWYKmweBodHszk7dekuwXOm6CUTy37R8o2ucDnVXa51jWN+WWea6kcprI/qUvSM6Vm9399DXTpWy
	Fv+WvY9Db7JOtlxm8U8v6h7gjwH4JKLGJdxMrrZaCf9J9gupxlcG/oA7kOCyaMcwUdxL0hI3kgB+Z
	Xgy32q8+MdSH6B3xA/LHCtVkMdWM5OykR8bUv/6Xtdpa1h+iPOTF97T1UsqyyvTkeYuBhWHrawywE
	StK/+IRwknpuTRnLbJ2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLANh-0005b5-PW; Thu, 17 Oct 2019 18:20:13 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLANO-0005a0-In
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 18:19:55 +0000
Received: by mail-oi1-f193.google.com with SMTP id a15so3023509oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 11:19:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zNcXSWPABIjDXrH4hrGPpnuCzAwqGYL95ldA2v+tK9k=;
 b=U5MEycbO4KlDzjHRkT9PTReNlQ4Wr5YqGpwnkLTX7tHDmhrjIdAH7whGl9JcYpelQa
 AUU2MbqFs2Cze37p8fZlvKSlAYm8JVFHdiKyEWNd0redH5EKIV5Fg+Iu0Uihuz6/SvIl
 tIAAOJS1SLngiIhhy242nocKw+gqczt7BNJmFMrclBNR1GtyVSSXi5v61KFdHqTcoQWe
 QQT+TW7fTBjPEkKE4EZQVd5teqFWcY0OFkk+0tqhyF46XD9P/hobQ5XUPYdCqR/np3TS
 hqx1V6W8v6orjZ62nZqk9zeqZhJRMwXVVqKPCiP+WOcWwKkKcNYqZUM5OJU+wVpXQdaJ
 DQZA==
X-Gm-Message-State: APjAAAXFaNqtZ6C3mblnRoABdNvaal9ldtXUSJv5Yv/6N7BmM/rX0YId
 2fpTZRcTilov84WQDlcpWA==
X-Google-Smtp-Source: APXvYqydJLeSRq37GvjaH17XR/hx71gYtkOaY+q7KmhiTJg1o1MDriVXA4tVPzT17sIi/ahclXwxeg==
X-Received: by 2002:aca:dcd6:: with SMTP id t205mr4447363oig.128.1571336392417; 
 Thu, 17 Oct 2019 11:19:52 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e18sm694901oib.57.2019.10.17.11.19.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 11:19:51 -0700 (PDT)
Date: Thu, 17 Oct 2019 13:19:51 -0500
From: Rob Herring <robh@kernel.org>
To: Manish Narani <manish.narani@xilinx.com>
Subject: Re: [PATCH v3 2/8] dt-bindings: mmc: arasan: Update Documentation
 for the input clock
Message-ID: <20191017181951.GA6853@bogus>
References: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
 <1571293310-92563-3-git-send-email-manish.narani@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571293310-92563-3-git-send-email-manish.narani@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_111954_627136_9559F3BB 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com, michal.simek@xilinx.com, robh+dt@kernel.org,
 mdf@kernel.org, linux-arm-kernel@lists.infradead.org, jolly.shah@xilinx.com,
 manish.narani@xilinx.com, linux-kernel@vger.kernel.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019 11:51:44 +0530, Manish Narani wrote:
> Add documentation for an optional input clock which is essentially used
> in sampling the input data coming from the card.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
