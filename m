Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 593B01D6F42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 05:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mogQkmnmUPmmk7dEcfw3BQdEjMsWoNibKllG5Q0atEY=; b=e2RNrlNhQdoJlj
	RR3V/oVXH6SdzNxT49Yob8luc9VxCs1IZq/C8P8L0OIk3KSLAUJIzA92J5aasFbHE3xO9AuOa3M6A
	l7qyTqK8QKKDKArYmReJQHkEW72yBa0E9DDcA4DYFoU9VD0F8svyBD8mnoR8ZqJ1Sb/www5Tzgxq3
	Zz8tnuiV5WliY+hrHzjMQyfN6mwDFGQNHOvyA/4k5w1cplBgGrQP4tnAdhiJ5VmikoH363cUXMVNe
	e35SnroukZ/tM6ko2hPRbKn/jo6srbJBCO5duRXoHd9E9hu6frq0mJFVYATwjmuKTR6E19wDsBiJ7
	2A/dhli4daC0lX23LMpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaW79-0003FO-0Z; Mon, 18 May 2020 03:06:51 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaW70-0003Eq-Ce; Mon, 18 May 2020 03:06:43 +0000
Received: by mail-ed1-x544.google.com with SMTP id h16so7240540eds.5;
 Sun, 17 May 2020 20:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qNLTrI2ktdnZR+XFpipulQqy84fxpmvLOZOiLyTI6UE=;
 b=jgzmgDHqUiwNnY3CNyYM96F24BdVx0GZpmKETl49TjRSF/B/NvdytgZioDW53AlpMy
 JCrsc7TxARWXvesb5i4pDkZy9iVgs6akUlk9MMGKjUwxv7konk/XAClUjVkNF7eJSYnl
 MN+PnV+RPz0U68T70ydY3Mlbmh/nM/cvc9r5U3k+/SnzZM1cZnKWTqJpPYKxXoDtbZuT
 fG3DuWTyHYMsQIgCAuCBt6JIf/7wHkFE+1L41dH0jzjLw+Uk1xxnEz7z8yCWKZd+HjuZ
 hTI8Ys3gG79mdbLHS9R47KmSn1y2xcxkJ/2jVK8DXXNg/VaoDdKJzaxaUzfwefqD3nrf
 4liA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qNLTrI2ktdnZR+XFpipulQqy84fxpmvLOZOiLyTI6UE=;
 b=P3CQ6z3AzkdEFsCZCG3VALUBed/ZwSl+U20X86YkXLklniCi1Zv4GcC9Hgb19cONlD
 7V4KTqnR/WrYQdXdKULXPs5CQKNnPvy9ZroM+cEJLnoroKBZ9PzqmCN7h6ofln9yoEA+
 tTtLzBt4yAKmpPtgVdydRRFVPrLVFY5PqpsyItB8KIZx95quEWj4bkWZz1qPr0FUPnZ7
 MvomRh2Uv5eqBxJ9fwvbttcSWB4U74Kp52db8ANPAcdjlMVtZ7q8V6GbPqNg5pnp+0nO
 a16X+svkQG24BEyQ3sBTf8rCXd+uQxG5jydccs/SPExIwp8gag6x4C2WwEBL0SAXmFBT
 CVBA==
X-Gm-Message-State: AOAM531ZmCANQXJkcynoKBc/Rn/GnBIT6SUuK9khG/iyTzmYnPPJWt9c
 h/0q3v7kytQ2c8dQCeFBrFUmw5dCJ6Y9VtWRdfU=
X-Google-Smtp-Source: ABdhPJwNl4SDNDW8cU/QKe2r13hrlZ0nbYymMMWQ1H5rJUFeU/sE9HG+VNCaIRt4Wk6kogQrjLx0YiVfLdsJszFlpis=
X-Received: by 2002:a05:6402:129a:: with SMTP id
 w26mr11227671edv.254.1589771198670; 
 Sun, 17 May 2020 20:06:38 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-9-git-send-email-amittomer25@gmail.com>
 <b2ad8a81-619f-5f35-9596-c2061ae15e4c@arm.com>
 <CABHD4K9yjUGuo0w-RfhdZQJm3Wtj6bU2H4DXcp4Jjp=e0fFeyA@mail.gmail.com>
 <2cd3cdaf-826e-9d12-9fd4-9f7e2a517ecd@arm.com>
 <CABHD4K-OaQ4Vf_+dg9FMR97ocLeUkDswyEnChPV=H=VcbyUhkg@mail.gmail.com>
 <abbef32c-84d2-7dac-c667-49610d014710@arm.com>
In-Reply-To: <abbef32c-84d2-7dac-c667-49610d014710@arm.com>
From: Amit Tomer <amittomer25@gmail.com>
Date: Mon, 18 May 2020 08:36:01 +0530
Message-ID: <CABHD4K-MHs4jhL_9otJJ_xjC1uv1N20mnHqT39b2kob7WjZcVQ@mail.gmail.com>
Subject: Re: [PATCH v1 8/9] arm64: dts: actions: Add MMC controller support
 for S700
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_200642_454303_C390B7DB 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com, Rob Herring <robh+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> I recommend reading the DT spec, chapter 2.3.1 "compatible":
> https://github.com/devicetree-org/devicetree-specification/releases/download/v0.3/devicetree-specification-v0.3.pdf

My point is more about, DT validation is not happy about this situation.
For instance when I run dt-validate, do see following:

/home/amit/work/kernel_work/linux/arch/arm64/boot/dts/actions/s700-cubieboard7.dt.yaml:
mmc@e0210000: compatible: Additional items are not allowed
('actions,s700-mmc' was unexpected)

and I am not sure if this is because DT and driver has different
number of compatible strings.

Thanks
Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
