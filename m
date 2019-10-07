Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8452ECED1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 22:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4T7eUZtCclqfDV0h2hxoUMatc7nRso2AaUSMQkh0m2s=; b=g3qUwjVR/oRHvu
	nlTGqDjxDXxaQC6juoKQTASGALBOysr+0wFu5epTg01Yiyz9VIdZTLvir/Q1JgqsnKYbpcBS86lmj
	8BTPVioJ1kB3jDlq7si5yM86hfkK/FPnlHUBUiMEHlsgwyQ+hN35EPaw3jRluolKxFBDuP7wELjSR
	e16xQJD2cIF4LATrwD1RYvu5pidqWtcs11mEvDrNZS1ZiRGVAvc8yDBNeLlnRLgV5hNg6wdGH0McM
	SOr9XtT9sCFe0li5mJ4tSdS6DC6iVkIgcecfoD59eQerP3eFsOufiIvNG7Y+2eXoCcxEmLPFE/cqK
	V5jIzTGGxWTiVPTpYE3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZCW-0003tF-Kk; Mon, 07 Oct 2019 20:01:48 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZCI-0003q3-Bm; Mon, 07 Oct 2019 20:01:35 +0000
Received: by mail-oi1-x241.google.com with SMTP id k9so12799549oib.7;
 Mon, 07 Oct 2019 13:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lvKxDCEdVgPdg3NBubDuHJYxBHQHsF+19QqSBENKigs=;
 b=ldZWZLPYdSK/lW58g3GggUrvVCJd1bSherkZ3i1sSTYmEWn8xkwIcVHcmZ3icueHQp
 oy5jhaY7EWxyWVR9117SxscpYTuLMHxESfnKRG8OiuTaUqvhUU6ovZmkM9O2vxxFt+eU
 j1Ahl1lPiieioT2lbA364gHNXQWxIF0DgKTKQLSIoQ9sNQu3MyZJlIheMi1AbflSbGt4
 FMBBws1iMdul9gqqFEcvBoTYYrPIjtJ8f054Son5rjx4xSysmRjtnZZEtvqD1noCgWOm
 IoXuRgR8rfAJ12qdkaYZR+biJvf7tEDnz8LaI7EH80M+v2A1gn7VKk1h0BWgQr+cPfKB
 CGxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lvKxDCEdVgPdg3NBubDuHJYxBHQHsF+19QqSBENKigs=;
 b=skFiYqSvVvja7BZ4K1WlPVQd5ay4YeKuERGEwTsSKmnxCSDtZBYy7CHzgkfxgmw0SR
 QevN7p3roOMKtKc4nrUzym1u4xJFooRuQoGz8Beimp3GuL3yfFMf/Hprs7wbIceM5Grt
 Z9K/7G8xfSzQkI9sy71wyRQI6ozRc4NiDK72DZ6wFd+x2A2FPqyJjo0hwpLzftQGKFjc
 zjrw7a1xRtjPZZp9+EKv58XNevE3bmdR0MSXdw4gU0bVPj/0WcPAQouXA7iCTRT/8kHj
 c4w4CQOC+9DK31wLqQlFcIS2f3cyASlor4+IJZP49zSo+FhbSa2qzATnFGtk4b4o4kXM
 n63A==
X-Gm-Message-State: APjAAAXfppcw8Bz1qSnhCrySzbRQZapZ4izZ+UAFszSzRjLxCA0JiE+R
 aDFLJQmeGQleViHaZskLFGoP1+RclGZC/7z+ZjM=
X-Google-Smtp-Source: APXvYqxw4MwTHhEk1nJATSbu3GLXbTfDZIxzJF0EPb2WPk2JVoRBmvrn3TlNb7LKr7TGaqwsqjCfogj/ATlyGhjt7wk=
X-Received: by 2002:aca:d90a:: with SMTP id q10mr851452oig.129.1570478492843; 
 Mon, 07 Oct 2019 13:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191006102953.57536-1-yuehaibing@huawei.com>
 <20191006102953.57536-17-yuehaibing@huawei.com>
In-Reply-To: <20191006102953.57536-17-yuehaibing@huawei.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 7 Oct 2019 22:01:21 +0200
Message-ID: <CAFBinCD+DSDoPiza2KKJAB_s6793ZeCZ6vjb5Zx9y0Cdz0mGjA@mail.gmail.com>
Subject: Re: [PATCH -next 16/34] rtc: meson: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_130134_401897_235F9BB7 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 linus.walleij@linaro.org, baruch@tkos.co.il, patrice.chotard@st.com,
 paul@crapouillou.net, linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 michal.simek@xilinx.com, linux-rtc@vger.kernel.org, f.fainelli@gmail.com,
 khilman@baylibre.com, wens@csie.org, jonathanh@nvidia.com,
 ludovic.desroches@microchip.com, bcm-kernel-feedback-list@broadcom.com,
 joel@jms.id.au, slemieux.tyco@gmail.com, alexandre.torgue@st.com,
 sean.wang@mediatek.com, mripard@kernel.org, vz@mleia.com,
 linux-mediatek@lists.infradead.org, gregory.0xf0@gmail.com,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org,
 a.zummo@towertech.it, andrew@aj.id.au,
 linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org,
 linux@prisktech.co.nz, mcoquelin.stm32@gmail.com, computersforpeace@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 6, 2019 at 12:38 PM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

thank you for taking care of this!


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
