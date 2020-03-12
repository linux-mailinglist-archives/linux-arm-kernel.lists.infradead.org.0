Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E58918354E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 16:45:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDGgZNnsKke3/wd25vv7AtztBIRr6aNQG6rFLJwjouQ=; b=SAamEaGjhTOBEy
	+5r9LuoHR/11m5EUx/92/wWKKOXxR8Ugvj+sck5YTg3TR8ay4BYGfDPvNdjm3QPnEVz654isbNx3w
	QCGDbk7utdZo/5SKgEThj6cm8xO4+xNH6Xxh2LnqSGi5eWF8bRkmnmYffqaM7w/7blZvnMmSjIJHK
	PVjWmvhJaREhIBjZNOMQAgqwGE68ZEkr7qm35ZvFpz85GViCMxKZaVY9SsbniQ0TNkNqVvQSt1qy/
	DfBvTLsncfcXkrH1vzsSOBHGlyd5tDvkGW0zWB5cZ2yNhdha43hFb2jcrAac2Cp4LzIe440REydG+
	Ceqdgb0WDsceaApg8NCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQ1c-00013O-6C; Thu, 12 Mar 2020 15:45:32 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQ1R-00012b-9M
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 15:45:23 +0000
Received: by mail-ot1-f67.google.com with SMTP id f21so6721914otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 08:45:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=omZBFYa2QsjHQtBNswRRHIFur2RG8M6Zjr+ms/JBsZg=;
 b=lpTwTWxJi5X8haODHytjgOj9oywFfEHcJGab4rVDpeUYFfK6XWHe+Kz7+D+wl6GiL3
 8vqWsdxW9gm5BL5IWfA74QwN/qSK5trskvNwOoZNhMZ0HvO9khGtneKN0yOTDJ/d6r5w
 y1pZbKsW2XzQ8PD6kyq7MGg0IGKnfjXOtVlmGS6KC1IWqXs/rNWVRBav5ibrD6v4W/0P
 Z8KkfwFBkTpnBVALIgMnMrhbuKY48gJgYp7hQckgxR/46MYv1xez6WNw7AKAsPudpV62
 kLrfmHAwHgEVNrx39mcQi0EkqQAS0VDNfxkSYZSmS8xGKha4M0V5UelkHbj1F413eujz
 Fi1w==
X-Gm-Message-State: ANhLgQ2sLS49AXUCAmchlEBSAMSQvhqzQZhiwouaP6Va6jEzXsoqPrpC
 245dYKYS6mEz+tkzVRBaSyjsd/Q=
X-Google-Smtp-Source: ADFU+vuRP1xVylZgCCtabXwadQXw7mcqdokmzky4hJinvtfoqJ4Nvw8V3ns+ImZHIsyS57UPZPelDw==
X-Received: by 2002:a9d:18f:: with SMTP id e15mr6454176ote.42.1584027919060;
 Thu, 12 Mar 2020 08:45:19 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k25sm12639065otl.34.2020.03.12.08.45.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 08:45:18 -0700 (PDT)
Received: (nullmailer pid 17128 invoked by uid 1000);
 Thu, 12 Mar 2020 15:45:17 -0000
Date: Thu, 12 Mar 2020 10:45:17 -0500
From: Rob Herring <robh@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 2/5] dt-bindings: panel: add binding for Xingbangda
 XBD599 panel
Message-ID: <20200312154517.GB15635@bogus>
References: <20200311163329.221840-1-icenowy@aosc.io>
 <20200311163329.221840-3-icenowy@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311163329.221840-3-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_084522_011926_27AD527F 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Mar 2020 00:33:26 +0800, Icenowy Zheng wrote:
> Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI LCD panel.
> 
> Add its device tree binding.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  .../display/panel/xingbangda,xbd599.yaml      | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Error: Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.example.dts:17.1-5 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:311: recipe for target 'Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
Makefile:1262: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1253057
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
