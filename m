Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB903145953
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 17:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5BcvB+DKPr2M9oSS+Qei1b4HANV0IJj/vQ0lTnamUk=; b=cKxZOv84sVn/wa
	tAgblZpxW1hVL220qpOfSl0tDGJXWKjtyb+VyOotX/CelBIidk+bD9FpAT6UFYkbkIkpqKG5wJPLk
	5CJuOqtAQpBUNpe/3h4LJ7SQeW1N4sFl9zdhu/gYE0WNk6ig5OPvWI19kTZloyG6XIgnaCmCNTwpT
	mTWzhMCdWHNFA6dfP2mUszjMkLUiC4evUJOWmyWWnDgaZBGbrgF5QVcc1WKCk9wDBUCdNd7jbtRk8
	Wu2R6LLwwpWMPnyf6IC1oTkDRdEomq/rFOQO2+Aa07rr5/b92swv0Qi0C6iGdxTkOSM03U3G2qzAx
	WQS+N4qXGJMJdLPhEdBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuIVw-0006NH-PQ; Wed, 22 Jan 2020 16:05:56 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIVm-0006MT-5K; Wed, 22 Jan 2020 16:05:47 +0000
Received: by mail-oi1-f195.google.com with SMTP id k4so6570425oik.2;
 Wed, 22 Jan 2020 08:05:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OOZfg0AFYGJWh0pCwLs+lbCJjankCvcKcEp7OWZe5xk=;
 b=MGEEAKrfbJu5UtXGOP1y10GCv0NFZkLvbr72FtiPtxM/8pYKzyBN4Ohr1m/TNYAKpI
 op3IUqPE9csh/ugcuxBiPZWLqiKH6gP/KNo6gSKNQHC9BTy9/NXQvtLKjXRCdFc/1PJF
 ESAtbxlun5EKIWxov9nhX56PBTU/arG3O1KZS0oETf4F984XfXBInjSvYq6Q65mTBEU+
 2MhiniBCa53S2oToUEQZF97Z9aMhIvI2mUJT7aekAwtaWZ9H4zp3CAbbJWMCgVKXKAxy
 GY67KUIajUjXbO8kyDqjzhbbSLeyuTTBuEfi8qzK6+7BLcOFyGzscLtQXjU2BA6XQtg+
 +BxA==
X-Gm-Message-State: APjAAAXl5oorpEbUh5l47qOA3cae0Z5N1GKHiNoWMAjRMuoxQp7Zelj1
 sWI1weFKFYO7FMkjcwyqsA==
X-Google-Smtp-Source: APXvYqzwaLmXI7rjVv06eVcOu9xvGZYDWVtvuuyQhzjMxlcVTBftNmxWpRN/xuSrOfQOYU/l0SEFMw==
X-Received: by 2002:aca:5490:: with SMTP id i138mr7450180oib.69.1579709145237; 
 Wed, 22 Jan 2020 08:05:45 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n22sm15062248otj.36.2020.01.22.08.05.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 08:05:44 -0800 (PST)
Received: (nullmailer pid 10486 invoked by uid 1000);
 Wed, 22 Jan 2020 16:05:43 -0000
Date: Wed, 22 Jan 2020 10:05:43 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: mmc: convert rockchip dw-mshc
 bindings to yaml
Message-ID: <20200122160543.GA10427@bogus>
References: <20200116152230.29831-1-jbx6244@gmail.com>
 <20200116152230.29831-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116152230.29831-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_080546_200984_0094C2B3 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 heiko@sntech.de, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Jan 2020 16:22:29 +0100, Johan Jonker wrote:
> Current dts files with 'dwmmc' nodes are manually verified.
> In order to automate this process rockchip-dw-mshc.txt
> has to be converted to yaml. In the new setup
> rockchip-dw-mshc.yaml will inherit properties from
> mmc-controller.yaml and synopsys-dw-mshc-common.yaml.
> 'dwmmc' will no longer be a valid name for a node and
> should be changed to 'mmc'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.txt   |  49 --------
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml  | 123 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  3 files changed, 124 insertions(+), 49 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
