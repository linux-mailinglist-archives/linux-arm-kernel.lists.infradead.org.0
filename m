Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F25B5508
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 20:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQPB14BJjPq+7q3A4Liu1mVMYmnxOmFNbXSA1lOfGHY=; b=QF6UKn++1keGKF
	tAeWEX4HeoSjORbBcfBROveM8a7zGtUg2xsEM6oNPn32CxE8iYOQJYum/maFS4H3olVS1Eyy/VbWG
	jmtnhhbJWEIaCMHIxIaDfIZAHy4Gs1zES21hE9czmxas0Dll6dCdRUv3IowD5d1L6J7m2br/qf5Zk
	PNetN/w2hV53bqYeg4Zmulx7NVO/WfHJzcUAE3M2+gj3liv99QmwH9u7TZurlXqS44ViYLc4ATZMm
	gVsNFn79wFPAyVpAl9A1KambW2QxyLwifFNrm6m+gNLOXRFjns7GwSeJl5HIVN+gHObZTwkO2PmOF
	UOTiQbS1vTRjnTBrvvIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHyu-00076f-As; Tue, 17 Sep 2019 18:13:40 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHye-00075r-W0
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 18:13:27 +0000
Received: by mail-ot1-f67.google.com with SMTP id e11so2761580otl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 11:13:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KQ6OBeDuode2twYSlA9ipYN3w4W7GeO3ocNtg3ta1d0=;
 b=tYpA2LlK6BXGUTqckfRpO+hwmItVbfzyMq4mlEQQ+RejteSKtB9C9DOOy9CicCMQRO
 Xy/arMVMp/6Nir17j+lgO7aj16iLNSWtycpSMZK8POrqKgBm+QgOgV6ubvRUHOcOi84C
 myHXGrCnJOXm8EnBUh/RcOs+nh5HD919NHoh5V4V1Ng9Wl3ASVla35ld0N6Ta7i2fMtP
 3Z9JQKD7JiaIlMs/gF+mR+3iwmIilV2+JH4oCvjQ1YTsLM5fm55KUE5jewMNmvOTfqo2
 7WfFGhYHIATJ9rNE97UCiHgqg/NXYL6yY1ad/QC6Bvubnqp2fvkW7QJcTgalCNnm4BEE
 4XZA==
X-Gm-Message-State: APjAAAWTmKT3MLmG9Z6I6JdYRcqm3viugeRyXCnm3qEP83GjMXBPWTib
 5FOH7pAJRHxNbgJl6ZM2Kg==
X-Google-Smtp-Source: APXvYqzapDf3fokSpvCVuLAz5B7sSKanwGbCWsfa7ySh7AxQQjSWEWwVf940e/gnVHbg7SCtd6pd/g==
X-Received: by 2002:a9d:3f26:: with SMTP id m35mr168799otc.66.1568744004009;
 Tue, 17 Sep 2019 11:13:24 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e18sm982788oib.57.2019.09.17.11.13.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 11:13:22 -0700 (PDT)
Date: Tue, 17 Sep 2019 13:13:22 -0500
From: Rob Herring <robh@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v4 2/6] dt-bindings: samsung: Update the CHIP ID binding
 documentation
Message-ID: <20190917181322.GA683@bogus>
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123637eucas1p26d2051f9bdd1bdf4510f1908ea98f641@eucas1p2.samsung.com>
 <20190910123618.27985-3-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910123618.27985-3-s.nawrocki@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_111326_486850_271BD90A 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Sep 2019 14:36:14 +0200, Sylwester Nawrocki wrote:
> This patch adds documentation of a new optional "samsung,asv-bin"
> property in the chipid device node and documents requirement of
> "syscon" compatible string.  These additions are needed to support
> Exynos ASV (Adaptive Supply Voltage) feature.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v3:
>  - none
> 
> Changes since v2:
>  - corrected patch summary line prefix, the patch moved in the
>    sequence
> 
> Changes since v1 (RFC):
>  - new patch
> ---
>  .../devicetree/bindings/arm/samsung/exynos-chipid.txt  | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
