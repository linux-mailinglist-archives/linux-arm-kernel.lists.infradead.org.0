Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3B944FBC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 01:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sIa3gCj+Pgewk0oe452jDx67P1YhDFx6UJtEg8fESZQ=; b=qWqdIE6Rtdbqwd
	NM+rbb3VIDd8AYHCdOFwJpWMc09aF30mAAVoumj4I13U/cZ3aXEfrllL2XXXCfx3Eqp0F0Vnqn59o
	uDIlqypmKNgBp7sAql4g31d9ts0N2i2bya/Vl++NwRGAI7YNPar5qCmu+a82D+krc+ELGQ5/367dA
	gwxwScUDVvvHut9kBGfq2wEICHb5fIhbMiInBoh672RIVolDMHBkcWbhrnl2Qz6p+pb9NfACSlnUq
	rx3j+BJA3HgaiFY9xkcKWLKZTsnx7FuqtyD9FBvzVEvrdnj83mg/l4eg5cg/R4nu5kap5Ss3/8bUO
	y1u80RrwgrPLXHAx+Nfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYiR-0006KG-9u; Thu, 13 Jun 2019 23:01:07 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYiI-0006JZ-Qj
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 23:01:00 +0000
Received: by mail-qt1-f196.google.com with SMTP id p15so398427qtl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 16:00:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=G79DWXHKgxClAySaL1um3UbwoRauIDKIz2yJHIv30Gg=;
 b=o9q/wgOeoa50wHTiclnHrRKJw1xD0VJ2IQE/OioSy7mlwQsLnYjDDxneJvlKwOLFqA
 eXorOKTbBE6xCof+zRB+8dL/N1bYUPPJclMUhd+zsYTTwLcMpfR8i2tNlZ4SevEJ2bbx
 Nul0gLtUUn9dMHaFn9vnYJHoh8EsnoUnhKqkThzhdwdCDKJbEqgeSvPoNomGN2FFzaOP
 YbIB22BrWQblKTt646do4UPVC/T6Ajy46EJznWg8Mpjc0XzezmHN0PjAEIqx6p1gshUv
 QztSBY/kD/ngJ8kSIEcU2LBnd5TNlbDwzPXG9JFR/t4aiQPMgoLR5sbmwOArB3LX6VNo
 0NuQ==
X-Gm-Message-State: APjAAAWOf+7knIloqq2JBaN3NhqZZSPgs9vJ50bFBTE5W8IMZTprThOa
 4/L90nH/oc1TRPjNOgBU2w==
X-Google-Smtp-Source: APXvYqwO8MrRxA4IbLmzYlI+M/YrQOnAWJYgHuPsnvehk+Nb8nAc5Jq4q/qt4ywjdBg+E8zmH8NyaQ==
X-Received: by 2002:a0c:aff8:: with SMTP id t53mr5602907qvc.47.1560466857634; 
 Thu, 13 Jun 2019 16:00:57 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id n5sm655080qta.29.2019.06.13.16.00.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 16:00:56 -0700 (PDT)
Date: Thu, 13 Jun 2019 17:00:55 -0600
From: Rob Herring <robh@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
Message-ID: <20190613230055.GA19296@bogus>
References: <20190520032020.7920-1-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520032020.7920-1-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_160058_875406_46FC5AE5 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 03:06:35AM +0000, Peng Fan wrote:
> Introduce fusable-node property for i.MX OCOTP driver.
> The property will only be used by Firmware(eg. U-Boot) to
> runtime disable the nodes.
> 
> Take i.MX6ULL for example, there are several parts that only
> have limited modules enabled controlled by OCOTP fuse. It is
> not flexible to provide several dts for the serval parts, instead
> we could provide one device tree and let Firmware to runtime disable
> the device tree nodes for those modules that are disable(fused).
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> Currently NXP vendor use U-Boot to set status to disabled for devices
> that could not function,
> https://source.codeaurora.org/external/imx/uboot-imx/tree/arch/arm/mach-imx/mx6/module_fuse.c?h=imx_v2018.03_4.14.98_2.0.0_ga#n149
> But this approach is will not work if kernel dts node path changed.

Why would the path change? The DT should be stable.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
