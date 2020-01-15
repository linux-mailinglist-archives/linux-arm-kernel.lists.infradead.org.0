Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA4F13C87F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHyi7DqdcgubdTYa5kT/awlQQp4jN+mzS06tdedBh8A=; b=JgzNl8S/RswQV9
	6odZrLTbnub0QUP5mDfXtWTImdsdUg5mLf7lUdvQOvVGjHuTdtSyGey3OlQSVMj9T4PUtRl3bfUBi
	Z6Konw6qUJZnTxS9nJcglJh85+mLW5oWR6c9gu6y1W9EmK9UZfvL+R8UcOp7NDP1Q231esuF8UJ3X
	3aKGflYUdYjswXisZ0AbGGXmljP3lwOteFbNV3zSzNiPNTwTL2sSBSu+94qtiUKRGQlCejcbYpbiR
	0xv5C3iaK1HPC9x1lY33nWUbkGmbu9pbzGDJNsxAJvDdQvBHhKRw+4QH/MBd8C3c74Q2Um1wKOcBM
	phzuMY0qCzOuT+Og9QBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irl19-00064Y-9y; Wed, 15 Jan 2020 15:55:39 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irl0v-000630-9u
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 15:55:30 +0000
Received: by mail-oi1-f193.google.com with SMTP id d62so15783408oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 07:55:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RUBHE4XJm85NFA8oPl1FMyCsYkpngZCS0u/hs5fFTfs=;
 b=J5rlwEKq5XPswlPnsglzha5dcpOrvbi0nN4ATMGgN8RxnubHCJBVTE6Rrsn2qpMDKd
 u3HbODTTOpaBxK6Zr0WtJSBFdqt2F5vPkd9xOCmuTVJMrT44rG/0yoX3OkVs+G8nPVNZ
 9QX/RFgijthkTAwMmZMu2cSoebmW/eBm4c/EgZ6Py6w5LMyhCeFETIP4+MC5FiBqLyRC
 gV9SmWMe/1nuYqw4eIGNKnXE9gqumicwbO1UAxQQouOk9+9W+vGEj3miZBBsYrgmuZ9g
 3g2d8aphIa7DE6DY5+jO/+fxAE1517jJa9OHK7AFca6R7k7XXwrxsHHa/fC8Cd9BtGzl
 r32A==
X-Gm-Message-State: APjAAAWUNGnQIvZ/R5FEL/jA4ZlXOkRYhvwMC/H65IbeLWCWNqj9TsqP
 ylPASXyoW28nvFAoZJY0g3c9RHA=
X-Google-Smtp-Source: APXvYqwiRsXHsJNkI0tF2y1j/Qm8Oh2Mlfg92RKtEupv1JfYOBJMyssCzlSU7Z+fB3Q9iFAxuqhRMg==
X-Received: by 2002:aca:d78b:: with SMTP id o133mr318604oig.163.1579103724498; 
 Wed, 15 Jan 2020 07:55:24 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q13sm6647689otc.5.2020.01.15.07.55.24
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 07:55:24 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22093b
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 09:42:50 -0600
Date: Wed, 15 Jan 2020 09:42:50 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 3/7] dt-bindings: imx-ocotp: Add i.MX8MP compatible
Message-ID: <20200115154249.GA15419@bogus>
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
 <1578893602-14395-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578893602-14395-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_075525_346435_0DF3A734 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, marcel.ziswiler@toradex.com,
 angus@akkea.ca, srinivas.kandagatla@linaro.org,
 manivannan.sadhasivam@linaro.org, leonard.crestez@nxp.com, festevam@gmail.com,
 richard.hu@technexion.com, andrew.smirnov@gmail.com, rabeeh@solid-run.com,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 robh+dt@kernel.org, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 rjones@gateworks.com, shawnguo@kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, vkoul@kernel.org,
 broonie@kernel.org, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 jun.li@nxp.com, cosmin.stoica@nxp.com, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 13:33:18 +0800, Anson Huang wrote:
> Add compatible and description for i.MX8MP.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch
> ---
>  Documentation/devicetree/bindings/nvmem/imx-ocotp.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
