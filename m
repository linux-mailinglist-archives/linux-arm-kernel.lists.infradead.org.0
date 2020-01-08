Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3303134DAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:33:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9MbfZGxRKY7AR51wMMJdDKVVRiydtOhOFNy0n515xE=; b=lMYfmwHoml1Dck
	+hE3ei2UBcoaTKTbZn5MNF1MZ8LUxEsg6aGQrwXy5U2pXl2TgUUzoAVEvnVcY4Yayu5AGSplBvL10
	6qDZ0vuTUZkRXv60QEqHPOAPclelItIhA2wtapuyDHuzLcTtViIc9mdb9NfiI8pHI+yED0H/R9wNf
	ngDQcnnHPUIl1yn7NqMz0MPKlQKj5BhkUCBL0/X1lRHhF2il2xEyO+plNAPJXjprtYgNYhSu93oTv
	Xp4f3QITaVxjvPI2DnxpeLbReMtY/Ioy4P0FcjeFsMpMN+WjAFNcbvFLvOIxbKaM/QT0hes5hNqKJ
	GtEjtdnSRkz9rogrumqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipI0l-00066m-Pz; Wed, 08 Jan 2020 20:33:03 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipI0D-0005ih-R2
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:32:31 +0000
Received: by mail-oi1-f194.google.com with SMTP id z64so3892225oia.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 12:32:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jcxZrCd2+72i2RRqwXRwqBU4vHF81GUXpnT3KHwf8To=;
 b=iwQS53AS/9An8S3unPNo0FCLPrtO4bpHie9ieg8YBC+BkUng+nqiIc3ALV16+1GlpP
 5xt87ZZdq8Jz1bYfkBzjVX21twdU+EZz1daUiz2eraE4ONEq6AhDwZGPeiu0UuPPqRO2
 p++givAqTGWf/1sBdKtSKlhg8X2Ay0x6uTyxxugarEz0hC3DhYJQ85pVtLtudVby440G
 nvY0ndfyiIfzshZOb7y/kdr+1SgDdpLabeGCNAD5+LA0EeT/yC5UWMWzQoSDNmmp/h8j
 PaJyF4jDy4vLKZIjg8B0MAsVjK5KAp89RhBt1lWKJDOCLZ5zDEJbwpBPZIhP+BBYx2Be
 rhLg==
X-Gm-Message-State: APjAAAWaWd2TRpsk9t4PGkE3EtG+2qg7wRvZnabH+ikB5UKLbwRT56hQ
 tY6/nT1IngRNI/O8NVQPHJtNyzM=
X-Google-Smtp-Source: APXvYqzK4w44vDRsCRBRBEUsFRBBVowxLuOMhKNPMx5difVlD7hHD2Br6+3uLFvCTVM4+dkVtEh12w==
X-Received: by 2002:aca:2b0a:: with SMTP id i10mr350264oik.137.1578515548026; 
 Wed, 08 Jan 2020 12:32:28 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u13sm1450705oic.2.2020.01.08.12.32.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 12:32:27 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220333
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 14:32:26 -0600
Date: Wed, 8 Jan 2020 14:32:26 -0600
From: Rob Herring <robh@kernel.org>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 3/5] dt-bindings: add vendor Monolithic Power Systems
Message-ID: <20200108203226.GA17283@bogus>
References: <20200106211633.2882-1-m.reichl@fivetechno.de>
 <20200106211633.2882-4-m.reichl@fivetechno.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106211633.2882-4-m.reichl@fivetechno.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_123229_884630_5FC35F40 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  6 Jan 2020 22:16:26 +0100, Markus Reichl wrote:
> MPS produce power regulators like the MP8859.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
