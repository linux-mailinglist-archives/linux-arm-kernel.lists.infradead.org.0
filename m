Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62219632C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 10:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1+yA1YSfBvxwP5XX1l0Oki/fKkNYaJQDB4G4j5rud0=; b=D7lkZgIuHi8nMt
	Uj4kW7dHlnx921bHQT5LAgHZT1MbxPLI+X3acGaXSdRvqVQLhmg6KnVUXfJ8ZibNxShkuMAYEFMFy
	Mg3SFQx891k//Rev/iP+xie7L1YRdRY85QQAbFKkvo4Mur5FNFjFKESQ+WnfeRQhDMLUx38nX595a
	zX7izQdviFD+hZ4UO91F/mfFV9f42n/db3d5RWvk0v+czsyydJ8AzWYh/pxDFmt22aJC3vv3DUb9a
	Wv3sPho8+SYI/hb/ouVkmfK4yRi94efADLyTDdqbHtxH3hRWgwRlevVDcj3Ku2FSB9bgMCdZzsUWv
	dX0i7vS2lBHfv8O8dOBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hklH6-0002RY-NH; Tue, 09 Jul 2019 08:14:56 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hklGu-0002Nm-8r
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 08:14:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so8917545pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 01:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WwQ5bucdLWQygYxygSJozlXHDjj0Eb5bfaQTAqD/RAY=;
 b=uDcfYqYFArvBK5OKADRY9kCppXYU9MKVJkzXKP+XmdGwa+G+W5U6Apj/QIwIw1wbdq
 mlm+vab7pxbwcYkSarZB4iWWIagZSfR06v/5FgDZyMJvtCnafnawfUYqRS2naVJBmwaB
 LOeSJnW/zeQ3pjYzrACQTdcy9L9O9IwzFFme93iS59Wt2t50/F75s4YNvXQtSce43IXb
 f7LMWR3mP9zzL6KQQshGUyxJkOMGkgXTacrC0A5ifnX3kyIeBP/9PWtl5vEpN6IUzBhR
 mZkwGuCc8ayAIvv/MrH1i798OGSOpetrigTzCMeRMXV17X2KaprPL79lQpqfNY7a0Njw
 yHww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WwQ5bucdLWQygYxygSJozlXHDjj0Eb5bfaQTAqD/RAY=;
 b=PWBizbk27NclVlSHmKr8cd/KirUMwbpp6+pwMnEvviISOR0P2nOASfptOSW3Pg5JWP
 rIl3zzOCbyM2ovKqe1Zcy9qr6xRScOmgTfJBsjOAkDP5QbMgZDdIaEJzEJMoSGAj3DVq
 Np1lg8noU0ecUqScFIvAMacWQ9hDcsa0xHwqQ8BrSVZTLTO2RjG3ECa0vxIat2d43WSN
 LhPIH2pCQsjjIGPkKXhrb7RuoCq4krz866xSK5AiPH2o5a0mkdfYOFKkti+WsZNEsYX1
 fDpQ7aftsb4uDnl5pgn7RNbJZMZcMA/nfQX4jpd2Y57U850TDwnfQshjAUp8kj0cs3Hi
 836w==
X-Gm-Message-State: APjAAAW9DMWImCMZfnvx+12EC8dKFYfIHeqBmSt8JkKzuKwdMJyxD3BF
 AYSeUIomRM6ockpUdayWHZ6mkg==
X-Google-Smtp-Source: APXvYqzICT10j5UplTlApExoj/w21dBQdKmi/8TtBgI8+M4EnpKOLgBeiolAXaDckLPieEY5y7K7mA==
X-Received: by 2002:a63:1847:: with SMTP id 7mr29794492pgy.204.1562660079412; 
 Tue, 09 Jul 2019 01:14:39 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id u97sm1823179pjb.26.2019.07.09.01.14.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 01:14:38 -0700 (PDT)
Date: Tue, 9 Jul 2019 13:44:36 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2 1/4] dt-bindings: opp: Support multiple opp-suspend
 properties
Message-ID: <20190709081436.fguhzv2quldql2k4@vireshk-i7>
References: <20190709080015.43442-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709080015.43442-1-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_011444_318327_01A731E5 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, mark.rutland@arm.com, ping.bai@nxp.com, ccaione@baylibre.com,
 agx@sigxcpu.org, angus@akkea.ca, leonard.crestez@nxp.com, festevam@gmail.com,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, vireshk@kernel.org,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-pm@vger.kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, shawnguo@kernel.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-07-19, 16:00, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Update opp-suspend property's description to support multiple
> opp-suspend properties defined in DT, the OPP with highest opp-hz
> and with opp-suspend property present will be used as suspend opp.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch.
> ---
>  Documentation/devicetree/bindings/opp/opp.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/opp/opp.txt b/Documentation/devicetree/bindings/opp/opp.txt
> index 76b6c79..6859227 100644
> --- a/Documentation/devicetree/bindings/opp/opp.txt
> +++ b/Documentation/devicetree/bindings/opp/opp.txt
> @@ -140,8 +140,8 @@ Optional properties:
>    frequency for a short duration of time limited by the device's power, current
>    and thermal limits.
>  
> -- opp-suspend: Marks the OPP to be used during device suspend. Only one OPP in
> -  the table should have this.
> +- opp-suspend: Marks the OPP to be used during device suspend. If multiple OPPs
> +  in the table have this, the OPP with highest opp-hz will be used.
>  
>  - opp-supported-hw: This enables us to select only a subset of OPPs from the
>    larger OPP table, based on what version of the hardware we are running on. We

LGTM. Once Rob Acks it, I will apply the first two patches to the OPP
tree.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
