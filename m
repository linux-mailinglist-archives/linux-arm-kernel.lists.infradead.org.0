Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6E81EC07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/3s1oqNYGTKqEysVL42NfYMq7JVWMVnJCMsXEd2TVs=; b=ZMfM7z5iVSYxQ2
	KgDObb99zMiLegZnKKe9nb4zY/83bKQkhaOzfxXUYbAXpDbVd3HRwpIg0o07ywf+ENectC6zJM5FU
	QpQkqfCbQyZZIBwRfL2kJmBZCH0Bz6HX15B+r0tf9P3n7JJ1hipLNzPBP7J6lZmc5uoQwtc4UxvYc
	D6VM98fblivVSFtN0EwqZ0ANzqOaklvDQpNisjbK386sdQVyV9FBcJ8xM73yl682B8sF4JKEqi2T+
	1HNXcPgni9gbRoLMaNUTXaxWcLKFq+d3LpW4AU97KYZeLYRr0n2TvEZc30DdwwiOlVYAmWquj0prr
	oAn3+WG6Xep+mNijxaag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQr35-00024L-SM; Wed, 15 May 2019 10:22:11 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQr2y-00023c-SI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:22:06 +0000
Received: by mail-pf1-x443.google.com with SMTP id g9so1121543pfo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 03:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=k8VFYCF5oSPyusd7YzU9vI+LHK0xPFnRUxwFyUrCXLA=;
 b=EQ9N1mnr6ZAQq91qE17FWFlHoZ4Bl9lxk2XZrVv8D4dzNfpeTPdY4yjSYCJ/BGq6Ad
 pRw0mXLb6lIhWlkK4SgDPmsHvY/IMBXn13WhNY1RgbOSH7JVAwUV17GOrEjX2BEYId2w
 8GMP4LMKrYY+0Fodr89ONmqevJq/47UWBeMeiTuFr5Dct+zv4FmkIRniK8RG1ug3sIXa
 wU1smfWprasCjvoeBliO9XQ9ZCFAhYkFdf1a0PqqhU1KnPZbQ4zB0T6PjItaIVqqXece
 7CQVEGFgRQVINfSdZyIZ7fiHoWStH62Sf3jk1mSvPbdl/2JSxYYUCxkt7W8b6Dt2Wspf
 3rLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k8VFYCF5oSPyusd7YzU9vI+LHK0xPFnRUxwFyUrCXLA=;
 b=O04yexgmocnFGlD9s+ECnUnosOwB5BWihKaf7q6fDc0S2hNwGmcm8b5pPTZll4bTUY
 cERPegxNsF10zzja2YGCZ8WhrdHJIRWpiorIvfoWgj7+RH2AHWbvb55Vm1yqIz66I2fO
 cnTv7A0t88w/9MlYH8KGaMoj2XL6p/7ZkNTOuRaMxoYQnDo472q2eQLrkYHOLzMbyLHI
 TqKs4xHglkKLbOfQaXtqk4kUsguSm+s/dz6GMp8KG3IBLVVZ87RDkT4mglGFgIhJti6h
 xEXFPAnfhdsUW2PHwW1efb+gWe3qcVoeUDBy1LrQxJZxW0G4Brx4FG1QlQns6ys4gB0s
 6GMg==
X-Gm-Message-State: APjAAAVxu8CxidrqUt7e8Ih1MT5QveA2zSX5Ekppt73oKfcM0WcKJAY3
 +A491bBvkws4le+xI687pGCTaw==
X-Google-Smtp-Source: APXvYqzzEK+huRkxpvvZM1btAPYw8+s8wBsDTQMcogYLW7ON2rMCIGENU0s1Jb8JEFb5VT952F7iiw==
X-Received: by 2002:a63:ee10:: with SMTP id e16mr37077998pgi.207.1557915723540; 
 Wed, 15 May 2019 03:22:03 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id n13sm3827336pgh.6.2019.05.15.03.22.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 03:22:02 -0700 (PDT)
Date: Wed, 15 May 2019 15:52:00 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
Message-ID: <20190515102200.s6uq63qnwea6xtpl@vireshk-i7>
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-3-quentin.perret@arm.com>
 <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
 <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
 <698400c0-e0a4-4a86-b9df-cdb9bd683c0f@linaro.org>
 <20190515100748.q3t4kt72h2akdpcs@queper01-lin>
 <cf1474cb-7e31-7070-b988-a0c4d3f6f081@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf1474cb-7e31-7070-b988-a0c4d3f6f081@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_032204_916569_0163D4C6 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, will.deacon@arm.com, amit.kachhap@gmail.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 Quentin Perret <quentin.perret@arm.com>, mka@chromium.org,
 catalin.marinas@arm.com, rui.zhang@intel.com, javi.merino@kernel.org,
 ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15-05-19, 12:16, Daniel Lezcano wrote:
> Viresh what do you think ?

I agree with your last suggestions. They do make sense.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
