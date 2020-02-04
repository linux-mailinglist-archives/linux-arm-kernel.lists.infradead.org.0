Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCBC1522ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 00:15:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7ZjekZ3dLALvo3CgtJVr7CYGRZkbznry4ik0+eq5YM=; b=tdP8ApVK7iV02Q
	QHHkvtNcQM3jjcGg5Ied+R82KjtK6UXOJbvSag49U728+ZGkB9c4T8epRdOVUHHasKiBx9N3vwgQu
	5X9elXvsBrk7TWMUARKgwZK4wbt8ZGLn5T6lwx1UXFCL9KDmjPxC3y7nCndxCnyQmGi3b2es/t1Oh
	u/qcqEqFuL3Bs0XHUXaE+enDfEmozoPhM1gFOPXF2OJQXuG4j2mXXXt0OkebcrwtSij9tJMbGgS8X
	CdUopdhih3pCa38BrBGIZB9XDzFY5DMjB0X7oV0H/p+UPtb8q2Ebs1lrz6V2YqRdNqozm+xUvyAjO
	Lo5TDpDjX1sLPIlBcGsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7Pc-0003VX-4o; Tue, 04 Feb 2020 23:15:20 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7PW-0003UX-Bg
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 23:15:15 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay11so49288plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 15:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eHL57O5Lzv9h0dmVqfW61X6PePuavBPvsAF59IMgl1g=;
 b=CQFG9weUlLK1Zu7Zfgkxnny8IqBI2BzJSepTO/sqAVKxSyjZ6+wdiMch925et+bAfO
 mU0oQhsCzTxAEosyBr2cX942wbPZY6xf80Tj/Q2fUY6yfDOnBEY49xmSYVJtmaPDC5bc
 KYombeK6wjGdm8lzmDgNjBJtcKx4oEUm63RlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eHL57O5Lzv9h0dmVqfW61X6PePuavBPvsAF59IMgl1g=;
 b=uSDYy3+lsOLCmi/hbo+2j+iQAELlJes5+HAKduXj+JmFZrGfyMl5g8ohie6yT57jb7
 wsHe5eiY74X3suiFkVm9EuKEqp9GSrD9CbIfAUSjoDFxBL1kox5j5AwtnaxmhjOrliBZ
 GWiRkg1bDPjFXxCb/bKe1i3BL7JQnKAUWH/NNwpEfTm9aQ++PrNOl7CbsBwld/jz0rlu
 uenFqujdRw+e0nuiFGYNgGWrOcy0NuBH9wxnHj/9xagzAEXXpZsb99oDL9EripZlodbh
 2RzVAhTxy6Vyl3KtXjZjtM4BPeDJvdcsFVxac+MgmpjAQgme1eJ1SPOLZttCVhIKgY07
 c0ow==
X-Gm-Message-State: APjAAAVZlotfWhCREFGtOHCwFpS1sKF/gG2+ZcKQa/9sJ5CsgzEhFTNg
 o4NUwkUcywUViFJ7mE30PGpsFQ==
X-Google-Smtp-Source: APXvYqyFPGXQmmH7C4ggqmXijaSpcmMAXH+pQ3854xeghzQF/MlW6fcJmdLmu4uW+b8rKx1bNNBa2w==
X-Received: by 2002:a17:902:7790:: with SMTP id
 o16mr31145864pll.271.1580858111944; 
 Tue, 04 Feb 2020 15:15:11 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id w26sm25319641pfj.119.2020.02.04.15.15.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Feb 2020 15:15:11 -0800 (PST)
Date: Tue, 4 Feb 2020 15:15:09 -0800
From: Matthias Kaehlcke <mka@chromium.org>
To: Maulik Shah <mkshah@codeaurora.org>
Subject: Re: [PATCH v3 6/7] arm64: dts: qcom: sc7180: Add cpuidle low power
 states
Message-ID: <20200204231509.GB18972@google.com>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
 <1580736940-6985-7-git-send-email-mkshah@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580736940-6985-7-git-send-email-mkshah@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_151514_401560_474E6539 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dianders@chromium.org, devicetree@vger.kernel.org, lsrao@codeaurora.org,
 Lorenzo.Pieralisi@arm.com, rnayak@codeaurora.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, swboyd@chromium.org, david.brown@linaro.org,
 agross@kernel.org, ilina@codeaurora.org, sudeep.holla@arm.com,
 ulf.hansson@linaro.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 03, 2020 at 07:05:39PM +0530, Maulik Shah wrote:
> Add device bindings for cpuidle states for cpu devices.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 78 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 78 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 8011c5f..0aa0ced 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -86,6 +86,9 @@
>  			compatible = "arm,armv8";
>  			reg = <0x0 0x0>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
> +					   &LITTLE_CPU_SLEEP_1
> +					   &CLUSTER_SLEEP_0>;

These entries are deleted again by the next patch in this series ('arm64:
dts: qcom: sc7180: Convert to the hierarchical CPU topology layout').
What is the point in adding them in the first place?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
