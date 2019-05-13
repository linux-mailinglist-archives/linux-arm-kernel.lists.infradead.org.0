Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E41781BBAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLKR9iJ0pITP4D6QP4C245rpyVuxfcEQG+D3IY+gHG0=; b=AAuqvhfFFWiFTb
	s2O1GLPLu18xV3G61QMgLABn9DMujEEhmTZCwjf6txJbCOrBF8aRO+PpfkteOQTnraxQqNuUQ9d9N
	3/+e0KsjkIjvvDjKDnSZzA0OmEhhMN3o5IS5s1nZbUxg1DQLCgQBrOcFpnO3BsesHTJwP+PWxn9Lv
	Ar+1n+oKmiwnS9WtecAIT1lNgrCWDrOG426RqAQ+rc3pMHexF2REOFAs72CceHTSo9Fu2g7TG2ocs
	03XB4zvmqI87xY6Iyv8QDpYt2pYHdK78ZnliBGuvpJbs14R3qczajv2KqIlBfqOs13b6ZB4Euo57k
	RIsa/Kei9d7ZcYjZ3Ftg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEbt-0001ns-5z; Mon, 13 May 2019 17:19:33 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEbm-0001mx-3I
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 17:19:27 +0000
Received: by mail-ot1-f66.google.com with SMTP id g8so12495993otl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 10:19:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gxg55zJpNlVm2nYvWvCM959D+KA++JweeXldKs1l7XI=;
 b=fWXNSn2654pJgKQgcj0xgqwcpgVwjrbvtnVgO+TJfPASDLkJ6SPwF9mxA2FbsKIPDd
 YJ3PORsOjMMPmkWFtvJhIb5c2DwbgyoDwY7fgbQ7A0jUljC6CqwpKI6Fkx39nUem1A/a
 q3r0/SHOA4Nv1PrYQagQmscvmWkZixtQ7BaSjEcERNHyetan9HVxHvRJ8a+wj4xegCFd
 EZ8txwV/vBtyJgXp0SM//xtsO42U4aonYD19vlfVo4gWY0WhkaFdLvbyP+bkI7i+kURi
 BwHdgJHKWFJghd9UwFLnquQXRYjN1HP4C0qitRrFJRhNSQTYQT9iXbHcRav/tTj+6vRI
 DP1Q==
X-Gm-Message-State: APjAAAUg+RyiynPCC3ebjXZfn5SLPv33Fz0upQl6QisFWOP7828H94Hc
 wpATN6m20rk0y8rDhELAjg==
X-Google-Smtp-Source: APXvYqx7PhGUwDZEi+8Vj6jS0VwAlzO0fyOLufMf85clsIBI268PujGqMZ25iGzjREBsER4YemD1fg==
X-Received: by 2002:a05:6830:11ce:: with SMTP id
 v14mr15390493otq.184.1557767964113; 
 Mon, 13 May 2019 10:19:24 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g84sm5482087oia.31.2019.05.13.10.19.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 10:19:23 -0700 (PDT)
Date: Mon, 13 May 2019 12:19:22 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH v3 2/8] dt-bindings: remoteproc: add bindings for stm32
 remote processor driver
Message-ID: <20190513171922.GA25458@bogus>
References: <1556784606-3016-1-git-send-email-fabien.dessenne@st.com>
 <1556784606-3016-3-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556784606-3016-3-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_101926_144533_31B32942 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, devicetree@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 10:10:00AM +0200, Fabien Dessenne wrote:
> Add the device tree bindings document for the stm32 remoteproc devices.
> 
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
>  .../devicetree/bindings/remoteproc/stm32-rproc.txt | 63 ++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt b/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
> new file mode 100644
> index 0000000..a495757
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
> @@ -0,0 +1,63 @@
> +STMicroelectronics STM32 Remoteproc
> +-----------------------------------
> +This document defines the binding for the remoteproc component that loads and
> +boots firmwares on the ST32MP family chipset.
> +
> +Required properties:
> +- compatible:	Must be "st,stm32mp1-m4"
> +- reg:		Address ranges of the RETRAM and MCU SRAM memories used by the
> +		remote processor.
> +- resets:	Reference to a reset controller asserting the remote processor.
> +- st,syscfg-holdboot: Reference to the system configuration which holds the
> +		remote processor reset hold boot
> +	1st cell: phandle of syscon block
> +	2nd cell: register offset containing the hold boot setting
> +	3rd cell: register bitmask for the hold boot field
> +- st,syscfg-tz: Reference to the system configuration which holds the RCC trust
> +		zone mode
> +	1st cell: phandle to syscon block
> +	2nd cell: register offset containing the RCC trust zone mode setting
> +	3rd cell: register bitmask for the RCC trust zone mode bit
> +
> +Optional properties:
> +- interrupts:	Should contain the watchdog interrupt
> +- mboxes:	This property is required only if the rpmsg/virtio functionality
> +		is used. List of phandle and mailbox channel specifiers:
> +		- a channel (a) used to communicate through virtqueues with the
> +		  remote proc.
> +		  Bi-directional channel:
> +		      - from local to remote = send message
> +		      - from remote to local = send message ack
> +		- a channel (b) working the opposite direction of channel (a)
> +		- a channel (c) used by the local proc to notify the remote proc
> +		  that it is about to be shut down.
> +		  Unidirectional channel:
> +		      - from local to remote, where ACK from the remote means
> +		        that it is ready for shutdown
> +- mbox-names:	This property is required if the mboxes property is used.
> +		- must be "vq0" for channel (a)
> +		- must be "vq1" for channel (b)
> +		- must be "shutdown" for channel (c)
> +- memory-region: List of phandles to the reserved memory regions associated with
> +		the remoteproc device. This is variable and describes the
> +		memories shared with the remote processor (eg: remoteproc
> +		firmware and carveouts, rpmsg vrings, ...).
> +		(see ../reserved-memory/reserved-memory.txt)
> +- st,syscfg-pdds: Reference to the system configuration which holds the remote
> +		processor deep sleep setting
> +	1st cell: phandle to syscon block
> +	2nd cell: register offset containing the deep sleep setting
> +	3rd cell: register bitmask for the deep sleep bit
> +- st,auto_boot:	If defined, when remoteproc is probed, it loads the default
> +		firmware and starts the remote processor.

s/_/-/

> +
> +Example:
> +	m4_rproc: m4@38000000 {
> +		compatible = "st,stm32mp1-m4";
> +		reg = <0x00000000 0x10000>,

Doesn't match the unit-address.

> +		      <0x10000000 0x40000>,
> +		      <0x30000000 0x40000>;
> +		resets = <&rcc MCU_R>;
> +		st,syscfg-holdboot = <&rcc 0x10C 0x1>;
> +		st,syscfg-tz = <&rcc 0x000 0x1>;
> +	};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
