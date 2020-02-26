Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55F9170B8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 23:26:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlSJIzALTAmd7AZW6Aus8zrQlygL/iqNbUATMfn1ic8=; b=MBxu78Wi/DRcsl
	tjd3v0Il3vz+UE36o5UkFSC9/5gHd/K0uwCFF7h3XooHspq5P+5WkUGOyiRm7S/D4I8oBDjj4+xtQ
	bVaGLUyXh3FgDuZc/0FxV1fQIozCwS60U+9A9yOjsgp4wem7YseY0heNMIXuPGSbORi6RZYb1xKVg
	3ELkxy4WtqxCh1GDLrJy2fpQo1wRL0fE7KKomS9FCa5mPbncgywgFVPgrcNURX+OR5sMhWZarWH0H
	5cCS+LC8ZbKyKbwBtRBjjxRqs+dPKA1h32A9ESqq4psyF4IPo8ZItWZTRYXcR9pM8rsTVSvurgirv
	yk2g+1KTOXTl6dvWhPlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7587-0005u4-32; Wed, 26 Feb 2020 22:26:11 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j757R-0005YY-M7
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 22:25:31 +0000
Received: by mail-ot1-f66.google.com with SMTP id h9so1003191otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 14:25:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=avYIifKx3Q5UEDnzXS25Xo1efX9Nlv15wS/Qu2SYdCQ=;
 b=ihpM+09g9R89Ra6/lghBLrGLNJ9SAd8zNeQnSfbcoWY3OUnREm+QbeL22Bg6+QV5g9
 gTldCAHJ2YRWfusm4H/oBOIbhHQBTaHtGoGomGgBrl46DsYGp0QUtXbYaKLxO4RR2mNt
 tWeTo5Flu2+y5tjJvbBplrXqxhBxrbODxlYZgn5kmytBsIqqOfi1Rn0I+y+7kWMahmB1
 5LAs9ktCTpGKpABLiE0PokU4ydJBn8kzyFrzwuzXbBGoFtVP/HUHdsNAiFhFJHkGBtLC
 Ik6zMn5oW5qMcmtzstyY0HtegbVTaQN8BnUBHFulI0sse+OodxlguE3hAnqMe9+U+sbn
 wY4w==
X-Gm-Message-State: APjAAAXCWsr1hzT5VeGam3U6cZ0LydUJBpOY/gupZ2M5veSD6AGVwmvE
 SvQdNYl9zCrHBK7WK427Jw==
X-Google-Smtp-Source: APXvYqy70eMmGeAQQjPlOc/swdaYFhmxzrPny5uElx1N2JaEXx2dbW4X1RR9hj7enW903joWn14Y2A==
X-Received: by 2002:a9d:4c06:: with SMTP id l6mr850012otf.161.1582755928886;
 Wed, 26 Feb 2020 14:25:28 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c7sm1258552otn.81.2020.02.26.14.25.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:25:28 -0800 (PST)
Received: (nullmailer pid 12464 invoked by uid 1000);
 Wed, 26 Feb 2020 22:25:27 -0000
Date: Wed, 26 Feb 2020 16:25:27 -0600
From: Rob Herring <robh@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 1/4] dt-bindings: input: gpio-vibrator: Don't require
 enable-gpios
Message-ID: <20200226222527.GA12402@bogus>
References: <20200222231428.233621-1-megous@megous.com>
 <20200222231428.233621-2-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222231428.233621-2-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_142529_753882_346D4816 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 Luca Weiss <luca@z3ntu.xyz>, linux-sunxi@googlegroups.com,
 Tomas Novotny <tomas@novotny.cz>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 23 Feb 2020 00:14:25 +0100, Ondrej Jirman wrote:
> It is possible to turn the motor on/off just by enabling/disabling
> the vcc-supply.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  Documentation/devicetree/bindings/input/gpio-vibrator.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
