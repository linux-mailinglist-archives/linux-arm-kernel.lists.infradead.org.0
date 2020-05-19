Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 299661DA036
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 21:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndTsRIIj+RZwds2nVtCbuRx1xgoKyNEB8CaqdQQV1uE=; b=RwoNtttfY31O23
	vTE+rLjNPkCzOOxAxPD8nbynhk7186dhy0JkXpwVBT/vnyUbtOL5dTJse4gDdO3kqvcOe99ge7Hm8
	9FWk5YuvLqM9kMZ7Ao3vqT1qDdWEVSdjs+lgQOzTFIzVd2THujgiWp0Ca7ACbXXrQmU8PhcxxDqkM
	x7ERPaEE3Ccon0aKqYy5eNLYeERiRdEG+i3DpxWzsd+qqgKKwz7O60jpHFD09T6zHPCACNAFrIN2g
	GM4bf5UOVKn9v9OiOODV0Nm6/0I6OseyUdn6xujwXZ52OW6NI+fWv0agFO8myfIlkmZGcolOXz9ik
	xFZKiJ99U91m4N1YpTzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7Tw-0006cf-Cy; Tue, 19 May 2020 19:00:52 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7TR-0006Ry-Jy
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 19:00:25 +0000
Received: by mail-il1-f193.google.com with SMTP id b15so451310ilq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 12:00:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CigNBiFGguISDYdSjZo6JK7yGCkqs8bnsK3pMxkFnS0=;
 b=DRjlrsr5CoVoglPIN2kssvYjEA5aqMRX8JL71TVSMrfVT5hLEnCsH+quQ/hMUI0bKN
 N9U9cFphZDn+ktXowFxrPTio1PKzTpDCXpYrl6+x/h6Eg6tp0DAv2/uMbD1tBCTlbXDX
 OGk9N4ghgc9k2t3JVo5xlkbJ3TPsYAxsj0H5Vsb/eUE9CE5TkHqqHxGlJaIVtQaH+ZLc
 c7lsg48D7cBjkrA6IzOnCc+nzPZts6v5OX46bzr6EhIGEtjjy79/K4Wm3lueth+bGFjh
 GiEO5nwJ82mjQ3ejZnrXXaYawl3J3V1GxRER2MHJSA2D2HYGBbM7uOsupnd5TCdjE8oX
 JBbg==
X-Gm-Message-State: AOAM532JHyfKhnO3/pFf02Q4to8dzTG5jiNL0VtqVjLShNXczUkk5SYj
 F76co02W0uCm5vB7O4EVTQ==
X-Google-Smtp-Source: ABdhPJx7GM4OuG3FNL/RP90uFPgLl2sZetDsvHbDfXe9ifMm1+a3LfvTd1zFF24wU8jDuhFOpm62mA==
X-Received: by 2002:a05:6e02:cc5:: with SMTP id
 c5mr472948ilj.152.1589914820957; 
 Tue, 19 May 2020 12:00:20 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id b8sm130937iln.47.2020.05.19.12.00.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 12:00:20 -0700 (PDT)
Received: (nullmailer pid 478222 invoked by uid 1000);
 Tue, 19 May 2020 19:00:19 -0000
Date: Tue, 19 May 2020 13:00:19 -0600
From: Rob Herring <robh@kernel.org>
To: Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: nvmem: stm32: new property for data access
Message-ID: <20200519190019.GA478168@bogus>
References: <20200512131334.1750-1-etienne.carriere@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512131334.1750-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_120021_870128_81C71B96 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: Etienne Carriere <etienne.carriere@st.com>, devicetree@vger.kernel.org,
 alexandre.torgue@st.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 srinivas.kandagatla@linaro.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 15:13:34 +0200, Etienne Carriere wrote:
> From: Etienne Carriere <etienne.carriere@st.com>
> 
> Introduce boolean property st,non-secure-otp for OTP data located
> in a factory programmed area that only secure firmware can access
> by default and that shall be reachable from the non-secure world.
> 
> This change also allows additional properties for NVMEM nodes that
> were forbidden prior this change.
> 
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> ---
> Changes since v1:
>   Change nvmem.yaml to allow additional properties in NVMEM nodes.
> 
> Link to v1:
>   https://lore.kernel.org/patchwork/patch/1239028/
> 
>  .../devicetree/bindings/nvmem/nvmem.yaml        |  2 --
>  .../bindings/nvmem/st,stm32-romem.yaml          | 17 +++++++++++++++++
>  2 files changed, 17 insertions(+), 2 deletions(-)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
