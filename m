Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BF71B1808
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 23:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0VJcVjNevC3jDrUkbGpLHMT1hqB45f0vorz2euKbZY=; b=Y9BGvH0N83Yazc
	oEw7BLcxGib2lcpFlZaJYU2ONkWeYwhUr7vxh07HruKSRfbQC5VrRteOd5ip4/GAsgLqCjfDuGsHm
	kHZKhrXG+CCha5UGb7xAKhaCdjfagkxM7rYauNGAm8fJoHxzhIywD+UPS/1iYCNGKRC4rI58wx5vk
	pnF2bhUEyAeyiTq/HV8nsWbtv4OhsrZBu2IQoC+BHZ5fNoF2inLj78l5RJ7vn7Fr1N2XXITY+anqg
	DdRcdt24aZgVz3hLQfhEHBBfeTSZCiyVXETFAPgxG5v0Dumwd7ojSvVFXsdI0eelE2pIM1n/S4MRS
	SnOumLuJB2VCM2Pz3Bqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQddU-0000yh-NJ; Mon, 20 Apr 2020 21:07:24 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQddL-0000xT-Lj
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 21:07:16 +0000
Received: by mail-oi1-f193.google.com with SMTP id x10so10169073oie.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 14:07:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GTuvfZESUSaD2cb5a/OYsH9GmHAeQ64hx5GzbXm64AA=;
 b=ZSvEmNqBuBLTGB4sVYfo5Abz5Ba9yzwhmiVgxIXhG2nXYJ5B9t5SZleXAK4NX130RZ
 k+ls2JePofQvFBimcR03Uad9H4oEBQ4dvwIzSQWTdhFP9Z9Q1or3uYNBErHN9weEeWhw
 +fdNVWqDp+jBNjcaerG4NXe5ptNoM8RYfSqi6MwCpahFHmfcyZWIkFSHRqXqSozVKRoI
 XVwmK/Vpfv8xraJ/ZZ54McFisHjFB56JVEbqRS//d19/2JVJS2AAX+myxuHxlEgWgBjG
 htDUW4vf4n+sjvAYMyJYRBPBP5HOBqNUZCR9zkv4SkmtYStIscW5/wDYe2ZZEyuX0Uho
 ra4Q==
X-Gm-Message-State: AGi0PuZEFN9YaSB6cAYWNWuNYkeC63W+4R1bvkBxiLN9EJqo6jY/e3Is
 0LYQX/N8OuF/gHG3FgTuvg==
X-Google-Smtp-Source: APiQypKrG3RWQAvo3MmqD+u47KUx3xOLde7ElyFgphXU66gxeWTAst9XMMIpUdQZ6JbzkpLbQ6+fxA==
X-Received: by 2002:aca:dc44:: with SMTP id t65mr1015715oig.176.1587416834721; 
 Mon, 20 Apr 2020 14:07:14 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i21sm152725ooe.26.2020.04.20.14.07.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 14:07:13 -0700 (PDT)
Received: (nullmailer pid 30251 invoked by uid 1000);
 Mon, 20 Apr 2020 21:07:11 -0000
Date: Mon, 20 Apr 2020 16:07:11 -0500
From: Rob Herring <robh@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 1/2] dt-bindings: mailbox: imx-mu: correct example
Message-ID: <20200420210711.GA30172@bogus>
References: <1586870668-32630-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586870668-32630-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_140715_714678_150A20E0 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de,
 jaswinder.singh@linaro.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 21:24:27 +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The example use i.MX8QXP MU, but actually the MU is compatible with
> i.MX6SX, so add the compatible.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
