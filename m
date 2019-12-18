Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C825123CC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 02:57:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4T7zbx0NmsiaeRo9vY7bGKmWqAMhzfl/pAD5DgiMHQ=; b=BxG10dq6p8qS8J
	JnDXlmO/NCFYKX1Qbn8Mv+HicyxvOGivboTg/5sBvx/cC23V9WU78hDBxTME3b12cx/RShQmRuH0E
	axg7Uvwn9FkiowAwQAMOO3Qy81iBA+mA3tJHG+D7NfP7hKTRSa3MsGC2kuaeam3X2Em9sZRJW2Hu0
	cDMT96Y7sBEu6CaDVXip/+WWhiqPB4kBNQa5ZDdE34MTYvDzJBut2EUEXNy5s+Ge/17k2KObrwS+c
	5HKTSz8ct5owcoPoacMyBK1kkBKunw3yMR9YZj9E7VMGRnaOM+ekYHbbfilzztlulzAZMlfRje6CX
	yncly6Uqa4/NTgp/smPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihOa9-0007Hw-0x; Wed, 18 Dec 2019 01:56:57 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOZw-0007HT-V8
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 01:56:46 +0000
Received: by mail-ot1-f66.google.com with SMTP id k14so368663otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 17:56:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H0Yv40/gt7h76+Y6AxYij+vNwMNWt+JDljgPkgqqNPQ=;
 b=i/LFR3O0k5+qEDttBRUfQTeHpoDCquH+FO6Jp71F8Z4qsWz9+Ihn79QE+/SjxcmKH7
 Z79MSRQqaNWFTdcGhVmSL4Ice6fE4cqQ0MaJIQ+mYScvP94V123FLs8GU3aJq+7g4fJi
 csTxlQ7HXSfiVWShG9fOmsu7wXOX5kDc4bX7ZCV/pOCgm4molD01hA9+Usk4Oan0T6np
 +rtk4WaespVBIMqbo1PqP8cL8uZKDsSFNXrSissA/OrYe+fNim/73qD+y1PVirOQsJ/u
 ufj/yCKZXAhrkNGfmAO2mdKzXlbGhz4DpjZPbcJPxeXH+gRRoauEIfXXkbLh/FlauVvq
 4T+Q==
X-Gm-Message-State: APjAAAUz4sLrqAKHc49ARGPitpgcWQYljCkrKKwflfi4BXuuxeFytz6Q
 hH4J2+FZ1S06BVjTRWGnfw==
X-Google-Smtp-Source: APXvYqxNBgNUBjb/zwscs936FlF1h8bpF2gJXf9rpqAGoZ7u7ONgKK+a/CWN23/hJQnituubdjcoDw==
X-Received: by 2002:a05:6830:1492:: with SMTP id
 s18mr307725otq.285.1576634204003; 
 Tue, 17 Dec 2019 17:56:44 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t9sm222580otm.76.2019.12.17.17.56.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 17:56:43 -0800 (PST)
Date: Tue, 17 Dec 2019 19:56:42 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] dt-bindings: media: Convert Allwinner hardware codec to
 a schema
Message-ID: <20191218015642.GA32128@bogus>
References: <20191213074055.26193-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213074055.26193-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_175645_008021_39626D6B 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, mchehab@kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 08:40:55 +0100, Maxime Ripard wrote:
> The Allwinner SoCs have a hardware video codec that is supported in Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../allwinner,sun4i-a10-video-engine.yaml     | 83 +++++++++++++++++++
>  .../devicetree/bindings/media/cedrus.txt      | 57 -------------
>  2 files changed, 83 insertions(+), 57 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
>  delete mode 100644 Documentation/devicetree/bindings/media/cedrus.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
