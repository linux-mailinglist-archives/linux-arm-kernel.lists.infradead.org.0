Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A80CE82ED1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 11:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pWMu6LEPkxDe3q8rEsR6TbqHLGjt7AjFy4C1m8+gz/g=; b=neH0qgYUcSIB7Awnh4W/PxAnf
	KXlHHDqIMYwH9svAygVk11WzzG6V9MZnvcWPuqDtrNU/R1o/yElbANVZ5k9x/Q/PjZ0E79qEsWsYI
	ruUCycPIHAM3sjRqJvtoreeiUutB4+aCmZQX7b0t8KZ3BGQAfGWc+AN0tpyrZkbqiIf8hsuSuoQdk
	DF9elD+I9Q/GJxfd6/Upgupr8BpCO1qmyC5Hq1nakObyeQ+TXD02ztnZWkBvvIVu1YyU+lF0fdT6l
	heQ+ajNGuwb8zKyuxbwBe7p8yJ4dGD7GsHVlJtdPMp+PXpMVl1mMvu2nqtTeLFgEmlWBf8EiN5JkF
	SdCSZ2ehg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huvwE-00030g-4r; Tue, 06 Aug 2019 09:39:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huvw1-0002zr-8m
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 09:39:14 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so75772798wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 02:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=C7TmI/PbYUbfMNCcuBdm2/gfYnotvm+U5V2PWxd2Dx8=;
 b=GKBYpjIrHe0nk6+JIacLaHqrij52L3cXGTJSBl/Bkk0eYXGfLMIrmZAw0jqIB4u6Aq
 7WMiEClzapc9W1qZ0v1o/mIZgAMWqj78lZkGZgnUUaD5utUAFjJrLgY7ZrDmjprE7BeU
 FDKae67PTf/ajIgGcdmkDZ5MGzhuXgVihACZtB1etkP1GdetzORDw1pJZ0zimge44V52
 m+p8pVPlwZYgGig5JuDiC2qPbTCWgl0B1jnjtURZYqdjY5v5ZMzFrbr6R65pm0PvuISH
 VDsvC9Ougbx9Fe3nqBc194QDWe4VSedvFKzuhTxUwWCibBDS2KNAQAnAhInv/Ew5gseP
 n1wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C7TmI/PbYUbfMNCcuBdm2/gfYnotvm+U5V2PWxd2Dx8=;
 b=F5+TQEJVQFok9iJDVryVKasxIC5I6RRgpDx6++SXJzBGYSWxJpo7XaCCAv7vgIdqiR
 GbptzVU2eMze7jYSc3tHJyiv4Ke9vi44yj/jlM/D8dJbuC/vANKp6Vq6fJkNuIW7VZap
 Gl64YsMF3BhPnPTSO3tpbcbomH5PZoe2w/pzDy7gQovsWWgdyc29VZHnYXlI3rD9RD7V
 Z7R65ITQjj4/bZyvKucnannYf08IxCHgswIAhE6g+CmJIdEp1z3E+9aYke16Yh6SwaSS
 a2h5Cc8YHKkcCblsaWW2GmvE9AvZCE7ydTZrXLJlmOv9V06e5XnWbIMUTQ/v/Bub2Yto
 4JTA==
X-Gm-Message-State: APjAAAX/cicjpob2mh14Mlm8q0WLMYHwdSkfGyfRGjOmhRtNu3b9k/XD
 tZde65W9kAGpl1fXMHYNwJDOyw==
X-Google-Smtp-Source: APXvYqxal+ZBDO7JHFcqsftztLQjLnTQ0KMWc6lBrcodchC0+vVixyeZ6eNcuccOmEmhBF8PQNmrfA==
X-Received: by 2002:a05:600c:2549:: with SMTP id
 e9mr3740633wma.46.1565084351694; 
 Tue, 06 Aug 2019 02:39:11 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id
 h16sm101823496wrv.88.2019.08.06.02.39.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 02:39:10 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: imx-ocotp: Add i.MX8MN compatible
To: Anson.Huang@nxp.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190711023714.16000-1-Anson.Huang@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <e38b758f-13b9-e2fe-188b-373861716ef8@linaro.org>
Date: Tue, 6 Aug 2019 10:39:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190711023714.16000-1-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_023913_319839_33F1F1BE 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/07/2019 03:37, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add compatible for i.MX8MN and add i.MX8MM/i.MX8MN to the description.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied both the patches.

Thanks,
srini

> ---
>   Documentation/devicetree/bindings/nvmem/imx-ocotp.txt | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> index 96ffd06..904dadf 100644
> --- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> +++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> @@ -2,7 +2,7 @@ Freescale i.MX6 On-Chip OTP Controller (OCOTP) device tree bindings
>   
>   This binding represents the on-chip eFuse OTP controller found on
>   i.MX6Q/D, i.MX6DL/S, i.MX6SL, i.MX6SX, i.MX6UL, i.MX6ULL/ULZ, i.MX6SLL,
> -i.MX7D/S, i.MX7ULP and i.MX8MQ SoCs.
> +i.MX7D/S, i.MX7ULP, i.MX8MQ, i.MX8MM and i.MX8MN SoCs.
>   
>   Required properties:
>   - compatible: should be one of
> @@ -16,6 +16,7 @@ Required properties:
>   	"fsl,imx7ulp-ocotp" (i.MX7ULP),
>   	"fsl,imx8mq-ocotp" (i.MX8MQ),
>   	"fsl,imx8mm-ocotp" (i.MX8MM),
> +	"fsl,imx8mn-ocotp" (i.MX8MN),
>   	followed by "syscon".
>   - #address-cells : Should be 1
>   - #size-cells : Should be 1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
