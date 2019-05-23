Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE832785C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 10:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/5o5+23KkYzwWYpb96P5rHccW2ZBWIOSsnxriNNSMiE=; b=c6y7lgDOCmLW41nhPVnGVSFoM
	6NbCFiYhf68XrggDbfewtWek9Bl47Jsb4hruLXfHSMBpaZU7AcZ+K+AIUtQVUovZLP+31DiGbL0Tx
	8vUALsJfV3WxIXCFu0dxu0mm/eEJVMsye94nGIc++3oLU/2q5ezCcLn4sH1b93+KNPBlOyeqiceeQ
	EseiM3BseC5AMcPl9dh4jsCHf4bJy3sv8hOiK5U/yFo4oPqha8Zzuiz+jA0HDGx6tuUsSkvady3yD
	X0SDDuecUwwd6BA3jvPdGlQbHYX1WRtpMJPVbOitp55K1DUpU/oYom9fL6pLW3GPEG9MpHO975YzW
	BxQG+IYLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjNi-0001Qy-Cj; Thu, 23 May 2019 08:47:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjNb-0001Q1-BW
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 08:47:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id i3so4873949wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 01:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aZ6D2XlEYwvXZbrqEbjpu9yY579r2bu6ODvrfx8X08w=;
 b=d/AwauIsWqkqiCoDbAJXJ2gr/ROX0wC1/pvbCDuEAyUEFJTeXaTGNfkqW+HnaWJLZG
 xTqX/l4Dr2wnzdj8Oc4Ettwl2MFFi4RnOORMIATXUs6TAh0sMgllhBIlVv4FKPpgXrom
 YeX5+p6SLjDFjMEdUDRN39wh4SdgQqYsGlp3ronpw0C0X/S/bBMY6hvUF8IwGbYjwfjI
 JnfuoujmII2Mwv5rZefh4lig6DI1WoAWJKtOO5IhG7M/vE0WfkUudQVE7nF2n0cz3ZJr
 sPYxuNChtsrgf3Ff+keozDK82BvMgfZ25S93uWy1yoCseq6/Y/HKrxE29TTito+D3nxs
 Y+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aZ6D2XlEYwvXZbrqEbjpu9yY579r2bu6ODvrfx8X08w=;
 b=OYzsJ9/tUnZznwsGkiEOkZL7ywwgiiIAvleRyufDfgEN8owW0YyEd56AhPltT+pDJ3
 u/a/RKmYMmGf8XurVXVqVV1Expzg4CirLZpZfPvKXSHi3fRugWIMKM3lYDd1LE0gsMXy
 c+QrmPaEWksJC7wsea7PqcWQYGM392n14oLs179nB14DfPJyc6Y2oHWI4t5GGhq69PkO
 2d5rmH1YleBFrpKVRGGZAoiVBpFfJD/4F9w+Q1XJQa8SLN4oUfyu3P8UuACHdK3uwPOT
 0WpJDQ2fJiiPVKVFa6DB1NKw8k/Zuv71SVuC7IQVZK/Eqsq9GUjnZQaC9MUI6ftmray0
 Jbaw==
X-Gm-Message-State: APjAAAWOW4Vic/MS7qGENr0hpurJjWu9GtsiBe5Xx/irZQXM53HYcLAM
 EYHKRAD6M9qQHU7U7wtQDuROyw==
X-Google-Smtp-Source: APXvYqx8tWRko1FYV9WAi+gy510WGFSXJ0v+a5meO/JBL7cf8aVxNVPDnvTwo4K8Biw+MXULEpH5ag==
X-Received: by 2002:a05:600c:110a:: with SMTP id
 b10mr9686753wma.125.1558601232286; 
 Thu, 23 May 2019 01:47:12 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id 34sm48072636wre.32.2019.05.23.01.47.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 01:47:11 -0700 (PDT)
Subject: Re: [PATCH V3 RESEND 2/4] nvmem: imx: add i.MX8 nvmem driver
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
References: <20190522020040.30283-1-peng.fan@nxp.com>
 <20190522020040.30283-2-peng.fan@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <9d8ea55c-e9e7-82f5-45be-53bc86e59f69@linaro.org>
Date: Thu, 23 May 2019 09:47:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522020040.30283-2-peng.fan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_014715_401390_0B78A9D8 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 22/05/2019 02:46, Peng Fan wrote:
> This patch adds i.MX8 nvmem ocotp driver to access fuse via
> RPC to i.MX8 system controller.
> 
> Cc: Srinivas Kandagatla<srinivas.kandagatla@linaro.org>
> Cc: Shawn Guo<shawnguo@kernel.org>
> Cc: Sascha Hauer<s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team<kernel@pengutronix.de>
> Cc: Fabio Estevam<festevam@gmail.com>
> Cc: NXP Linux Team<linux-imx@nxp.com>
> Cc:linux-arm-kernel@lists.infradead.org
> Signed-off-by: Peng Fan<peng.fan@nxp.com>
> ---
> 
> V3:
>   Use imx_sc_msg_misc_fuse_read for req/resp
>   Drop uneccessary check
>   Drop the unnecessary type conversion
>   Minor fixes according to v2 comments
> 
> V2:
>   Add "scu" or "SCU", Add imx_sc_misc_otp_fuse_read, minor fixes
> 
>   drivers/nvmem/Kconfig         |   7 ++
>   drivers/nvmem/Makefile        |   2 +
>   drivers/nvmem/imx-ocotp-scu.c | 161 ++++++++++++++++++++++++++++++++++++++++++
>   3 files changed, 170 insertions(+)
>   create mode 100644 drivers/nvmem/imx-ocotp-scu.c

Applied 1/4 and 2/4 patches.
defconfig and dts changes should go via arm-soc tree.

Thanks,
srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
