Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1602615D026
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:44:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCURhhV3m3cNkufYGUmZpxAMvrTxub3JIj5KZo2uc7Q=; b=J9fOB9fDyHQ8iA
	MtVhzC/3vToRQ6sSWxCamBYAoTWqP2adpKImjK3WIe3AGZQcNTehU5pIoe0YsFoVV2Qb87m0pPS4m
	YNrjBuNjpnuIV8SBjepNU8jcBwMeAmCaHkBWsL8fDmFHPojJvgrmqsB3PJ0SVRp3Fp2vyqjLXyfaP
	FIJxutNdCthaJPQXUkXoVqfgrZCJ9mILtIDJXztPPHd1q7J46R1pSJXLt5PZzO4T29tmLlumFHXiv
	+ELNGrbrDfcPjVI3lEHIXqTlbPq69FsfDJwFGh+iMxTtMsXpivOG5NyxChyeLx74gsRegnRRlI/Za
	BBZPl/Xdk8O/LvXCwEDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Qxp-0003yP-SJ; Fri, 14 Feb 2020 02:44:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Qxh-0003xr-72
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:44:14 +0000
Received: by mail-pg1-x544.google.com with SMTP id j15so4175557pgm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 18:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=niNApjCO06O7a+lFbqctq/E/HFCOZGM44slzM8VnlEo=;
 b=IPZYguxYwiX88hRwH7QTLPVac3hJ/RngX14B4KoZqW6OiO/2xsVmTwj+HhOFyfg7nh
 TT0vT38gm9VGUvEz2ocWIbn+qo8hKz8aOteojzMKPNJwdp3Ifg8ap0Hv7Ilq+x9zZLw8
 7xsWgM62nwwp1kelkqj+SxQtFQoO+K1f4zu1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=niNApjCO06O7a+lFbqctq/E/HFCOZGM44slzM8VnlEo=;
 b=qVG4V/fXtNJtIH30XpppyGRtT1ngpG/lJCOsT7M5O/ceistXV1/tygIGsxsrdhFfqO
 6VNe8htPNaA5ukyUN7Zja9zZOBh9xmJxYJIb5SwxnU/QYVrEV0kKW6h2kWIBqkycn2Jb
 NOfMc87SytCVPt4squ+wwEGdG3JNF5eLUBfmz01UXLvdi7xA96yBEXfnZSgce9x2Ca0U
 v+CUL9gos1GOOVIlYOsWmEeLBPOJr647rfoXrA1POwVQemkW/fs3A1NyNITigwOogUl1
 aewa0qMoH8uS0j2Gf80/Zclh1GKBJBDGBqvvdLe2+evlFlGGBpPtoiqDKv5iJsIYM+5T
 AKjw==
X-Gm-Message-State: APjAAAW6lQlYwOYwRYTQJ5lgIMTQcKbOVQcR38aPWn6dluxm1oasCImt
 /qXS6uAgiyuHfT6DQofHeDUl4w==
X-Google-Smtp-Source: APXvYqwzYj+wvXbHesIqdU5LMCnildAw4yCq+8revIbEfOsWKVii3zdqeKtfxcBEcLKIdQKk+eTHGA==
X-Received: by 2002:a63:74b:: with SMTP id 72mr1052514pgh.162.1581648252362;
 Thu, 13 Feb 2020 18:44:12 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id c10sm4575360pgj.49.2020.02.13.18.44.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 18:44:11 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <e7ba4dbd8e9c8aedd6f5db1b3453d9782b7943cd.1579692800.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <e7ba4dbd8e9c8aedd6f5db1b3453d9782b7943cd.1579692800.git.saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 1/2] iommu: arm-smmu-impl: Convert to a generic reset
 implementation
From: Stephen Boyd <swboyd@chromium.org>
To: Joerg Roedel <joro@8bytes.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 Rob Clark <robdclark@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Will Deacon <will@kernel.org>
Date: Thu, 13 Feb 2020 18:44:10 -0800
Message-ID: <158164825099.184098.18396989716299086067@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_184413_254992_75EE22A6 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 Tomasz Figa <tfiga@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2020-01-22 03:48:01)
> Currently the QCOM specific smmu reset implementation is very
> specific to SDM845 SoC and has a wait-for-safe logic which
> may not be required for other SoCs. So move the SDM845 specific
> logic to its specific reset function. Also add SC7180 SMMU
> compatible for calling into QCOM specific implementation.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
