Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDD0127283
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 01:40:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oA/AqFXKP7DFlP3tGnZB/5SxCj05NKKzkpDiDX4+VOs=; b=U84k4PO2zECwbQ
	YCyvIyHQ60vvKSpQzyYUfCUpZWOJrsgJ9L427jP0Ub3e8CSjOvfrpB4KbYjZB+oxtVTIOD92CgT4U
	pNEz65is0j2PA+fsd6xxdp+W//mqiSwBm21LD/Kt87sReP1SiHLVVtz1DFdkRvsNb482/SKYD9YPs
	lrYU1CS8WDw0ftFSBFFAMhPap60TH540XYYe0+K3ZS2cX27X/kRG9kjztqo9alGS3H3JY+H4pi7DC
	T7AkOV1qRlFv33u/itFn1nAXIKR9OEG0QGDJmydualc1HjE9wLU5g4sABwjyicYOLgSaP/dEkjAd/
	TEBqDIARembZZFMipVjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii6LO-0001uE-4B; Fri, 20 Dec 2019 00:40:38 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii6LC-0001so-LE
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 00:40:28 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ep17so3308905pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 16:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jRdtiusu+beWJmpVDOcRJ7adeaD2r8nAbkaw7dnEM3o=;
 b=IiSA+8Zu5xMGrVWMYcIurnZ+82iGEVaMNMAYiegms9yncV4Odo6L5M/TGQpyIezn8m
 tV4zwJ4ShOl3QB4MLIww8dJAE8GgAtN7bg0I0FblsIfNchewk13zr9OCsk24esyGcjqe
 CeGtVcnpDJB1UcX3MdrZrffNlHFR9DBIuVtsQScHTeosd/J4UpJWV4sVJUWxuiyyXFQU
 usb0+ndwgbW0KJE1z0Nad/3t/NOHqyRlRhrJe85j6rweybaBMTQABri1nG5ZdcejyZTZ
 Yyv5+xScQSwEnGQiQDlpr+SiYIO0C+ZYrWJ42h1joK3SUIkhf0UQcgqSZAIkbCqAZ3pP
 EReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jRdtiusu+beWJmpVDOcRJ7adeaD2r8nAbkaw7dnEM3o=;
 b=MwPkGFld05NlUS3d/E2kf2HALNnBDW64ELiSQgXl85PhjbzSB2AYccktcZqDJyHDS6
 4qFLGu0dKm71U/CMYYdNrxGk7AWtzev6eCda1eCoNFo+1mK24ztH/A2szULHwQqXtcnS
 dRhNchmtNZKSarxFhkP4LqYxBkUdBdttLBmHHI8+3ppqXsVVEXgiOL0LeFKtNVTGY1fu
 S/xS03b/Y1ne6GC4ORoAoUNe86Kn+NmMv2AnfwA7E5eToCeMI6T3mqEuxK5uc7L1oa3f
 /bnJwmcopAebZpLou3vSRVwiLXihXMwpBBhd43dHGpHZioCtk6boeGQ+Rd+LAac0p5Mz
 u44g==
X-Gm-Message-State: APjAAAVX1aThXj2ueijo6k4iooOp5so7eiilHsGjeEziHF6hSWhlfrOh
 q3p7/8MVtcgWPo7RUwuP6WqYCl6nCHY=
X-Google-Smtp-Source: APXvYqyXI07TRonse1dFs0JYqbSY6q5JMDHO4GTlLVXHf3CyrogLeSTQza7mciIV4JED48jdhYeetg==
X-Received: by 2002:a17:902:59c9:: with SMTP id
 d9mr11951312plj.184.1576802425465; 
 Thu, 19 Dec 2019 16:40:25 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id o16sm8713462pgl.58.2019.12.19.16.40.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 16:40:24 -0800 (PST)
Date: Thu, 19 Dec 2019 16:40:22 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs404: Update the compatible for
 watchdog timer
Message-ID: <20191220004022.GE3755841@builder>
References: <cover.1576211720.git.saiprakash.ranjan@codeaurora.org>
 <757995875cc12d3f5a8f5fd5659b04653950970a.1576211720.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <757995875cc12d3f5a8f5fd5659b04653950970a.1576211720.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_164026_742001_28E50CFB 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 12 Dec 20:53 PST 2019, Sai Prakash Ranjan wrote:

> Update the compatible for QCS404 watchdog timer with proper
> SoC specific compatible.
> 

Applied

Thanks,
Bjorn

> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index f5f0c4c9cb16..c9e8e629045b 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -905,7 +905,7 @@
>  		};
>  
>  		watchdog@b017000 {
> -			compatible = "qcom,kpss-wdt";
> +			compatible = "qcom,apss-wdt-qcs404", "qcom,kpss-wdt";
>  			reg = <0x0b017000 0x1000>;
>  			clocks = <&sleep_clk>;
>  		};
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
