Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0276C16525D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 23:19:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPJZDw++bwrAvFYulaZNnOcYwOsaTuogcRU8ltXK2A0=; b=G0her9nrlB0kto
	TxuKnjRjUofR/mE70MBoFaZaTiQxA/3FfJoRcOEDYmX4o/pZwmwKC7y5ci54HigefhG1x9WmCzeXX
	m1zcy9dmW7padHh51zQWH+U6wlTRxyNhB5y3H4sRC9DF+N5ACbhGx1koNxa2l85e04bivpiOCDW+5
	FQpuZZfdHWeeWP9dAeWJ5jXapLiUjL7VpK+DEwE45wxardzaRCUJ2IPTveBsORrJH8gMMG9hPlQTj
	DV4qKeC/jnDPd3YsJ2IHj3hr9PCE8yMBPhCnvgQ/TfU24j9Ej7zXSCiqTasjbMGqqlbCD2IuT0oN+
	PIUvvs0IpW0dR88RwO9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4XgJ-0005WA-IU; Wed, 19 Feb 2020 22:18:59 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4XgA-0005VU-Ir
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 22:18:51 +0000
Received: by mail-oi1-f193.google.com with SMTP id q84so25497119oic.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 14:18:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Lb8z6pmbJJ2LJeHbmRGrWhVRqC/aW6CAMpmAMz1gxTk=;
 b=Zs+/MYE3GBkwojZYAdl5HYEovLmxIICVIw51afXTd80n+dep80AjIsJLrXcfr8IJ0M
 ZCa4b43xB8zNSPx221x/2mf59wnA7oeDbqkuhCpdgwhjSLy803JEb6yQCx6lSgsusCV1
 a/xHPuRJNGZc6VveVKZsZQW7xkxDBPZFRaOcNteyT0+VcOCaYGY9s6fwQmc28UecyjxM
 O9wyce6WG47OcQ3Iogyx0WXVXN4ZakiRVhy1NukhtjiLuMameoOxHea7Q1UA1gfz1ueg
 UJpEcZnqO05vg2wtkt1YqYqPs5AliCRsAasYZ3ber8VaZiwg9FyE142EmvRZDtlewgX+
 YQSg==
X-Gm-Message-State: APjAAAXTqLhmK0774LXcJD/L8tsfPj/sB9W1ZDTttZKTES5r6bO1iJQr
 ODT3JdfNgx35Fdy8VCLQNQ==
X-Google-Smtp-Source: APXvYqzHJyK1DAI0qeUN2NlIkEGccyceEGasZSdf75idALGhOVUFySZL04o4JBQ0SR/eiD5nh9G9cQ==
X-Received: by 2002:a05:6808:3ae:: with SMTP id
 n14mr6210097oie.63.1582150729704; 
 Wed, 19 Feb 2020 14:18:49 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p184sm428899oic.40.2020.02.19.14.18.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 14:18:49 -0800 (PST)
Received: (nullmailer pid 6936 invoked by uid 1000);
 Wed, 19 Feb 2020 22:18:48 -0000
Date: Wed, 19 Feb 2020 16:18:48 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] dt-bindings: usb: exynos-usb: Document clock names for
 DWC3 bindings
Message-ID: <20200219221848.GA6855@bogus>
References: <1581343456-18900-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581343456-18900-1-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_141850_625127_961F763B 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Feb 2020 15:04:16 +0100, Krzysztof Kozlowski wrote:
> The Exynos DWC3 driver expects certain clock names, depending on used
> compatible.  Document this explicitly in the bindings.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  Documentation/devicetree/bindings/usb/exynos-usb.txt | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
