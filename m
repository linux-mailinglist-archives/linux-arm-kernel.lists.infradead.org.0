Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0D712719D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:39:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRftz3rv5lyLTXvDQBZWNw86A71a2QyqmkNWAFHiuxs=; b=rdzHi/cWBPKexF
	+gTCkPxuql2zwfUx076nKTR4ldNxzInUVEvZm1iiM6LEvHcDDGJ5ZjxVcEgAirZ87wqTeVwvvqZES
	/GsCR8pmZL7lXm9XqZ0UhrQIrdTks7EcnNplYreTmzrpYSkqyMbulKcLGhWL6YJhBh7haJjEAF1Fg
	nsdrT3b8Ppz5eQvo/iIuI+tume7Cg0CWbKBsn3ebqoJRgy3KfMf1g7ey+wVJpmyBNXcnJJoM1oBYs
	c3GZPhAOXyZJA9dhfOv8vjJBDD8M9u2o5wbkzq6BLfqn4uxNadyNXUIpYnmbm1cQsFqFfeEhT89WI
	HG63pU7REbPhTzXWdr2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5O5-0007Jg-6L; Thu, 19 Dec 2019 23:39:21 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5Ns-0007Id-1Z; Thu, 19 Dec 2019 23:39:09 +0000
Received: by mail-ot1-f65.google.com with SMTP id 66so9324586otd.9;
 Thu, 19 Dec 2019 15:39:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=49NkEdPVUTrClJQG9wypO7j+KSvP2cMEHBxilTCm4Oo=;
 b=oosigDM8y9MgJRg/KnzmZWM1Fb14pl0gIuhhGgJ9xRPRi0dJI7CpzVPzgfxR73pCvp
 pY4IjSm8BgjocgcaMfe0QiLOLnexqIZo+Q0rKR8HCEzxwSSEmUry5PFFn9iI/JfP3/R9
 4aSxsV2RCAa8IB6GzcHbHeQgY5we1m8j3N6ST5rOPPd1FW8/9LTS37hS1PMdjbTjscoz
 EoxLDV6dOZYPPnyTbHynRa/KCIOq8g57pF8R0b61fW9mP6IsyQuKBhuLBpiiLHiVNTcE
 WeoA12bcBDQg2HzMCSptMydom8TcFLyA4578g8IGogQpY6rgLx0VGjKYSnBqhm4pwvEd
 EFAA==
X-Gm-Message-State: APjAAAXfXXmxwC9gUAIZldNLvZQRMnOWAiyJhCjqmPtIoN6E+F7uKlfr
 U3eq1FS+LDUE0Dd7mV560w==
X-Google-Smtp-Source: APXvYqxzLHH4qXGeUb8cHj1eoRujkYAF2qvTXqb8zLYaI8LIyC64mQDJGqWuHCRdXoGlm/z+AQnO2w==
X-Received: by 2002:a9d:8f1:: with SMTP id 104mr9303245otf.107.1576798747100; 
 Thu, 19 Dec 2019 15:39:07 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id w192sm842206oiw.8.2019.12.19.15.39.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:39:06 -0800 (PST)
Date: Thu, 19 Dec 2019 17:39:04 -0600
From: Rob Herring <robh@kernel.org>
To: Guillaume La Roque <glaroque@baylibre.com>
Subject: Re: [PATCH v2 1/3] media: dt-bindings: media: meson-ao-cec: Add
 support of ao-sysctrl syscon
Message-ID: <20191219233904.GA18354@bogus>
References: <20191213132956.11074-1-glaroque@baylibre.com>
 <20191213132956.11074-2-glaroque@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213132956.11074-2-glaroque@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_153908_085916_9D6D0A70 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, hverkuil-cisco@xs4all.nl,
 linux-amlogic@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 14:29:54 +0100, Guillaume La Roque wrote:
> ao-sysctrl syscon phandle property is needed for CEC wakeup support.
> This property is optional.
> 
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> ---
>  .../devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml    | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
