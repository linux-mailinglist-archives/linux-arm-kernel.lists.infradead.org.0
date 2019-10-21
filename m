Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEA4DE9E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4bxhFjIsgMvkZslLgOKDA2+5TvbSAaeAV0615cgCqE=; b=IDdYklhpyYpdZ+
	YiQ0TP2hfPpg0vlkC5PF4bwezXNGZMJpb+gj75q6hY7rRmMTLs3O/4gFUes3+9FSEYpTcIyy/0Wg9
	LpkYPLPrNRcCwTUf6cUmDXsOgMCy+6CffK9m2o48fFML+29hwhBB29dZ4AjtLvbG/alW5MvZTGizH
	6yR29pX0FvQPRBnrbnXw6opvB+if83z1+zexa3OQBsyobZNtap7WCQn+Z9zcJyTMPJpluY/400bxe
	vitlz5WOvOdk7Jw2vzHx5607TQOnuwA5XN6VyY780Hk5y/GwgwM2/m0WVkoYMTgfNXT4BZxGty5KX
	w1mrqXJn1Lsxt5RlKudQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMV86-0001ad-1J; Mon, 21 Oct 2019 10:41:38 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMV7v-0001a8-1v
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:41:28 +0000
Received: by mail-ed1-f66.google.com with SMTP id h2so9632193edn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:41:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zKCIL9vMB0GzeJ1h6j4DhhKvWIOxuKfkf4/vOSPPhUQ=;
 b=PepmRE6qTMf504NWY4x8ceAo0VcVwHc58XB3RdSaqnw6imHCFY+j+UHgMJqt8ZUThw
 l1FMzNu06dTtS+OP7xcnSSaGNRXmytX/n8ARNNhA/qbgEw9eP15YLjgEeO/eSCLlzRba
 bIwbIq9LEJjNBqmEjRcN3Zn/ZQ15+tsbh3d1XKaFiy4JxqwThZxmK/jKtzv87YRxTspP
 FEvDu2M4hPmWHZoNrcmdwaHmNU2BXWI7K1wzhV8zzWQZfb0N3NfFdFe9UKXa/mBGyVf6
 jHZiOzZUURx81x8SJoGYlXvE4DSDSc5GJgX2FVvMqJ7DhPiNisoBwAs6Vj7cKaB7Hx5+
 SUwg==
X-Gm-Message-State: APjAAAVYo2RCpZVmYeKODo/MlJwBJCfjo6Irn+b4HmyBnNE6/Q7gdlF6
 rk7USPjHcSBi9B4Hsr/dnQ4=
X-Google-Smtp-Source: APXvYqwTBEqsJ/KMt765U6XJBsWJ/1R/kuB6evEMu10Pig47ODFe7bJYqhu72kOh9dhNWz7Zkzqgjw==
X-Received: by 2002:a17:906:cc87:: with SMTP id
 oq7mr21692472ejb.123.1571654485717; 
 Mon, 21 Oct 2019 03:41:25 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id s16sm542119edd.39.2019.10.21.03.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:41:25 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:41:18 +0200
From: "krzk@kernel.org" <krzk@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH 04/10] ARM: dts: Add support for two more Kontron evalkit
 boards 'N6311 S' and 'N6411 S'
Message-ID: <20191021104118.GA2012@pi3>
References: <20191016150622.21753-1-frieder.schrempf@kontron.de>
 <20191016150622.21753-5-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016150622.21753-5-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_034127_093147_0A80C162 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:07:28PM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> The 'N6311 S' and the 'N6411 S' are similar to the Kontron 'N6310 S'
> evaluation kit boards. Instead of the N6310 SoM, they feature a N6311
> or N6411 SoM.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
>  arch/arm/boot/dts/imx6ul-kontron-n6311-s.dts  | 16 ++++++++++++++++
>  arch/arm/boot/dts/imx6ull-kontron-n6411-s.dts | 16 ++++++++++++++++
>  2 files changed, 32 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6311-s.dts
>  create mode 100644 arch/arm/boot/dts/imx6ull-kontron-n6411-s.dts

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
