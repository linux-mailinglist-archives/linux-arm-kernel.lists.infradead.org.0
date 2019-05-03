Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1080212810
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 08:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OVxY8qr8H20XsD6XCLybMc1rzFwmAoUSnvwhiPksqGI=; b=U6ghlXWsmR0eEr
	zICDujBpubmmA2iB899cVRX4RBNkRyVZwiANBnR0KvWLlZObk2P1nCDN7V0zee+tQlD33yPh/8JaQ
	uzHCVFcmkFTlEgmKHGg1i72vCTn73YtGqp2QMUpNyyfdsWgrvtIseteRkJEzy5Z2wLCa8HYBf1+mc
	oSOeSybgujM4HGfqobPtjc7t1iD88d8yZM+LDz/Xr2Ai5JA9ECL2O8I/QtEyrr23FPfhnvkB/fswZ
	GGLBidZc9LnPYunqeJ9OZuWSGWWptpBC83NC0SPRg5qYJR2Wq0zpGYzw4CBzBO7sD4HRGWuGRFyNv
	3HM9Fk92y7TwE60uNN3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMS4D-0002NR-7E; Fri, 03 May 2019 06:53:09 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMS46-0002N2-9i
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 06:53:03 +0000
Received: by mail-pg1-x542.google.com with SMTP id t22so2256877pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 23:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MP2a4YZJGQDVStI8DCNt3Bb4JMtSaXiamt8eEg636qY=;
 b=C8WzAVLn1cK8SE1HxrOghgvjvtCHczimxGc6hhkdarY+m9Pmzj3IPei0uCs+p48zrx
 erR42wsR0VSkdrK8dPvk1DhVl8HXjXfwzeRgob4UvnYZjE15LH2WSaOr58VzeJ6cwdkb
 B6xwP1F5oyYK/FXml2IpeWTFCNnKKZwispuwfvXqtT0O3NQtgCGQPxUwIGJcTkPJgJ0N
 w0KVZyiVnh7M6cIe2jtdnKLcTVRnlimLYF6itX7qABZ2PC4s9kn3EZaKUGZAiZhaS8v3
 VfcEjePuzZAB1s19zrVNJqxXw5XdLuUxO9vEcyXWTywafEMygGUhIc45VV6ZmOOJeYIK
 XWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MP2a4YZJGQDVStI8DCNt3Bb4JMtSaXiamt8eEg636qY=;
 b=EDX9E1q6Wy0axNMKl8ygtU/y5iq6Mu6HwsVSAnGseRISpcrvsti9yUIlHtAAW1BhlK
 jPiLvTs8u6Eo+E3kAIrQ/VJcDUa4UmbOY2ZdDCE1sOn/NC/8BWpIBrnQSFAFn5/2FpvF
 0v9sot7LGZzKAWyYdlODRhhjOWYQ2SiDrRMVKc2v5EhW/+BviXI5aJSSY2604ciuDAb8
 FcSGmec1sx4PmYfn0/6cWdDghEshC5GrfSuhDMUBAtsonyxrmSzEiJt2PpYSMeDBkAkR
 opzZR8+gSyndcJWRF+4Yin6cTWvbVwv9+YS2PqeIn7VZ9QoYAF/db2ed9NuUr+m6klBa
 Y79g==
X-Gm-Message-State: APjAAAU0hhZJrIOflhXmpcCqYASMrq7lQIfxuNv5Qqueck6Y/Oq1ycKP
 AZluBs8QSVuY8CMNZkH2xi258A==
X-Google-Smtp-Source: APXvYqy/yNdFMlGpc+MelsaSJ6NGegMvTDuo1pqPx2mpX1Qaf0do7XWnYscKVQgvcZ+75ybb7c00qw==
X-Received: by 2002:a63:90c7:: with SMTP id a190mr8589262pge.23.1556866381464; 
 Thu, 02 May 2019 23:53:01 -0700 (PDT)
Received: from localhost ([171.61.121.242])
 by smtp.gmail.com with ESMTPSA id k65sm1337441pfj.141.2019.05.02.23.53.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 23:53:00 -0700 (PDT)
Date: Fri, 3 May 2019 12:22:58 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: imx8mm: Add cpu speed grading and all
 OPPs
Message-ID: <20190503065258.vdlrz3wsr5oq5nwj@vireshk-i7>
References: <cover.1556836868.git.leonard.crestez@nxp.com>
 <cb0329b83347e551911f3d474cf512f3fe10cde4.1556836868.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb0329b83347e551911f3d474cf512f3fe10cde4.1556836868.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_235302_333339_2AB7CFD7 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [171.61.121.242 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02-05-19, 22:44, Leonard Crestez wrote:
> Add a nvmem cell on cpu node referencing speed grade and the 1.8 Ghz
> cpufreq opp.
> 
> The imx-cpufreq-dt driver will read speed grade and disable higher opps
> if unsupported.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
