Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DADC48C42A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 00:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjWgzps47wrgp5YE2uhua5c6OmrhZ5qFpNIFZ5w0QbE=; b=d6a49zK2tCu4BV
	3bkQTWGxx7E85Bg0klEXTToI7cUOcKen7yfu5iGT4Gn3vnnMTWl2JbBjmAnLW2Zy7xEoA8L0T+Jt8
	jLL1eAXG0Q9KEeLdOOywqchr/T4/tHu6vRuSngXnkcPYzZt2fPWtNNapkU98sUe2TMVpAiQJd9AFC
	4ggVjNdoHbB6csPikCkE/vBsPNVwBsAgrdNBhHSt0cieqa6MlvTHz80V1w+RH7TdeTrgyW5RpoVdg
	OnIWMF/cAnu5Z/P5gOA+i07eDkggvqW04IhtyfMdKLIqsYGUgf/nW3owZEv20FRJWps57LXTL1hA0
	cG6iWowAtHyDejs8XI0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxf3y-0007RV-GA; Tue, 13 Aug 2019 22:14:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxf3q-0007R6-Rh
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 22:14:36 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B043208C2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 22:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565734474;
 bh=6wCizBaaZT2k/09mFrNXRExfBAwJv2YLSMnChPGtw4g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0uaRXv8D5HRtmKK3R9sZVd0gtdGEAJy9OAYrUbynXlMjib/y//8/8b1GMIl0koAge
 zvdeq5RXKS0RUpLgqM+wsU8tmSLaxzBvsjGnlrjpFHlq8frKD/7T7Y1NciVDfSwTpC
 34kSkZyb8+4NWRxQuPpvthHnzOYQkdnd6haJ4Kwc=
Received: by mail-qk1-f178.google.com with SMTP id d79so80922602qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 15:14:34 -0700 (PDT)
X-Gm-Message-State: APjAAAVB6vlE62LMaVkeFR7qRFX4qPvAsH5NmBppJF9WwOYSTv36OxZc
 0ynQniHHsHnKCq6lGsX5KbDEqN5K268LNtwuiw==
X-Google-Smtp-Source: APXvYqwk126OivmGjH6r+ni/zAgOht3m3QXJodkzCFH+TUHs2iVPGSLnoqVVTdkeSVJkGVzE/d/O+3TNCBaPTI7BGz4=
X-Received: by 2002:a37:a48e:: with SMTP id
 n136mr36131378qke.223.1565734473435; 
 Tue, 13 Aug 2019 15:14:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190807003629.2974-1-andrew@aj.id.au>
 <20190807003629.2974-2-andrew@aj.id.au>
In-Reply-To: <20190807003629.2974-2-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 16:14:22 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKXda7f43=ZdtTsyrdhdqn+H4L=7zQXtB_EEfHdi=rHLg@mail.gmail.com>
Message-ID: <CAL_JsqKXda7f43=ZdtTsyrdhdqn+H4L=7zQXtB_EEfHdi=rHLg@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mmc: Document Aspeed SD controller
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_151434_919816_B0FB53E1 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 6:38 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The ASPEED SD/SDIO/MMC controller exposes two slots implementing the
> SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> data bus if only a single slot is enabled.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
>
> ---
> v4:
> * Make use of mmc-controller.yaml
> * Document sdhci,auto-cmd12
>
> v2:
> * Fix compatible enums
> * Add AST2600 compatibles
> * Describe #address-cells / #size-cells
> ---
>  .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 105 ++++++++++++++++++
>  1 file changed, 105 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
