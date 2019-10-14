Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA7BD683F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 19:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SLH0FYAzZQnmfvzIAe2RhviUpJvo21Qb856yvyNtN8=; b=IoX0WwMXH88OWv
	Win5leHf99rC0Fy68FGNQcdilK5kRSRqmCMGJPZimQ7wkVy5io7eZADF2qphN6b6Mse8c/gd1vPLu
	x7dv4gb0/dRdV76gHD0hmy7tSMXCCS7DRF7q99SYfT4kw2HOndWNYuA7MTH+l88N3xfU91hxRch3a
	MC8W/WlwUkcN826h9+rfAYOoh4Q+RtGMay6MyXp3Cf9/Nth1VJDX27WuHpm3DkghXA1jiCrTGs4k8
	60SCnNOgBRp/a8owPIMsl/5eb+/vs5dza0ZNv1w5jWzRe2k4owr5ShX+74mSjlq6OcEzoxBHQbQM3
	a4j1jgU3QDJxg8zdP6vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK401-0002GQ-Pb; Mon, 14 Oct 2019 17:19:13 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK3zr-0002FV-8U
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 17:19:04 +0000
Received: by mail-ot1-f66.google.com with SMTP id m19so14475392otp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 10:19:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Oawtn+ZtULQjiLVim+vckZa5eaPMWsScI+Ob1030FAs=;
 b=hLxSJllvwwufYgBT8LGsX4R5wkRLHk7jElcO8V4Gbc1eiBhvgB5vxuEZxRB6E9TFeo
 8L5mBLsyNjKENvwYHyzV2BSLZsBJhjdLxPUDoIG4HRcTU1hspWjSVgixUMD9kZoTEd5F
 dKAGIxU/BtGjBzV17nSFL2cEVLTNWBzzWNmc0UjTrRuQxFfsoAVPYfIEg8dDpiCpLac9
 K7md3ggBCi0isCJso+IET8x73rROC9aaitpE+sCwAF+VG6N28y7Ixw/Cp6bqDRrS4nE8
 rLmAuYfupexrRQ+yAJ/4A6Ls3lbtjlw+uq5oAlyFj3jx3x9CsMqMaH+LHLopIzVk+yoo
 Owcg==
X-Gm-Message-State: APjAAAXL+ZMT9L/u3C+11bqEHH7zuuG6o8DuPC9D/u3EKKs6ijMXbDFi
 AJAeKmLDHkfQ1zLwKnyXKQ==
X-Google-Smtp-Source: APXvYqyPtnEO4APY3yw1HpmCGICMIlAbQFIjbEAo3JeIS6WLqjZNALfT21r09YAL7iS9fjzlr9BLKQ==
X-Received: by 2002:a9d:7993:: with SMTP id h19mr4679414otm.226.1571073542158; 
 Mon, 14 Oct 2019 10:19:02 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c19sm5576940oib.21.2019.10.14.10.19.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 10:19:01 -0700 (PDT)
Date: Mon, 14 Oct 2019 12:19:00 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3] dt-bindings: thermal: Convert stm32 thermal bindings
 to json-schema
Message-ID: <20191014171900.GA8680@bogus>
References: <20191014092200.24179-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014092200.24179-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_101903_299989_2C00F1E8 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 amit.kucheria@verdurent.com, alexandre.torgue@st.com, linux-pm@vger.kernel.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 robh+dt@kernel.org, rui.zhang@intel.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 11:22:00 +0200, Benjamin Gaignard wrote:
> Convert the STM32 thermal binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in v3:
> - use (GPL-2.0-only OR BSD-2-Clause) license
> - fix indentation
> - add additionalProperties: false
> - add #thermal-sensor-cells property 
> 
>  .../bindings/thermal/st,stm32-thermal.yaml         | 79 ++++++++++++++++++++++
>  .../devicetree/bindings/thermal/stm32-thermal.txt  | 61 -----------------
>  2 files changed, 79 insertions(+), 61 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml
>  delete mode 100644 Documentation/devicetree/bindings/thermal/stm32-thermal.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
