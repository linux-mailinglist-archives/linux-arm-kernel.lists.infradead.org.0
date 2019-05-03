Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 726C812B17
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 11:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKOmZZBRWnY9bBes5iixtVSg+aDWPOAGfVPRoxc73b8=; b=aM86IclNRIjwpN
	Wrud6fUUujZ/7D2BwMDACliOLawxPVyzYQBSwpeCgVVIQrUFKZFuh23ZXIfYealxvUx64fyP44isx
	wmS7R3GDBToKV/Zjcx1/MvVrq4Un3YayEEuOEOCGBG2DHZ7bStJRYsfVslt8bS8U51+3Qccg88Yfs
	7PKEpg9jnvFsaif7CMKwcU/f7Jf4LOgpQsVwH/GHOAV09yjQdWsz6cvw/U+xj78oUhzDyxYdKqude
	sEHMmFtcIeUf0NCDmRbPEU7fMswU1xh3JLsS2EP2MNtnGSGEJMARQA2OMzGm0Z3dKGCCiNEGpGWyk
	RBagFy4++sxlAXFkJ/sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUtA-00069h-VC; Fri, 03 May 2019 09:53:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUt4-00069M-Gt
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 09:53:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id z8so2482690pln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 02:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7ofI+h15j0GDGeZlGya+AQMCUiaNuXspnxN2fkw4ZPM=;
 b=XtPjLfB4MfBv111fFqlawZ6xTJC06jqxFZkxP39ROc0QJQq6zttHP6PioCI2yu7LAs
 uyn8BhF8NAMkl2O/YMWE9UTar43p7GWt+t8N9TXAm3h9H4EX25VTTOfReC/TsIsyksxC
 SIsIq85ROqWXPQ/qLli3NXG2AGcSAWIO7vmLvFEUkpFlS0/IlEqrX62DpJSGQenx0ApH
 c09V3at9K3FBPE3JE7jqNf0BPIJlh0eaoA8Sa/shqFfBSGs/QsgfzSlmNzOk8J9Rpn3J
 YavkUHS69gqJgDUM1ETZMyCGoz/bsdrYCIhmOycJwR9DUN+fqGP7G/c4MP00SgX3aj1S
 qxjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7ofI+h15j0GDGeZlGya+AQMCUiaNuXspnxN2fkw4ZPM=;
 b=aW234FroSJFLx+p1Dqrobnx6vHbX2grjmZnIt7fd2dX20F2/ZHV8uO2UTRVopaumiD
 8eRynseNhf8z40KeOYwBXI4ys9Ow12KEBmDzlQL2TPfqmsW7kledwfj1s65b9LdjRhPU
 xgpsF9uxsq8zukSVWIgGMsMprCNJ0L9Pr7Ew/hAPucJrHIQTat6kNzbNJZKZfTHMiOSV
 0OotsRjBWP2p/CcbjYehYUyxS8jGNI5+ioYrGZ6srL8zni6AX6Ir5Hw23HrGE+Gk4N90
 i5fip/iIIH3jgA9ipy3PffotCRlBte7NMZnyF9yEZRJI61RbMaTBq9+uUTSkBSWidAsO
 o/lw==
X-Gm-Message-State: APjAAAUm8wc7h93pIM5LsTK8gKYUDkCn1rqKiVSw7OEOEz8CZj1YrxAT
 fo6vgt4myryC/q3QPKeTsYy5iw==
X-Google-Smtp-Source: APXvYqwUPnOXZMe8Yq112fG/6x0/D//pZltFFv/1QHPPu10XD1agsD8njebFqKPeke/C7LLZJatj1g==
X-Received: by 2002:a17:902:b206:: with SMTP id
 t6mr9139257plr.130.1556877229775; 
 Fri, 03 May 2019 02:53:49 -0700 (PDT)
Received: from localhost ([171.61.121.242])
 by smtp.gmail.com with ESMTPSA id b14sm2154078pfi.92.2019.05.03.02.53.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 02:53:47 -0700 (PDT)
Date: Fri, 3 May 2019 15:23:45 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 1/3] cpufreq: Add imx-cpufreq-dt driver
Message-ID: <20190503095345.axz6pojgfmhgqjqa@vireshk-i7>
References: <cover.1556836868.git.leonard.crestez@nxp.com>
 <df3a41d8bf57b8dd8f8c17599eeca98d6e43962c.1556836868.git.leonard.crestez@nxp.com>
 <20190503065227.afqgmylbjwhg2mc3@vireshk-i7>
 <AM0PR04MB64345196835732B019F1D885EE350@AM0PR04MB6434.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB64345196835732B019F1D885EE350@AM0PR04MB6434.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_025350_570467_E3F8302A 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [171.61.121.242 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 03-05-19, 09:44, Leonard Crestez wrote:
> On 03.05.2019 09:52, Viresh Kumar wrote:

> > Why add another virtual device-driver pair here? The only reason why we have
> > been adding it was to get deferred probe to work which doesn't look like the
> > case for this driver. Why not do everything from the init() routine ?
> 
> The imx-cpufreq-dt platform_driver reads from fuses (nvmem/imx-ocotp) 
> which can be theoretically be built as a module and also has clock 

I am not against making this driver a module, that is okay.

> requirements. No sure we should rely that the call to read from nvmem 
> never returns EPROBE_DEFER.

Okay, I didn't realize that we can get EPROBE_DEFER from
nvmem_cell_read_u32(). Should be fine then.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
