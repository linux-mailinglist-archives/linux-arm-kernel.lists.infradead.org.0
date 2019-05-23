Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1724D281E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQm0OxKTr6fBlpJE+Q+BUUY5/h2JQZJavHatN5xmo3c=; b=hd/El0b85tlTqI
	QMj8Xh6nyfMt6Wc1FTVZ9sA0fTj7FOQs0oH224JYMI1hFatjwHz+odAoxVG+Iy6WHyGEdJO4DolAE
	edOjss3I1C/pzPs2o6a0fHb9QJmhSaJqsdEEMUXP3JtJFUrH0Dvp03ymvd12DwHDiGB7ZOJry02ED
	RskuZ8i9aaEV8mZQTWObQwZikLwtuGPIf8CcAG7oirQTs2968/Jg5mHePoLA5z4TfTnI3eY7a5ujL
	vjEuuXybfCtPlhS0ayGnIdhyECn3sR3k8hFPOT4vTLTIjT0yJGujgOd25FK+2UjQuUxtxSYpDpMWD
	0sQc51aHkQrZ2IJtGxhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTq4V-000277-9C; Thu, 23 May 2019 15:55:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTq4N-00026e-WC
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:55:53 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98DEB217D7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 15:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558626951;
 bh=V4ZP2/dLscXLDqbQgJUnoACFi9scmweeDdhvMUiUVh4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=R1S7fOzWe8tdEyXVX7h19w9DQxhcSM92aUWdB/iADTIYN0XEIgRAggtOg4hqkL9M5
 Dm3q0yUpkHcv/Uu16ehRFFLNnzELyOQawj+f0RVr8Jp7FIH7lc4INPCAQlua1KZAyA
 /pE+WzEwXsUudS1sX0d6S+EbYVwYZCg3nBx8umPw=
Received: by mail-qt1-f171.google.com with SMTP id k24so7301137qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 08:55:51 -0700 (PDT)
X-Gm-Message-State: APjAAAV1T4DbtzOh/IDDlrXNO1tp9O0l/pODuyo/ebI5Q8vBeITNSOwW
 uROKL2UwxaNFvEOkRL102vrH/xCpoZ3nk8qqbQ==
X-Google-Smtp-Source: APXvYqxzVHY9bCwMYV6NnW1uDWYDuENIPBg7zeYyQdXiHoh8OpVci9+JMjFdbOqPVhnY0iofHv0h/fEWtKyl/RUYnFI=
X-Received: by 2002:a0c:8aad:: with SMTP id 42mr78521685qvv.200.1558626950891; 
 Thu, 23 May 2019 08:55:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190522131550.9034-1-manivannan.sadhasivam@linaro.org>
 <20190522131550.9034-2-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190522131550.9034-2-manivannan.sadhasivam@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 23 May 2019 10:55:39 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKeiY=k8n+d_7ug_DG=qZdj_cAPSCeSU-37Ds3ogKQZmg@mail.gmail.com>
Message-ID: <CAL_JsqKeiY=k8n+d_7ug_DG=qZdj_cAPSCeSU-37Ds3ogKQZmg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Document 96Boards Meerkat96
 devicetree binding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_085552_054328_F646B922 
X-CRM114-Status: GOOD (  11.34  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yossi@novtech.com, nazik@novtech.com, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Peter Robinson <pbrobinson@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 8:16 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Document 96Boards Meerkat96 devicetree binding based on i.MX7D SoC.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
