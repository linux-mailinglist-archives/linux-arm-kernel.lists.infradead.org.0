Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D0819F2A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:30:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EaCaqRDeWCENjp7azgfGfez11lYv7ArDq0PqvKJER18=; b=l07Ofl5BtV3pqt
	kx7DR4g/C5/879zZMV2X/ScF4bykXm7xj1xQZVeNQYBZAyRuVAkTGEdqC/D3QsG8I/UZQB4l9+vpg
	EKgkEYXV/nlFVHYc5MB39Wic5dPjydtuW6fzwDXUe0tlTa6q8x99hGSqxXoYEqRFoafaWr37hK7lb
	aRiEMQa7XgbKVHg1X5fTZdalGqHhFaVN1Ag7u6MMbhqbujTumCY0QKoFESZL52anMs5g0UIUlYqLu
	oqEZnVD4xXHSjbJELDMeSIMXzASy7P1ZuLLj2GKnrfGodjCEzgHC2S5jZ9P899MJ6BmbNKGnrkewM
	JANKc5UAWNwa/qAeC4fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLO4r-0002GB-LJ; Mon, 06 Apr 2020 09:29:57 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLO4j-0002FM-7V
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 09:29:50 +0000
Received: by mail-pj1-x1043.google.com with SMTP id g9so6214608pjp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 02:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZCzHwl/tdcpxDCvekc0v2ATl1ivxbmKIM4V06jUFE4o=;
 b=lA2dD1pU3P/Ty4DeO3ShHycc7coGr4rgguYE94pdUYB0rQeBI4R+O+XPILIDswxwUZ
 8/0N/Nf87j7tRNEWERwPiO+a8fKnsi9Y6Ftu3dVR3xICxGhLDWb+KGsFDsQaBOcgI3tr
 jSqz9jjdv+rGEp7nNDmxgLrZQKooGMiHIMJTMjPW9qY6OwddYlWPTFKeb8bg7qZU3AwG
 qBX3zWIimob9XlsraxiQ+pWhNKsyugcy2Q068sezTmHZQY54B4p2jq0lnirIIi91YGmo
 NGF9j8S2DD7riX6aAyxCPnvM0QyW2GEyt48nwV9aXfhYqowCQbI+nfwwy4PbTMDIoY32
 YE4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZCzHwl/tdcpxDCvekc0v2ATl1ivxbmKIM4V06jUFE4o=;
 b=NDB6gx4n2QsqQ6Hb3eRtinqnlfsFl+rHUaCZf+XX1K/S5lil1xRDSttAsOzzWoOL4J
 bsUh/Yj3I38x7xxJwnYayabBCHqbKvumBFY3/LHTf+egcTOn/widid9R3TYME5ADbmwE
 xvg2I9FfNjw4U99yZLOu1yupTXqWJ8Wh+65QD21yG/OCSoZH7KHHUTJeaEt4voNv845j
 8q+Od2GDN2SpRwzvpDXTG2vZ1H2h+YAmm7Mt7ngCJ4ppjlkkfdN7WS7kLrhgJOEF+AN7
 +jy852RrMF3mm9RxtnDuKjcb48AFi3sWo1h+RNQ59Gzc23jwNY06YSufFunuBDLl4ZGI
 YD6g==
X-Gm-Message-State: AGi0PuZnz1f2aonBB1EbwHQwwsz9Aq4naBCErAK/P9UGIqjrC5B72hid
 SLO7/mpTSd0H0qQtc/qr1Wasi9Mgoi8=
X-Google-Smtp-Source: APiQypJ1tW013VPp2UhXvt/1Bxz5iwbypmAuTEFj+PUd/NiBUPS+9Nx3CgJdVnertByvQXbdXVoStw==
X-Received: by 2002:a17:902:b593:: with SMTP id
 a19mr19581254pls.92.1586165388661; 
 Mon, 06 Apr 2020 02:29:48 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id c128sm11053782pfa.11.2020.04.06.02.29.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 Apr 2020 02:29:47 -0700 (PDT)
Date: Mon, 6 Apr 2020 14:59:45 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v5, PATCH 4/5] cpufreq: mediatek: add opp notification for SVS
 support
Message-ID: <20200406092945.d5thcd2h3bo7mn45@vireshk-i7>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1574769046-28449-5-git-send-email-andrew-sh.cheng@mediatek.com>
 <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
 <1575874588.13494.4.camel@mtksdaap41>
 <20191210064319.f4ksrxozp3gv4xry@vireshk-i7>
 <1583827865.4840.1.camel@mtksdaap41>
 <20200311060616.62nh7sfwtjwvrjfr@vireshk-i7>
 <1584084154.7753.3.camel@mtksdaap41>
 <20200313091038.q7q7exiowoah4nk4@vireshk-i7>
 <1586164366.5015.6.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586164366.5015.6.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_022949_277486_9EE00ED5 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?utf-8?B?KOmZs+WHoSk=?= <fan.chen@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-04-20, 17:12, andrew-sh.cheng wrote:
> I will use regulator in the locked region.
> And regulator will use mutex_lock.

Yeah, you can't use spinlock here, use a mutex.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
