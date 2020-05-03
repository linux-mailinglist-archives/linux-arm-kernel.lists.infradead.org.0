Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4897F1C2DD0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUbcS4A0a53iyahb7bZ29pX+7GlpEEiASyZ0Tco8WYs=; b=J/wSNwUneSTQvV
	oU8RzvkgNfsf7lZypFTeH56NtcNrEvWsy26ywGpIbiQBbkiIYYePVOaHxNGiEy2zs6KsV0t2qqqIP
	UeF+RZud/K5DwJT58WpI5RqrlMsS8YiPx8o+M3WDc9cvJA6tQ2E+4BXUf2o5MNOEkDFt9DEw8TD5l
	cgmU9qiQUwT1cm/Jsyjlj8OddWDOY2Bg1Udd+00t1YzlbvYOr6X2dBjMjf94ptSopIet7dSP+FG+B
	xfGkExHtCUmse2FXJErkChug91h/SgYBvXGL244oqMnWfDFC9SLPnnvpyEQsAQ2QmRksUADltcs2q
	6Gm+/H4M9/9F2lrIjkOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVH0u-0000lY-4T; Sun, 03 May 2020 15:58:44 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGyh-0007Fv-KY
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:56:29 +0000
Received: by mail-oi1-f194.google.com with SMTP id a2so4429489oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 08:56:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PLOLvZE+s39Hp3IKRQqs7UuDfEqpShYvBhp9hM9EmJI=;
 b=NmhRARVIsvSl/KbZ6oK+mHZLPgs+dnRAVXe79KWAQBbvfHar4b+aiysrpgDiOVslnP
 JMVI05K36FPrO5Xk2J+EyUg/TO++meGS3JJgyn1o5EiQmXA9b2owZ1zN0x0JeuhFKyB2
 fP1+DmQQlz+45xr8oloY9Ic0QKTmdFILf9VgZIdIZVuH/EcifoE9NyY7IjAMHC2Zu/bc
 3yJdQ0SEqg56LSgN6Ia8qXjKH2eL9CK768laOo3s/jJJY1x3Bq2/7j/dsizP9ZK5L7nB
 sqSjuNZVc64yZCoYaqTHzCcb+xx+gJ7cZXQT6qADNIsu6FWk41CC1/exgQFxOilycLRP
 veIA==
X-Gm-Message-State: AGi0Pub+c1mtKCQmQwCdtBzBLUgzRCDXoBvcZzqz4gEqHzmkRgmr9+uQ
 0CbYVR2p085iqQbS45fv0Q==
X-Google-Smtp-Source: APiQypLIuHNhlfXyGR1tRhlXU/FmUWgupHa1Z2ZRPxSlSoRpqcq6frZKcvRA/5O/V70e+xNobWFmKA==
X-Received: by 2002:aca:c546:: with SMTP id v67mr6016397oif.84.1588521386842; 
 Sun, 03 May 2020 08:56:26 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g10sm2518523oou.31.2020.05.03.08.56.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 08:56:26 -0700 (PDT)
Received: (nullmailer pid 22903 invoked by uid 1000);
 Sun, 03 May 2020 15:56:25 -0000
Date: Sun, 3 May 2020 10:56:25 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 8/8] dt-bindings: arm: Add Calxeda system registers
 json-schema binding
Message-ID: <20200503155625.GA22844@bogus>
References: <20200430211054.30466-1-andre.przywara@arm.com>
 <20200430211054.30466-9-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430211054.30466-9-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085627_782934_ABBAA363 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 22:10:54 +0100, Andre Przywara wrote:
> The Calxeda system registers are a collection of MMIO register
> controlling several more general aspects of the SoC.
> Beside for some power management tasks this node is also somewhat
> abused as the container for the clock nodes.
> 
> Add a binding in DT schema format using json-schema.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/arm/calxeda/hb-sregs.yaml        | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
