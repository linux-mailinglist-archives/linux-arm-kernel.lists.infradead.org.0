Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61278E8CE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:41:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QnUyqMc0hLAj96DamUFAaNSf8btXhPcqxLVSl/4PZQ=; b=eRvbtTyawUH9OB
	bSMqXSj/gVEfhukCzJR1hveCRT09vtSr7gJg0dYyuOgLvDXYNRPZp9rXwKEzXbgPtuZ7D7bzPyoS4
	Qqz6RIRdQTaC7K61u8cQtzq05KJKDvn3RUCuExdFuIEhc7D1Pu1ueoTHfdeVI3msmw6dWv1OU92cj
	J80/RwEmrkJOTSmaA2hBLcYmgDvx+4iF6WILX9kh9VFQJUTPeGrP5Ox/QPo2HJKDY6cAdjbeL696f
	b9jz3yE1jnAeKYbgnefaep2Cdm0Slc5vCnYc0sqRVmy4ip9iL18CC9AbVBvEa8WajM73oRm2Ja10P
	+o/96XWkKSupIDaoeT9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUYT-00022h-RK; Tue, 29 Oct 2019 16:41:13 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUYK-00021q-OM
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:41:05 +0000
Received: by mail-ot1-f66.google.com with SMTP id m19so10360612otp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:41:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fvzDF1EQL0iAT5WRqqbNsT/xaQYYfBwjY6dwN6fN4vE=;
 b=Q5cgFmUo82GgCOuWnlVFEd8YTcdWpkY3qVCa0iH0Ahj6P1xqDg18hqnCnLvpWe88FW
 9Gp3hots98o2MN8Rvw4xbO4WhFOj+h36OYCm0ScUYxcts/7Nymn81cxNLA8a5Lwbmpmp
 q73tbmP9Ya0dtyPCDSnqJzXT86gUeTqDx888WBYb0muk3rrHvZ+ZTUWdMBivpAM/DE21
 SvdQ9kVQENU8NIVDmFantufJqSL0euje+mZQwNjFLo48yyYsagpwxIrrxIkt19vqPwXA
 tS2oPPmyv5wXA1vtuVg7lj0Qnkxtf6uD/3496esrLl65LNXDlxw3V1R7mTmIw5G9G37E
 UnGw==
X-Gm-Message-State: APjAAAU+GpzYpIMkyksqwLFpoccaFkcoiSoK64KKattAo3lSxusIB1a6
 F4pbFLyyBMyF72DPuE0oJZBBXI0=
X-Google-Smtp-Source: APXvYqxafeKH9kgtJXf3IqeJ45bIUjhlxFGWRtIy/IXgLiC7LvPuf9j+o4ls+HkmFicowKX00KL1Yg==
X-Received: by 2002:a05:6830:1d4c:: with SMTP id
 p12mr3473042oth.139.1572367263971; 
 Tue, 29 Oct 2019 09:41:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t12sm4826024otq.61.2019.10.29.09.41.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:41:03 -0700 (PDT)
Date: Tue, 29 Oct 2019 11:41:02 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] dt-bindings: display: st,stm32-dsi: Fix white spaces
Message-ID: <20191029164102.GA21205@bogus>
References: <20191021151847.13891-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021151847.13891-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094104_790340_165F4C6B 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 17:18:47 +0200, Krzysztof Kozlowski wrote:
> Remove unneeded indentation in blank line and space at end of line.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  Documentation/devicetree/bindings/display/st,stm32-dsi.yaml  | 2 +-
>  Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
