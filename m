Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4021E68C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 19:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XW7DjofEtf1nfZITlVftsvozliEA9O9bWDqnuZe1VrM=; b=ujCfW4xm7z6M6f
	HF9Q0tSTGvP2wtZx52YxFmRR7/TgI1nfcdJAuhISSdcJ1Iyf1AbZgfhhXR7k7/7oTrPiFamRiMGRX
	iQM525xZAkzUPlb1x+a35IMZUVsMpiSpanVfZ1oOa2Rvb3QTbVAolVV1X/I5C5tfqhBqTvq6D09ou
	rscqEmau5J+GY3dmKYyzweIAzSmuXtQT4faxALBiLzHRgePADcZFi3Xkd5Qi0zKwbq8zwd012sTQh
	2DyaGWsAP0ZKcStHekG4WxD4XFoMxZYeZNxIffA7crpdPt3s3FYn7ujMtVHgm2p7IVaCL4j2gSQyV
	vmkDek6Is0PN/UKaUaAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeMWc-0003Ok-Ia; Thu, 28 May 2020 17:41:02 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeMWR-0003ON-6L
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 17:40:52 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a45so892382pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 10:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=g7RTdEHDP9ZxhdJtmUAz3+YuWy4V9Urh/wbShjIVBQw=;
 b=lOvtkAjJErBV9hxiZrbpl1VhnWTX21zU0sD6T9SdiHj050/LjXLjpELafzpPZK3D9G
 QuCot0wSxFGSFkGsOa5J9qfKOWZKxlzir26JfPOBj1v3JyoZF5NEYKzwA4C7cHN8QH4M
 BQRxfhElrl6IwXrffCSNLZZh5RwaU0R7MLmX+xSUENGlZktnmPkgTNXHbRp329VgNOUK
 qxKs1wq3Wv+PSIFFTAhvI2HHBGxzL2dRABB0gMdNgct8TK5FMMeaKj0/+3zlFP/KpwqJ
 ZdtZSuJTg6iSDXxhbHoeP5aYLjCYfTDAGX1NclG8PUjvpquNFyB3fPCN4001CX/YJLuK
 Yc1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=g7RTdEHDP9ZxhdJtmUAz3+YuWy4V9Urh/wbShjIVBQw=;
 b=liCtAflUzuEzjXHaDTC2kxxY+AZoEETWrGHrfI190qsZvoRtvA3YPGGwBVWFozfQxd
 6uZHQPj3ffE6SZabvSn3057r08YZrMKWn6wcT39YDYK9f9geBR6hxy5tQfP51FfpFOyz
 gfRI7fjcxXLGNOv7sFXO1IQb1rz4ubZ7B5dJySBWqAq/vSyyaabICRwWfxS61l6MEWKz
 PJGvJ5g95me7SJB+c/UO8XTn9E+6HH+0Le4LiBONznX446BsMtTgzW8guXyJibe3dFOe
 6TbZav3sMYoklujmZX7xidlFJB1Lu0Of5KB2UvkHQEFjGa2lbS4NF1rD3TnIth6ZEkbA
 LMwQ==
X-Gm-Message-State: AOAM531Vz5j6nfZft41rAZCYbDswu0NA/vp/3f1J/19FQSNOKNupuKZX
 3xqgMZsiXhxLDQXHTYc98UEG0w==
X-Google-Smtp-Source: ABdhPJynO8BCn5H2WUjwIh/uB1cHKEqZ4BrjVdrxDGghjcKxVp3bh3SmfbOuqLDJycCRWXayY+wclg==
X-Received: by 2002:a17:902:ba8e:: with SMTP id
 k14mr4558181pls.85.1590687649056; 
 Thu, 28 May 2020 10:40:49 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm5465547pja.8.2020.05.28.10.40.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 10:40:48 -0700 (PDT)
Date: Thu, 28 May 2020 11:40:46 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCHv3 0/2] Add support for replicators which loses context on
 clock removal
Message-ID: <20200528174046.GA26008@xps15>
References: <cover.1590171891.git.saiprakash.ranjan@codeaurora.org>
 <20200525161553.GA31527@xps15> <20200528144803.GA36440@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528144803.GA36440@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_104051_299709_EC4C4DCB 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 08:48:03AM -0600, Rob Herring wrote:
> On Mon, May 25, 2020 at 10:15:53AM -0600, Mathieu Poirier wrote:
> > Hi Sai,
> > 
> > On Sat, May 23, 2020 at 12:06:50AM +0530, Sai Prakash Ranjan wrote:
> > > This series is mainly to add support for replicators
> > > which lose context on removing AMBA clock like on SC7180
> > > SoC where replicator in AOSS domain loses context.
> > > 
> > 
> > I am good with this set but need a reviewed-by on the DT binding before I can
> > add it to my tree.  The same goes for your other set[1].
> 
> Then why is it already in linux-next?

I wanted the patches to get exposure to linux-next before sending them on to
Greg for inclusion in the next merge window.  Rest assured that I would not have
moved forward without your consent.

> 
> In any case,
> 
> Acked-by: Rob Herring <robh@kernel.org>

Thank you for that.

Mathieu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
