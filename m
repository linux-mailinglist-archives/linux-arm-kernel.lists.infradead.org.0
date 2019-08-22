Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578CA99E59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ejlDS5momnGwzkci/ggy9Qm4/ANyKMleu4ViL7qhTY=; b=RU7WQZVZO7xpnW
	ExNkEAKYt3V7ao5gg2/rkrWr3O3hyFF7fugP9hbob93JdsErI/b0QzPVVkgRpgv7oJzxPqn1akX/h
	Su+AcANaWUY790WoMs7Mgnilp0BAWJ2Bqia/CWf+2riwlsySTf1EouaPz6UkuiQK6Cco6N9SLZhwk
	IXXWDDT2k2RaFj++OfSxJBblWUIEmzDrnGXccyIaOkln1Lq5wx1xrtlFv08hMXy5Tfy5WJDxVRI25
	n2wkYEVPjFe+sODiUnb9aHQxYSG1/KjbIwK93kTLYguR8/ip4FoIjj1O8SR8s8mIliHqgtG1pwhD9
	5Mvhv0Vo6c9l70K5d5hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rKI-0004U9-3j; Thu, 22 Aug 2019 17:56:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rK5-0004Tm-LV
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:56:34 +0000
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2307B233FC
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566496593;
 bh=L9UMGcdA614fnSHWQ04BSdS4ymvZGTviHvehBqLdubs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZNLjdK+2Tq5C2CzVvNoWBQJCMNgJaYiAZrGB2fXAjonnhn+dzQ3Vx7E63+MqY88+p
 i2vdqvHMZiNOqz5ZBEtZKtOZnRp/mSd9geEiqx2AdkHp4kf7K3VFWyq2Y6CUgYT2xA
 bbT+p1lhoCDgWcMgSTgwRWxpB1Ga+pT/rPA6IQdI=
Received: by mail-qt1-f172.google.com with SMTP id l9so8718123qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 10:56:33 -0700 (PDT)
X-Gm-Message-State: APjAAAWJn7NHLGvZ9oqc1ln0MOEOVQP8t/XZNI8mef9a6H9eRUXg20BU
 XY2R2JEm4vOvLRb4tRB4rAGZXDgWL7baGmKSsQ==
X-Google-Smtp-Source: APXvYqxmpTMuJpoR2hQvI30KNyZXaO90aPAJVNRDaz/KGX8/IUr6Sp01aMXULiLAaSLUCCkn9iQ5zlj6tY+yhexEMPk=
X-Received: by 2002:ac8:44c4:: with SMTP id b4mr890120qto.224.1566496592345;
 Thu, 22 Aug 2019 10:56:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190822060238.3887-1-krzk@kernel.org>
 <20190822060238.3887-3-krzk@kernel.org>
In-Reply-To: <20190822060238.3887-3-krzk@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 22 Aug 2019 12:56:20 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq++LZ82v9WbyHK8pQg3WVQOxLvWcJ-qM0QAnhzKw033vA@mail.gmail.com>
Message-ID: <CAL_Jsq++LZ82v9WbyHK8pQg3WVQOxLvWcJ-qM0QAnhzKw033vA@mail.gmail.com>
Subject: Re: [PATCH v7 3/4] dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310
 compatibles
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_105633_726570_8EC0E55C 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 1:02 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Add the compatibles for Kontron i.MX6UL N6310 SoM and boards.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v6:
> 1. Split entries to pass the dtbs_check.
>
> Changes since v5:
> New patch
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
