Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0DB91F0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxqRvRJOzKTxtiLfSFU1uGyJaz6COgguuP9I6wP/jZ0=; b=gUVvQZmuDusoda
	Kl0bFvd3wnSqauoT2y2AMzFjv7DivcTXEM/U9+emWF4E+XVdiWXHg2lDRp53BI1jIIFXYXD84LJ74
	pOzM6yQ3XyaW7e9aELdcjUCE4GeSazD19B49AbtAYZzsVMEGtKbcIOKcVmGTK8RpJEkAKQ5vdC2K1
	MjkYB39chyykFTDtm9lHtNkEs2B4YHA78ZIXC9rvNLKEJUxo++7QwcH7tcew4AveCLEPMMH1GfcGO
	rsmYFAOcHw4oW8f8aAeZYCoLsP6vJ7KmYpWk41JsEzKO8kFFLx92LPpMQ1y6Il2LJY3530Kfwkgtk
	+aBYoYPpLIeyHKak0k5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdAJ-0001B9-Iy; Mon, 19 Aug 2019 08:37:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdA4-0001Ak-L8
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:37:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id p3so790421pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 01:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S4GHfSKQyx9obgpD6pUQlhguun535Iv+9qQdLHTCQIU=;
 b=ir9OqPH+14qK5lFOFTNB+sPUzt3MSL7+W/lXJqrmVbjMEUxHpV9idwMPgGnT/J60Yt
 f+jNFB+7G/kVPp5l/0nm08Brh2asukPu9IxfrczHHQyieOLLYPiwjABxf4aD8NEQxsQL
 qNFY+zzVc4suuEeb3qUkrTrxWX/7hVoxlGGiN8g6e0det561n0VNcJhNYzLG/oUUwJHY
 TU8hk1nmGcz6Qn8kxY+XQ0hX3VjFTYc7MR8IK+sXiodffvkzG9VpBISpS+HyQm/7+dwG
 gzd21ZIwtboOMV1L0I1QwlmEpGXTeNuQcIQrmvUMh/dxTkSBNfW+IC4aj4upgNwz+U3p
 bCKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S4GHfSKQyx9obgpD6pUQlhguun535Iv+9qQdLHTCQIU=;
 b=TzSjsiBL0ikvHn/jenckKGqdYcUKeZr11sn7WhNU1oS2a2JEBNyxfUdHtxKVpTVvmK
 gZdQcaW4cQyZXRFmJnHDt9VpDxaqRpZ9FyTIstDSWYPWfjO6scaR9q+gCRhHc+7HMdW3
 sPFFVnPMcaPkErAdlrsGTvj7uf24S+CglR0ZjSBREoZRzswPJwbaCgTfDiQXj6CiIyvj
 1gAnsl6VBBpbfLleewMG1SxvjaeC/t3zLEX5hGV9GP6kjWaauMPo9F5Dnu+W16tROwzd
 bAXbzqcFwpbxmCR3n83dELoW/OtEV5L1HfzScuzFDJsVxKWz1Z1PRvrihWgXZeMfE9xJ
 NoHg==
X-Gm-Message-State: APjAAAU6PZD5kFqUp7Dh01/Vgm9gBGu0rQUmJYPuD/8vgwEOyH9Eg+Ut
 fKxRs90fcSUuBzb1OcfrHEiJmA==
X-Google-Smtp-Source: APXvYqzxl6MDX+m2ZXx/oOOpJ6HFlbhtvNzG4FiAtQifvybxRcF5ONNGhiWAU87pm52wiqpLLtBfPQ==
X-Received: by 2002:aa7:938d:: with SMTP id t13mr22083730pfe.180.1566203827811; 
 Mon, 19 Aug 2019 01:37:07 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id s16sm15700182pfs.6.2019.08.19.01.37.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 01:37:07 -0700 (PDT)
Date: Mon, 19 Aug 2019 14:07:05 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH RESEND V2 3/7] cpufreq: Use imx-cpufreq-dt for i.MX8MN's
 speed grading
Message-ID: <20190819083705.fqpsyk7rgqmul6y4@vireshk-i7>
References: <1566109945-11149-1-git-send-email-Anson.Huang@nxp.com>
 <1566109945-11149-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566109945-11149-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_013708_709404_6ADA9891 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 linux-pm@vger.kernel.org, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 mturquette@baylibre.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18-08-19, 02:32, Anson Huang wrote:
> Add i.MX8MN to blacklist, so that imx-cpufreq-dt driver can handle
> speed grading bits just like other i.MX8M SoCs.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
> No changes.
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index ec2057d..febcec8 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -109,6 +109,7 @@ static const struct of_device_id blacklist[] __initconst = {
>  	{ .compatible = "fsl,imx7d", },
>  	{ .compatible = "fsl,imx8mq", },
>  	{ .compatible = "fsl,imx8mm", },
> +	{ .compatible = "fsl,imx8mn", },
>  
>  	{ .compatible = "marvell,armadaxp", },
>  

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
