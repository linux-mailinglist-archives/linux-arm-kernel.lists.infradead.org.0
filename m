Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17F744395
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFzXHTB61aXkXS+LAjmuLxtuk3qaqOq6fXSU6Ok4OFU=; b=a+nk7spUF3MnHz
	KgVHKSzoG5/FAkr1PigmyoQYFJQ1mME/+RHnUlayfWCtXa83ivuCWtlYkoxnN9pCWbewmPKpr8Xwa
	GcGbMvI2jfY85/oNg2awU2hdt5pAKHXvxNHqVqgiqWiM7GGFG+4sUYVBVybUwWuXLann29HWDrM7p
	QobnXSi/iDuwdavIMYRpJi8tfU8Wr/8gda9p8yjHKBumD/CpJiN2AnookiO2qyCfveVy105466yje
	XoG/klLEyETzWwyktWwAndNUHxcjJny/PoKwjNEJmKLSPHy3esDC23ticZxCk/50FT0Sljc7TtUbv
	AO7KSPfamwXttvsokcpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSds-00005S-C1; Thu, 13 Jun 2019 16:32:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSbQ-0004Y4-6X
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:29:29 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC23D21743
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 16:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560443367;
 bh=IA1sl0WAgVc4QRwi3osxrVID6baMw19n8gHARPi9JpU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CYROQRbBeQ23sCVK/3AKdfxTVhvLgbjCcGVYXOn2zzXxSCWozaxM14r2svT0lYXae
 ejpeEdTSchQ3tpJALRPXctxlJHKrAq8mzPoFsfzRjyWnw/KAVONU0NjLNzPvhyjbRx
 qfvaJBZT0A9/+0Zrm31Ke8PN2K9X0cvIXpcbwjcQ=
Received: by mail-qt1-f181.google.com with SMTP id h21so23227261qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 09:29:27 -0700 (PDT)
X-Gm-Message-State: APjAAAXA4D+OGemsOuPb0KC6v7hm4llhvPQvamVbFQto5FjZi0WqrEM3
 DXAYCNUSCUz7tax8xdVpM8ZY5A2eJK3VWnpa6Q==
X-Google-Smtp-Source: APXvYqz7nRNHAVqybvGqVRQjCt3XMPBnSZESMahCXBsUKT+OJpLrP7rhzia7S5ePIDFWLy/TxydSZBG/gc1IevYjNdc=
X-Received: by 2002:a0c:b786:: with SMTP id l6mr4467509qve.148.1560443366968; 
 Thu, 13 Jun 2019 09:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190613085712.22241-1-maxime.ripard@bootlin.com>
 <20190613085712.22241-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190613085712.22241-2-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 13 Jun 2019 10:29:15 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+OsJthxY2E0VKRROk3iaTfWoOw62GKQTLjtxaEg2tMRA@mail.gmail.com>
Message-ID: <CAL_Jsq+OsJthxY2E0VKRROk3iaTfWoOw62GKQTLjtxaEg2tMRA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: nvmem: Convert Allwinner SID to a schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092928_412427_344D4AFE 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 7:50 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The Allwinner SoCs have an efuse supported in Linux, with a matching Device
> Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../nvmem/allwinner,sun4i-a10-sid.yaml        | 51 +++++++++++++++++++
>  .../bindings/nvmem/allwinner,sunxi-sid.txt    | 29 -----------
>  2 files changed, 51 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/allwinner,sunxi-sid.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
