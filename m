Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9EF1104DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 20:14:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZBhMNfnyGgXg3HPMwKJTW+PDUVwZZ/1lDV1dcGKUMA=; b=YqFjuNBUCvzC8M
	1U2R3c4LTCiFvOra93NL0VkDo1cVOcJBvUlupnrX0P2XXQtDdEdFKG6h5rMPavB6n85tU50NxXOTC
	ZB6JnPCGqAPkdpxZaAceX2QOjd6IbCNUCv1CjeTzK2ooSGuT1FbtrTUpwGr3giUKJQz+IrT4rFL+o
	W02A6ECPCRHctffS3z/Rt+QZylAToGqXKbSgz3joY7zACzgHC2gwLFhN5zG5QgAT/t7+u5nXxftPt
	QFLKiYnfcRLYnHFWlm929bWrem6uwJqeZC5QRkq3eMDNuIajzPEdvpBLkMafevgZMqdDnx9bVnTLs
	cTdaz5krd/qt5HWzirHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDdL-0003XT-ON; Tue, 03 Dec 2019 19:14:51 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDd9-0003Ws-7w
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 19:14:40 +0000
Received: by mail-oi1-f194.google.com with SMTP id x195so4393904oix.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 11:14:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gRLlFC9D1u1hwI1d/EbEjZ94RjJCTsPp84ZAxR2T34c=;
 b=Laba1D3WIjpx9cimCpx8IJyKlbhmfwB+95FRQzotMEu2VHiGdmuDXVgHeZx1/frIbr
 M9r94AQnH6dOOayqT/Tobs8a+9iQuWna59DkWerH7lFlyWsNs7SIpfY8lt4WQ82TA2DH
 7PTjcTzKufQ73/QNoZCKE16jnmjMO3PubdxXjizRWiQQpE6hOlj9mpwKFC1fanluwRSg
 7DTa3UC4nq1kAWhfePNpw/Mp15ZafsRD+Kxum3BLXuC9Szna4dtJXtYFdSqQb5YyAovH
 Z+Oh7l5XnnMZBBLYSb1RrXluHuTTPyfVGvafQ63jeVnMbEdcWLYgvxFhlPGmo/biSq0a
 J7iA==
X-Gm-Message-State: APjAAAWEHks8rIDCuhcfbMKugWUuQ1dX9qf7WbmIaC9zE5iUUMkj+CuU
 lmLZrZr4yOx5jcVNiRhhYw==
X-Google-Smtp-Source: APXvYqwfW6cNdzLLtGnRM6Eeh4eI3J0OXPCG+lnr/0NSOIKOUhB/2E6cGltU8AStJzERHBVHvLKFWQ==
X-Received: by 2002:aca:b2c5:: with SMTP id b188mr1686191oif.55.1575400477922; 
 Tue, 03 Dec 2019 11:14:37 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w72sm1413333oie.49.2019.12.03.11.14.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 11:14:37 -0800 (PST)
Date: Tue, 3 Dec 2019 13:14:36 -0600
From: Rob Herring <robh@kernel.org>
To: Jordan Crouse <jcrouse@codeaurora.org>
Subject: Re: [PATCH v2 1/8] dt-bindings: arm-smmu: Add Adreno GPU variant
Message-ID: <20191203191436.GA11606@bogus>
References: <1574465484-7115-1-git-send-email-jcrouse@codeaurora.org>
 <0101016e95751ea5-da4da251-ddba-4017-9258-b2cfd4e06f7f-000000@us-west-2.amazonses.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0101016e95751ea5-da4da251-ddba-4017-9258-b2cfd4e06f7f-000000@us-west-2.amazonses.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_111439_286586_F95C498B 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
 robin.murphy@arm.com, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-msm@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 11:31:51PM +0000, Jordan Crouse wrote:
> Add a compatible string to identify SMMUs that are attached
> to Adreno GPU devices that wish to support split pagetables.
> 
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> ---
> 
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
