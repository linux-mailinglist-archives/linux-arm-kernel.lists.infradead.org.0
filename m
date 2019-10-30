Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6868BEA3F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 20:18:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6x36IkfweTMWb9FN1pRtLxjjdtlg8rb4X759bOkf/ks=; b=beiy2lsi1OnQc1
	rVnpSLvV5IxE6J4m9AX2Vewd1WEiAAqbrJu+XTweNPcTX06039xh9KyPPJb/A08e9AGvCh6uXHAKz
	CY2AGrS3l8zkGUQXDFiaPKUZs2qJhAVOhu55nCC7Ckgra9uaKAoU3X4BMhecnwFXh3/+95ffgD+Ds
	B/HnfC6z2Wm6AJJQ0sKyLzKp1OeMQPsPR1cSR1DZjUevgFvMLBB64DksVSBLGW1sA0mpfoxZha1gh
	mssQag1kT6O8SrvRr2jLQBh7OOy0bU+9DrKBdpf4ZMCTDpLCNGa0jqCkvzpPWHJJ3sFLcww1p3slt
	80bPTrQv9An9ISbAfcSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPtUF-0006bo-W3; Wed, 30 Oct 2019 19:18:32 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPtU6-0006bH-A2
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 19:18:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id p13so1421921pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 12:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2OlkZ0fbcuhFnCC06vBucpby6j2rTDvW/LLqNAsLplQ=;
 b=L2CD3ce3d2ob0TvHZzIn6TzM2d4+RIlDTsEZL5nV9u8YgBB2f8vbP+XZjWtLXbFiiC
 +oMuwq2U7SWqrBMsyJtJdlzoG3ZuYzS3daVtslG/Vj2Vn70eYQ5t5MSaXSF8JC6XbQ/p
 IzOhi544QFjXbAhDSScXE5zO3SR8mcfLOMhGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2OlkZ0fbcuhFnCC06vBucpby6j2rTDvW/LLqNAsLplQ=;
 b=hH9Qiv/OI4D1eAcAOgkDdTonHJdCv2oTI55sTREqlwv3JawcGA/EVpA5m6E7NzbnxG
 T9wkSwo6ym9i8uC5KcD4Y+TF5c7h7NvTssj0ifQi5FHo4OQ3GjsmSJJbWsv/NITHhd7l
 GNPTZhULmKwADKVmZ7mI2QYACY6Cwz5y9TRS1Lf8lLEJa1MMZjY8EVrmGNfCiDsVR/Md
 R8b7dOXlyw8pOLnIdLB+ornlZBFgjCCQDHVKJ8UMBooRnuTxf92hq1vHJULqhQSXmueu
 W0hqH4W2VgSFJa9U4eL0bDQ+IflJz2VMqZPC2GzUq89HgkxvNp2cKK+kN3sDRcWNK75z
 XbDg==
X-Gm-Message-State: APjAAAUeXrIMHHrp9irhVJ4aFQ+NhpQ4Etx0NSOjL5i/q7PihUbuT5vk
 0FvPopG58wvfAnqHkcg947oK0MjLKdw=
X-Google-Smtp-Source: APXvYqx4N2VLKcKkoi0hP0tFPhHeamd6/J7d2dmaS7igYbxnjmiCmAT3z1euOVcdNEw9NpujQQVijQ==
X-Received: by 2002:a17:902:547:: with SMTP id
 65mr1671958plf.239.1572463101315; 
 Wed, 30 Oct 2019 12:18:21 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id h9sm705436pfn.167.2019.10.30.12.18.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Oct 2019 12:18:20 -0700 (PDT)
Date: Wed, 30 Oct 2019 12:18:19 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] cpufreq: Add user_min/max_freq
Message-ID: <20191030191819.GB27773@google.com>
References: <c222deda79ad334ff4edcbd49ddda248685c4ee1.1572395990.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c222deda79ad334ff4edcbd49ddda248685c4ee1.1572395990.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_121822_349509_BBE88640 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 02:41:49AM +0200, Leonard Crestez wrote:
> Current values in scaling_min_freq and scaling_max freq can change on
> the fly due to event such as thermal monitoring. This behavior is
> confusing for userspace and because once an userspace limit is written
> to scaling_min/max_freq it is not possible to read it back.

Yes, this is indeed confusing.

> Introduce two new user_min/max_freq files which only contain the limits
> imposed by userspace, without any aggregation.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> ---
> This was motivated by these discussions:
> 
> * https://patchwork.kernel.org/patch/11078475/#22805379
> * https://patchwork.kernel.org/patch/11171817/#22917099
> 
> Those threads are about devfreq but same issue applies to cpufreq as
> well. Let me know if this solution seems reasonable?
> 
> An alternative would be to make scaling_min/max_freq always read back
> the configured value and introduce new effective_min/max_freq files for
> the aggregate values. That might break existing users (though I'm not
> familiar with any).

It seems there isn't really a perfect solution :(

This change creates a set of new, consistent attributes, but since we
can't make the current min/max attributes read-only userspace will keep
using them forever.

It's somewhat doubtful that userspace can do anything useful with the
current min/max values, since they might change just after being read.
Anything besides monitoring the limits (approximately) would be inherently
broken.

Having min/max return the configured value would be the expected behavior
(IMO), but obviously I also don't know for sure if there are userspace
components relying on the current behavior.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
