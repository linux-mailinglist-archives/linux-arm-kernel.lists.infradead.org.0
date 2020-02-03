Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE50150A5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 16:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOyrLpCLa5AkLKRcgFoVhp1cJCYGxabe4zzkp3VsF/M=; b=iXpHPpTBiNOESY
	VmzaaL4EYAzsKGPyy1w1ldeO8YmQUrp89ziNaYu+OWaJOD/etjV3w8QpDQzNAeIUkrTx9vfUsYZwm
	Wit7oOyXCIJXn7X9NsWts9O5hW+ha2+awPR8ihheCM3LDKepUVykauaK1TkQwS9sueTdScTHw4WGF
	/t7Lx+BzwdT13QsX/+6Sx9WtZ9LLFYKC1AtdFdXY08Z81FGj9yi8l8rlNttgZyZ0KwG3SYz7ncNBy
	JKnrR9z3FLCxTHQXSUKus36FGuuilQh17A7os7CL9kHp1d6LXyF/WiQCxTen2XgzRCgxAtGy8xVow
	v3U2DcLUBUoXC1YI1zYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iye4y-0006M3-HW; Mon, 03 Feb 2020 15:56:04 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iye4r-0006Lg-VO
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 15:55:59 +0000
Received: by mail-wr1-f65.google.com with SMTP id z7so18795570wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 07:55:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=U2mK9M4FJ6ugFBNXxHdNAf6mB79D5E9goFVSxPy1ZpA=;
 b=O3Ou5JTFshiQvglMYoV7zxFNAmOspGs4/JavBe7u6j+1a4DzVcVGqwjZRvgV39KYFM
 VarmzIMDs7q44HA7P2Q4DOmrS1bhGGsMqIVIA9L9rWDF+M5gSKyaKHcQUWaY6oWDmXeq
 3Ajf/obpzqMneybpLOoV1fZFKuujrL9ri4yTgZkpGzX3d0VIn+/kswo/dWKBmtDfyOg8
 UV/AFKtJfpdmFubOpanaBYaAO2xtTHqXfy5VxlUAmLZ64bFcT3ZuFsbBsJfEAotRYXug
 js8duEIi2V3GZtQ1+wdM82hH6ZEd47QCw+kJHumjLpWqXvV2GzgeBvBe8U+Gy0S6b1vz
 Zc+A==
X-Gm-Message-State: APjAAAWyiUhe2BFGIK6x5IgTqMOeL2ePI6kFxB/WLz2cqE9AxkAfm2nD
 fwkmqHKZwwSDKW7Ejmkrww==
X-Google-Smtp-Source: APXvYqxQBUlu3XxCbRx5Paai9+u39gYSqu2FCyKwLUhG5ETDuNDow5aiw64awLP5olySIuHpk+BRhg==
X-Received: by 2002:a5d:534b:: with SMTP id t11mr16004161wrv.120.1580745355672; 
 Mon, 03 Feb 2020 07:55:55 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.163])
 by smtp.gmail.com with ESMTPSA id q130sm25380392wme.19.2020.02.03.07.55.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 07:55:55 -0800 (PST)
Received: (nullmailer pid 2197 invoked by uid 1000);
 Mon, 03 Feb 2020 15:55:53 -0000
Date: Mon, 3 Feb 2020 15:55:53 +0000
From: Rob Herring <robh@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2] dt-bindings: soc: imx: add binding doc for aips bus
Message-ID: <20200203155553.GA2132@bogus>
References: <1580097227-4364-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580097227-4364-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_075558_011921_0A2BE46A 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 Jan 2020 03:58:37 +0000, Peng Fan wrote:
> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add binding doc for fsl,aips-bus
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:
>  Add 'select' to pass dt_binding_check
> 
>  .../devicetree/bindings/soc/imx/fsl,aips-bus.yaml  | 47 ++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
