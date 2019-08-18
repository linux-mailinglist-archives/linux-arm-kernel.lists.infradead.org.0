Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F93915B9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 11:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AtoUqArSE06WpUQXj5g+qhVJ4IQQprWp62rBdBQ7phw=; b=PfF2D3GWrTN62hXRNYdRauQRB
	iQud0QSyfYbPX5Lx4b+zCeF7XOUGHDJrk68UjXEEepHjCMtgQIj/QKMMRGT3ha8etJTgOYZ8sKby3
	9BoH+LFUrgKuf3nnildMJav0xenrpczozwVrtUspyzPymUCNdhO8LGcJL8e5bTGFYXBoCktcE5QvA
	fr6lo2tyEIsB52um4ZxfDyC4nXodS6vM2dyfx76eN8iJOcpSrqCWgL+z+vKluJayk7Kq1MkrAyJep
	ed8QBGU2HHUPKCjAfJXz1rL2fPvBBvl+PQOvOJA/5KtBg/3G0Ca4lUrHSPEmDjwXiEXE7829dlZdV
	/+js0zhow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzHBx-0005N6-8z; Sun, 18 Aug 2019 09:09:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzHBM-0005Bk-4c
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 09:09:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id p77so531155wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 02:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MXsOHISmCpUILyy9WHiVYPcKhs15OcsHvOVCutfJVTQ=;
 b=VnCEES/UltGfTFiTg/85Nqzwi5/ac6wr6TakwWpR7pOAZlH9NoN4dI+SNQbrTNye8+
 ArfSICQSVhQyfo4G9syzmU00C8Hzn3dUwkMMDfGVws4EIQ9zr8dOp+X4LukKiXZ7VmIC
 zkCyy6Ev4yGgywH69ioOaqXxOm6xPvV++me6ZhKHs1QgOJLY/yZXl2jmnC8D29sYRLHE
 +xhAWaS66VDRWtmazSF3gUeFaQbfC6etJ2lvgmeCxo4zelZjtIr4YLN7c2oAkVfFRrdm
 rcvS7tr74BBsCyDHTylY/ZLZi3wxoAiTuq9hNnxjIYU4HcX0z1vwatZ7a9PZRBbpdSfg
 ktkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MXsOHISmCpUILyy9WHiVYPcKhs15OcsHvOVCutfJVTQ=;
 b=catNH901nTL52Q+SOWhfho8bjcVpJ0wzIPmnAf1W+/mQ0yqOvTu9YdXDWRBqEO7k6q
 1w1bL/p/Foscg6md+wQ6gPtorvswFW5ybGCM4U1nkHF5cXfvcRmug9ADo7BTkj3Hw+ax
 jWB0M4uT199N58xE9nQUamLW9G/2/p85LDDVgwCMh+CJzDL44BenIWERtxXTOqSNU8tz
 +xh5v2xAQagd1lq+MnERCkHzqxjQ9UJpNiNJocJGIRL6ndmAgyJHDjs1/j7JkbCQ0hf6
 /eZeaxpEElpFmjdeSXa21sh3p61dBFdLFEf75qpUZKUo/OnZb86wRnE6BT4amnToex34
 U26g==
X-Gm-Message-State: APjAAAXY8y4+IH/ZpBcRU1vheYb/r5fLQcPBWtKMk8Bc6BkwdLUs5mmS
 R6W3/R28bUQ0aYnA05qJYKtqWA==
X-Google-Smtp-Source: APXvYqyHX+LW9YR2h2Sapt+smYzR6FMkFbhNfzF9MEfgizCxuJ1WxMrjeaOYDF1/XkV6nlK+MuPFTQ==
X-Received: by 2002:a1c:2314:: with SMTP id j20mr14813865wmj.152.1566119334824; 
 Sun, 18 Aug 2019 02:08:54 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id p7sm8422702wmh.38.2019.08.18.02.08.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 18 Aug 2019 02:08:54 -0700 (PDT)
Subject: Re: [PATCH 1/3] nvmem: mxs-ocotp: update MODULE_AUTHOR() email address
To: Stefan Wahren <wahrenst@gmx.net>, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, "David S. Miller" <davem@davemloft.net>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
References: <1565720249-6549-1-git-send-email-wahrenst@gmx.net>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <5883944e-efef-ed3d-fdfb-19d9964762f9@linaro.org>
Date: Sun, 18 Aug 2019 10:08:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1565720249-6549-1-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_020900_196467_09072354 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-hwmon@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 13/08/2019 19:17, Stefan Wahren wrote:
> The email address listed in MODULE_AUTHOR() will be disabled in the
> near future. Replace it with my private one.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> =2D--
>   drivers/nvmem/mxs-ocotp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied thanks.

--srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
