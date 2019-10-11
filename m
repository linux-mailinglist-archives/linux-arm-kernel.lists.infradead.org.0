Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60768D3974
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 08:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kf4dwtz9OB/DVmwKC6HpXUrkUIXGEE3+e3QKwrGTp14=; b=Wh/bLu8GYEFXMJ
	ddUHJ45SG28bDxfqBorNLfrFg18tiU3cOt7Y65/OQKRkocH3QE+riPux7FgCCaJyESye3XZKwJQaQ
	JML2Y14nxSAuZB7u31nhGtbC7wroWJlvFOYjGdlhXV0mD64FwWt8cjjFixW8YEfytiogBAPi3CnXG
	aXWXU/RlKznR9L9mHvVqa2eNV0qTnDi0GyLAiwyTjOLMx3n8D+Ofz2iwoUZdLA0PcqlaMJjSFL57b
	wjFEIotizt4e0tMsbQfjTS40BPf6tUCpg/LTh4SbzQSqpSU5fowkHM/kSg6okCqhNDi8HNt934y55
	jo4zyiuHMuNGYotkeRwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIoWy-0005t1-Rf; Fri, 11 Oct 2019 06:36:04 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIoWr-0005sZ-FF
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 06:35:58 +0000
Received: by mail-pl1-x644.google.com with SMTP id u12so3970219pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 23:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2PKi0gGKFmNsseS6eEp2W7gRX3AXEJ136rqpVgQpudA=;
 b=qNStiJh8USiyUA0LB1YcgQSb04etEkZ//GTZjbSQTL0FseLa/gPSrSO4AZnzDhFfeo
 z9w7tZuRWjm1lwio9JPM+01QLqn0mp4Gu2XQKAgb9apWOX6mRxFiRYoh6Ug99QAWS0PS
 06yB78265v6VWDtQYkI83dMBb8cxazuaaoCr+s31bHeLseS31Tg7QNZCTYue8cJ2HbbZ
 g7xK0cogvKYuZQ6hzouirM1zL+6Mt/V/SUrhUhLsh+pQBmhsCYzbuGbyUmes34DkXxg2
 qaZp/wc6ZVHmXdMOKPMxE/IQX36wVAhb35149kI0dcnJvpfT01Lgdn1zJ/yIzBMOEauO
 xqcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2PKi0gGKFmNsseS6eEp2W7gRX3AXEJ136rqpVgQpudA=;
 b=OWC6VTNUmCTCxp67qoIi9+FMBSxJQf643dK3gP3IGwWkLAdaqhqfn6M0B9TbZZSYBF
 ZBA86lzgD2Exor/lLiA+ikQZ6QknVD9XmNqVZJ+Ed1PGeM3L/3eBLn/y5+SJ49febvIO
 pUcy7v3CvQXcoCJqVMD3C0VYILf/L+DJv/EK6qHAhl3TcTUTmI86AensVTXO5l4tqA7y
 URVWoHofMh9BanGjHDNw01wl/sWIEVcgpRUKrh6tJ4IwgTH7aU/ofd0hW+67Pgm1p+i2
 ylvz0O16qT8eynoPGpKFAc8dEfnf+bT2Nh8uo9Ke0oYlezaDERED+/p25MZoycj3cNCO
 614Q==
X-Gm-Message-State: APjAAAWTcbZstBzb+icrA1LIDY+wTvEZRSzT9TzaONZxWChBVyit3x+1
 Rc3gyaxim6sYNzWlK31jWAdBTQ==
X-Google-Smtp-Source: APXvYqz4HrIkTF+9y69hw6UyGP8wUvaMTNHDrPrsgDFKM85PJ+Qv5spxv+eUr/l8V6bAyUVHvr3btw==
X-Received: by 2002:a17:902:b08b:: with SMTP id
 p11mr13304468plr.201.1570775755036; 
 Thu, 10 Oct 2019 23:35:55 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id v8sm21460724pje.6.2019.10.10.23.35.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 23:35:53 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:05:49 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: Re: [PATCH ARM32 v4.4 V2 00/47] V4.4 backport of arm32 Spectre patches
Message-ID: <20191011063549.vfu4fgdmhwrtix3f@vireshk-i7>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
 <20190829114006.ptxnynqcetqbprbm@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829114006.ptxnynqcetqbprbm@vireshk-i7>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_233557_538170_6877366C 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, guohanjun@huawei.com,
 mark.brown@arm.com, Marc Zyngier <maz@kernel.org>,
 Russell King <rmk+kernel@arm.linux.org.uk>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-08-19, 17:10, Viresh Kumar wrote:
> On 01-08-19, 13:45, Viresh Kumar wrote:
> > Hello,
> > 
> > Here is an attempt to backport arm32 spectre patches to v4.4 stable
> > tree. This was last tried around an year back by David Long [1]. He was
> > backporting only a subset (18) of patches and this series include a lot
> > of other patches present in Russell's spectre branch.
> 
> It's been almost 4 weeks since the first post on this. Can someone
> please help with reviews ?

Ping..

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
