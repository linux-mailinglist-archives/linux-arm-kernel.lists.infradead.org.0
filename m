Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7571C1E72B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 04:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18Fodhw41/sY/UapSXYH/tB1uTNS/eCxn41GWbjt0Xg=; b=ZR5IEdIaGnM75D
	oW0H2+9NrW6ZrtkOij3Zw91xvFhoFxxYIHmRSdVzeDW/tmqxlKtm/foZfBCCoaegmqyM1zeskVajO
	j6inM9csDKaMCNmUfXaEJoVpktgq0DkEUmgWrQv8ZT4f8MbEkWiwf0/+YFrLjP3tQue5IdBgrH5M0
	mshnbdombCMYzc1Q7f2UYTbwp5MzFSevIvM7uPaiGUVvrAzHuGuhWBbhYC3NHCuyonS/+A2qnCJBn
	vxRqT0nAa5fJ/JwYZ7jMC+Nr6H3poHC0SXwhMvonpQtSg0DiBfJNFIlR8boJJqrOIWwuXDfcnZlG8
	nYca/a/yc5XFmjrbcmhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeV1x-0008PS-JW; Fri, 29 May 2020 02:45:57 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeV1q-0008PA-RT
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 02:45:52 +0000
Received: by mail-io1-f68.google.com with SMTP id r2so791705ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 19:45:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zZW92dcw5H/bw1GgI6KkCUyWQDZDT1sXgzyMQuYH8dw=;
 b=qGeCuEOkX0a+qGhsbOp43gBW/L394Mt9Rb4tPDH5NRGorp5M+8uH1mV/x7K5Uxbwe5
 tdmZxNCzJ/9GkglMsVLLXkaK2K4tI3bG5h5nfPLGPxrWD9pgT/o/yuIkSSdBZxCbeZmu
 PoyJOKlZzdKsbq2L9LEVObO+JFqICann6XQIKf00CnaxKEi/+OTrOfEEXfQzpoJTYTdr
 ckhxJViGRlrs3So8zMoDAEuWUl8z58iM/e5+GWBXn2eXAt7kj7IMtjr+rH4v9QktK6S4
 L1wJiRicF7pAOBOV6WSZ2l0MM2ItVQkvVMsIllqY9KY0tJdrugWTbJuEIEfj5F0n8xNV
 a0fw==
X-Gm-Message-State: AOAM530oKUgESMmn3OWXPUvlabXSGf/8pE3a2pR3plVzMoVUuAR95n1d
 dequaLELg3CFGlkdAPIeoQ==
X-Google-Smtp-Source: ABdhPJwNgsOx8ZH2IbBRn4sCotiCfhiIJhxDVyqppjNE1/Y6AL/5vOt42MoG2AtRJf5lYySRULjBtw==
X-Received: by 2002:a02:942a:: with SMTP id a39mr5306308jai.50.1590720349628; 
 Thu, 28 May 2020 19:45:49 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id m12sm2359902ili.41.2020.05.28.19.45.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 19:45:48 -0700 (PDT)
Received: (nullmailer pid 1166896 invoked by uid 1000);
 Fri, 29 May 2020 02:45:46 -0000
Date: Thu, 28 May 2020 20:45:46 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/9] dt-bindings: clock: Convert i.MX5 clock to json-schema
Message-ID: <20200529024546.GA1166843@bogus>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
 <1590650879-18288-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590650879-18288-2-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_194550_887101_0FDFF7B1 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de, shc_work@mail.ru,
 sboyd@kernel.org, festevam@gmail.com, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, s.trumtrar@pengutronix.de, shawnguo@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 15:27:51 +0800, Anson Huang wrote:
> Convert the i.MX5 clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx5-clock.txt       | 28 ----------
>  .../devicetree/bindings/clock/imx5-clock.yaml      | 63 ++++++++++++++++++++++
>  2 files changed, 63 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx5-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx5-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
