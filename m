Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 528963B0AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iR54DoH8/ETeivJXTMPiHOOeDntotcndQkkk/qjCN1M=; b=ezy1IX/1eQaA/1
	86Ah1Ya2oonmmTLjuNBRSrAIAkCe9o5WwZkF2szrlvItjh4+L55DYwBVxXM6ln320sW4qfuedckx7
	XR074JCCEEivhqbbwPWozVwdQZxRC20dkGVyoeLiv7pi0BR3EbNd1VU13RDJ+pd4VdlXAu9QyuYbu
	c4jvNx5lpl7sKyBszcm3dYCkMlgZuNw8oAzQiPn3gY5ul5ftU5iy5FLnCNXLHaxdQl3yCDVyKW3qp
	9gYUzSJtjfoFdtV74Y8gMsYkxGcIEY2WWjV/1lVGUp9XZJLbicMfmiGu5sPUtobc8p7o3RGm5rVIQ
	TTg3QerlYWThJtEeENEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFZI-0002fQ-P3; Mon, 10 Jun 2019 08:22:16 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFUJ-0005hu-JB
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:17:09 +0000
Received: by mail-lj1-x243.google.com with SMTP id i21so7068463ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8pL4Nb1/9ZlimGeO+8nNRwwsw7KQDrO0bIiM5MijaHc=;
 b=xSRPJR4uipKtcDFNkoGLAFNDSWpur+y8M24zd3LBMhsJYqFp5+eEkZJfeJ+mUfA3dP
 AOCXEMkGnfQuGJ/8GlSeSupXJiRgFsrpX5P2P8bKbiNdUjiKo4WlyhCtuSvw6Fu3yuSp
 JlvmWIg3qvk3YA8rP6ziRd3ISQI+W5g/+ujJ6HXbRxdsFHJtT2251n7emGu/ehyLDchW
 orY44h5Uq6uCpZAKQTXbUabYUv0SFU0BU35hUEowS0A8IT+z44mEQpi7FOqyMObTxHXH
 J1IZmwmz0qzlrtkOKVn+2r1ULZjLMdlZ4gxp72cwNG0SGpQVHYzj40UB6i/K8uRaz/6v
 Oapg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8pL4Nb1/9ZlimGeO+8nNRwwsw7KQDrO0bIiM5MijaHc=;
 b=fOmuXUIa6F77sl0ypkD0EYqcvTjvn6OEnZvt73MzrU1T0HWS9G2DSh02PAsnV8+wd8
 CSjepoOBxyE/5x+4FbZ6KDFi1PqWq/O45j84KkeBIgDGhG0OYbzr2DknS3PeVwVsqVI7
 u7/KoDr6YednfPr40E/xVTf7LaaqGpY6gxzzbT5yqv6XAWfMjZpEF9EZPC6zC9cn8JI8
 IfM5yTVtYCdURvQk/CXXGfy6gFkEytQ8aVOUif20tnUjeqLZDPspyrUbgofth6nfxyLM
 KKbzWZ+tXY4Y8pdZ4CulsP4Vwp8WOM+IxwM4lxXYL9Su15TDvJ6+aez50lISXR/KZVDG
 kCMA==
X-Gm-Message-State: APjAAAVsAotn2lM6HFDaPgcDKHPv0+9wbfFgJ82pUq9fZnAYyC/Se4JS
 TMv6ele4t0XHqx+Xuxx+dRMyAA==
X-Google-Smtp-Source: APXvYqxdRKjHKNFtdU1RuLDegwe0z+Q9hzFQQCcTB/Mo0B6oh4MMv2rJa2+CBzMU9qD3w+1XRSlP9Q==
X-Received: by 2002:a05:651c:87:: with SMTP id
 7mr18288402ljq.184.1560154624975; 
 Mon, 10 Jun 2019 01:17:04 -0700 (PDT)
Received: from centauri (m83-185-80-163.cust.tele2.se. [83.185.80.163])
 by smtp.gmail.com with ESMTPSA id c1sm1892791lfh.13.2019.06.10.01.17.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 01:17:04 -0700 (PDT)
Date: Mon, 10 Jun 2019 10:17:01 +0200
From: Niklas Cassel <niklas.cassel@linaro.org>
To: Andy Gross <agross@kernel.org>
Subject: Re: [PATCH] arm64: qcom: qcs404: Add reset-cells to GCC node
Message-ID: <20190610081701.GA3152@centauri>
References: <1560053972-32273-1-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560053972-32273-1-git-send-email-agross@kernel.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_011707_663410_5D64D023 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 08, 2019 at 11:19:32PM -0500, Andy Gross wrote:
> This patch adds a reset-cells property to the gcc controller on the QCS404.
> Without this in place, we get warnings like the following if nodes reference
> a gcc reset:
> 
> arch/arm64/boot/dts/qcom/qcs404.dtsi:261.38-310.5: Warning (resets_property):
> /soc@0/remoteproc@b00000: Missing property '#reset-cells' in node
> /soc@0/clock-controller@1800000 or bad phandle (referred from resets[0])
>   also defined at arch/arm64/boot/dts/qcom/qcs404-evb.dtsi:82.18-84.3
>   DTC     arch/arm64/boot/dts/qcom/qcs404-evb-4000.dtb
> arch/arm64/boot/dts/qcom/qcs404.dtsi:261.38-310.5: Warning (resets_property):
> /soc@0/remoteproc@b00000: Missing property '#reset-cells' in node
> /soc@0/clock-controller@1800000 or bad phandle (referred from resets[0])
>   also defined at arch/arm64/boot/dts/qcom/qcs404-evb.dtsi:82.18-84.3
> 
> Signed-off-by: Andy Gross <agross@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index 342788a..086cadb 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -426,6 +426,7 @@
>  			compatible = "qcom,gcc-qcs404";
>  			reg = <0x01800000 0x80000>;
>  			#clock-cells = <1>;
> +			#reset-cells = <1>;
>  
>  			assigned-clocks = <&gcc GCC_APSS_AHB_CLK_SRC>;
>  			assigned-clock-rates = <19200000>;
> -- 
> 2.7.4
> 

Reviewed-by: Niklas Cassel <niklas.cassel@linaro.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
