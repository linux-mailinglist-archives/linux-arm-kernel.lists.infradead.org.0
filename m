Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31341A6B4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 19:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AhGBjXAM89GOoyj5t0TIXKt9+SPJKAjSGSkP9k1qes=; b=PbroKoz5RhYGMx
	Swrk1KL2NEP2vXd2py8chn3BEFUwS0dp0zMV6A71rkJNrSgDcz5+JLA8JZ3BBj2F88n3XSZ1v8QrZ
	0va+YgCXSuYm8hbYnXnYOAqiqxvaQYJ7qJTNovdhe4aaXeAulOgdS9gzCvxT1Ft4LxUHBi9qC4Gn3
	40ye8Bnwj+xH9Yv+sPIemXZheZboUDVgmB5Rqr+O2FpsySQoJkdk89g7fYJ0v/Nr8Tu85NdLOQhwq
	MCq3gqaTdBBqgAW47ZmcMnRWFGrOEM7UX+wGCxAJTuo0RwbE8dP4Ebr8Qv0xrDqOWsg7l9h+kw0Hs
	JvioKPTJcVT6tKMbtigw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2lX-00079A-Iy; Mon, 13 Apr 2020 17:20:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2lO-00077v-Hh; Mon, 13 Apr 2020 17:20:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id v5so10914504wrp.12;
 Mon, 13 Apr 2020 10:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kWgwtw6mnshP7OT2kiE97Ap+wsoZZptwcvaDrs1tDsI=;
 b=bVh1MHnIU7qEHoYKTXnX8K/41raLAhstyBAr9OgkIlaMU8CkeYDVbSuj2MVqY6E5dC
 qLA+7Z8aDDgXtfRRRqEt0JirV+9D3Kq0As4DptSjqE9XC0ru6jAEs0RursW6IqmT1Zig
 sI5edIfwkeSg6nTxBG35L3EVBdv/yJQ/xXc/2hlNlq1c87BhsJFy0UQbTYqwrCW9wi+m
 +UMcaGJA1UvnpJqFD/eQh1Kb4j9Rttzq1LN53LMaa6FQiRsPQtUzk7u8/c6uuQi/fWnZ
 FUJhWMCikBA3WxTFmBgTIrX+2cTVVd4s1z5j5ATbYWQ5BQnVkFcCL7dNGbK7P1nIsN/d
 axFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kWgwtw6mnshP7OT2kiE97Ap+wsoZZptwcvaDrs1tDsI=;
 b=Sj42/cuuzOrsCchr8KoE9AHz+vt00ezrPuAUTbC5rIoKsEIVuDOpcIOxsR0B1bJPzR
 w0kRj5RK/sP1DtqXsNBfWjjg9T29LGbSuMj1Kgna5PfOgWDF1j60tQUrOW/Z2FeQeek9
 rCZ9lATywpYKs000I/Knp7U1rYMayfdopkpgBQ+T+6LA7xggEK6mhQRUErtngFHWfxhv
 TvmmFcj5HqFBmbliYFyK5L5O8QenmuceHTHupxJqz8IR3IhvyqsLOSRRYOc3r9t8urk7
 V6iCcVhuRzq1aXkjNjEMc+fDZYuFA4U+II1SqWJVDUoyvif5poChNsuN+VRPAtAofJmM
 s+vA==
X-Gm-Message-State: AGi0PuZBRoPVuMq9ypgiLFzRWqiX6uMVquKbafKWcVFmVobHSazke9El
 bLd1ZJ2kk0VLE+mHrtUnCzE=
X-Google-Smtp-Source: APiQypIs6QMkRZ3InN+DdxIArcJcpkp8vBmkZ8YZyLT4LbLHkZc845IeZsR13A1TTF2jkLK0weALmQ==
X-Received: by 2002:a5d:698f:: with SMTP id g15mr5867707wru.135.1586798448730; 
 Mon, 13 Apr 2020 10:20:48 -0700 (PDT)
Received: from linux-gy6r.site ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id d13sm6835546wmb.39.2020.04.13.10.20.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2020 10:20:48 -0700 (PDT)
Subject: Re: [PATCH v7 5/5] media: mtk-mdp: Use correct aliases name
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200210063523.133333-1-hsinyi@chromium.org>
 <20200210063523.133333-6-hsinyi@chromium.org>
From: Matthias Brugger <matthias.bgg@gmail.com>
X-Pep-Version: 2.0
Message-ID: <7f08c5a8-8635-7e97-9585-601ac9c21ded@gmail.com>
Date: Mon, 13 Apr 2020 19:20:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200210063523.133333-6-hsinyi@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_102050_608787_96A07E5E 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/10/20 7:35 AM, Hsin-Yi Wang wrote:
> aliases property name must include only lowercase and '-'. Fix in dts
> and driver.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> index 9afe8161a8c0..0c4788af78dd 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c

When resubmitting this, please make sure to use
scripts/get_maintainer.pl

The To and CC list are missing the relevant people and mailinglists,
porbably that's why you never got a response. The patch is trivial feel
free to add:

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> @@ -15,10 +15,10 @@
>  
>  
>  static const char * const mtk_mdp_comp_stem[MTK_MDP_COMP_TYPE_MAX] = {
> -	"mdp_rdma",
> -	"mdp_rsz",
> -	"mdp_wdma",
> -	"mdp_wrot",
> +	"mdp-rdma",
> +	"mdp-rsz",
> +	"mdp-wdma",
> +	"mdp-wrot",
>  };
>  
>  struct mtk_mdp_comp_match {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
