Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87964CB847
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w11bRA4yvpWWNBTI/8h5tbV7h8v/ZZI9ZcnqToNLrCU=; b=d2uqbwfoEKNZFw
	b3Q8imKBkN/wF3qdLZseXRXk8wm5HD3kmVpB3Z4GufdtdZSrhsSIUp4Gtxa7UjInWvFAZHBnvwgeo
	UfDkYOul0EAvDbI7+H437eZGk7UPvv/qiKskvXlTs1gRuvnGcmDbdlWt4T9xvFTtuxorkyEBzV/on
	RXpyfIxkD8XO4ETYZTbiaPZ+q+y/tKJoD/BnrRL3X6i1XLLR3sQDhNfFw5z+PeWP41qSDAIETYhzP
	fXYCRV9vxG+FciVpNsRfRyoOdTJQcoO1okiLkcpl0D8wFrC1DFHNyzQ2rPe8g66zQhmhP7viIFJWR
	cbrjzL65mycq1GF2Mo7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKrk-00063M-CS; Fri, 04 Oct 2019 10:31:16 +0000
Received: from mail-wr1-f53.google.com ([209.85.221.53])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKrb-0005x2-IV
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:31:08 +0000
Received: by mail-wr1-f53.google.com with SMTP id j11so729292wrp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 03:31:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=0sO0rv2WFDM2B56JzJt62DBkoicLCV6GGFXAS4MJE9Q=;
 b=WLWAqOmu30ztDl1xnjNiHFw9Ub3okVbUIDoHy31aYHgQ/M9el2ZN60ZSUqxpqD2RZJ
 ccBWrUCR1LTlIU+2dogAM7K98pTnqiB9Zr6RROqhL2/KALvYeALEmpaTt0/kqO91Hn4t
 /XqiLEbSiBLOs7GzgkoYSPBgOdooT/kQvW6VEcMf2crLuGWd4Dd0ol1+Bq4piUUWScSE
 t9EIy2VVFXQdaYti/j7muTF1vjcDsiUBdg7BlOK71B+Hvy36hJUr7CIMPgwFROCKH2v+
 l9uM2ShG+rn4CrRZaxqG2PeosMmftCrzGjQ7Q4UG1FuZab3frhjIOoCxLgsc79n+qdYg
 L2bA==
X-Gm-Message-State: APjAAAVpE6OY80EWheFzC/Dv5/EbljjqauKn9fgKPW93oRAGNonQkGb1
 qKoR1b3pIoG6Fs5RbJOs04TnKLfD
X-Google-Smtp-Source: APXvYqwRzwsUGvltETEBhrXSxWhDZg0vSWGhh6uMJ37eqdE3Dm/SZGQk+dOyT+pLpEySMZOIaLqOfw==
X-Received: by 2002:a5d:4491:: with SMTP id j17mr10537639wrq.257.1570185064934; 
 Fri, 04 Oct 2019 03:31:04 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id a13sm13449859wrf.73.2019.10.04.03.31.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 03:31:04 -0700 (PDT)
Date: Fri, 4 Oct 2019 12:31:01 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kamil Konieczny <k.konieczny@partner.samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Devfreq looks for unsupported frequencies on Exynos
Message-ID: <20191004103101.GA9176@pi3>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_033107_610771_647B261D 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.53 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.53 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi All,

I noticed recently error logs when booting Odroid HC1 (Exynos5422) on
exynos_defconfig, 5.4.0-rc1-next-20191004:

[    5.168786] exynos-bus: new bus device registered: soc:bus_wcore ( 84000 KHz ~ 400000 KHz)
[    5.177022] exynos-bus: new bus device registered: soc:bus_noc ( 67000 KHz ~ 100000 KHz)
[    5.184705] exynos-bus: new bus device registered: soc:bus_fsys_apb (100000 KHz ~ 200000 KHz)
[    5.192903] exynos-bus: new bus device registered: soc:bus_fsys (100000 KHz ~ 200000 KHz)
[    5.201414] exynos-bus: new bus device registered: soc:bus_fsys2 ( 75000 KHz ~ 150000 KHz)
[    5.209986] exynos-bus: new bus device registered: soc:bus_mfc ( 96000 KHz ~ 333000 KHz)
[    5.217931] exynos-bus: new bus device registered: soc:bus_gen ( 89000 KHz ~ 267000 KHz)
[    5.225222] exynos-bus soc:bus_wcore: dev_pm_opp_set_rate: failed to find current OPP for freq 532000000 (-34)
[    5.225975] exynos-bus: new bus device registered: soc:bus_peri ( 67000 KHz ~  67000 KHz)
[    5.238824] exynos-bus soc:bus_noc: dev_pm_opp_set_rate: failed to find current OPP for freq 111000000 (-34)
[    5.245719] exynos-bus: new bus device registered: soc:bus_g2d ( 84000 KHz ~ 333000 KHz)
[    5.252653] exynos-bus soc:bus_fsys_apb: dev_pm_opp_set_rate: failed to find current OPP for freq 222000000 (-34)
[    5.263518] exynos-bus: new bus device registered: soc:bus_g2d_acp ( 67000 KHz ~ 267000 KHz)
[    5.280650] exynos-bus: new bus device registered: soc:bus_jpeg ( 75000 KHz ~ 300000 KHz)
[    5.288827] exynos-bus: new bus device registered: soc:bus_jpeg_apb ( 84000 KHz ~ 167000 KHz)
[    5.296957] exynos-bus: new bus device registered: soc:bus_disp1_fimd (120000 KHz ~ 200000 KHz)
[    5.305939] exynos-bus: new bus device registered: soc:bus_disp1 (120000 KHz ~ 300000 KHz)
[    5.314036] exynos-bus: new bus device registered: soc:bus_gscl_scaler (150000 KHz ~ 300000 KHz)
[    5.323090] exynos-bus: new bus device registered: soc:bus_mscl ( 84000 KHz ~ 400000 KHz)

You can see that Exynos devfreq was trying to set 532000000 Hz for
wcore, 111000000 for noc and 222000000 for fsys_apb. These are higher
frequencies than we have in DTSI.

Any ideas why? It does not look normal...

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
