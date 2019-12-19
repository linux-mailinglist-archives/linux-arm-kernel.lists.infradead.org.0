Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC95126864
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:48:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ficvbVs1EpWzWu1h/mRF2ZiidNJqtwYaluVh26K8PGg=; b=geZXLr6LHqjOgR
	QLJslMTMl+lxd47FjJ49NaB8Wa40/7r/u8eV26CJZtIaywM+bBTC0/YYm0VGZq6pdHGb0J6XJ8dJO
	CToI82rVuqyN1sCpjKf9mEw/WXaLq7t+XBSjkQuEWbTwDYUS2EFV6Xv41SaQ0DYDazZDjFfWxHgYf
	eNB5H6i8mI0O13itWrClDGg5UyV2zgZNWhefBhLuqf5ewm5yDM4M5SdM+lynWVlGgXN5qcPzoY5mz
	50In/R5CEaDy4GM/mIEGpuJ+hDwbK3JOYV3MpVqKhZAmc4Co+tF50BCB7ZqkpYAHFtI2zgXrNwS9I
	PAdX+APnltPyww4p0tvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzuD-00054b-4E; Thu, 19 Dec 2019 17:48:09 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzu3-00053u-NP
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:48:01 +0000
Received: by mail-pl1-x641.google.com with SMTP id s21so140570plr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 09:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T1xXSYuN/agEP+xV7gR2YsC5IQk2uBuXdMCptm0m2YY=;
 b=LnwL81uJzzHpQGW58xTLid7cnT2djPHkv4Ix1kkA+y3mk249gC8TuTISQnyzyotyvR
 GyrXXz8pSMkQCGZKN87K77JEeY6MIF+M9UKKVsbZTWFw2RWST60PkhbUouCoWzY5eggA
 /JVtw0QINwXh9GTwNFh+9uWyDM5/are+lQXj4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T1xXSYuN/agEP+xV7gR2YsC5IQk2uBuXdMCptm0m2YY=;
 b=mCEH1xouF2C4OGXQnTNU1HDpna6mmP+iMRChHN3sQ5g5HoVqp6ZumPmW/BDPj8pGSo
 uahLO1mKX7kNYFhvh0l5thjpG5ej3lFyTklT/BkjjvmRJnVmJHSIiY44R3VenhJSvxzC
 b/K/NODTR3Q08H4EL9EQ2F0MBuMwSFj3Uc65vvdrcgF+zIiTsX87bvWlU5aHzAkCkmQ6
 7P9Yd6zgtanHkJHDkorj2nFdHtwG1np3noDUbVLjJ+6LyTQ0PODQA1vNoDPGMqHK6+CV
 oKS+lxA3mYwncPTnuyPadCALB0fVId6n3Jg4JFcYqIUm3yvadfofHd2H/Va1p2McU5b/
 hagA==
X-Gm-Message-State: APjAAAVI/ihSCoiCQyjnTkG5jedXV+kSJ80gGI7o3LtMua2Ua8ecz6tH
 5E1Ak8bkoSIKHxguSZXSHWmmGQ==
X-Google-Smtp-Source: APXvYqxSvas1HYsFv66zRl2Qk5NQy60MqFsqe7M1+Z+WlhN/myDxxhPJLJMBff2b/jwrzeoQaazX4A==
X-Received: by 2002:a17:90a:cb96:: with SMTP id
 a22mr10875633pju.96.1576777677975; 
 Thu, 19 Dec 2019 09:47:57 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id g11sm7967658pgd.26.2019.12.19.09.47.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 09:47:57 -0800 (PST)
Date: Thu, 19 Dec 2019 09:47:55 -0800
From: Matthias Kaehlcke <mka@chromium.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Message-ID: <20191219174755.GY228856@google.com>
References: <1576741521-30102-1-git-send-email-pillair@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576741521-30102-1-git-send-email-pillair@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_094759_782696_953CF376 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 01:15:21PM +0530, Rakesh Pillai wrote:
> Add device node for the ath10k SNOC platform driver probe
> and add resources required for WCN3990 on sc7180 soc.
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---

This does not apply cleanly against the current qcom/arm64-for-5.6
or for-next branch, looks like you need to rebase.

>  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  5 +++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 28 ++++++++++++++++++++++++++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 189254f..b2ca143f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -248,6 +248,11 @@
>  	status = "okay";
>  };
>  
> +&wifi {
> +	status = "okay";
> +	qcom,msa_fixed_perm;

What is the status of the patch adding this flag?

> +};
> +
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
>  
>  &qup_i2c2_default {
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 666e9b9..ce2d2a5 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -42,6 +42,12 @@
>  			compatible = "qcom,cmd-db";
>  			no-map;
>  		};
> +
> +		wlan_fw_mem: memory@93900000 {
> +			compatible = "removed-dma-pool";
> +			no-map;
> +			reg = <0 0x93900000 0 0x200000>;
> +		};
>  	};
>  
>  	cpus {
> @@ -1119,6 +1125,28 @@
>  				#clock-cells = <1>;
>  			};
>  		};
> +
> +		wifi: wifi@18800000 {
> +			status = "disabled";

nit: the convention seems to be to add this at the end of the node,
which IMO makes sense since most other fields provide more 'interesting'
information.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
