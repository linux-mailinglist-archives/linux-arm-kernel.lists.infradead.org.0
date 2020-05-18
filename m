Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F861D8B6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 01:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veN2kbmh1aweXmCQ8KRuRCy6jCcz/cifyjuUK0Nkglw=; b=oA/0onzshFTZse
	Mlqx/BD5i8OrQQfgG9ZfjJWHFg3XQfTV3O1c2vRXf+U4A+CAa9u45oA+9+pC109IQAdoEE2ijMWac
	k4LonKdl2P0w9nLqhtleOdgan44yquzRVLn/GVTrNC8J16lHf9O39OR6mMXasUynWLnHEpN4VmUOD
	vJVE62MnWlg2J/cOmNBLEBfHYZXyz6qaq4NnanLaqZuKDZxT7dl1/OUez77hzQkKvxshXlTLly9g7
	0nVhO5dPqM2vIQOWoeU99UtGhfWgLEWqRET5yxOwdq3FZDIy5Ti1D1J9ERYd/R2LBDo0n2/st+WGF
	7vwr6l73Zu2cP+Ha01Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoq2-0003dX-1b; Mon, 18 May 2020 23:06:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoo9-0008SE-CY
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 23:04:33 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D56B7207F9;
 Mon, 18 May 2020 23:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589843068;
 bh=KGUQGz4db3YjWPudFeOfKSYM0sWPkRsvPRm4npW190o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QiYgQErP+LqAuYyClBRqQfZb8lTctaFLjv1rRjDatVQa4+ACebdT3cczztU9y/m4X
 E6a5RwRyF7McE6jg2mwRHz+DInqvnyTv0xcLfVldVojV0mFkp/NvQmKk06TlQy2MHS
 K6mn7Pw3TmAhV73dowk5GXTeTO8eObZgPHiY4Zv0=
From: Will Deacon <will@kernel.org>
To: robin.murphy@arm.com, swboyd@chromium.org, joro@8bytes.org,
 Sibi Sankar <sibis@codeaurora.org>
Subject: Re: [PATCH v6] iommu/arm-smmu-qcom: Request direct mapping for modem
 device
Date: Tue, 19 May 2020 00:04:08 +0100
Message-Id: <158981250642.239015.17275693427372248725.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200511175532.25874-1-sibis@codeaurora.org>
References: <20200511175532.25874-1-sibis@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_160429_602890_83B9631B 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 dianders@chromium.org, evgreen@chromium.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, mka@chromium.org,
 linux-arm-msm@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 23:25:32 +0530, Sibi Sankar wrote:
> The modem remote processor has two access paths to DDR. One path is
> directly connected to DDR and another path goes through an SMMU. The
> SMMU path is configured to be a direct mapping because it's used by
> various peripherals in the modem subsystem. Typically this direct
> mapping is configured statically at EL2 by QHEE (Qualcomm's Hypervisor
> Execution Environment) before the kernel is entered.
> 
> [...]

Applied to will (for-joerg/arm-smmu/updates), thanks!

[1/1] iommu/arm-smmu-qcom: Request direct mapping for modem device
      https://git.kernel.org/will/c/d100ff3843b7

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
