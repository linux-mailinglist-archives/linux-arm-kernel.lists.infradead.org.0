Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E131135B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:27:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9xHHCUaUoTJzNvmKITz3ep4kpQ/QOBm+KRcHdD6jEo=; b=Rc5IFGZH7Gh1LK
	Gd6I8EftSMXnbmpFsJIp5I3riUQbjezYiq9xxjv1K9yr/hz9IS1uH94Gru03etpYYBbNHwKpmH8Jq
	ha47c6l7VbplotT7fnZIr7orFclRuqJVPKukF1gx3pD96LDA3ZIAdpcJx7M4R6V1RIgVzZNDLkCV4
	jTvXbLO2RkXHpwTGuda2qGO2BaDwN9VquzhoVeIk66RX2WQ01vplo5EXWIhM5b3T9ci1QGdHaDqc6
	w4H9fRqcPAIwYMFmWFd5RfklUg+CQLF8yFQkJYAg/ui0POsQ62ZqPU51qVFVnLyqiHEMOXqJdhhSN
	q00vScNdbjkalIFvOXVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaJ1-0005WT-Hk; Wed, 04 Dec 2019 19:27:23 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icaIs-0005V4-DD; Wed, 04 Dec 2019 19:27:15 +0000
Received: by mail-oi1-f194.google.com with SMTP id a67so333251oib.6;
 Wed, 04 Dec 2019 11:27:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LV4dBd+pyosFpb8ZOXcuCmQqFB/Z1VrnDg7zb35XO+A=;
 b=AZBu299Ozku4AyWdIPgZFl+pxMLrCvR/p15GbR0FS+0dFWD8kt8e+zsoYgPzbA4Nx1
 XKngLMDNlCdi4yYJjT6rcv6uoJxMTl9ftb9HeVDI0pKI9sZT4YQJqLs9JOu6I0HLwCk0
 9ZrFMOjrdxuXpsUpHnm8m7YOo4HQOlnB0q7LjGONpfADPLnyTco/MTurAbCNXakyH1oz
 qtNwkLWI7NZ+7t1Ha3P3qB9046H2s4JCky7W7gWYlBlX3Oz+3gCwkxxyxA0Oi75Ol9wP
 9vUMsExtKeIXiLxE1ZR9sOo17g38vHb6xmTvKWXKRfNaHo2BuPYz2Y3qWyhRGqh4zWKE
 YyZA==
X-Gm-Message-State: APjAAAW1k8GI4tx4azjjPhD2A1yi3gyVl2Z3fJbWd6Z9q+vY6Jy6/z+T
 fhmVBtbCX5U2XhIc/yfqkg==
X-Google-Smtp-Source: APXvYqyWJX9gBPsev6B4b8T+yjKHMepyHXDfO09PT+6reBKfa28zaBZj1dCvX8NyEatzxLKyG/Veng==
X-Received: by 2002:aca:3012:: with SMTP id w18mr4151923oiw.33.1575487633657; 
 Wed, 04 Dec 2019 11:27:13 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v25sm2037370otk.51.2019.12.04.11.27.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 11:27:13 -0800 (PST)
Date: Wed, 4 Dec 2019 13:27:12 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/3] dt-bindings: media: amlogic,gx-vdec: add bindings
 for SM1 family
Message-ID: <20191204192712.GA6599@bogus>
References: <20191121101429.23831-1-narmstrong@baylibre.com>
 <20191121101429.23831-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121101429.23831-2-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_112714_447870_45A01CE6 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mjourdan@baylibre.com, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019 11:14:27 +0100, Neil Armstrong wrote:
> Add bindings to support the Amlogic Video Decoder on the Amlogic SM1 family.
> 
> SM1 has a slightly different power management handling, thus needing a
> separate compatible.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
