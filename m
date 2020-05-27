Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991FF1E3C46
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CKIGfxNmU/jbs5fExZ/cHnaG8M5GnPOs+T0N+SbO6o=; b=qNnsaxY5/otuaR
	Bo147Xvl/PS1gkOdCWpeYLftIlcpLef4WOrm4KQ/UURweC7MSykWl3eOTCp48PiNcu53oR6a72pFr
	ciBa5nhiZRRgAe3JnfE9PFxK+cF0tCJwglTpxIZbXrQImd7S6/uSsF87u6cWf8CD2WTOSvblBfdHb
	BZTeSlSsVsRM9vJoNnVgsUHdhE5o/LFdiTfgFD4fRKzzYduvUJDkmSZ767GVyQ01vBBURRBs3Xt9n
	4ziM+B7fpY5u2xGDbTcQbcrCogfrUe/AUCbAIQ8oyVdtNOasghYSdEwGKxXxdAxlhsS+5aof9kh03
	1r82TU82sHgqwHCBjANw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrdj-0006iU-Pc; Wed, 27 May 2020 08:42:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrdG-0006fe-5q
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:41:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id j16so10712612wrb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 01:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hUudrY4n5TJoRLFYuGbnj/ynP3kKZ6PzeqLLC1Y9vLY=;
 b=Ia9cBwKnBLKCJMYaauUNF25v0ARnU70yfbKeUOBTph0+Xzje83jRJxDwcPs61lucVY
 IcB3WVN9vt1X/h3OvxEedOJ9r69WYev2C33H65K5FiKsnDdJqJLpq8RNTKksXa0rOcnz
 TxBO57dh+LWIuBsT0tFvMwr9lfykO/Tw/jvKKVARPZHH08mhL27nholqnUcfKnX7mgD1
 iAse1MiKVAqA41m28BnS+Lv+Dj44WS5o5BUQMS0bj0a97mECUb658E7ah2hiOIGNhkHK
 IPmDG9nI4cB6d8N1P9wtVe27q96mQyW6JoEQFCTkWRFPees5a7dJC7FeQKEpnL7bZ1Es
 ZdKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hUudrY4n5TJoRLFYuGbnj/ynP3kKZ6PzeqLLC1Y9vLY=;
 b=cGwWldBnXSofGxAkNeEhitdBMY/Hcbq5vJcQvUPy4IZgrTH6OJBSDQWg7Ua2ucqtSv
 V44FBdE8Fe6VnWUCygbfsiBY5ila6IhPslgx/X/yfy0ONTkZzbxdwh4PVopp4/SesOYT
 aw6jeRCF5Sxmv+6ZXPuwaf7TvD+qBbYh7174oUzoUGaCECf41fmrsX9EeM+Kl4Kw46em
 Bn+g91lxn7vwjZegKcQsHUrTQqi4szNL9QT4SQRdxt5nEszFxZXfDFATzDQGJgrJOsNt
 lSWlw8bczkJj0E5eiYKBFY3PAAtpTntDhZnrmQxA2QpNeRqmaqVGmWzByDBx6ry0c3FP
 kkuw==
X-Gm-Message-State: AOAM530y77dV1ldQOD4jOqcXi8EbsgHN3VgG9dGw2WXDFni76ePjAuem
 Wjfc6ceeC/6AO2n74SRS+/nGaQ==
X-Google-Smtp-Source: ABdhPJzqoGf6Z/QRASvsBBJ7Mi/1v+DHuWG7VFZ92LMFBPICZDognl6udyMXUL6BbimKw34o0Uo6Ag==
X-Received: by 2002:a05:6000:10cf:: with SMTP id
 b15mr23239941wrx.214.1590568908454; 
 Wed, 27 May 2020 01:41:48 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id q1sm2208428wmj.9.2020.05.27.01.41.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 01:41:47 -0700 (PDT)
Date: Wed, 27 May 2020 10:41:37 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Xiang Zheng <zhengxiang9@huawei.com>
Subject: Re: [PATCH v7 18/24] iommu/arm-smmu-v3: Add support for Hardware
 Translation Table Update
Message-ID: <20200527084137.GA265288@myrica>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-19-jean-philippe@linaro.org>
 <4eea10e0-1343-8d7d-ba8d-214d05558c76@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4eea10e0-1343-8d7d-ba8d-214d05558c76@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_014150_216746_B7981C46 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, will@kernel.org, fenghua.yu@intel.com,
 jgg@ziepe.ca, linux-pci@vger.kernel.org, joro@8bytes.org,
 Jonathan.Cameron@huawei.com, christian.koenig@amd.com, hch@infradead.org,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 Wang Haibin <wanghaibin.wang@huawei.com>, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, robin.murphy@arm.com,
 felix.kuehling@amd.com, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 11:00:29AM +0800, Xiang Zheng wrote:
> Hi Jean,
> 
> This patch only enables HTTU bits in CDs. Is it also neccessary to enable
> HTTU bits in STEs in this patch?

Only if you need HTTU for stage-2 tables. This series is only about
sharing stage-1 page tables, for which HTTU is enabled in the CD. I'll add
a statement in the commit message.

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
