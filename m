Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8B682F80
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6CJ8Y17TlSFLrs7DxoDspROEvS6SSne7hAl+xJhOSQU=; b=WH6PRApqq9Ple6a7HmE1kLIOT
	NvSjbBYLkJQL7zn6RVYAFPrd1dvYdGX19SOq0YKZjCCMQKzcExg14PwMTh9PQnPevKn9rQDwRSCQs
	kGyrkK+8ku6lTX/myUaOiQTgt7jgO05nmE5CsXVtRjTs413EVEpQncYqWqMTnjkub6VgUb5S2Tv+E
	+P2tdlvjtOGvSo0F6z+aErs04YQ+c/7R2kby6z2PezUTl5iDkf+du+H6W/PIChbd/pLO+NH3fOOtE
	aK9wjmhbu98vp7jZISgEHUnQ3bIq8zxHkfDjOV6hIWWvqXforjx0cRknBSnyX0eQ/C+bZZfDnTnIC
	1987i+KmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwNw-0000AU-VI; Tue, 06 Aug 2019 10:08:05 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwJc-0004RY-JS
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:03:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id l2so75791855wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 03:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=saHnwJEPEd+F/arKfhs2r8U9pbG6AT0WaIKfY/E9KBI=;
 b=RG35MDR8qCFMyh/pKO8aFYZd6Zh4V1UuLdb3jU1w/lXFxhvyhyxaem1hFoUcNEuwCc
 MWVoH6nkxp4cmsH6KyZRiqw2y7C7bO/ZvmMayJoPTXZvt1oAcaS+v6OBxhSA/yWxXhBw
 NsKE4+e1dfojFvtwGrfp6TIPeLJ+p72m0OyzkARCpUlDiE1hXgk8OAKVrokMj5y/+xiv
 /06h7F4yDihJEjsVRYm/LLQg29ETPanI4lIUJe4ftyFDq6445pVgp5APjhI5hs2QfQuP
 y6JZeE1y0C4z79fi+37T0dTrs99Em0r2LHiatlZiv3lWnE/DKXnEWneDpdbt8gEM8QZq
 P5LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=saHnwJEPEd+F/arKfhs2r8U9pbG6AT0WaIKfY/E9KBI=;
 b=uk2NZJH2e+B7qp38mU8VPqWLBH6vrKT/w4fv77sM6iL7aaAcso8bJsSDFs/fiQ2hbL
 NSeX/V5jJBvMBHLsaBVLLEdG9iWGMgXQyGB9mCNZwDj+tV7iKnFMySq1FCtsPq9s7Uur
 BxThNxAmAkJ8fuS+k5hFa8/OJ4Qn5B0v9zvEfHYDPb0T+SuzxSqfDTHIbNt7Sdpr1sR8
 uG6VXUq+I1tkfERT36ju5W724mSOjOOa8Pa2KmXXug1SsDAYN4stS5/Lpw1Tq/j6Mt7n
 qn/BeTzUn8UsvZ9uAkgrdS33tojFw6lMktyc/VTsHcMvEbJiZ9SF9quwnDvo596Zuy/4
 Qr0g==
X-Gm-Message-State: APjAAAUa5ZyeCPPiSqJ6bDDtWBkl6fGtKI76jlj5GVqNA+3RMrirde9+
 URM6n5eVlPAG8101pP72C4KydLVilG8=
X-Google-Smtp-Source: APXvYqyw+ZwTXq4NISMpigbJV9u0+mgxHWcVICI7KlKj2LY/qJ9xmtBj3XHR6tzSKUY2m4cnoCSd5A==
X-Received: by 2002:a05:600c:114f:: with SMTP id
 z15mr3798296wmz.131.1565085813095; 
 Tue, 06 Aug 2019 03:03:33 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id f17sm83844975wmf.27.2019.08.06.03.03.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 03:03:32 -0700 (PDT)
Subject: Re: [PATCH nvmem 1/1] nvmem: imx: add i.MX8QM platform support
To: fugang.duan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de
References: <20190704142032.10745-1-fugang.duan@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <65afeaaf-f703-02f2-a918-90a8bb8f58b6@linaro.org>
Date: Tue, 6 Aug 2019 11:03:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190704142032.10745-1-fugang.duan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030337_985363_95A4AD24 
X-CRM114-Status: GOOD (  19.23  )
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
Cc: gregkh@linuxfoundation.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/07/2019 15:20, fugang.duan@nxp.com wrote:
> From: Fugang Duan <fugang.duan@nxp.com>
> 
> i.MX8QM efuse table has some difference with i.MX8QXP platform,
> so add i.MX8QM platform support.
> 
> Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
> ---
>   drivers/nvmem/imx-ocotp-scu.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
> index be2f5f0..0d78ab4 100644
> --- a/drivers/nvmem/imx-ocotp-scu.c
> +++ b/drivers/nvmem/imx-ocotp-scu.c
> @@ -16,6 +16,7 @@
>   
>   enum ocotp_devtype {
>   	IMX8QXP,
> +	IMX8QM,
>   };
>   
>   struct ocotp_devtype_data {
> @@ -39,6 +40,11 @@ static struct ocotp_devtype_data imx8qxp_data = {
>   	.nregs = 800,
>   };
>   
> +static struct ocotp_devtype_data imx8qm_data = {
> +	.devtype = IMX8QM,
> +	.nregs = 800,
> +};
> +
>   static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
>   				     u32 *val)
>   {
> @@ -118,6 +124,7 @@ static struct nvmem_config imx_scu_ocotp_nvmem_config = {
>   
>   static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
>   	{ .compatible = "fsl,imx8qxp-scu-ocotp", (void *)&imx8qxp_data },
> +	{ .compatible = "fsl,imx8qm-scu-ocotp", (void *)&imx8qm_data },
>   	{ },

Looks like you forgot to add this new compatible to device tree bindings 
at ./Documentation/devicetree/bindings/nvmem/imx-ocotp.txt or forgot to 
add me to CC.

Please resend the patch with it, I can not apply this as it is.

Thanks,
srini

>   };
>   MODULE_DEVICE_TABLE(of, imx_scu_ocotp_dt_ids);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
