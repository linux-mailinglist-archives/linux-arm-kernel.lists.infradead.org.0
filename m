Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DA4D42CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5WOkuqeVm3/n/of33yDZwJWSUjZj8Qnr+A3ZjH8B6k=; b=qXgkhYS7xuJxpo
	M1SnGOXEFNNpfd9Q/BlSTsYfqgcqR+w9L7fFRvD3u++VTIc4HftE4+X5d32vdiea5p/E5hZDn1zW/
	t3t24f5pGy01bsFajH0/tjkalTQEI3s7K+tfkCw8/Fi0Lb5odLAcxzZ0iene0Wmbbl3dlMTXhEwVd
	6+2rvl+41mPPQoqUAbAkhtNlfLNQF8kEemisCleyL2zLT8lZb8rsFUK2GXIN4E8qxLg5TUlhbFvnE
	5+IlLWWdP4y8K9zbalBMR+BsoBeh+3m/aVEGiEl5f9/wPaGJ/uRhS5T3RQeAy4t7+eyJZpsa2wkpD
	H70AhsgJoL5XiAjNr/lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvsJ-0007D2-IK; Fri, 11 Oct 2019 14:26:35 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvs7-0007CU-Sf
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:26:25 +0000
Received: by mail-ot1-f66.google.com with SMTP id o44so8089092ota.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 07:26:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0sXP7aU6qKZTyZKXCQXYeDcKFa2nychpYgtG2BtNMcE=;
 b=nwkWx/odBUItS5Uvi0m3rbhDrR7CcY4jylk1ZnCuyxjXbBq1NGyOm1IcmMSXLoGflC
 YuNPechow9W0szkaxtjNYQVvWu354R87ahI/TnRSNLrlC6gP+lKAjp5zuxomS8wzk8f9
 xYIOhXEcgo1z7rggCTm8k3KLLiylUavYuWPugEdG5M5rPKlxIgHagV0ns+a5KRBidWE1
 +24bXm6BscFvbeiWCYKEW9yrEz3oIC/ITC8f+G8PjepvUUExHCe74e59J5YBgl7NnBY5
 9QCz+vZ/oeegSGqO/uTfq8Ikns8V6fR8DEceUnFnrbSVq5Zai0t1tXxpaYnwbu1xXe3v
 BO6A==
X-Gm-Message-State: APjAAAWBjXLpiQwMNPMzMa6Y9T9zUdhIRlBTo4Z2eWbuHr0AP1bAFsxb
 cTj6oTYEGC8q0UAAqRZ4jA==
X-Google-Smtp-Source: APXvYqzgN/fv6O0f3DUaNGIVyCz4N6l22G8C1+jX2gKw2dQJ11I1w+uXFqvbkbZLVrJUjhEeDCwV5w==
X-Received: by 2002:a05:6830:1619:: with SMTP id
 g25mr12671280otr.195.1570803982282; 
 Fri, 11 Oct 2019 07:26:22 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y18sm2621979oto.2.2019.10.11.07.26.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 07:26:21 -0700 (PDT)
Date: Fri, 11 Oct 2019 09:26:20 -0500
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v3 03/11] dt-bindings: crypto: Add DT bindings
 documentation for sun8i-ce Crypto Engine
Message-ID: <20191011142620.GA11285@bogus>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
 <20191010182328.15826-4-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010182328.15826-4-clabbe.montjoie@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_072623_925917_B7F987AD 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk, mripard@kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 will@kernel.org, davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 20:23:20 +0200, Corentin Labbe wrote:
> This patch adds documentation for Device-Tree bindings for the
> Crypto Engine cryptographic accelerator driver.
> 
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  .../bindings/crypto/allwinner,sun8i-ce.yaml   | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
