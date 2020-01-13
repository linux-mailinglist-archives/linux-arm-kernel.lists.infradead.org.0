Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282EC139BDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:50:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbboRJh+uH848j7duoRj0wPx5d4rUMgy2NVj2BBrXTo=; b=FNPxjJYoWFXx1f
	YZB0xi5suQIUrYylKH1CMP8feeXyoidSm/dBojPN2Dt3zSem68b+JFHdRNbhpPiFD2dCnV7fTiU0g
	AcReFMd8jxuwamgMEIkUYF1VNWO1Z8EqTneOhUu5wwadRMEYzTSxDvIMpXzhN1g1eEvvmrZEGqmTb
	HuAWWbVC97T+x3oybTadgsoiB3hjcnn2BwKVAPWSQUx1EUCXoXLaBWzgMkKeM9XlJPTFmxuSIg48O
	7rUcH4YYIttpazhcKckI0GtRnJL52DWeNnje+arj4SQeT7zhZ2cr/jWxihZ802qIzAjWv3jYJGlbn
	9KVlv5akJaKh/WU5PvtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7bG-0006oS-3c; Mon, 13 Jan 2020 21:50:18 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7b8-0006lv-A3
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:50:11 +0000
Received: by mail-oi1-f194.google.com with SMTP id 18so9813113oin.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:50:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pxveT8kmVAy+6NNs/m6VYBrLz6raLXBMbZxaVD7AKwA=;
 b=f19v+wT0OaN3vzHrmXBhwI4geU9Lky9/cS55UujrOqTAo/JPT+q/yKOVMMYWKt3he0
 skf6eYH+dTDCHA/5+onlCaGTkEt2whAXw7kNFxhzAl1MLvSkcproxuhQn7J6q6YGaj4n
 J/zkPhrvspdfZA5f2OspNJqKfOtmpMPeNQ2a1DOl9Hk7IA+3AaYDm7P91Oq/ls+SQpZz
 irUon5WiHQ6VmYIWm6cAv+siewPJYef4S6BUltOuC6JxkpNCGGGilmpnOgZkIyxRWTG9
 QEE14R5gY0E8mtR6ZicnekFSLyBY8XCHyVvl5AfadM/rS9h4z872xhsRj/VYFOazMde9
 RLtA==
X-Gm-Message-State: APjAAAWGd+LJcI115yFqYwa1JhLGuE8jgQbFfxoZG4kiIoJza2ZUsC9a
 6WkEh+aOOE6GXInM7inz/sYNphY=
X-Google-Smtp-Source: APXvYqzczDSMjj3uqF0Pwg0o4uQOOSopSF20YKkCQqHhM3wwQA6fvl9YDZoPrl+n1UogPFeeD/NlDw==
X-Received: by 2002:aca:c74e:: with SMTP id x75mr14756762oif.140.1578952208966; 
 Mon, 13 Jan 2020 13:50:08 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 69sm4606893oth.17.2020.01.13.13.50.08
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:50:08 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22198d
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 15:47:36 -0600
Date: Mon, 13 Jan 2020 15:47:36 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 7/7] dt-bindings: arm: imx: Add the i.MX8MP EVK board
Message-ID: <20200113214736.GA12301@bogus>
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
 <1578893602-14395-7-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578893602-14395-7-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_135010_353882_CE7644FA 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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

On Mon, 13 Jan 2020 13:33:22 +0800, Anson Huang wrote:
> Add board binding for i.MX8MP EVK board.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change.
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
