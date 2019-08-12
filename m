Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DE58A6B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 20:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVU5XF6RPAniWa2qkZydtAelUFuPfRL5vCBk9cLMtpY=; b=mu5lDzCC7rq6ER
	X2GABMQC6wHrY+Q6twmc91KtPAMlMwTGz7XatUl0Gv74+tIpJfeXJdOvwSWshkZxgnY+rqpDRqxod
	QPyngDuIYgxi3gDW33Gvfk4wji/+KskhFfnruyeHmGC3l7T4nSq2TLhxoFN8sm/r7xthzLfTi6bpP
	jrkDUkQ3/crecpj28y/qltNCdumVKOo2TbPdNA4TvJ1JozeS+x+KfIZUGpS/ErqS+fEhOukbuDV2o
	kBa/4QhT8OkgCDAZFiWCS1+zd1yuygCuMjvDpOfP9p3F8nK4A9+Ku6sueDNOD/JmVcN8i/GFQKaQH
	uHI5w7A0exAOJgv5bVfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxFWP-0000fe-8h; Mon, 12 Aug 2019 18:58:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxFW9-0000ee-Qp
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 18:58:07 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55D4521874
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 18:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565636282;
 bh=/KjUbN4S4cg6Wx088EupOk/aYRMhP1qDGEYMVvueRVE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=D9qYsj5LWfjHJ6CObn5s8xYmjgy/0hM3xZQLPkyi+bEQMpTUOB11WHBj+7uTsOGWK
 +XFIipl/LQjiE/0WJwZ09DwMmBmLh1K8rBHS8DYmzSFSKtJggAcXh6Du24YE6yfpba
 yQm9lmLzh1eWiOh1Gx4T+IxnWgs47wpfsdd1TAkk=
Received: by mail-qt1-f173.google.com with SMTP id v38so11525215qtb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 11:58:02 -0700 (PDT)
X-Gm-Message-State: APjAAAU8g2RI4MFT93irsFZZCXKPbevDyvvO1oqrQtbAWQAUtqvm9RGO
 0+b83WxRdtCGsnr7at6f2DuvBvn5G1ExpBSwXg==
X-Google-Smtp-Source: APXvYqyRqIRy/JRTGiKAgusS3nr3ls85FyjwyvVTVo4EiRNmt609rPVypfT2vXE1taQf0kjr/XZde/uV4mb154zysxo=
X-Received: by 2002:aed:24f4:: with SMTP id u49mr3150956qtc.110.1565636281433; 
 Mon, 12 Aug 2019 11:58:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190809093158.7969-1-lkundrak@v3.sk>
 <20190809093158.7969-2-lkundrak@v3.sk>
In-Reply-To: <20190809093158.7969-2-lkundrak@v3.sk>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 12 Aug 2019 12:57:48 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLyQjRNONDQT=RM0kYzztd4PdsSZssjiVfd8WUwCjFUVA@mail.gmail.com>
Message-ID: <CAL_JsqLyQjRNONDQT=RM0kYzztd4PdsSZssjiVfd8WUwCjFUVA@mail.gmail.com>
Subject: Re: [PATCH 01/19] dt-bindings: arm: cpu: Add Marvell MMP3 SMP enable
 method
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_115805_892069_853F9246 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 3:32 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> Add the enable method for the second PJ4B core of the Marvell MMP3 SoC.
>
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---
>  Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
