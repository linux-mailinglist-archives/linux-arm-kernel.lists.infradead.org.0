Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C885150400
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 11:15:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UULUhDbp9YG4iEirZ7gxrbP6gEB7gfECE7itckVUj3U=; b=iJkJdwUx7xvwF+
	swfaOvQgoBGwNgJOl6Lo1NEQd6N/6SP90GSsD1aG0+B3RsQuqRJluJE4Ogh0XyByNMDlf9C8NdICv
	KbkfSoIFRfYIJ6CHrXThTykT0nwTv/396Zh7ENsNl+GiU5zLDjIEO7ZfqcT5nq6EEvSuEWwLIBQaW
	YZsnJoNLsUyIcEpBasJfye/B/Bj3MaK/EHT/ZZF/M0vGYQs6E8B1ZB/N28KgZnw4ouK/0u8fsaEZe
	Slw5Jmxn4tgae+IS30+g9tg6eX7NqIk2gsHB6Jd/PWyFR8eaqkrvCwO/qZaP3ir3CyN1lyRRSlU6d
	6StSL8nP5YmcmZ0uapQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyYkt-0006hd-AQ; Mon, 03 Feb 2020 10:14:59 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyYkj-0006gW-6G; Mon, 03 Feb 2020 10:14:51 +0000
Received: by mail-wr1-f66.google.com with SMTP id m16so17169142wrx.11;
 Mon, 03 Feb 2020 02:14:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VeTk9NFWqY2AFFX1U47JHNOnYrtYJUipcDdzTnxdTw4=;
 b=F/XCLZnb82COr8lATwQElv45b2K3CVoIchX1MLPmJs9hjn4TTD12LNFacA2bfnR+vw
 rWApZugd3hp00n5ssM/951vxcIIZ2VNid2QFtz3kbucJvuYWB6dEzB1mdbpyudgOz94O
 f6Bf5hLFgMhgQ+DC1WLy6mt+T6Z3QZ1IynS9pXW2S23cadNkKcZncholEXhhJLHbK3/2
 sJSO75ZVx+9+YG8zNZcaOk1/9tq+wS2L5x/dKVYfIMIyzfyO1Kvh/uEwd8v6jv7as2Qt
 WVXoS0mg9Xyyc0Xx2Qk0BKWYBqu2uoaiB3pTb/sTsw2FgToFIM5EipEd9lIWda16+Drq
 LAHw==
X-Gm-Message-State: APjAAAVJbpLpnxf3Vcb2NBHAYNE5vQK6NPAi5/0bS5aWJrGCDY0GDrP8
 XaUxa9n+k8qT9+wtGa2u4A==
X-Google-Smtp-Source: APXvYqy+FnFfJwsfZztZ3WYAtBH/oqT3NH+T+W2/hO9SuPbGror4fjsAxjEbIcawDdvgCPggf1l6zQ==
X-Received: by 2002:adf:ff8c:: with SMTP id j12mr14349774wrr.354.1580724882064; 
 Mon, 03 Feb 2020 02:14:42 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.163])
 by smtp.gmail.com with ESMTPSA id k13sm24011191wrx.59.2020.02.03.02.14.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 02:14:41 -0800 (PST)
Received: (nullmailer pid 814 invoked by uid 1000);
 Mon, 03 Feb 2020 10:14:40 -0000
Date: Mon, 3 Feb 2020 10:14:40 +0000
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 12/12] dt-bindings: arm: bcm: Convert BCM2835 firmware
 binding to YAML
Message-ID: <20200203101440.GA31848@bogus>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
 <20200202211827.27682-13-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202211827.27682-13-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_021449_231274_CD68338B 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun,  2 Feb 2020 13:18:27 -0800, Florian Fainelli wrote:
> Convert the Raspberry Pi BCM2835 firmware binding document to YAML.
> Verified with dt_binding_check and dtbs_check.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../arm/bcm/raspberrypi,bcm2835-firmware.txt  | 14 --------
>  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 33 +++++++++++++++++++
>  2 files changed, 33 insertions(+), 14 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml: $id: path/filename 'arm/bcm/raspberrypi,bcm2835.yaml' doesn't match actual filename
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.example.dts] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1232487
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
