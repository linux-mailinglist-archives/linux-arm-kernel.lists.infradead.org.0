Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCC4B3FE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 20:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vPkP3nFceeyjltc3bv0dVtizYnmomJgmybc0vxfhOE=; b=K5YcKBE5u54wPD
	1TPOYWCTS444qOqvdwurJYn0KlhWNenxXRGlE1E4l+c/oB5aoWNKJunmk++1+zJqh+vneVfFTAkOU
	v22/NXf6Pho1WCUYvqAA6NrSmYTjOj699IqT1fmlQcnz+JrCFaVLCdnGpiKXBac5Eae/RuDtfLOqa
	f4DGZY73pXxfOhisVWU+tF87NXbR+8nziYYFd8dHSCyNnXr4pJ2onv+Ok7NAUbWnVmq+rSTb0UlDz
	PISVDMsHSVBNM+yOP0nRmoWbLEpQYMwGEW1ILFj0loPDmD/63XhE687zsizIdKwQpgmmPNsA/dW2V
	NkHD/+lUiNjNC4BgcPXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9vJH-0000TK-Ft; Mon, 16 Sep 2019 18:01:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9vIy-0000Q0-Dl; Mon, 16 Sep 2019 18:00:58 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E75120830;
 Mon, 16 Sep 2019 18:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568656851;
 bh=dMVZGCnsh4fILPwk9WjxtUMiqu6/4VUD7cpn/PynxBU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dA+WUt4bl+6RjbJXd6HF1hu64FfIcM9QX9YW4t2hzTazyLV/Iaoca7f3s5hvMGRfX
 dUkMCuyYjsg7LbTHbUT4NtHLI1jntNf386bm+W+Sn/j/D/cwc/e5hXg3YRgLTnilsp
 ekJXXM1ZL9uIJUpxuj4/0YcEw835CHNKr6fffgxY=
Received: by mail-qt1-f177.google.com with SMTP id x5so911936qtr.7;
 Mon, 16 Sep 2019 11:00:51 -0700 (PDT)
X-Gm-Message-State: APjAAAVcnOEVCT/ebARhIJuqFcuLIv5qOkJHWMbLsTyAzgtfnXW2UyT+
 8lgfVPQ9M5AsF+pnIa9vVaFmKplDEqN6MmuIVg==
X-Google-Smtp-Source: APXvYqyf350ByfqcVlNXWlnTIksw+7j/6O4GUGxPPUMBxsS6Jl38vpunqWIRMsPX1zJ/s4uT+gn50ziIwq/u9H4MMs4=
X-Received: by 2002:ac8:444f:: with SMTP id m15mr938733qtn.110.1568656850832; 
 Mon, 16 Sep 2019 11:00:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
 <20190916154546.24982-3-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190916154546.24982-3-manivannan.sadhasivam@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 16 Sep 2019 13:00:39 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJP6JiZTV=DwuSQLLEv9dMST82Xkrb5AnqREjR5hk5=7Q@mail.gmail.com>
Message-ID: <CAL_JsqJP6JiZTV=DwuSQLLEv9dMST82Xkrb5AnqREjR5hk5=7Q@mail.gmail.com>
Subject: Re: [PATCH v4 2/7] dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO
 controller binding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_110052_494118_3A4AB874 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-actions@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thomas Liau <thomas.liau@actions-semi.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 10:46 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Add devicetree YAML binding for Actions Semi Owl SoC's SD/MMC/SDIO
> controller.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/mmc/owl-mmc.yaml      | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
