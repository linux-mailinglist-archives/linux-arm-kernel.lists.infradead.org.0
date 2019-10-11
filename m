Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430BDD42DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgwxI3HE9bybqTBsqyfjDieSXJrYHdtk7ylMRkCa5a0=; b=rs7NJvORD1A/Pz
	1UJnlLde8MM60I0DspLP4GlUxe5uq5eahu447ACsXGZIg2E5h+uz71xefMC3oX2o77CXR2OMEywCg
	sJRg6liQRmFblC7btP0/QB7LgMP9+XN4j8nPpH+4qndWzfIClYAj9mnhXz665f/AtxGxdA7nmqPRX
	iNceLaSJmCM5R5uh7hUUvb9/SWRrmKb24S1+9pMOeE711NvYlVNO1BdZdJ5zCmUdBdVjTO1llyWVN
	DfEaLv0OX1gsaQAulTUu3GQfg2hMgdzfnd5XDyVnByibqiqiURpbr2HTva7/BPdS2djvYjXCjsjvL
	ChT9GEJidNQH0KBA2eLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvvw-0000RT-PF; Fri, 11 Oct 2019 14:30:20 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvva-0000MM-Kw
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:30:00 +0000
Received: by mail-oi1-f195.google.com with SMTP id i185so8125189oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 07:29:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h5fJtEFtuFWUvHJqhVRZ1UlcM18fQiX2JNGn59cu8yU=;
 b=G07Bj8Sxftna6KZrGfv4Wo5hLvUTHcn1w0zEQcqJplAwIbqaz4qhQ0sAPuj1quY92V
 Z2pgeRYVyIyn/VoP95/qL9Je6r7OvIi+sZ/m6Wa/hRZHLlGlpuaUnv5oLOMZfRCv+EAK
 NxIwEH7n0WxiP4ck4qKMcB0M1jjGA7dCTzKZCm4rnTuhWpWzc9jQGyhxbGpgJs4pHZKz
 GR8NItXhdKtRprUypEP9l8cn6qndnJpWXNxBwzjxjHvl6Mgl6Gn/YRI4oZKgOovCmILQ
 w6UMnirymA0SsBKxtiEE/YK05XiJVwih60nUQnF+g/3PjGFSTdPZ9Z5yqEtrd8g+aDBP
 nh6g==
X-Gm-Message-State: APjAAAWcJgatrOKGCuwaecqqi42q/HYR9rEmzPpOoKNBgswp7l5YFJfr
 NZB6YkO5kF01Zy7wFy1YlA==
X-Google-Smtp-Source: APXvYqz05OapU2prguSEcOrqwZWAQU1X1DxbQzFT40Q80aueTFtb/bR//kdv9SfBZWyms41o+zLBXw==
X-Received: by 2002:aca:490f:: with SMTP id w15mr12557573oia.159.1570804196350; 
 Fri, 11 Oct 2019 07:29:56 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e18sm2707532oib.57.2019.10.11.07.29.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 07:29:55 -0700 (PDT)
Date: Fri, 11 Oct 2019 09:29:55 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: fsl: add compatible string for
 Kobo Clara HD
Message-ID: <20191011142955.GA16526@bogus>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-2-andreas@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010192357.27884-2-andreas@kemnade.info>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_072958_691282_D16F361D 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, marex@denx.de, Marco Felsch <m.felsch@pengutronix.de>,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 j.neuschaefer@gmx.net, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org,
 Andreas Kemnade <andreas@kemnade.info>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 21:23:55 +0200, Andreas Kemnade wrote:
> This adds a compatible string for the Kobo Clara HD eBook reader.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
> Changes in v2: reordered, was 2/3
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
