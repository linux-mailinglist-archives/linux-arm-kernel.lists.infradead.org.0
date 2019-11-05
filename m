Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8145F09AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 23:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4sMIC6L9ARPHp9MkfU+x6Sh4BqqlvstZHrUshvkv20=; b=m3irl455kIXOUo
	lkQx523oUFBhBMrenGrfx0sz6VDBOBP2GB6irlBvdnie7dRxbbKdIsA4v2tksFDrLxwBPiiPfDgr3
	SCy5dsj14Pw/oxMc6cIycbzxpDWujLkQHMuT5UkX08u6tgcTyZFDESayfkrWIuPzQmHc/bFo35HyY
	D1kQSpjVoTN53PWlQ3/arkjYeJCoC7iOqVV2otfHP45/XZZg++dxita2CT49EeOdcVtapFuTFZaJ3
	hjgVllR+Ejx9y5yQ8QTt9gpHRVmhvM4rgzTmzBrmXpZHi3jF3zguK5UYPb/uS7VsUX9or0VOiArUS
	pwNEFI9JFj4BnzA6YaUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7Up-0003YB-5w; Tue, 05 Nov 2019 22:40:19 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7Uc-0002yO-As
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 22:40:07 +0000
Received: by mail-oi1-f194.google.com with SMTP id v186so19159432oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 14:40:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AFBMfzuDMMDG66rRSv4aJIAqEOBlWwNMQevtzffyDmI=;
 b=DiArOCy/lEIqDu55zAbBWhsPDW88I1CH+KqVbVZbTMgBTu0rYZdwE7pZ8BeA3OBhM+
 LU0sAvn/rS+KBPhhnDjlx4xvs+voEW/fOz1b4uKrKS8od+Ee3nmNH1dzbSF0aTcp0Ulu
 6uWCkW2WujWc7vdSbn1oiL+lhnu+rEVF0QAc1Qc9tjxyTU+Xda0r6qtwRg3gW+aGTbxS
 2BY3Uv7UnHOGPABGtxuebV9Nio6UDH6TAL2ujkh1x/Q77bwL7neC/0fIA3uhgZjKadun
 gaGAcA8zgvAWa4MJFdGoGMD43unw98FHmnmzLvWlAvtbSc0IZCM6R/EbNbMPW4jj75qq
 dYKg==
X-Gm-Message-State: APjAAAVpTwMHHRf+vqnzR9mlPr8HhpGFIGvU2Ndzqb+7+Q0uZsUg2R4+
 VlO1MsWTs2ctLL8zD58AQw==
X-Google-Smtp-Source: APXvYqw/eET73Cha942kPsvsxg8kJVX0rHtqR7c6PgeHXrasBspVanHF4zRbTyrJS3fJviU++qmKag==
X-Received: by 2002:aca:ba87:: with SMTP id k129mr1150141oif.41.1572993605126; 
 Tue, 05 Nov 2019 14:40:05 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 100sm6623033otl.48.2019.11.05.14.40.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 14:40:04 -0800 (PST)
Date: Tue, 5 Nov 2019 16:40:03 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2] dt-bindings: usb: Convert Allwinner A10 mUSB
 controller to a schema
Message-ID: <20191105224003.GA28513@bogus>
References: <20191101143216.260890-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101143216.260890-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_144006_390424_9DD8DC05 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  1 Nov 2019 15:32:16 +0100, Maxime Ripard wrote:
> The Allwinner SoCs have an mUSB controller that is supported in Linux, with
> a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Merged compatible entries together
> ---
>  .../bindings/usb/allwinner,sun4i-a10-musb.txt |  28 -----
>  .../usb/allwinner,sun4i-a10-musb.yaml         | 100 ++++++++++++++++++
>  2 files changed, 100 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt
>  create mode 100644 Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
