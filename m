Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F108DA5A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 08:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBnL+es/JkC4qEFguA5Em7E1piIm+V0TWn76BkBCjb0=; b=Y0NiFCWu73sPO1
	UeD4WXwFOSKvpyxo4jBtwDkzWKY+7VAMsjUyQPmWxl6xFWlYLO8dvciiC6aG81oVzSPYlCev9rVxy
	zlhfLu9MIagS47ySdTAVKiYx/0as7iu03OoQyYLqiP48MWpcqcyM/1z3euoRHW6KFrnzsaJmqnf/q
	IOf9I3jSRbfgyEuXwDMmPdMk9W6vlZlKTtMoJE2USPE5bChsoJo3Ef4k0xryiOV5VvbSZ9IJ/P9Mi
	vtSH3+OTk6s68zL13jMzqtllZG4A2eG7GpIs/LiMbGA/qqQa1JlygNUQt6lGsBG7pCaiCIx/EHnYq
	Z4ACwYPejCUUQvDAFVEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzJe-00028J-2u; Thu, 17 Oct 2019 06:31:18 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzJT-00026D-Of
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 06:31:09 +0000
Received: by mail-pf1-x429.google.com with SMTP id 205so967512pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 23:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fw1yYhZZ5QW5zX6QjJLpyykgbadh0BT1jKFS5XpcQIg=;
 b=YO85IQp6MRTrBiWnmv/pN2umttDZqF6DIetl5Fvi9BEt4iJSw8UM8eoknkoagueGLY
 CIJTyaS6OStNG8ys8xYrcccIgYObVbNMMjxpSr6tgEOpXy/SmmYrB4DgAd8gs4Ahuuzb
 MfcxPHi8vDOYUpDdJteDOFT/k5y8sKH7J2v5BvMRVtaF/zbv4QG3jhke6rNpYrBEfxM6
 IV4vl76nOIa7hxntrMiC/HUk0uj1isvhX9qQMdbLdZh+ENlyE4LGid2NH3UYnBPF/YuR
 A2XKvvlvWd9fIAu7e58oAdWtP4NUTfuwGcLDk0lPPbT6HqugJf/ljpz4Co6zKEBuCT6A
 i/Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fw1yYhZZ5QW5zX6QjJLpyykgbadh0BT1jKFS5XpcQIg=;
 b=e3bWb8350K9l3hn+dTXyCW+iJgJ8TvxY0YKGXCe+BamqdhShcjJhCxmlEkQnl+8rxT
 vsh+QjKevaDXEvzJppRM33Q2v4rSnhPeVFRiosmXiPFZQHcOtKQ6cDHzlfKqjzVB5LyU
 jtRgPWFkytHriqE/+9m2sLwFCoELxbbHQI23e/lLTfVOkId7qEC1W3zk+zYHjXuo9tBu
 NLA263zzKiChgm9QwpPpM35zKG8Ti48SMQwcN3Vifxk1Qh0qRcFUu2unVVbU5V8cxuzY
 rZHNB4BZGoHKyKBmcakJ1PdU+UiC2OPOtKsYNyNGoglW2ZFVR78qSs6+S1uxqY7kE0au
 eSYA==
X-Gm-Message-State: APjAAAXRF38JIlRnvIyo8GOL5e9UaP4Z2vPh9KNLikc66QLoH8eiw7me
 eocRSdNAaVByETczpGiPgV0yHw==
X-Google-Smtp-Source: APXvYqy/3dKlQYrAL5ENKYviVbasbExy0Ou4NP5sDQoUA4ILd4XMCDRpjzbTMymafYYiopd0yHpkMw==
X-Received: by 2002:a63:4046:: with SMTP id n67mr2177350pga.200.1571293866371; 
 Wed, 16 Oct 2019 23:31:06 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id r24sm1484239pgo.58.2019.10.16.23.31.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Oct 2019 23:31:04 -0700 (PDT)
Date: Thu, 17 Oct 2019 12:01:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v4, 7/8] cpufreq: mediatek: add opp notification for SVS support
Message-ID: <20191017063102.4jirlphdxdydl2bm@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-8-git-send-email-andrew-sh.cheng@mediatek.com>
 <20190820033927.72muldasu4xd6wb7@vireshk-i7>
 <1571193828.22071.5.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571193828.22071.5.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_233107_803407_0AB49B16 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?utf-8?B?KOmZs+WHoSk=?= <fan.chen@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16-10-19, 10:43, andrew-sh.cheng wrote:
> This is due to SVS feature need to fix Vproc for calibration.
> When SVS calibration, it want to disable all opp items, except one with
> voltae 1.0V. (SVS will change the voltage field of that opp item, if the
> corresponding voltage is not 1.0V)
> In this way, SVS can make sure there is no other module, include
> thermal, will change Vproc by DVFS driver.
> After SVS calibration done, SVS will enable those disabled opp items
> back.

But why is this required to be done this way ? Why can't we just update the
voltages without doing this disable/enable dance ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
