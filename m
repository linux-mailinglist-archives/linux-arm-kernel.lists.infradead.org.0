Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DBCEA2FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 19:06:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRePvmCFL5ljw6VFjcr8Ef/Cng76fybHcQaWT+d1Hak=; b=LRKChi29sTPHFj
	bt/L/Nn1dfRjYlaEmDhc6nMHvsWPs2JSHgwFOo3+V6D17FZGileINGF31wrX5KAwpML/3w+NKv6j1
	zCaW+XY7/sO21pcqQNjGUHMs9RAfUVcjFdDROaUcLy52ILFiN47vz2rlhL87iVT831zLlJ3TNqWm3
	vG4yhFUuKwejzehQ+PnuWtCFhsZOfrwdhS7Xwq2tZb7o5prBwuxSD7++3xH1fxI62gROf0UtL/f9l
	l7u3ljIWXpG+yOr2DomA7BlqsAp6i+o3CzHAlKnKfk28bdoi438+bdXeKp4NrVrMbduwiL8kmG9RR
	bAyFzTRMIZPTUH719TDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPsMK-0006xI-3N; Wed, 30 Oct 2019 18:06:16 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsMB-0006wM-B8
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 18:06:08 +0000
Received: by mail-ed1-f68.google.com with SMTP id f25so2508075edw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 11:06:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FrSVqR4rubXbOdoO4xIlrJ/g2AylU6DO+rRGS6ug+TM=;
 b=d/JM+CkvoQlItCGARygWNrP+Mqqq36jwNfrSHBJbLeB12U+ggDKsgpQyfqb9BuqjFi
 SKmuTHkxYc4REjzcQrNHH8iJU7D4elwXzUvn47QCqBcgL4sYsjj7sFtxnLUM5frhow+F
 Euz4d2/RGOVvZMwJF1dT+POTgjA9BdlxGbL2Hp2qAJu3dehPH9KPw6PWxc+NdwZM5eRx
 A77GjOSFxfC2FMfmqtl1U61rLjkdd74g5SdOqbn4pvVzx0w2CmmkskcoEPbXPXvKUrPk
 i0qoJ7+kAA95QLIfwG2Vi4jdqfP6ver4Tk0v5U4lHhkI2jw8aCQFDp9+VAY1H6dPvd5Z
 nWsw==
X-Gm-Message-State: APjAAAV8zHcTPDMlunb1HnBLDadbC570COAomdY7QCLzfW0NXXDUuzsS
 dFL9lJm7U6oJ6ctLtx2bskrv/NkP
X-Google-Smtp-Source: APXvYqzu4HoYoArCMfuZiHHYx5XLueApspB4kJAI+3/Kg9OneW/pR4iKPXYNA//dTC9X/UDqISTrsw==
X-Received: by 2002:a17:906:c793:: with SMTP id
 cw19mr886699ejb.25.1572458762736; 
 Wed, 30 Oct 2019 11:06:02 -0700 (PDT)
Received: from kozik-lap ([194.230.155.180])
 by smtp.googlemail.com with ESMTPSA id d26sm17952edu.37.2019.10.30.11.06.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 30 Oct 2019 11:06:01 -0700 (PDT)
Date: Wed, 30 Oct 2019 19:05:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] soc: samsung: exynos-asv: Potential NULL dereference in
 exynos_asv_update_opps()
Message-ID: <20191030180559.GA8016@kozik-lap>
References: <20191029182742.GC17569@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029182742.GC17569@mwanda>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_110607_381149_8B5C12D8 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 09:27:42PM +0300, Dan Carpenter wrote:
> The dev_pm_opp_get_opp_table() returns error pointers if it's disabled
> in the config and it returns NULL if there is an error.  This code only
> checks for error pointers so it could lead to an Oops inside the
> dev_pm_opp_put_opp_table() function.
> 
> Fixes: 5ea428595cc5 ("soc: samsung: Add Exynos Adaptive Supply Voltage driver")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> When we add a new driver, could we specify the which prefix will be used
> going forward?  In other words commit 5ea428595cc5 could have the
> prefix "soc: samsung: exynos-asv: Add Exynos Adaptive Supply Voltage
> driver".  The "exynos-asv" bit was missing so the first person to send a
> fix has to guess what is desired.

Indeed, I usually do not add it on first commit to avoid duplication
(prefix and later explanation) but I see that it would be helpful.


Thanks, applied.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
