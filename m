Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61653108541
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 23:10:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OkSOyqHFfiTULVdCjzUrC+bGz2BSf//fyoAt128FY/A=; b=Q2uRnV0gW3fOOF
	EI2nowS8zPjheJm7/TIQEESZI79emEV9neC57NfnRrh5cq/Att6E8q4P2eL3tkn9XvqnVTZXa46LJ
	TyiP/IXdd9txfjEk1kMRhO9tnNJOuTtpZzfYo3gjoHkbq0LgPa2WR45CdHCrG1ZYtg7EapmF/b5N9
	wTzFLWrMty9qSUSq3djxypAEY8kD7qLp+E654l2gY/riWHDKVIsCYbP53xgnQ8+KqJXOnEGyC/gEA
	lQtr12QUzhVWLgbyWPStRm1JGnUGIuPU+haJzPyGN2gBKDnEictGvzlRlYI3PjFwGM63ZSbBORb8L
	93TIaBa877R5u7cMfffA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ05R-0007UV-1X; Sun, 24 Nov 2019 22:10:33 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ05K-0007TO-DO
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 22:10:27 +0000
Received: by mail-lj1-x242.google.com with SMTP id j6so4453835lja.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 14:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZIvimmxh61dh33akQLRBV+SVzQv3ghkQ1Q6FQN6YS14=;
 b=MsezpdM/SL8BGidO6m96mQyZq3dgBheFqqSMSkoG4YaIeDNuSYA6AeFyyBk6zeHl3V
 NJSrxbdSM4NdqK5rSO7pBoJzLexnpfZxJVOK2S5hr96jwiOzOzu/b7TvExUDB8GxJ+oT
 NGqPpfbToHv/Ue5gqhP7Q9DmE0ObQfG0amvwJIDMfBDMjruqQP87X087xf7tSsFb3+uM
 73UGOUaqCTqJ/HFEzqd6BApM89Zdsl9lG9POtnWHKRUxJHjYxbY1Uq6DFWMHXBzPUXAg
 kSpkLn0YNMFhsKxeV4DpUOvKSYs3lf+casYTlwCbUfW+mkFJowM8GByk7mwPxIbBYKla
 xFMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZIvimmxh61dh33akQLRBV+SVzQv3ghkQ1Q6FQN6YS14=;
 b=oWsgTjCPb7OBJoVjWQWeKuINZ1ZZxkyteRrbbIRZYgb3MfeD6WXrNVQjNTv5e2IvhO
 SJbrSrmGgc9crgGmRyu0egtngKaXHIpoCNts0eCXFO6UCBHatA8lJ1My49CLVN4dHNja
 3ZIzO2teMGHhI732+nD+T3/sSVWIuCC5OAxM+VdAnZ53gNqNHFawjTy91aeDWWdH40RJ
 cgagp7a7/BSX9Qh/DFRbkunPJdGEb642shUrIPhyPYro0rlylBMOKRjP4hxbtn0IBysV
 zPWoR06qfdDvfB8wEPPz0NwiUhB/hd5V58U26LC/ddDYvhQ/ywpVY68+dNPEsWSOKQP8
 Om3g==
X-Gm-Message-State: APjAAAWsApPWFCGef/g/sPje7sOW5JALFclVGRFKDOyPi3t8EUW7sQkY
 Dd6N/k12FM+HTASUZDVzIZY=
X-Google-Smtp-Source: APXvYqxFCft8hR8zRGvNRTTQX6k36aIdaD7aUsAXdVvrlmDU9JMDkWZ6LlEGDnzokv3GWCC6lpcI3A==
X-Received: by 2002:a2e:894b:: with SMTP id b11mr20099211ljk.118.1574633424128; 
 Sun, 24 Nov 2019 14:10:24 -0800 (PST)
Received: from rikard (h-158-174-187-196.NA.cust.bahnhof.se. [158.174.187.196])
 by smtp.gmail.com with ESMTPSA id m18sm2868238ljg.3.2019.11.24.14.10.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Nov 2019 14:10:23 -0800 (PST)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
X-Google-Original-From: Rikard Falkeborn <rikard.falkeborn>
Date: Sun, 24 Nov 2019 23:10:19 +0100
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Subject: Re: [PATCH v2] phy: allwinner: Fix GENMASK misuse
Message-ID: <20191124221019.GA1186@rikard>
References: <20191020134229.1216351-3-megous@megous.com>
 <20191110124355.1569-1-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191110124355.1569-1-rikard.falkeborn@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_141026_477331_848B0AA1 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rikard.falkeborn[at]gmail.com)
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
Cc: megous@megous.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 kishon@ti.com, paul.kocialkowski@bootlin.com, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, mark.rutland@arm.com, wens@csie.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, icenowy@aosc.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 10, 2019 at 01:43:55PM +0100, Rikard Falkeborn wrote:
> Arguments are supposed to be ordered high then low.
> 
> Fixes: a228890f9458 ("phy: allwinner: add phy driver for USB3 PHY on Allwinner H6 SoC")
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> Tested-by: Ondrej Jirman <megous@megous.com>
> ---
> v1->v2: Add fixes tax. Add Ondrejs Tested-by. No functional change.
> 
>  drivers/phy/allwinner/phy-sun50i-usb3.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/allwinner/phy-sun50i-usb3.c b/drivers/phy/allwinner/phy-sun50i-usb3.c
> index 1169f3e83a6f..b1c04f71a31d 100644
> --- a/drivers/phy/allwinner/phy-sun50i-usb3.c
> +++ b/drivers/phy/allwinner/phy-sun50i-usb3.c
> @@ -49,7 +49,7 @@
>  #define SUNXI_LOS_BIAS(n)		((n) << 3)
>  #define SUNXI_LOS_BIAS_MASK		GENMASK(5, 3)
>  #define SUNXI_TXVBOOSTLVL(n)		((n) << 0)
> -#define SUNXI_TXVBOOSTLVL_MASK		GENMASK(0, 2)
> +#define SUNXI_TXVBOOSTLVL_MASK		GENMASK(2, 0)
>  
>  struct sun50i_usb3_phy {
>  	struct phy *phy;
> -- 
> 2.24.0
> 

Ping

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
