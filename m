Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55E03B8CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKhJuCwD+Z9L6mATBCEN9f+KJrmbW1CFs/mOef4mSZI=; b=YD4VVOa648c/Y9
	6SKTRReRkwUiqrlSUjt/4orsBo2edQkJYZRRAFpoL4m7FJQQgMPMS0AlsX9TaboRUdypobWgnbgVK
	Qcpbmj9tyDqJX7cLosB7pj4YJ8gv3Lek1xjknrhdWtZeC8ZTFwOr+rOgzkoAefATTEYgEivaci8pY
	bjCPHGiNb2tQ1QorJiq2jHujgirRgEgyOTLzTBgeaT4WoncAD7jJOGstAyNhypdMKjK94Yxx1w+4k
	6JzGobEwsMtXbCOx+28vhb9TyDpjgN6NrrT2ZAyDyBq8nKVpO/qv1VcPt/r1tyRRi935U9ZMAjcaC
	9USIL0M+fw0b9N5mFHcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMkM-0007h6-8U; Mon, 10 Jun 2019 16:02:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMkB-0007gm-N1
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:02:00 +0000
Received: from localhost (unknown [122.167.93.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 169A421726;
 Mon, 10 Jun 2019 16:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560182518;
 bh=Ys7DhJ+mKH71w87mci5TwN9k1JOK6LfD5c/WHEZ8RTE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rBU6bLj8ZBspEDLHH79L2W/bv5LAMc53bQpATHw9VBJ9LjI5l+2Vg/WbCSeqcvnEn
 NAiYIKdaF0CmbuUvDrcfXQUx8qrROPDrD4KjMKt8a2B1aSrpDyEisYAc5Q9D8FRol6
 M0GSPlpQeIcV/D5qDsmXM/mCCKjlVNMpyvHtHDxU=
Date: Mon, 10 Jun 2019 21:28:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>
Subject: Re: [PATCH] arm64: qcom: qcs404: Add reset-cells to GCC node
Message-ID: <20190610155848.GR9160@vkoul-mobl.Dlink>
References: <1560053972-32273-1-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560053972-32273-1-git-send-email-agross@kernel.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_090159_764076_9A6A25C9 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-msm@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08-06-19, 23:19, Andy Gross wrote:
> This patch adds a reset-cells property to the gcc controller on the QCS404.
> Without this in place, we get warnings like the following if nodes reference
> a gcc reset:
> 
> arch/arm64/boot/dts/qcom/qcs404.dtsi:261.38-310.5: Warning (resets_property):
> /soc@0/remoteproc@b00000: Missing property '#reset-cells' in node
> /soc@0/clock-controller@1800000 or bad phandle (referred from resets[0])
>   also defined at arch/arm64/boot/dts/qcom/qcs404-evb.dtsi:82.18-84.3
>   DTC     arch/arm64/boot/dts/qcom/qcs404-evb-4000.dtb
> arch/arm64/boot/dts/qcom/qcs404.dtsi:261.38-310.5: Warning (resets_property):
> /soc@0/remoteproc@b00000: Missing property '#reset-cells' in node
> /soc@0/clock-controller@1800000 or bad phandle (referred from resets[0])
>   also defined at arch/arm64/boot/dts/qcom/qcs404-evb.dtsi:82.18-84.3

Reviewed-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
