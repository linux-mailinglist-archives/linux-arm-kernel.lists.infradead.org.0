Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E027C1CEA25
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 03:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ec3s/UvlkAcUSw08Ud2nGJnJo0E8aS8fH69n/muxfEc=; b=dCwjM/L7lGJCMP
	Z7aWlSCFneMLGQCnEpccE5amDzbEkcKMcxwYRXqHnTliIefMZgp6hdS4w+k+OSDR7S5Ohaj9eipGX
	7P0xvTJfmgQaOcIH1tSbzOiZbwf7Rikz2P0UC4eDsSiH7wxh18Py77ih/6jSMQhN5T2YEbTw5Unl1
	/97FTf1A5UNVQFWtWpY7D6i6t43BVfHRf24A2lrV8mF+Pg+L81ix/jpZNg6/yzQIWN7nhTuqhHTsO
	KjV5glhu5RJcQKi680ueXiA89NOkUlJo6eIwMuU18gTwI1euKnCIzF131XzcsCWjhmBN+Uhx9spnD
	xgmZrOak53jH4b8mzzmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYJpT-0001r7-Dt; Tue, 12 May 2020 01:35:31 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYJpM-0001qb-EO
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 01:35:25 +0000
Received: by mail-ot1-f65.google.com with SMTP id m33so9261136otc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 18:35:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x3kC4pf7M56k3t7zRQqBblO/EsPXVYUQiGQ+TYskIi8=;
 b=n7qGTaKgNNuD3HOc4EnDduLVMIhLTFVzT4G77rQVvR0NOWIV6gw0U84fur03cOwUub
 o3obOvXd6DRTTd7E47B27JSzejGXLoXvXhMWCnWQceIqsI/jrbrPipUo3moP17ZPaK2A
 kRxsZ+T4+hgMbPA6IyNvLKXh+m/cJNMyqjtgSwRlvP9/9bG/JZervhYlSWo63cFIZ1Sy
 yZisVFNQnpZsbDNYAvdypotqnKaLoXJJ6BXKIh539G3K0FWj4KCL1wk4rMjy5zB2qaXJ
 5m/4xFdTrYjXirxTixrN8aqc7nRsIboo7O93tkuBcndjK9qnr45GOAQNUJqLwRW6ZMNq
 51+A==
X-Gm-Message-State: AGi0PuaBNO5AvlhGv9hJ7Ac3VTvda4qycK2iEMesD4UM5drrU4Z5e5q+
 oeULNUxQqoLDMnatpM4KKRDSwi4=
X-Google-Smtp-Source: APiQypKsl30cZFaQ3keApHQftWqKsHXq82zN/5Qa/ZRqSSe924LSGVgAN3i5HizLZ4TZae1D4rd06w==
X-Received: by 2002:a9d:4113:: with SMTP id o19mr14268278ote.354.1589247321540; 
 Mon, 11 May 2020 18:35:21 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r1sm2301589oop.34.2020.05.11.18.35.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 18:35:20 -0700 (PDT)
Received: (nullmailer pid 2259 invoked by uid 1000);
 Tue, 12 May 2020 01:35:19 -0000
Date: Mon, 11 May 2020 20:35:19 -0500
From: Rob Herring <robh@kernel.org>
To: Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH] dt-bindings: nvmem: stm32: new property for data access
Message-ID: <20200512013519.GA2002@bogus>
References: <20200508134527.26555-1-etienne.carriere@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508134527.26555-1-etienne.carriere@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_183524_483299_E44BDB70 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Etienne Carriere <etienne.carriere@st.com>, devicetree@vger.kernel.org,
 alexandre.torgue@st.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 srinivas.kandagatla@linaro.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  8 May 2020 15:45:27 +0200, Etienne Carriere wrote:
> From: Etienne Carriere <etienne.carriere@st.com>
> 
> Introduce boolean property st,non-secure-otp for OTP data located
> in a factory programmed area that only secure firmware can access
> by default and that shall be reachable from the non-secure world.
> 
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> ---
>  .../bindings/nvmem/st,stm32-romem.yaml          | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
