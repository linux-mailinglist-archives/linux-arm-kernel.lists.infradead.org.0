Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D79E03C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 14:24:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6ozwQW0Oniw91+4av4sOipnK1c2gz6Sv+fPDiwapWOQ=; b=B3mDoOsVKbQ197gA7tZaaqwtZ
	ZBuW6neq9pWzDb9L/z83PmKnIHqmF/o3M97V7X5k2RwZaO2JL2lxqIK38pTF5ssk+NDrzVIqyjRuh
	FV67za2Fsvug9jVNUNca42bT+8eVvwY/unpPJe13Vj3ZBmkjGpEEFJnHG2daj2cuDbBdSLCbg/qaH
	579rlcVSeIZ9OmsKOHPBjpLR3elOijDBMrlNl8rRLZPJoSOzbJfOlsYSJLtg7OdAEU8CCvm2S40SQ
	2rVYgLjShkOlr9rtaU0wdm4jUP1Zy1tcBus2VTqMRTjF+iLxG4Veei2a5PrjbAqFTIBVPbO2tLYVY
	AnEDKXwEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMtDD-00017B-Jo; Tue, 22 Oct 2019 12:24:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMtD4-00011h-WB
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 12:24:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id q70so9850027wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 05:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Ut7DiejZhR1eCG20yMrwS8a1hqYS2ddBi/U75ecWkFY=;
 b=jid6ntUK0esQpG508NqfQT8zlE0uB1es+ezydvxrncS5YL4nlvOrDTIZAThJNt1JBz
 UrQKQDEA9sdYPOvuhFTDlPdmpkopnU/enaASQsHEBQaqZrYTdNIQqGCDfElQymPwO8Ll
 s+thwC7xS0XKxFqUyXqcA73LqBGFRnP99zXtj2Vt+p5Zrbnmv+JAR3tbjblJ1nUHlgYu
 b9YpZJ97WC7Ig6r49FwggaBC2uFCe2oUjfQFjPdo0DFpaOBtfs5rwa92IUbItW9vWfPg
 z9+rRt5ubyBiRN150rIQRhZOKeDwPfYRcLpQVmo+SWKDJzrsxhT4se8JkiP5gzWwVAkg
 J93w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ut7DiejZhR1eCG20yMrwS8a1hqYS2ddBi/U75ecWkFY=;
 b=ohKMB0l/PvFlKzu3mCPAbab0qsNXOQN1yo/nhTo20JK6PtpZgWLDCslOCosS5UXzTd
 rFwItrp7Eq24bn5Mq5awmPORRPaoy9gQVnEObuU1D80iMRlflIpSzgs1sX7niGWmKpf/
 5qysxN6H8S4wlgt6Oq3LPLDOq2q/SpVhQgWXPLASjPvx9Y2kKjTG9EcO88nXiQcCGCRM
 Z8wAywYareJPQWhJwBxwU7zCFCe3NhoFKuGfuPkRzRvNn+xeFo2qVGBxRvfrm6Wbl4NE
 Z/FadyGnzzbmmLsmMLrBbOvR46s9ZtSh77aLKQv9doUrWjsum1pdrGW6PheO2ozL920k
 33KQ==
X-Gm-Message-State: APjAAAVVyhZ7kJSa4ukXSK6x0tknbtD0YRtNln337j71VCgliBGn3Hjl
 2cFEWnygMgOyxPWmY97Wm+MHcQ==
X-Google-Smtp-Source: APXvYqwgjPDPNW7a1xJ2Rc6OO4jAurB2ZpMNxcJUVeFXsu+xl+Or1DkHLx+C8XVRN8u73S9NUcWQwg==
X-Received: by 2002:a7b:cb54:: with SMTP id v20mr2708736wmj.91.1571747060898; 
 Tue, 22 Oct 2019 05:24:20 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id u26sm19101660wrd.87.2019.10.22.05.24.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 05:24:19 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: add binding for Rockchip OTP
 controller
To: Heiko Stuebner <heiko@sntech.de>
References: <20190925184957.14338-1-heiko@sntech.de>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <3b5f4018-82b1-946d-d81d-252eb872d5d1@linaro.org>
Date: Tue, 22 Oct 2019 13:24:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190925184957.14338-1-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_052423_365464_92E51E81 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 25/09/2019 19:49, Heiko Stuebner wrote:
> Newer Rockchip SoCs use a different IP for accessing special one-
> time-programmable memory, so add a binding for these controllers.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Applied both, thanks,
srini

> ---
>   .../bindings/nvmem/rockchip-otp.txt           | 25 +++++++++++++++++++
>   1 file changed, 25 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt b/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
> new file mode 100644
> index 000000000000..40f649f7c2e5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
> @@ -0,0 +1,25 @@
> +Rockchip internal OTP (One Time Programmable) memory device tree bindings
> +
> +Required properties:
> +- compatible: Should be one of the following.
> +  - "rockchip,px30-otp" - for PX30 SoCs.
> +  - "rockchip,rk3308-otp" - for RK3308 SoCs.
> +- reg: Should contain the registers location and size
> +- clocks: Must contain an entry for each entry in clock-names.
> +- clock-names: Should be "otp", "apb_pclk" and "phy".
> +- resets: Must contain an entry for each entry in reset-names.
> +  See ../../reset/reset.txt for details.
> +- reset-names: Should be "phy".
> +
> +See nvmem.txt for more information.
> +
> +Example:
> +	otp: otp@ff290000 {
> +		compatible = "rockchip,px30-otp";
> +		reg = <0x0 0xff290000 0x0 0x4000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		clocks = <&cru SCLK_OTP_USR>, <&cru PCLK_OTP_NS>,
> +			 <&cru PCLK_OTP_PHY>;
> +		clock-names = "otp", "apb_pclk", "phy";
> +	};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
