Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E138FB80C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 20:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+5HGSNfqn34R/XA2mHkpbkhK7X0W5t6pbH1/SUnvQk=; b=dAsOSq1LyfY2Mr
	ukcgFALhJeeFfdYZuCAH0uNBH6FBAt6VRbs8BDIynuhYxwZx5gkTxCIWaKIFyaVOzK09PtmiaiY/B
	YnZLI9FvPUUYk4y3xMgYBfqkpROWqKLSs99vepgQaVRTO+kbSAesdmAQKoRRA90Zk9S4WHWEaNKGj
	QV3YQ2hdgFwiQeXG+BK8efmDSx3kxbH+kJps3idgQBTtXZJSEvLE0dF/o8Qz3LsZBGmQCI1GU6bSz
	A0cT/+BLvxj4rH7g2N574QNedHiDj2pFNlzzpI5PEozvlr8ph+KgPUzzi/MFP8keuvr8FPRQHkgUf
	+hNokOjWon2UOveJJxag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB18k-00043l-Vu; Thu, 19 Sep 2019 18:26:51 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB13D-00026m-US
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 18:21:45 +0000
Received: by mail-wr1-f68.google.com with SMTP id b9so4177215wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 11:21:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Df51XRG41U9MXsXqMNu4Zu0vZRfW+tQcfvee+m+fQ2U=;
 b=NFI69HPQr71u0BVj63MQlpArQqAI4hcELWkHXs8uUF5i2+/pSIJSR0EyiBW50+Fc9O
 v6ASGhMPqyzmuvzFTx32ZUOR9y4BfGeYMUJklNBRJ0slqv4vJ+SG0xeCcvFuBLvq4UhH
 9a6V6rY3zIdawthw0DBkXS7+L+HhLqz8O3dVS0RRLylnTazowy/0kE8eiSbgIt2nDon1
 4Y0D5v2LdLiEi+EKZ5dNidHAiAqs2YTnPabYhMTVhRejkubMgncRxk++J3G5NxSr0XVW
 HN625NvTl7V/pckl4mplyGPHHRFzX629eulEdzn0mGMiJLnvBh/GjOCeHhqtHg31tZOt
 iqKA==
X-Gm-Message-State: APjAAAWPGfsOXSY3+XecPPlla9zr+iBYX6zE0qH4fwAWiFzr4qmAoti2
 uF85aWpJAUYnmrZeakGRbe8=
X-Google-Smtp-Source: APXvYqxz396R6UXhqfzT1ChMZIsoSE5XAvvgM81aXd18Fyk201ZNYvViT04Q0nxl7S3A1oFmf2GJOA==
X-Received: by 2002:a05:6000:14b:: with SMTP id
 r11mr8185360wrx.58.1568917262045; 
 Thu, 19 Sep 2019 11:21:02 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id o14sm11296791wrw.11.2019.09.19.11.21.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 11:21:01 -0700 (PDT)
Date: Thu, 19 Sep 2019 20:20:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: ddr: Add bindings for Samsung LPDDR3
 memories
Message-ID: <20190919182058.GA22656@pi3>
References: <20190919092641.4407-1-l.luba@partner.samsung.com>
 <CGME20190919092653eucas1p21a1caa00589649fbc972bc7b84fe0d89@eucas1p2.samsung.com>
 <20190919092641.4407-3-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919092641.4407-3-l.luba@partner.samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_112123_300507_52FA2546 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, dan.carpenter@oracle.com,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 11:26:41AM +0200, Lukasz Luba wrote:
> Add compatible for Samsung k3qf2f20db LPDDR3 memory bindings.
> Suggested to based on at25.txt compatible section.
> Introduce minor fixes in the old documentation.
> 
> Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  Documentation/devicetree/bindings/ddr/lpddr3.txt | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
