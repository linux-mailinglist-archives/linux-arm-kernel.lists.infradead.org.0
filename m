Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 970B9199FA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 22:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2fOxGUPlPitQYbpEYNokJNlUcDAC61OHkfjk9qMr7M=; b=TMasYTLs/2aZdQ
	L7HPGkkqYDOm3AWOM/DbcpVdIlHqQ0kxBbLFnWHEcI6myhBmij0jowTNW5IgSkjlVrR3k/wEHz9jJ
	fFAvvIuLxXZLn9KFv6SU/x2SrJjaqD+3hxGhXvGWrmhlQuoWV873IjxKC91LdC2q32y4eThoI+xE8
	Ap7pNlT972QW1QNugODXLhHxAe2SXm3lcBlWgkQu88P8Oo6KXL8vLbouiSIUNOx3EPPg+WyzuvD6k
	mFKkNDVatsZKvPuvC1yEFoxf+2HAENa3Ninxw9S5S8MKUaRiPtRWlXh1DvlutaMLU/1ZnE29FUNX5
	w7rTMm8qt7fojNCLrNIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJN3z-0003tH-JL; Tue, 31 Mar 2020 20:00:43 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJN3o-0003sX-Nb; Tue, 31 Mar 2020 20:00:36 +0000
Received: by mail-io1-f67.google.com with SMTP id q128so23056882iof.9;
 Tue, 31 Mar 2020 13:00:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s9DFvHioEqxQs6sviOj1Sm2a5WFW4fOhlT5MmKmuEBU=;
 b=QYc3tP3LHEZBwsrD/h1xNc8nllOa4PVtQtSjI2W+I59XI+eR/XcPgdSmnfysg+Bmro
 2Hd7vd6qvBMruCzOGP0SKeAU3tSdZzMuBpWFmRmpigXhwvRbHS19KS8HkttPsfA+AnQP
 DsBxDdHAm//QE9mdX9jaKCcuHkp6p9fnNMXfLv42kRoL3y2tFb3nN+ipjIqpiYSv4Tr2
 UltlaQBJF8HC7yyqhUHAURA3YDp717quQHaJOI3tKmK+pcg5LZcjgp/9Tb35XkK3a7/l
 uFyQPhnekBk/rfExawefYZ3CIFQCelSy7GFuMI8dlE0aCWb3JNlIFuoqoycma2QeT2eg
 98hA==
X-Gm-Message-State: ANhLgQ3Q9BdbOHRUHe5MwKLU2uAnJLbZNQo0Ly5A1WkXJrH8ycGaEsfE
 oT0S7G4JjEdCBVZ9pmRefQ==
X-Google-Smtp-Source: ADFU+vvHXBGG9b+jJlsNae2tD54vi6RyRFIDg9NuHSbI3xqW9sGB/or7YPwGuRQfIT0By0v/er67tg==
X-Received: by 2002:a5d:8b57:: with SMTP id c23mr17020954iot.161.1585684831803; 
 Tue, 31 Mar 2020 13:00:31 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id p69sm5718490ill.46.2020.03.31.13.00.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 13:00:29 -0700 (PDT)
Received: (nullmailer pid 5074 invoked by uid 1000);
 Tue, 31 Mar 2020 20:00:28 -0000
Date: Tue, 31 Mar 2020 14:00:28 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: sound: convert rockchip spdif
 bindings to yaml
Message-ID: <20200331200028.GA5018@bogus>
References: <20200324123155.11858-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324123155.11858-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_130035_083526_49BD381F 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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

On Tue, 24 Mar 2020 13:31:53 +0100, Johan Jonker wrote:
> Current dts files with 'spdif' nodes are manually verified.
> In order to automate this process rockchip-spdif.txt
> has to be converted to yaml.
> 
> Also rk3188.dtsi, rk3288.dtsi use an extra fallback string,
> so change this in the documentation.
> 
> Changed:
> "rockchip,rk3188-spdif", "rockchip,rk3066-spdif"
> "rockchip,rk3288-spdif", "rockchip,rk3066-spdif"
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V2:
>   dmas and dma-names layout
> ---
>  .../devicetree/bindings/sound/rockchip-spdif.txt   | 45 -----------
>  .../devicetree/bindings/sound/rockchip-spdif.yaml  | 94 ++++++++++++++++++++++
>  2 files changed, 94 insertions(+), 45 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdif.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
