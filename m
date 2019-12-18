Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A6C123B42
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 01:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXK+IPdhBIue9OZ/fuRzPRsYw2dH+Oli2Dstvolwn6I=; b=N2ppRmxUlS5jV7
	s/TE6/sFnkIjVPLFNetQIcjh5vqbUgMvobbYEBa/xrFWZCXYxT7srCreI3ryTw1D5H9SSilZ/IacV
	yiplxz1wkKSVSl9gtvPiVXglm/5Zmr6MeZ90e5zuiFGdqvRe9Yjj27Nsffc5AqZ5l836pWXNnEDrE
	jFIiS6l3vEOy612wIgo5HjFkfgWNiyYMSLamI4iL8Dt9sMiZzCgp/FufIbQJttZHyw2+Qk8wC0vja
	KtZxlI0eEKuwyzM5khFu83IRM2v29yAL1tLMJ1GIeMFYrH8XF6iS6B8XNQ/4qAHdMb2+aSp8caE9Y
	G1zko8Ibnu1WfsGcxP3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihMmk-0000TL-NN; Wed, 18 Dec 2019 00:01:50 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihMmW-0000OH-80
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 00:01:37 +0000
Received: by mail-ot1-f66.google.com with SMTP id a15so122258otf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 16:01:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9vg2WtMo4ZpT0ZxliZmTf/NuvDxUCffHyo9DOYsxFcQ=;
 b=uKoFqajTSDzgDZvVRtPyqBefcEYU6PpmFH3SZ83GKvT+ikt6sp7Dsptg7TwWxGed+5
 Nu6/PNX+tXoFOQgIt5R9aRU2uaZML7vgszSBl11TpK4rwSUCIojnqenxw/QCzoj0UWgY
 7ChKVDpaRCK9G9lFLQDgV8LnJMKZmK2BJPJbeAZFCh15OpcYJzqrEcVnS5Kb7CXQHPxp
 hnP5gJb9jgJShc7fpTueN8zLC+J+ikK44GqUGBvCyKDBQmypEd/O7ZvIPF8n+eR4Ll7K
 IXBOJ/eo7gNiTVxpFhwXybDUavyUFoDQ/SS28e85RZ5H4W8vP5mdPAZwn0G375mk59E+
 54PQ==
X-Gm-Message-State: APjAAAWzI/KmpLcKrYLVSGOneQMzYBB3R9bXfMsm+VW9XkmdwnZ3y4rZ
 J49DNFh+yrqkmYEEXP60pw==
X-Google-Smtp-Source: APXvYqz4KsCKLuH3i+DvdRRLBPycXfz72EfHac3NLerdd5D5i9FdA8OPgGvOfr8jCfsIYQiq+hO6Gw==
X-Received: by 2002:a05:6830:109a:: with SMTP id
 y26mr123322oto.227.1576627295508; 
 Tue, 17 Dec 2019 16:01:35 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q7sm128986otn.9.2019.12.17.16.01.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 16:01:34 -0800 (PST)
Date: Tue, 17 Dec 2019 18:01:34 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 2/6] dt-bindings: dma: Convert stm32 MDMA bindings to
 json-schema
Message-ID: <20191218000134.GA23692@bogus>
References: <20191217092201.20022-1-benjamin.gaignard@st.com>
 <20191217092201.20022-3-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217092201.20022-3-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_160136_300588_036FBF48 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019 10:21:57 +0100, Benjamin Gaignard wrote:
> Convert the STM32 MDMA binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/dma/st,stm32-mdma.yaml     | 105 +++++++++++++++++++++
>  .../devicetree/bindings/dma/stm32-mdma.txt         |  94 ------------------
>  2 files changed, 105 insertions(+), 94 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/dma/st,stm32-mdma.yaml
>  delete mode 100644 Documentation/devicetree/bindings/dma/stm32-mdma.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
