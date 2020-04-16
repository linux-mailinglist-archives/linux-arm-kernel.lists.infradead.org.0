Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A56D1AD03F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 21:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jP3D4ej46MOG3SyrhXAzlcvqGO/pejqKydi1EZHPYug=; b=m/MkYkSjqhV75M09M5e8zgVH+
	RBIx4JR8OGgMCgNPuzb0++44yjUCY3XwftgIET+Q5q7BKqjbeisXtHcHYYZtn1p+m6KOztlVd0XmX
	jYWT24YkXttUjMpuQ0vX1sWRNDEpis8z5lzT2GOYoKz0j6h6cZEYatdZOCQ+YSqO0FzmvmxhuEv1t
	6Ai9x7v10QdnC87kzYH5vVhR95z85hkOT9VQcNaT1JKscj+KOH5nl3eCcaEQ58SQ4dgKOHLoS1s7U
	QJMr7Vvv2gORIJ0Oe/hNkCOv5Koi2C6TS7yqLDqktRGHvFzo1MKttNwpemy8HXp1iKZyyN1Ro0paA
	cJuWwKdOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPA5t-00030s-D9; Thu, 16 Apr 2020 19:22:37 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPA5k-00030X-5Q
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 19:22:29 +0000
Received: by mail-pj1-x1044.google.com with SMTP id cl8so1826858pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 12:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=u735V9HHFXqgUnn+jYHUVF/KBe71XKmd0C1DJzJ/jm0=;
 b=W2ktpi/SDTw8TMDFSJZ/zDu6AgJz/o/lQDlgBHyxfpS6M0kdrnOV9HhMIsB33D4oxz
 WkkoBzxmVABXTyb1MNK33/9L0RGn71GLlgiOAn98NGKGoSliEfX2EsjDVyA8aS+HyAnq
 bsbUFICd3O/TtkeHgElSKP4rOjWd43cz6xGuAJELa0pGOUPg9WDyf2L+naAU3wqqNzfn
 fB87FeiUJFP776rRtewpUaPf/2Z9AGBAKP237bD5B1BPTg1owzPB8TNycnu9DGf+NcJV
 +qlFAgnYgcP/yLOYkSIZGmUIy3+h3i+CEzIsSkv8qgOxHbk1pCg64Uz/XITUG0DsBIrf
 LtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=u735V9HHFXqgUnn+jYHUVF/KBe71XKmd0C1DJzJ/jm0=;
 b=lLz+INyRDLcCcCI1dhiVek9rJk6TbWq4ddul+YAASJeNoYlEccjjAvQa9e7VTK2KsO
 Ow0tM1eeBKep594oQLyolNEwkfr4u7bi68vmT8yT9kThfS+Ov8AS7Lj9QteSSfCfASWV
 RmICJBNwwWHvNtKuktC344LIR/cRtphJ4uk53BHIvr0VAyQvMPzF6FeVs3fJrkRk7Gdp
 d8XZ25S9yctyJwsB3NbYT1LhoPguhxiVEBx6Ahbqe0QqHkvUkiAROUMTyrvltW02PhUx
 Q+FVrS3LzXXnItN8QzUOu7fKzpcJwXOlEMZEOvpObPs21W5xi44NaBsJLOsSgIFft2P0
 dqCw==
X-Gm-Message-State: AGi0PuZQ1kJcQhWc6smv5tPLG+Gk6udKt1ljpf8SLBI4JNrkyIgZwVT5
 sUNBZ2KGa3xHp3rSYmA5jDA=
X-Google-Smtp-Source: APiQypJ8niiaX2gOmgAlrlT9yIzDtccBKMj5GL23IXsnka0sPYbvBAkpvNhvyp9Myo+aHy4zdMm0dQ==
X-Received: by 2002:a17:902:868d:: with SMTP id
 g13mr10853361plo.317.1587064947693; 
 Thu, 16 Apr 2020 12:22:27 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o40sm3544636pjb.18.2020.04.16.12.22.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2020 12:22:26 -0700 (PDT)
Subject: Re: [PATCH 3/5] net: macb: fix macb_get/set_wol() when moving to
 phylink
To: nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 harini.katakam@xilinx.com
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
 <897ab8f112d0b82f807e83c6f9e7425d1321fa09.1587058078.git.nicolas.ferre@microchip.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <8d51c4af-1e00-f33c-0f88-10afc837e46b@gmail.com>
Date: Thu, 16 Apr 2020 12:22:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <897ab8f112d0b82f807e83c6f9e7425d1321fa09.1587058078.git.nicolas.ferre@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_122228_208425_5275B0B7 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 sergio.prado@e-labworks.com, pthombar@cadence.com, antoine.tenart@bootlin.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 Rafal Ozieblo <rafalo@cadence.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/16/2020 10:44 AM, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Keep previous function goals and integrate phylink actions to them.
> 
> phylink_ethtool_get_wol() is not enough to figure out if Ethernet driver
> supports Wake-on-Lan.
> Initialization of "supported" and "wolopts" members is done in phylink
> function, no need to keep them in calling function.
> 
> phylink_ethtool_set_wol() return value is not enough to determine
> if WoL is enabled for the calling Ethernet driver. Call if first
> but don't rely on its return value as most of simple PHY drivers
> don't implement a set_wol() function.
> 
> Fixes: 7897b071ac3b ("net: macb: convert to phylink")
> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
> Cc: Harini Katakam <harini.katakam@xilinx.com>
> Cc: Rafal Ozieblo <rafalo@cadence.com>
> Cc: Antoine Tenart <antoine.tenart@bootlin.com>
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
