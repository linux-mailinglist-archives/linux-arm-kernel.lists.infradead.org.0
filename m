Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03E41F9D17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VO/86MVDu4CoqQ+nIxMRBcpDO2h4hY/gXXNRh2Hmn6w=; b=EK7A5d08MoDmFP
	QhoqRPjhXDgPD1c9iXmao4/czMod+d4+DgSx6wVLwQYH8S0Z4KNzSe90vbUZWVHwNFUj00k+6AN+z
	q1HrGqLKZVBie7HKYoDeySq/5LUt7+8vVUXoSg9SUhX5AWtFgJsgpzrRJT14m41b8r3vP9GKO476l
	nW+MHMpbtnIqG1WtD7BNLpSAH2Mf64Pl0q2+pvl+YDrG7DYwaQGnOS8teuWOMLHN7Us7myDxJQrCI
	2D9zmMrFoASF1BBJMG4ptiZHKugM9o0JOf12F4OmaqmvOpjTsywwlOOz1qrscCCxRW5g0xub2OjLm
	wKRGKQ9X+VDVJVLE0f9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrqp-0004my-20; Mon, 15 Jun 2020 16:20:47 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrqf-0004mV-4z
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:20:38 +0000
Received: by mail-io1-f68.google.com with SMTP id q8so18542033iow.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 09:20:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gxWgc+Codkhf0VRTT86CbanEtJCVNSbZuWqCjWmeC4k=;
 b=LU7mjNMRWZDG6bkMzKeWedQhzf0ct3U10SdkIPeW600WuokdOlO0OUhvdDRldjgfh+
 6GlXq6Dn61XM0veNFN3mHbaCSwGVq09Dvm9hDDmsJrz7nR4qTbeK4cZHACE9rgBNZfXQ
 uKolmP3WkxUVilB2P0A191zrW0Uci45d7UluCa+itbRpcUW/fIAlOm+BQyMNJv9UE9B6
 uwFtXSBqLVIGVgwQQu0XBD7sIfv3j0lMIQu2aGZuMjyIzLS92DfNstYUHVR0alMwaYtq
 1pDcclgTcgG8+thkVAmXh5epS0UX0HZmFk9SEwXrVsEBGUTSPAJm0/x4A4uO+O5vOF+0
 qieg==
X-Gm-Message-State: AOAM532n0imsKpkjcHE7UQQE860QOUzVfbbuDesGsOh/JA9AVwXBNlS4
 I3zA/dcCDBAnpqe9NBPvbQ==
X-Google-Smtp-Source: ABdhPJyia2YjUz7sBsHEEWOJHc1dA8yDt4856foCcXRteTZJaWf6MJkxsoQZ6sa16kBdtpwlIRQRZg==
X-Received: by 2002:a05:6602:34f:: with SMTP id
 w15mr27863770iou.2.1592238034919; 
 Mon, 15 Jun 2020 09:20:34 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id t63sm8493653ill.54.2020.06.15.09.20.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 09:20:34 -0700 (PDT)
Received: (nullmailer pid 1885290 invoked by uid 1000);
 Mon, 15 Jun 2020 16:20:33 -0000
Date: Mon, 15 Jun 2020 10:20:33 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] dt-bindings: rtc: Convert imxdi rtc to json-schema
Message-ID: <20200615162033.GA1885237@bogus>
References: <1591234555-15187-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591234555-15187-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_092037_192865_63AB2EC1 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: stigge@antcom.de, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 04 Jun 2020 09:35:55 +0800, Anson Huang wrote:
> Convert the i.MXDI RTC binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add "additionalProperties: false".
> ---
>  .../devicetree/bindings/rtc/imxdi-rtc.txt          | 20 ----------
>  .../devicetree/bindings/rtc/imxdi-rtc.yaml         | 44 ++++++++++++++++++++++
>  2 files changed, 44 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/imxdi-rtc.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/imxdi-rtc.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
