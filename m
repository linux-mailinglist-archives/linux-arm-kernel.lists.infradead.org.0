Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ECF82F82
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g2gZAbSIGiRRiVpaIZdxF4JrewUlIXbqL9B0BuFSyJs=; b=NKnmBKqp3RqpwSU5LV6iBI0i8
	NETkTRwqWOeQsUJdoIQsKIpkVnUgfyVagqi5ATHxoy9MHlRy2GtHDKJGd8Mx4fcG/Vfcqwzj2InCj
	dY2WL8PKbRE0ieHvQIiZ5MFMbro4Wc0ueQIeHNxztOb9dgGjmNOZE7hCpUsCDyO2s+kXS88Lw6H9x
	B4Ky2LzsY3/QKSDc+8DYrRBwsH8Nb5g9Gx2OrdujMYhWw6b6sjvlF88ZorJ4gYAyHamD3Xeirtqhb
	IDknCKDCABkTl8i2ZESdWiZJYLrnAyZZggU0Tb2xXFXnxeatlQ1iH7TRduxikC5WsYP5dlE1v0kXH
	X4KBwIaSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwOX-0000gi-AE; Tue, 06 Aug 2019 10:08:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwLk-000736-RQ
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:05:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id g17so87269741wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 03:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tD7GBCktkRgBqSQK/rnS2OSCtvZ6JKSYqsfzwb/RV0U=;
 b=Q9Vdg1/Jnn+2hpisJUNHKj55kXITbJizFqEZLvdMMifAbvLijjhKdZQzcOk6rg6biF
 vj2QpQFdH18o+gwKuevO6r0gIsS+yxD62YTeaRc/3nHak9+XXS1CA5ALumdCYdxy22EK
 UnvoqcHTjoGd7ZXmggbXcwgHvjuQ9V8xkXxudLD4ziqrVEedqBF4Z+i3JAFIiCfOiUkn
 RKpt80kpVNZmecHICto/0TMEM2PcMWsI0x8kBIqoNwwbuDDBceiVzQfzbqpGuiDPnCwr
 18MmYTojJ43cey8QcAc66hgdhGIwx0wa0onmlR8fQDlAtTWosIOiwAhVfisoIEgm/FMk
 dgMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tD7GBCktkRgBqSQK/rnS2OSCtvZ6JKSYqsfzwb/RV0U=;
 b=HYLrNKNOLZ12UA5dqHCaraH8x+PZ4Rryc33Kb8c/OkKOuUJeNw0/vxFtR4ufeVjfkG
 CdTISdw9uONUAtVOykDTWTKpc+ZrGrXKL680UGRQjlkpHbKTlWmjEztC5WHtOX3WatRs
 XTO7k9T8wdEj86iTsmRXrg8mV1Jt4W9GZ0ac7FdjDE28b/lc3/7sE2f4wRNfsQO/7LgO
 TGHCDXB7XYXSutPD+aiLoGsjA0dUP0zafX/EQR+wlnLCY7nbAI+MZ5UlkjYKxcI8tTur
 wA1nRRb3h+Kr9p/yh+RyMYTq5CRvX+HGwcDxubIFIYU69YcTzHttuoMICcn/XjM9zca8
 j8rg==
X-Gm-Message-State: APjAAAXSD2iPaGfXQStSKng5rhFFXu/jVLWYr6oa8QCDiVnIxgkR98+K
 gQrWvpBWwTVrqmZzHIa2bctYtg==
X-Google-Smtp-Source: APXvYqzpWHfNm5EbCjNGJ6Vw8NSHmw5758vwwbCj5bXSgXTRGDeyMkz1GMDHlz7qeloNb+yN0JqX6Q==
X-Received: by 2002:a5d:6949:: with SMTP id r9mr3611414wrw.73.1565085947506;
 Tue, 06 Aug 2019 03:05:47 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id i24sm3303100wrc.45.2019.08.06.03.05.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 03:05:47 -0700 (PDT)
Subject: Re: [PATCH 0/2] nvmem: imx-ocotp: allow reads with arbitrary size and
 offset
To: Jose Diaz de Grenu <Jose.DiazdeGrenu@digi.com>
References: <1563895963-19526-1-git-send-email-Jose.DiazdeGrenu@digi.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <771a6f0a-3cc2-da20-2439-9a91dd2bf9d2@linaro.org>
Date: Tue, 6 Aug 2019 11:05:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1563895963-19526-1-git-send-email-Jose.DiazdeGrenu@digi.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030548_969210_C1418364 
X-CRM114-Status: GOOD (  22.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 23/07/2019 16:32, Jose Diaz de Grenu wrote:
> Currently the imx-ocotp driver does only allow reading complete OTP words
> correcty aligned.
> 
> Usually OTP memory is limited, so the fields are stored using as few bits as
> possible. This means that a given value rarely uses 32 bits and happens to be
> aligned.
> 
> Even though the NVMEM API offers a way to define offset and size of each cell
> (at bit level) this is not currently usable iwth the imx-ocotp driver, which
> forces consumers to read complete words and then hardcode the necessary
> shifting and masking in the driver code.
> 
> As an example take the nvmem consumer imx_thermal.c, which reads nvmem cells
> as uint32_t words:
> 
> 	ret = nvmem_cell_read_u32(&pdev->dev, "calib", &val);
> 	if (ret)
> 		return ret;
> 
> 	ret = imx_init_calib(pdev, val);
> 	if (ret)
> 		return ret;
> 
> 	ret = nvmem_cell_read_u32(&pdev->dev, "temp_grade", &val);
> 	if (ret)
> 		return ret;
> 	imx_init_temp_grade(pdev, val);
> 	
> but needs to later adjust the values in code:
> 
> 	// Inside imx_init_calib()
> 	data->c1 = (ocotp_ana1 >> 9) & 0x1ff;
> 
> 	// Inside imx_init_temp_grade()
> 	switch ((ocotp_mem0 >> 6) & 0x3) {
> 	
> This patch adjusts the driver so that reads can be requested using any size
> and offset. Then, for example the nvmem cell "calib" could use the 'bits'
> property to specify size and offset in bits, removing the need to mask and
> shift in the driver code.
> 
> This is specially useful when several drivers use the same nvmem cell and when
> the specific size and offset of a OTP value depends on a hardware version.
> 
> Jose Diaz de Grenu (2):
>    nvmem: imx-ocotp: use constant for write restriction
>    nvmem: imx-ocotp: allow reads with arbitrary size and offset
> 
>   drivers/nvmem/imx-ocotp.c | 34 ++++++++++++++++------------------
>   1 file changed, 16 insertions(+), 18 deletions(-)

Anyone form IMX can test this patchset before I push this out?

Thanks,
srini
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
