Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EF71D01A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEyGvrUEKuuxT6CgxbR+IPYUA/b51CCU+RGhl9H4p7c=; b=EdF/Te/7smE/9D
	G8ZIrCK6cUHDBFeRgU4+2tP3AX/2FSchz/6UWzMz8HNdTrOCRUW17yPau/Ap+v/GQFuGqZGGmb38a
	QUpor0tx9YSs+PEYyNmPABNjAOaC4DPl7yrJfWwdGkxccejRD4MtRaRKYfOZECzzg0o+/OfW6/eC7
	GE56+uzS+nVBOdoobMQNWPUyciW0frcTgT2vBuVYLK0uzfg5tc+fmDKuBHPd2GHmHGZRRmXoYlJ2t
	/kkV45qx39qTUfC/81cdwKzMAYXuC28nY55MhktegI9sZVKsMQxmgDvPKrFCgYN81RQz8z5JQ1RCh
	/PoSJk+HqQYAU4D56ESA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYd7v-0004eX-1e; Tue, 12 May 2020 22:11:51 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYd7g-0004cZ-Sg
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 22:11:38 +0000
Received: by mail-oi1-f195.google.com with SMTP id 19so19673353oiy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 15:11:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RTpvgItjsIRFSZ5D5JwDplmKO7eAYduxml2laMqHkwg=;
 b=cI7NH6ESYj8YCoXvqGyaLSFWKeWlhC55u2QIsRFe7hcRuG5NIDC6f27eJXz7mg7PMw
 R2RnnlgZ4T9pHdFqdZU7p+LdNcDkB26kf156qMGo45UHlISflNWVWjp/atFxv60kpZ9i
 pWDV5lyNKQZKuwWLyYJ0zTImIs1JQmBM1MW3uH7Lv49WVF+QIKRPmcAbDt2rJ4YKSbqY
 0CMRSPxKelhjXn71ZKsuwQVsJ6Eb1TXGobk1a0f5jgTIlKx5i9Oo9rP5Du9TNfyPPcG3
 C1vMwluj9QsuxcaduJuUDt65ix6PdWdMtzxZU2yaZ56P/ofH5aaoeXFzTrdilcIBFzwy
 XBog==
X-Gm-Message-State: AGi0Puao2V9HxUObTEhLs7XClrLE4W8t8byTkIFXUcI72vMBjz5yTfCV
 yDiyJ8k28TD+lwu5wjCjyA==
X-Google-Smtp-Source: APiQypJE8Xl38hpDD0pF0oA7mVSnQ/28VAr9BYPuylNa8jiRVasWj469o633WLoXC1xsjFvRKB/CkA==
X-Received: by 2002:aca:b584:: with SMTP id e126mr19711969oif.15.1589321495878; 
 Tue, 12 May 2020 15:11:35 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v9sm5624639oib.56.2020.05.12.15.11.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 15:11:35 -0700 (PDT)
Received: (nullmailer pid 25779 invoked by uid 1000);
 Tue, 12 May 2020 22:11:34 -0000
Date: Tue, 12 May 2020 17:11:34 -0500
From: Rob Herring <robh@kernel.org>
To: mani@kernel.org
Subject: Re: [PATCH v2 5/6] dt-bindings: arm: stm32: Document IoT Box
 compatible
Message-ID: <20200512221134.GA25745@bogus>
References: <20200503154215.23654-1-mani@kernel.org>
 <20200503154215.23654-6-mani@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200503154215.23654-6-mani@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_151136_933730_ACFB4A9F 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun,  3 May 2020 21:12:14 +0530,  wrote:
> From: Manivannan Sadhasivam <mani@kernel.org>
> 
> Document devicetree compatible of Shiratech IoT Box.
> 
> Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
