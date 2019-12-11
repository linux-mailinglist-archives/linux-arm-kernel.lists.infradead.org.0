Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F87D11A57A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 08:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13Blr/HmfO7k04BdKdW3+T1EdhDmEIU3FCFo+F1/GUU=; b=PvaDp1mSKv1zvG
	yUQGL9dEmPoM41xjDgQSvmohpL//L/M4/b4Kzw7VyifX2/k58WfH09k39nJp8E4e/hVkVwUA09xD1
	HHTAzJWaharyFIj7UMqcW+H5505UOn9ypiR6T/0XbahLax0CeYas+DvemaS2rzbEupWEmS7H4UmtV
	TPgC+kAUuCyJVJ8UpGDrDeUcgeT/e+3uMb2iVSfDLtkN45+ZU9EpttSBWaERFxXWg1fThvF7aekLF
	lmwQaCiiuMl6N7I/ZLYSHjXr8xDVWKMrbtrv98loyoROy7CkKiBWiG/0wBmQGxE8socdYX2+41vmr
	zrw9xEzzE+dgJeX9X6+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iewoA-0002ZB-BO; Wed, 11 Dec 2019 07:53:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iewnw-0002YW-Sl
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 07:53:06 +0000
Received: by mail-pg1-x541.google.com with SMTP id x8so10361297pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 23:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Vq55uCFLXhs3ZCSCodzVz5wONq66uwh2dV8Oy9WTDz8=;
 b=mDpPrJUIJYVjmkFpHxpy8F+FfeM2Sf0eRg2mKlBjIBRg79fki0bKHRnGHhKDS1OkqD
 glzMZlBnoEQUisCdLNsAXUMWBVBvMbJ1566H6YnJusL0fXZLIzqPLSFQg02wdS+HDAEo
 O7+N/WYTenkxyNFM81aueTTgPKkChCyX7vkK7dkrZYXvx1DHBv/8hFWjya/VnacJOBMB
 YrwDotElYm1xJPjQyWGND4Jxi38L9FP7ZEUaHqMtPTtyt6jFH3nChpHHL9OD71r0muGs
 n5VIgyKIq8tz5fmJfefzuTgo4TmVRs9Q2e0AxHhAHG4FXgkh9liXoGAZu7CICxQarxcO
 pqww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Vq55uCFLXhs3ZCSCodzVz5wONq66uwh2dV8Oy9WTDz8=;
 b=QukqdFfYvf9DzkOExiTMzFUNcgPbEipZGo0CqqjKABAHu4EncfqVfLssh8fONsREFs
 +s65qx3VRZuTfFgQZN91T6qaI/nF1UJ1StNWU1eEL6diPFFdBt6MH82JfgchA6G9eO8l
 5TjkZdjdFL0A2e4eCtRA2nf5tU+sojvsx/ot4s52M1HqW+ER6+thxwY8labHF6h+dUGa
 xCle6IxrC8+Q0WBMYyvNAT9duimMX+Mb81aQEqdNIM7uYIvJN6OIWUIBJJUQdsg8BH3u
 j0MbsNAA8Dpl6mC8ZlAcp+2k7g2CBxQgKgW4YfWVfOIBV9HBWCfw0mUQ/KyH/EpAwEAJ
 Kbrw==
X-Gm-Message-State: APjAAAUKRunqqHbdxzcqpdgr0Mp1b2b2yxgHbZyjz4TwE+Ls/prKy3gv
 RbKKRjEhqmoAhNwvUJ0pT7XvlA==
X-Google-Smtp-Source: APXvYqy+EwwCZr87pLcH/OaBsG6YcTrm8FJBCrW1oGk3rxl2DyThWcKGgcSXC0PubcIcgwCKCIJ5Jw==
X-Received: by 2002:a63:5512:: with SMTP id j18mr2484410pgb.189.1576050784012; 
 Tue, 10 Dec 2019 23:53:04 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id j16sm1689171pfi.165.2019.12.10.23.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 23:53:03 -0800 (PST)
Date: Tue, 10 Dec 2019 23:53:01 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Make MSA memory fixed for wifi
Message-ID: <20191211075301.GI3143381@builder>
References: <0101016ed035d185-20f04863-0f38-41b7-b88d-76bc36e4dcf9-000000@us-west-2.amazonses.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0101016ed035d185-20f04863-0f38-41b7-b88d-76bc36e4dcf9-000000@us-west-2.amazonses.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_235304_944258_F8D1C9D7 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 04 Dec 01:20 PST 2019, Rakesh Pillai wrote:

> The MSA memory is at a fixed offset, which will be
> a part of reserved memory. Add this flag to indicate
> that wifi in sc7180 will use a fixed memory for MSA.
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
> This patchet is dependent on the below changes
> arm64: dts: qcom: sc7180: Add WCN3990 WLAN module device node (https://lore.kernel.org/patchwork/patch/1162434/)

As mentioned for that patch, squash this change into that patch please.

Regards,
Bjorn

> dt: bindings: add dt entry flag to skip SCM call for msa region (https://patchwork.ozlabs.org/patch/1192725/)
> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 8a6a760..b2ca143f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -250,6 +250,7 @@
>  
>  &wifi {
>  	status = "okay";
> +	qcom,msa_fixed_perm;
>  };
>  
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
