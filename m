Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3A21EEC91
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 22:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Xohff7lLNLO+oaLYa13zraAIcTkaLb4JOsFpk1nSHYk=; b=X2H
	sA1v4t1ik3lb4FTOgYN+1HBFeJMmpkpQFg98uIvikNfiqg0ojQlDQJnJ3sS1DWRktbUYBHY0S48qw
	9DI8c/7C/2rn/NM1sbGWMq14mRy7h/XFSiEMflE7IBhiGnuhY5aSp01e4jOoxij4Y/e7Q/73al3/d
	S2CKXqB5u6V9szWUF+nbogFPw+ofBJgTfyOLc0BdLpAAhICl7rFe7MdbE/ordk4OnmriADMc2jhl+
	ZjpR4MTOx729XX2IB4k/OcZeZW7BqBok5DR7V69EMwoIUW46uy+NO6kVeuZ9kk0/5+vl5UBdAkUI7
	Li5MOxHfqyLmgRw/buTywZJbfR4yxzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwvj-0005uI-DB; Thu, 04 Jun 2020 20:57:39 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwvY-0005tX-1e
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 20:57:33 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591304251; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=tGegCLreeE39fZph91CzCOdnJ3ipf0nuM1nQAi/8hPE=;
 b=CYA4pmYYc8HGGLMFN6VLK27SKWseln2D1/f5DoQED5Hc4qx0ux3m0VH6pRWUUQ1LQmTm9sFB
 XHDW0nprAFOo2VmZ9WFU3HIgurDXLfRQLREjf9I9PIedNm8xsAFISTENMT9EXPQwzzMJbQrv
 xHaRBxNMhrvtikJpjIzjxAY6a54=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n08.prod.us-east-1.postgun.com with SMTP id
 5ed9602f44a25e005228803c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 04 Jun 2020 20:57:19
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DA159C4344C; Thu,  4 Jun 2020 20:57:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jordan-laptop.qualcomm.com (Global_NAT1.qualcomm.com
 [129.46.96.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id ECAA0C433CB;
 Thu,  4 Jun 2020 20:57:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org ECAA0C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: linux-arm-msm@vger.kernel.org
Subject: [PATCH v7 0/6] iommu/arm-smmu: Enable split pagetable support
Date: Thu,  4 Jun 2020 14:57:04 -0600
Message-Id: <20200604205710.3167-1-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_135731_718805_D1152AA6 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sean Paul <sean@poorly.run>, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 David Airlie <airlied@linux.ie>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Takashi Iwai <tiwai@suse.de>, Rob Clark <robdclark@gmail.com>,
 Andy Gross <agross@kernel.org>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Gleixner <tglx@linutronix.de>,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 Brian Masney <masneyb@onstation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Another iteration of the split-pagetable support for arm-smmu and the Adreno GPU
SMMU. After email discussions [1] we opted to make a arm-smmu implementation for
specifically for the Adreno GPU and use that to enable split pagetable support
and later other implementation specific bits that we need.

On the hardware side this is very close to the same code from before [2] only
the TTBR1 quirk is turned on by the implementation and not a domain attribute.
In drm/msm we use the returned size of the aperture as a clue to let us know
which virtual address space we should use for global memory objects.

There are two open items that you should be aware of. First, in the
implementation specific code we have to check the compatible string of the
device so that we only enable TTBR1 for the GPU (SID 0) and not the GMU (SID 4).
I went back and forth trying to decide if I wanted to use the compatbile string
or the SID as the filter and settled on the compatible string but I could be
talked out of it.

The other open item is that in drm/msm the hardware only uses 49 bits of the
address space but arm-smmu expects the address to be sign extended all the way
to 64 bits. This isn't a problem normally unless you look at the hardware
registers that contain a IOVA and then the upper bits will be zero. I opted to
restrict the internal drm/msm IOVA range to only 49 bits and then sign extend
right before calling iommu_map / iommu_unmap. This is a bit wonky but I thought
that matching the hardware would be less confusing when debugging a hang.

[1] https://lists.linuxfoundation.org/pipermail/iommu/2020-May/044537.html
[2] https://patchwork.kernel.org/patch/11482591/


Jordan Crouse (6):
  iommu/arm-smmu: Pass io-pgtable config to implementation specific
    function
  iommu/arm-smmu: Add support for split pagetables
  dt-bindings: arm-smmu: Add compatible string for Adreno GPU SMMU
  iommu/arm-smmu: Add implementation for the adreno GPU SMMU
  drm/msm: Set the global virtual address range from the IOMMU domain
  arm6: dts: qcom: sm845: Set the compatible string for the GPU SMMU

 .../devicetree/bindings/iommu/arm,smmu.yaml   |  4 ++
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  2 +-
 drivers/gpu/drm/msm/adreno/adreno_gpu.c       | 13 ++++++-
 drivers/gpu/drm/msm/msm_iommu.c               |  7 ++++
 drivers/iommu/arm-smmu-impl.c                 |  6 ++-
 drivers/iommu/arm-smmu-qcom.c                 | 38 ++++++++++++++++++-
 drivers/iommu/arm-smmu.c                      | 32 +++++++++++-----
 drivers/iommu/arm-smmu.h                      | 29 ++++++++++----
 8 files changed, 108 insertions(+), 23 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
