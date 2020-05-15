Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C10A1D43F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 05:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=398255GgNFCC/vklQNq3whRMeMyZkEKgSYHYIF5lV9U=; b=mgDTQ1mZ7p1frh
	dwDiFEokPcrn4qsOREa+NcxZNjyCL4pDHpurjxOrCwbaEn/d1GNIm25m72XQfj0hIEDeeElRWduEW
	pMQ5qafdjrXlFBIOo57g15Myx1+J4w4d/KBf71mGPaO0a5SKbktRZsZNiybJ7UvELmBmw5hf/wGCX
	m+JW0mvuQTdVHBF50IUeZXOBkFGxWC3udU4AwcBw1ICd538wnQKf957k//HFmwoGQsp1Vl06T3613
	iQYfmPQ3v0cEg1ySf+vjk2KuOQM9AUG9uwT/0rn6Cwlqt+XXk17apLUZtwcQW+Yl1eP6rwm0RkVIn
	02mnXiZ5SZ5++Ns11puQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQph-0002YD-2Q; Fri, 15 May 2020 03:16:21 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQpZ-0002Xg-HZ
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 03:16:16 +0000
Received: by mail-ot1-f67.google.com with SMTP id k110so837399otc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 20:16:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QgDBRSIfDKSffvU3Ly32G5jTLXz9MN2w5S616tVyMLU=;
 b=lIGdlu2RuE32BwjlvCRMFXo7tC2j8eA4nfduOGCoMaXOV3U7W+7mDsrerpRJzZRnRw
 Lyz+yoRWfyyVaEdeQ+IJjFkkupMl5gxw9PhD3oWFUzswXQxHejTDTmITdYkSq4hFGNMB
 GzDa9DwvYKc5WmZOtn3ukhRLEIOOVBRAR6caCMrFVMB3B6h4z8rcFLjqoXtMtD9b/+v6
 xKlFEYy/SKix4KFjUUQWFYfeUHvadtBIOV+3wPAzabR1ybrPIvKez7qIB9qgMPaBEwMj
 ZNTS/tK/hxGsFJKvYUEglVovZYEVXy65Ye4b3SYzgXBBdrbBEKW9J3HAWg07eFdkZf7N
 C5BA==
X-Gm-Message-State: AOAM531iRh4xT7z+xg4axb+aQCk4DI8q6rEJFwv2Dk8zB2jXaQJiTJ0C
 eJ06p0itj96PX6Mim3msyQ==
X-Google-Smtp-Source: ABdhPJx+6ePI0Wlmyprnwj0WCBtiFng+Cdgj8nqFHTl/IpFzGKFRD3I6mGeUX6CRzZ09lypHC5fZTg==
X-Received: by 2002:a05:6830:1353:: with SMTP id
 r19mr825668otq.248.1589512571587; 
 Thu, 14 May 2020 20:16:11 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z75sm307134oia.22.2020.05.14.20.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 20:16:10 -0700 (PDT)
Received: (nullmailer pid 2805 invoked by uid 1000);
 Fri, 15 May 2020 03:16:10 -0000
Date: Thu, 14 May 2020 22:16:10 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 01/20] dt-bindings: arm: gic: Allow combining arm,
 gic-400 compatible strings
Message-ID: <20200515031610.GA2750@bogus>
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-2-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513103016.130417-2-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_201613_582272_8DC7F58D 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Marc Zyngier <maz@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 11:29:57 +0100, Andre Przywara wrote:
> The arm,gic-400 compatible is probably the best matching string for the
> GIC in most modern SoCs, but was only introduced later into the kernel.
> For historic reasons and to keep compatibility, some SoC DTs were thus
> using a combination of this name and one of the older strings, which
> currently the binding denies.
> 
> Add a stanza to the DT binding to allow "arm,gic-400", followed by
> either "arm,cortex-a15-gic" or "arm,cortex-a7-gic". This fixes binding
> compliance for quite some SoC .dtsi files in the kernel tree.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/interrupt-controller/arm,gic.yaml   | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
