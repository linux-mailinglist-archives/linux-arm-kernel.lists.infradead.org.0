Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F65A23232
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNQX3Jzxa5h3nQgXExLM3H7ISENd+ObHMcWtH7ppL1s=; b=DB74QN3GQ2p43k
	wPQJ1gh2vBpfUsX1D0jJzi3Kewd42fK7d7z46mIcp8ZtJFv7nFW7yCB2Aca16xVilc1gjUwfG1sGV
	MaDOVPQ/o7kvRmvRye7sHrX15OekAMB+6WLaKJxyMzP9IenGqQ1vfb0LvIlQRP9h7v5Kzv+4n0uzk
	7V9NGyyXA3Eijm9F/htcQ9s94uwzRYADH5oAEv3MySqaPgSYnT8bVy6BDv8zB5bAklpIEx9TAeoki
	5OM7Km79mAzqqK33mm5izmK9BfPLvvmO+cPAjvP/GnvYqnR6pSSGgkh9QThAu0OdxxxeqQoqdseMd
	7/BJKipQZEn4ShawAbNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgLd-00053n-Qa; Mon, 20 May 2019 11:20:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgLW-00053N-Qu
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:20:48 +0000
Received: by mail-pf1-x441.google.com with SMTP id b76so7079757pfb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UYlwSS27pTWEEATPfmh5rzik1qsLgJhnfWY7i/VPYGM=;
 b=ZyOXXbD53L7FC9dpCCtwyNa8wQKWqJwmxrwOyTzoaognzLkM7STzGoxJ0Qx71mCs7y
 sHAA5OxEXmZSLBsk4s5UC1wzwRqlxOZXjVI3YgzfNOZlwST9cVbN5Di2bjxFZgSEQ3HC
 cAf4/Nfl6PMX99eTSUz2uNGbgXs/y0h2PP6/aRihXmQiSyxZblBUQqK7q5rd0syljRu8
 Cyxuw9OjLph7KF54MzRzzLb/L92ShE61dFPst2bcFQ5dRzt0VO/azH9aGoomKsVUqPxM
 VEvSapNK8K26mQA/hUYAaQY9aw5vjv7LiIUkwnQBQXjEHUtRLOPtbpSjN4XFGye1o1qY
 nlNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UYlwSS27pTWEEATPfmh5rzik1qsLgJhnfWY7i/VPYGM=;
 b=XoVnjLFezKJWzZ3OhwDZssaS+PVVqp+v8nVOD3T4bPjOIn0TCTNsIB1UlhuI11aWYU
 HnynV1Fm8vX/yQl5rePuIqtL7AG/PfaNKSgBRNiDNB80NVP+lz31VH02faoDz7eQdybo
 1pMnh1K0bkKW5TeLrjjL7y/bAcGCf2b8GcwX5Zno2TE7CAyZhR32ZZOcpddhz7TtLUIe
 vNM3YQc0ckSvn6uoyWEvxvwe3E5ywn8PFxURHfT7Zmat0nAKlT35B2BU79l1RBKLQQE+
 3e0x5edp3PmJHb9avaP8knPKaHuPSOFpbQ1lTXUg5IkTMqZloHDqXuj0GEbjosgbVSsy
 IN6Q==
X-Gm-Message-State: APjAAAWG18DhMMwLhpCaz5CQj3vRNF3byGmjyLreuu7+ClGGkVGRYo/T
 ET25JDVuOXFSEoOYJR0NyS/4kQ==
X-Google-Smtp-Source: APXvYqyzFDClOTo8r2XkJzpOynDgwuJ+BaaJ30GDGYI7e20tvugakdxenyHy289DsPne/XUELPFeGA==
X-Received: by 2002:a65:62cc:: with SMTP id m12mr19802417pgv.237.1558351245681; 
 Mon, 20 May 2019 04:20:45 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id r29sm25031152pgn.14.2019.05.20.04.20.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 04:20:44 -0700 (PDT)
Date: Mon, 20 May 2019 16:50:42 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: Re: [PATCH] clk: mvebu: armada-37xx-periph: Fix initialization for
 cpu clocks
Message-ID: <20190520112042.mpamnabxpwciih5m@vireshk-i7>
References: <20190313163558.6705-1-gregory.clement@bootlin.com>
 <20190314121541.GB19385@apalos>
 <CAC5LXJcCs4nr-qFOWzUJpUBAJ9ngG-cgeTCVCFBKFc1SPzHMuQ@mail.gmail.com>
 <20190314134428.GA24768@apalos> <874l85v8p6.fsf@FE-laptop>
 <20190318112844.GA1708@apalos> <87h8c0s955.fsf@FE-laptop>
 <20190318122113.GA4834@apalos>
 <20190424093015.rcr5auamfccxf6ei@vireshk-i7>
 <20190425123303.GA12659@apalos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190425123303.GA12659@apalos>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_042046_881695_450C2613 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Vincent Guittot <vincent.guittot@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Christian Neubert <christian.neubert.86@gmail.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Mike Turquette <mturquette@baylibre.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?utf-8?Q?Miqu=C3=A8l?= Raynal <miquel.raynal@bootlin.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25-04-19, 15:33, Ilias Apalodimas wrote:
> Hi Viresh,
> 
> > > > Also, during this week-end, Christian suggested that the issue might
> > > > come from the AVS support.
> > > > 
> > > > Could you disable it and check you still have the issue?
> > > > 
> > > > For this, you just have to remove the avs node in
> > > > arch/arm64/boot/dts/marvell/armada-37xx.dtsi and rebuild the dtb.
> > > Sure. You'll have to wait for a week though. Currently on a trip. I'll run that
> > >  once i return
> > 
> > @Ilias: Can you please try this now and confirm to Gregory ?
> I am more overloaded than usual and totally forgot about this. Apologies.
> I'll try finding some time and do this.

Ping Ilias.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
