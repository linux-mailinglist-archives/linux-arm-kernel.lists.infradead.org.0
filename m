Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AC2A2A68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrTp+INCPYGXnJx709GIfjeiCKR/bd2O0Tm+NP4UPeI=; b=SaxusYnNmc59/T
	yeMwqIQfBbTDgmQU4kLDQEA2/cY2Fs2OG9HeX5o0WLZqSbTe3zv22IPFa206BEZQ4JY7dv1981q1W
	ZWczGQLLSKuqhqhBPHD+Ze+OqnWS5yBmeLfK3sTlAHrdyBYeKtm10gGGJB2MBoUYFu1Us2TP89zjT
	126+/OR0Td97DTBVygP/juGC2TU200NsP3RofuULMLgzZSP45GRvi42fBci92/OINRnM4st92PT0n
	GnITHXBB/NboojUT5QYI1LOLQczyOmlWAWfogwAIvXBt/IkoCCCtwIv0zC5V8I72pzPJK7lvjJw/G
	6wTPRmnTe+ZuVeguferA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TM9-0007e1-Lr; Thu, 29 Aug 2019 22:57:29 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TM1-0007cU-BS
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:57:22 +0000
Received: by mail-oi1-f194.google.com with SMTP id y8so3889672oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Tt59Vai4nKcFOlf3kuJu+36rcTwUnw+ESfP2cPA8a9w=;
 b=ZB6sZ8wFZpzdJ/Jgx0VAL73OzLpZcnXG5h8IkQ4ePRdrnfKl7hj6FxL6W5rU+ajgwP
 tt1XKFigaEC7nNn75tWf6lkuEU98ICTP1ypSiXvx/gMLdcmdunb+bWktgphZOnFXZoBW
 xF16QbpIXKFa7pq0aKMR0nMe3FWf7o4eG/op5Dq2wmZ8nTCGH5mEk2imbK0gs+vn1wOO
 /rvx42AzHgKK0eN1MTKUpf4MuXqYDpQbU/bGNpqE7Z6donyGLljd9mjoP3WKDPekW1Mk
 z6C88eNVPc7d2CTlcQgu14f5QZ64WqAmpzZ0CJll3PL2fkDtxXuQ8gz7Jx0wpak1MBaI
 u4oA==
X-Gm-Message-State: APjAAAURF6FREN1laesoqFOw9mY9jP3bTVzu+qpblslzdPRBsHyhEstb
 wM7c5kJLM0KTEe1um6yEDA==
X-Google-Smtp-Source: APXvYqzNLJ5SnSm+nMCobpcQcc3WHBIxdaTxiYCSwEw6M9n03lmG7rmmrOA9SRGSrxwhdyGE3uk1qQ==
X-Received: by 2002:aca:3909:: with SMTP id g9mr192281oia.158.1567119440204;
 Thu, 29 Aug 2019 15:57:20 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t21sm1026334oic.6.2019.08.29.15.57.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 15:57:19 -0700 (PDT)
Date: Thu, 29 Aug 2019 17:57:19 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH 1/2] dt-bindings: remoteproc: stm32: add wakeup-source
Message-ID: <20190829225719.GA21954@bogus>
References: <1566833923-16718-1-git-send-email-fabien.dessenne@st.com>
 <1566833923-16718-2-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566833923-16718-2-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_155721_393898_3DD33796 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, devicetree@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Dessenne <fabien.dessenne@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019 17:38:42 +0200, Fabien Dessenne wrote:
> Add the "wakeup-source" property: if the optional wdg interrupt is
> defined, then this property may be defined too.
> 
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
>  Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
