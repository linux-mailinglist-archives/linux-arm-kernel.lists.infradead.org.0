Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B633F6E733
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 16:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeNxQRxWL6MhIEsKWfRkarR52cAYIjCPij4lo6mHX3I=; b=TAtcxXCREtlnLU
	6B++RUizUVL1LeXfXg8bQyiJsaLI9d7icOQO5S04LbIhT6JnDu1jE2HSgoXTFecY666XWblV40Rtf
	1cx7ScTssexKUR6hQ75dzQymZsz5yY90qL7SnqzZ2P3HmBCnqHyA1ceX2haHWrfp0nQ1f73V8l0/l
	FeYhSGWSyYBMl6sb2MNcewEDAqUUe2x2BP+D+qoLydL1P9gGQEmvoDBqEzpTHwgai9UslkZOVeOnB
	NTfm9sIEUrtEmjtr4/hDDEERHLgxuT18nmWxW0Jeog8YLPn/gvgjkszXD4R6ZfkDM5wWJd6JQQwYL
	pua73vXC4ddiwXxlUqRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoTfL-0001rF-AG; Fri, 19 Jul 2019 14:15:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoTek-0001ky-9K
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 14:14:44 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC6A921871
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 14:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563545682;
 bh=HouTf0rdYLTSnjqZyT8kFGWdmcB/Edh2viRAAjb5BvM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jFQHJ46HfxLeX5mug34IOev47bDwSkI0gC6X1WpwSnvh/EuVsbBWcMBV9VQ63lRfU
 DMYYUFg/2OCf/IxChe6xdMo3mylF6ar18dhDkSYRLba6hemKkkz7nGfr/OFS08hEn7
 hVWV0j15Wjk2oz8Lr1I4g6I43LBToZ+OuOplHNN8=
Received: by mail-qt1-f181.google.com with SMTP id x22so26184259qtp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 07:14:41 -0700 (PDT)
X-Gm-Message-State: APjAAAWq3D0e21cCtyMJQzmQDEBRiLGJEBLncbCYFJwQalP9Q300Ftkw
 k5aIg1/m2h5hg4kT+NJZIPbwv1/n9XG0nhzMeA==
X-Google-Smtp-Source: APXvYqyA3UuijcheBwbxYRInvMAtjX6DRagHSFfJNZjUTBbw3FP5/ZDMUKlAiXfMmEcLn5N+HSPr4YKvJIoUvYRh770=
X-Received: by 2002:a0c:baa1:: with SMTP id x33mr38651166qvf.200.1563545681179; 
 Fri, 19 Jul 2019 07:14:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190719070926.29114-1-manivannan.sadhasivam@linaro.org>
 <20190719070926.29114-3-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190719070926.29114-3-manivannan.sadhasivam@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 19 Jul 2019 08:14:29 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLPWBG+3tPw9TTTcC0vn3-xjsqBtODV-KLPKMO8nUdT0A@mail.gmail.com>
Message-ID: <CAL_JsqLPWBG+3tPw9TTTcC0vn3-xjsqBtODV-KLPKMO8nUdT0A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: Document i.MX8QXP AI_ML board
 binding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_071443_001622_349644FD 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, kinjan.patel@einfochips.com,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Darshak.Patel@einfochips.com, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 1:09 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Document devicetree binding of i.MX8QXP AI_ML board from Einfochips.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
