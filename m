Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4520464439
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 11:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLBBKQs+r+mt1W4HxQaJ3Q7ZPj89rNk3Pyz/U6Q4uA4=; b=Z+jrzJWtwBeriH
	j7Oi7uc5PdrE7tMDLLa9NO1kiMfsUH7CI5RtTRkFb7VFBX5w6GUhG1xiFv+buXpN9bdBgQqxkttOb
	FZGmrmL9d49Ixrh55bspfXf34ZywNEN1+xfQ9xkvia2wjz5EmdswJOe4BpErLFLQe8cQA/yh6wbFK
	rPj+klKBVmEBPCXBNZMtT4Ra2Frl9CdN8LTYby9V7egPkIpHLFHAbXu7T6YebjHvxTYOBd5ekDY+q
	WJx7xSU1Qa1LUmcTyvkI1r+DtmeiT6JWS4LKSS/zMP6jbm9Zcnz5nns8o8BhZnuqVoGmiATed2HC/
	/uuBAhHUCwP57w9vLEzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8ic-0005uu-Aw; Wed, 10 Jul 2019 09:16:54 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8hX-0005i3-Lj
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 09:15:49 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so900336plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 02:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rs5UUXtAqT5R1zFPxyCMoObdvjFrpKQLMGjYPWWR+M4=;
 b=xuDFEEprPQrx+CqmzvYG12VzfgLPfkFe3i9dDO9PYcL0P6GlYTHeg9CvVU75INDcfo
 /B1HQzUaYBWgrSQr4QqLDllN0ySewu+Aucrj6f3rYqEBvPfKYmVNRP1VtkFAgR4Dnnwy
 wYK2HDv8BW4cYA9i/YOEeHB71zoM56WjB5FZ3hXxzmZPy9bJzNvQoO/LSjPqNJY6AuEs
 HWjsDnM8bx+F1bAhlBhUe+v3UezS0KGgbT9g5qtl1N77SC8yRCWJCMX7840BuAklPao/
 IpNwuqYKXD16xdMURhUJ5FuGtedK5vsNiT/iKtpo1WWCo82zqV15hKbbCfwOv35Xraho
 ACWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rs5UUXtAqT5R1zFPxyCMoObdvjFrpKQLMGjYPWWR+M4=;
 b=QGYYgn+Pkq4UX2T0Bj46ioJSsg0+6DmhpxzZbDuDK0oLbB6Cz9lDMLKMylmzX+zIIx
 K+0Qu/0+qWqH3E7Lji6hRkCFt038bgGlIAgP+UhZf6OzDtFf2LRuNhvRDwARD4vKYEXx
 WMahYHgq75DLBg3cAKR3MWKQXs/hfndEyEH9eE6p2Lw/hWloHHB1idBWbl/N9mjn+y78
 +jXA5njLW9GjJp76GimRA9BHLctaPa1k/BhNXcfESAxLAhYUZk526Hn+T6/eIG4Hdav8
 feEpePFTXOOeG13ZpIH+Orb9wqXjyhtukUoPWGJyISpTvdwux6+HAKY0AnPkCRvReq4d
 j+ug==
X-Gm-Message-State: APjAAAV2GEByP6JRE3sVrFTP1Hcz4E4adsSKdtzYO11vIzh0Dco9QlT8
 DnkZKDxzn15apnoqmE669sz+MQ==
X-Google-Smtp-Source: APXvYqzWzbSazZ8noBpanqTTfe68a2rHVdItZzY1mNR00meLwg0PgqjSVl0my2iNIShhy2iItWQJMw==
X-Received: by 2002:a17:902:b43:: with SMTP id
 61mr38449888plq.322.1562750145655; 
 Wed, 10 Jul 2019 02:15:45 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id z20sm3555377pfk.72.2019.07.10.02.15.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 02:15:45 -0700 (PDT)
Date: Wed, 10 Jul 2019 14:45:43 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [RESEND, PATCH v4 0/2] cpufreq: Add sunxi nvmem based CPU
 scaling driver
Message-ID: <20190710091543.yqcthfgzmxvku5ws@vireshk-i7>
References: <20190612162816.31713-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612162816.31713-1-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_021547_969115_5D90D4D3 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: nm@ti.com, mark.rutland@arm.com, linux-pm@vger.kernel.org,
 maxime.ripard@bootlin.com, vireshk@kernel.org, linus.walleij@linaro.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, sboyd@kernel.org,
 wens@csie.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 davem@davemloft.net, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12-06-19, 12:28, Yangtao Li wrote:
> Add sunxi nvmem based CPU scaling driver, refers to qcom-cpufreq-kryo.
> 
> Yangtao Li (2):
>   cpufreq: Add sun50i nvmem based CPU scaling driver
>   dt-bindings: cpufreq: Document allwinner,sun50i-h6-operating-points
> 
>  .../bindings/opp/sun50i-nvmem-cpufreq.txt     | 167 +++++++++++++
>  MAINTAINERS                                   |   7 +
>  drivers/cpufreq/Kconfig.arm                   |  12 +
>  drivers/cpufreq/Makefile                      |   1 +
>  drivers/cpufreq/cpufreq-dt-platdev.c          |   2 +
>  drivers/cpufreq/sun50i-cpufreq-nvmem.c        | 226 ++++++++++++++++++
>  6 files changed, 415 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt
>  create mode 100644 drivers/cpufreq/sun50i-cpufreq-nvmem.c
> 
> ---
> v4:
> -Remove sunxi_cpufreq_soc_data structure for now.
> -Convert to less generic name.
> -Update soc_bin xlate.

Applied. Thanks.

I will push it only after 5.3-rc1 is released.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
