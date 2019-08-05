Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F400823B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNX5cxKXcxpC2dFWxsGTrTT9i8SEE1qYnQ3DgcIHxcY=; b=Z0eUc6e25ev4Wx
	YIDMdrw0TSo2DNFtnfidL9ZXGLdBnHvRxoTYkYcL9Fk6y6gAalvzS8LBLNjXffl5Pj3khZQ4UaTj7
	jM0hIr+hiDz/Y+b92EKJAfk323r5Uko9PlHWWSzRDn7X2/PKfqbl2ITRX/QCijAdPObPgqFxOA75e
	I6uDpNVH2mDXkGvUFXSs93OqoZMdfMo7UOU6Reu0f+l+1o2/MlTP5AezITS8UychaZjJxCAAFgQVZ
	hV43XrSgOU+zgc0emyVZkDdW10qiogGFhSJxLhWVpIbahkKDEkgjwDcrCtSOb75nkyMTtdZqqKPTL
	K5L9G1uEtDtlXJapIObA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugV1-0002rN-CC; Mon, 05 Aug 2019 17:10:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hugUn-0002HF-1s
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 17:10:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DA09344;
 Mon,  5 Aug 2019 10:10:04 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 3A87E3F694; Mon,  5 Aug 2019 10:10:03 -0700 (PDT)
Date: Mon, 5 Aug 2019 18:10:01 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V4 09/11] arm64: mm: Modify calculation of VMEMMAP_SIZE
Message-ID: <20190805171000.GJ4175@arrakis.emea.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-10-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729162117.832-10-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_101005_139261_1E5B6F0F 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 bhsharma@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 05:21:15PM +0100, Steve Capper wrote:
> In a later patch we will need to have a slightly larger VMEMMAP region
> to accommodate boot time selection between 48/52-bit kernel VAs.
> 
> This patch modifies the formula for computing VMEMMAP_SIZE to depend
> explicitly on the PAGE_OFFSET and start of kernel addressable memory.
> (This allows for a slightly larger direct linear map in future).
> 
> Signed-off-by: Steve Capper <steve.capper@arm.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
