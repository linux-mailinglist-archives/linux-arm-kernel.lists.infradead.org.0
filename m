Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFCE13C8A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:01:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8mG/nI5mFXQn3dW/Z8eQD9/497oXlDuctV2IwY5/xw=; b=VX//qB+n/rH9o/
	dECnMkuI+xFg7jdLV0Oy+l+5hPZLyM7j09sLcEGrvN5dG6FRkD2uwBQyoF50/BYg5tn7XwHMNtMkB
	v6/suLb0aR2aFmbwXA+9E4Xq4WhXwDWPeT1REKJLYFqM19pZGTovTvKY5+bgPLANHRsxmvct64CpX
	MmZIR6wHmh8plA+9VB7puv7RPnfjJ6EUsV4G39V+xFKj+OcCbEWdmQymlGIt/umGF8W9Kz1tBwgd5
	aZgQm3V0PSnm4dLRHKgHYn8zUBwS4lysFj74FB7ixN1umJL7UZWIgpPj1EYpt8nXh1e7rHmN97jQb
	bPru3V5+hOnUW20x4thg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irl6l-0000FO-ID; Wed, 15 Jan 2020 16:01:27 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irl5n-0008Rw-2K
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 16:00:31 +0000
Received: by mail-oi1-f194.google.com with SMTP id d62so15801680oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 08:00:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XZ89QzBAoQ2DzrvbjynM5ltUEoPFqx0Q/mdX+QC5z3Y=;
 b=gc9lua1WSs4ZG+3iko68oQ2lsl5G7XY58zwC0WllInrWNrvarN+8tr7LffrhUHVwqJ
 HpUHHdlIZZp2+TDu0bGPs9pccCkISbMY7KBqw7LoqTrRhkexsF/ISgMEzanc9V4+t3R4
 VyeSADQdO5ZZzSbZshGR52btbF7DkhJP4Y1stmaPrDVx2CuR+QXukw6pgcNaCuI9+Hqp
 5GvTFRdEdE1OeQcGK5ULvnIqUfGfW7/ES0nPgBkZIhnmRI/3rg1d9Fb5UZAU0p4quJoi
 rd9YgJ8vwQ/yj6dx0y7YVx3SZztkMeVztqteCDKPM4UTl7lbQ6cZS1AaeZ6P/Qz70pXd
 Ou6g==
X-Gm-Message-State: APjAAAVcxT97G+p0BUARy6ZqZsHLe3+hNqQ3Tup1/R8PZYXmkRGL1B9j
 rA4LCRyhfgbYXDjBIEk4ALqThFY=
X-Google-Smtp-Source: APXvYqwvk7Xe7Rg/uo8Iehkaq8w9ajOPDVizWFQZaanwlpLmeOGJM4LoJ4ASl7pLC8Drl14mWsTwIg==
X-Received: by 2002:aca:b1d5:: with SMTP id a204mr372306oif.82.1579104025784; 
 Wed, 15 Jan 2020 08:00:25 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o20sm5747461oie.23.2020.01.15.08.00.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 08:00:25 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22061a
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 09:42:40 -0600
Date: Wed, 15 Jan 2020 09:42:40 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 2/7] dt-bindings: mmc: fsl-imx-esdhc: add i.MX8MP
 compatible string
Message-ID: <20200115154240.GA15071@bogus>
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
 <1578893602-14395-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578893602-14395-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_080027_109274_AF398D3E 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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

On Mon, 13 Jan 2020 13:33:17 +0800, Anson Huang wrote:
> Add compatible string for imx8mp
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch
> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
