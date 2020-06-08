Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC3C1F1ED2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 20:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63Wi/osfKj8/BiJ6u+TptTl2pSRGhbsM7kRa2PDsTIE=; b=cedPOrVnnfgFgC
	DFIRgUNXQXXS/QIJaFRCZP6XHQjrJF2KezC99zXq4AO0zrG8Q2NkPKbFbRiaVpzpsnh9LNBAjYPlo
	KdcNPUpR4XYgf9BkBXe6K/Xse28pU6xJnCqkzvoJjdBY3939E++L9bbuzLrjkwVaOwfR5YsPSdoAo
	aA8zOoTJ4Vl7I+j+fQvFTenUGIM4rc7UJ46rRm3Q+7ZuOH7EPgJr31km1f7IZepTDcUAbsThwrIcB
	0AGi7yIHx0MeqKFWSpO6CpmOfbXPWUyZKExYUDXjSMTZrw14pqAihnb+zmf2Fyo9BIA31zwvwf/aZ
	mJaPh9CsLznL0KTcN6cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMIy-0002Dw-N9; Mon, 08 Jun 2020 18:15:28 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMIq-0002Cu-W1
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 18:15:22 +0000
Received: by mail-vs1-xe44.google.com with SMTP id d21so10018806vsh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 11:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EGpe1/DmAZEAKC2EbhqvjHPxfTMYfr/m0SisqKdbZdo=;
 b=oIwYbMCnIsfKNwYT8md93PfuP9r3WakuHjByQqasLAlm2TSsnJdX7xymMGbPH1plWN
 Nos3Z+kA0XluxPtrS6ygw5fiEaBGd2U5+fGB+CSIsEv3CpJXlW7HyDc/8r406Yso9AQ9
 Ka/1KynuFafizTnKPJB0DxSRmZgeoyXY5/tOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EGpe1/DmAZEAKC2EbhqvjHPxfTMYfr/m0SisqKdbZdo=;
 b=GroJt8JYFF66TCwLEyWgqJ3KyKEjxRRzzIGk1bqZvfMrfsR8dc+o2TQwcYpZ9w63KU
 HAhHuQQ4a5Dbz2XcXlvqTpVcIS6V+njqzBaOR5kGt6h3nk2MzigWDQ3gwIHG41Ys0uhS
 DnVrTfQrf3iS7MMSrmFWsoa6r1akdpSz4Ehd+DMmB2V358QqfN8OM0OU1knr5Fq88V47
 D8vsjCb9azCD2RXoMM1X9bMeFiHcpYym5dzCO1lLEgzTfOrg5HEafW7Qgw2fCSH7f8qc
 8Sul9bAPOHymeaIr6SPHFKRfnp3GBKHbaDHjijIEc3JsiDvl/Iigj9EMbZ3Gev54NTx2
 DADg==
X-Gm-Message-State: AOAM530FzvermCYdII56pOfuT7PHcVTLNGFedVGSz9AAAD86EN8VQJXp
 OphLVhH0V0MUPZUs748VZRekAW+jxwY=
X-Google-Smtp-Source: ABdhPJwGt+GlJk19MVTOPNB3JKU3eqnFZ6YSQm3kDlaSFZDu3Z5rjDqw5gFalTCTp9sHH8tunJz5wQ==
X-Received: by 2002:a05:6102:204f:: with SMTP id
 q15mr89707vsr.154.1591640119235; 
 Mon, 08 Jun 2020 11:15:19 -0700 (PDT)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com.
 [209.85.221.171])
 by smtp.gmail.com with ESMTPSA id v3sm85158vka.45.2020.06.08.11.15.18
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 11:15:18 -0700 (PDT)
Received: by mail-vk1-f171.google.com with SMTP id e1so4220604vkd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 11:15:18 -0700 (PDT)
X-Received: by 2002:ac5:ce86:: with SMTP id 6mr15986500vke.75.1591640117928;
 Mon, 08 Jun 2020 11:15:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200608162226.3259186-1-hslester96@gmail.com>
In-Reply-To: <20200608162226.3259186-1-hslester96@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 8 Jun 2020 11:15:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U-Cn=Ze=6nY=E3LmxmrJPbnzKKd9h1dvtwx__u3KUQzw@mail.gmail.com>
Message-ID: <CAD=FV=U-Cn=Ze=6nY=E3LmxmrJPbnzKKd9h1dvtwx__u3KUQzw@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-arasan: Add missed checks for
 devm_clk_register()
To: Chuhong Yuan <hslester96@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_111521_047800_CF454EDD 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Jun 8, 2020 at 9:22 AM Chuhong Yuan <hslester96@gmail.com> wrote:
>
> These functions do not check the return value of devm_clk_register():
>   - sdhci_arasan_register_sdcardclk()
>   - sdhci_arasan_register_sampleclk()
>
> Therefore, add the missed checks to fix them.
>
> Fixes: c390f2110adf1 ("mmc: sdhci-of-arasan: Add ability to export card clock")
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
