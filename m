Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3453DB9EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 00:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UyRT9xtuDZiZpQjkm4bLwf7mmN/XBJEgshfWb5Wo9As=; b=HTp61iHaZEpUuH
	QHR7vHmm2gEth8d0MUYs5NpJ3jjwLSfrq5koM8Mde60YERBLz+jTI8P/3pt2OJQyLuD9kFk7oXYux
	FDlWhDUic4Y9u87oU7vLWFP813N7/ey3lt3cpNpzOMZWLUe49QmpQw/aabsmbM2BxzEi9Co2fGC6C
	siohQA9bnQgF97pXualj7ELdyPNsdSlibPi0Abow5OsDOZilnc8Vcnm8ocODv/9CKisvt/uAAia5+
	qHNRa3c8dqewT4xmE/QTfMCz1lnr+esq7OmS3nmYWdMDxgCwwS1SrGSyKet7eAxrYgTlcXIVp32lK
	bYbXYFIljAVGCbjlqLnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLEh4-0006Cp-S1; Thu, 17 Oct 2019 22:56:30 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLEgu-0006BB-3B
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 22:56:21 +0000
Received: by mail-pg1-x543.google.com with SMTP id e15so2179745pgu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 15:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PEzTPXIiSWrjhtZyK0IAxlrMGgnaWS5bFQ/GX6txWdQ=;
 b=vo2VfrEvnriZfqVf6yyx5d6daMZFh1S8KpVp4FM557gEvO4z2U2sf1wONXedsiupfk
 CkJmU32vKyQRmFxfKS1ZyvbJk1As7A6lAZZuzfy05lCiqguMpoU7AGVF5OPfO50j3zsQ
 ycdNPZ8eeobGBmhDA/GqMk8SQ9J7q1isvA5PMi262bLCn9hEV0PPD90vyQwjXiysboQz
 0SxNaUTWjZ/CThNNFEnMGDppeI9nTpFv/lL7mmbHdWmQFM+sYL62DfO6NAkROh+yyLNu
 k9GbTbnSXJAOVMbeyuGIFdvd6EILTZxgkSR/Xv6TlKx5XtQSKN6wd1XrnKuzcjhiBeth
 VpBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PEzTPXIiSWrjhtZyK0IAxlrMGgnaWS5bFQ/GX6txWdQ=;
 b=EJYr8uNUT9XVa7ZB6D0AYULHrFqBmx8IIPvW2Bmqs/KI+H1GRi+iIqPJccUboaDOKm
 49qUHtahV/wKQnkt4vxF/eHUJYi3MS0zhRODAAq6b+6foXzun+Adt6kFf9vKpXdKqdTB
 efmOXU1N9wVwvA5Y/gmYiNz/sucXNLhiylbK172Kksv21wAG2ASwvZTPsBLsmBJuk5gw
 eGN0QgZXvG8OmVPR60NWuQ/qua+MsMcwbFWIcaxuXXWVGCwmFGWDTYJQr1vfvBYIaC8J
 N1J4cRSqOQMk347g13gTIAEyuxfx5UcBczwo7XYK3R2ckDucsJAhtLRxg8jUcm83YNuy
 VOJA==
X-Gm-Message-State: APjAAAXMvNB1Dm//ArpD2y0IVUvlgSiu5aiZjtFPZtfJrxXsWVV5IbOE
 Q4TR4zXV1sEYvl2cX5oyiUJpfg==
X-Google-Smtp-Source: APXvYqwGX8tr4KBqHwbDLtZIMeKEgGtLYeAuokq/qC1U2pE6TwlwTOj/80mw3ewLkSLSHi2CXpRQ/Q==
X-Received: by 2002:a17:90a:8d13:: with SMTP id
 c19mr7157506pjo.136.1571352979203; 
 Thu, 17 Oct 2019 15:56:19 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id m9sm4089454pjf.11.2019.10.17.15.56.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 15:56:18 -0700 (PDT)
Date: Thu, 17 Oct 2019 15:56:16 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable QCA Bluetooth over UART
Message-ID: <20191017225616.GB4500@tuxbook-pro>
References: <20190926225604.46514-1-jeffrey.l.hugo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926225604.46514-1-jeffrey.l.hugo@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_155620_134513_01E22E8E 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 26 Sep 15:56 PDT 2019, Jeffrey Hugo wrote:

> This enables Bluetooth on the Lenovo Yoga C630.
> 
> Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>

Applied, thanks

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 8e05c39eab08..0134a84481f8 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -169,6 +169,7 @@ CONFIG_BT_HCIBTUSB=m
>  CONFIG_BT_HCIUART=m
>  CONFIG_BT_HCIUART_LL=y
>  CONFIG_BT_HCIUART_BCM=y
> +CONFIG_BT_HCIUART_QCA=y
>  CONFIG_CFG80211=m
>  CONFIG_MAC80211=m
>  CONFIG_MAC80211_LEDS=y
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
