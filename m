Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75D3199FAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 22:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75UsFh5zLJ17R3Ps8MMp/7N6J9VbLLlS6izGTsPmr3k=; b=aiM3ZAa7d2Ngug
	XJ3ka6FrV6I4/ZqFAAfT7M9M3LZa5BFmlLUUPObhwEF2y36rn4bryNYl2zzi/iwOYhQY/uJd84Dzk
	+MmucaOv4MStjxLlBxS5C+Mve/TnJ9C5gQPsMDgorol8o7HJus3PFPqMzYWM6bAUuKcqir+0PSqfu
	pl/zY/aNezi4lZ4c8GfBkTb4IcchflU7mprSC3r64K3uOlZyvzH3e5+Bj6JEXSLPPcMKHUbpctNtC
	gKUq15SZkQGH6J+tX2dL0QGTFrSyOwrJ1mBluMUpv+MDGe7YtLwMNM+LSCqpsWWDZ4V0HCaDotAs7
	3qKSmZCYMuHmcRI9emWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJN58-0004Jq-0L; Tue, 31 Mar 2020 20:01:54 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJN4m-0004IS-NU; Tue, 31 Mar 2020 20:01:35 +0000
Received: by mail-io1-f65.google.com with SMTP id y14so6015115iol.12;
 Tue, 31 Mar 2020 13:01:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vkxxip8s1ZW0GnbenbnFeoJyggUhdVdybES6+NRkTls=;
 b=KJweKYKpYNR4yKPVQQxuTTelZWr7Q/ezEPJbtDAQe8VntX6UCowdBICe4mHVzsHVS7
 Tdw2ilpBObFPUTCmRbFFEPovnHNh/0hyuAOZNoiEmPpQqSVOmzNL2T8JCfmW/FwVnzBa
 WOMNIMAu2tgTkyVNTtbyXXp7NlM4Ub8xwYJEBmyKwh6UoRaPQLuJIGPecHkOu0JUuehg
 zOdoyfpni8y00omqH7PrdSQpTCXjN5PnfkZ+Ic9x2ObK5iu9+cPy2W+7qlUolbpKIU4c
 CToOkYGwgOa++ebr0hLxr7v6BoU0RFyXskyxQcSO3uVhJsHE1P7dKY0mALNTtVg2OVot
 AA+Q==
X-Gm-Message-State: ANhLgQ0HRRVaJqcVoaGNsSR5JIU/8B0MH1Dss1Cr/pxreZMgPcfdMxlZ
 8IuAHhm9O7zmAMxoyLTGkQ==
X-Google-Smtp-Source: ADFU+vvBejlhKFx9aVEK9Es2UC6IoLSf1k2SdAYxRxDFr5MBW3pEn/d1O633AZt6lRcbhYJICsvimw==
X-Received: by 2002:a02:2505:: with SMTP id g5mr15167286jag.114.1585684891883; 
 Tue, 31 Mar 2020 13:01:31 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id h29sm6197193ili.19.2020.03.31.13.01.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 13:01:30 -0700 (PDT)
Received: (nullmailer pid 6517 invoked by uid 1000);
 Tue, 31 Mar 2020 20:01:29 -0000
Date: Tue, 31 Mar 2020 14:01:29 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: sound: rockchip-spdif: add
 #sound-dai-cells property
Message-ID: <20200331200129.GA6458@bogus>
References: <20200324123155.11858-1-jbx6244@gmail.com>
 <20200324123155.11858-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324123155.11858-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_130132_763697_B80CB7E1 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 13:31:54 +0100, Johan Jonker wrote:
> '#sound-dai-cells' is required to properly interpret
> the list of DAI specified in the 'sound-dai' property,
> so add them to 'rockchip-spdif.yaml'
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
