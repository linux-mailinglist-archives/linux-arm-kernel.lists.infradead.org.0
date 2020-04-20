Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2651E1B187E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 23:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Ur+uQ59OrKHeRxys6F1Cld++8JgM8hRh/at8okSmNw=; b=OOZQXN5lCfrAvN
	O468uaYv7LZgLf5mY6hNp1NilU/z+pRyTRPaVkWhP851Qoz059eUIR4OoRefRfWHe4TsGg3rCLxvE
	tFHaZ1DFCRmYi/72vq8XMpP6eD3PtdPAlyWY49fZiT/sfe7RyODeqYJKJzSKcl81Ew2TLlRD3wBn1
	IKudD3OOWfp+K34CHWtrtkaehpAD1kmIrLssoDFmH8PUvMYE8ezBlHg+B7k+aDGL0t2vJA1W6FR+M
	ThJH2qWkFsWfunvZn69KCY67XjmbtCvGBF87LrpA8RtObG7SKPXz2zEEG6ah5sGf7ccPWeCR9nlMz
	unb2GVPc1wdl3KMO6fxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQe16-0000dM-Pw; Mon, 20 Apr 2020 21:31:48 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQe0q-0000as-MY; Mon, 20 Apr 2020 21:31:33 +0000
Received: by mail-oi1-f194.google.com with SMTP id k133so10183540oih.12;
 Mon, 20 Apr 2020 14:31:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xCbMSBWE/K7CMTFoStyxNkJaPmhk/SFie0hTZQJVUuE=;
 b=lvQkZhd4s073R+9rhjCjQE3erWjzhM3KxunZihOUTGWPpiWfYiu8kVZ8oua3nVrrBH
 dN2Sp4SJYnKDBLKLqp7q55/dBPHu+dRSZq+J7Dzzxoau3vELsnnkKxZQ2QNiBrN+zSB2
 OF9whxii53DpZodQGFrzP6/TY6UW4wFL0tGdP5HSEiNgTMsIAsLkx/+vkMjeH6+bR6fu
 t6dV8ON2s9vrE8LS88R/PVsxapl9G+dOKNcq9pk4OhD17WiSBWvqqXZ5LfBsOS4m7DXP
 C6f8+foquWFDZBZesPAEAN/nswLdH8d3q6LylppjRlJ1khIadjISgd3HQg1vwmUoJ/Jk
 HTcA==
X-Gm-Message-State: AGi0PuZGDH5bVTqZWzafAoGwepPXzOumvxCxu2NS4/vDWNPES21nqZ5D
 JkWX0Wt8LFtE8qVRNwASVA==
X-Google-Smtp-Source: APiQypKp/aMom3WcZIgx4KD9/tZ1PBp+icqSBiPeREh6uL2GtZ7nUmS6xX3EHcojP7gq2hudxYyZ2A==
X-Received: by 2002:aca:4155:: with SMTP id o82mr1118364oia.16.1587418291457; 
 Mon, 20 Apr 2020 14:31:31 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s73sm171791oih.14.2020.04.20.14.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 14:31:30 -0700 (PDT)
Received: (nullmailer pid 22338 invoked by uid 1000);
 Mon, 20 Apr 2020 21:31:29 -0000
Date: Mon, 20 Apr 2020 16:31:29 -0500
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v15 2/3] dt-bindings: display: mediatek: convert the
 document format from txt to yaml
Message-ID: <20200420213129.GA22262@bogus>
References: <20200415011319.25559-1-jitao.shi@mediatek.com>
 <20200415011319.25559-3-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415011319.25559-3-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_143132_736201_C5A0EA26 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
 Jitao Shi <jitao.shi@mediatek.com>, bibby.hsieh@mediatek.com,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, cawa.cheng@mediatek.com, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 09:13:18 +0800, Jitao Shi wrote:
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,dpi.txt     | 42 ----------
>  .../bindings/display/mediatek/mediatek,dpi.yaml    | 97 ++++++++++++++++++++++
>  2 files changed, 97 insertions(+), 42 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
