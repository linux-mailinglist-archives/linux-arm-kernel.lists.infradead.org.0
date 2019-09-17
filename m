Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE5CB4A8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 11:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GimENWP6i3WK8yNodZZ2FBUCr/sexr3D6tND+Qri1yQ=; b=cklN89nXQFkdt/mGbJqYW7bpu
	awxNFrT0Kuir5a4gv98v1OcXYIVoFGCwKwuWFqAC0OpBroPm40ZQ1ek00C8eAr76b0/BWIjyJfgfM
	cKjnSv0G3SDlwrGbzx8tIVSBEpBF6Z055Ao7v+hd++OLRUg6i75wBud7Qkhye5Xl/lETjdNxH65b4
	znzAN/bq6TChCRU33fubWprFSpK52SRDaflx0qGEl0c0o3CZGdqbEDJEYXR6ky6qKaNKwQHZy8SrY
	tLNXk46j0c7dTZH7Cs94X2FMaryBLNFwi1OSgn1szlRqfyTLHk+1afa9Rp4zdDMvX6A3dYL/wMVRM
	objsL1efA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9sL-0003DP-J6; Tue, 17 Sep 2019 09:34:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9rz-0003Cu-SK
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 09:34:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA6F828;
 Tue, 17 Sep 2019 02:33:58 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C249A3F59C;
 Tue, 17 Sep 2019 02:33:57 -0700 (PDT)
Subject: Re: [PATCH v2 02/11] coresight: etm4x: Fix input validation for sysfs.
To: mike.leach@linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
References: <20190829213321.4092-1-mike.leach@linaro.org>
 <20190829213321.4092-3-mike.leach@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <596f7e12-3ce4-45f6-b30b-713b2bd1f1fa@arm.com>
Date: Tue, 17 Sep 2019 10:33:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829213321.4092-3-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_023359_962964_641F4226 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gregkh@linuxfoundation.org, corbet@lwn.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29/08/2019 22:33, Mike Leach wrote:
> A number of issues are fixed relating to sysfs input validation:-
> 
> 1) bb_ctrl_store() - incorrect compare of bit select field to absolute
> value. Reworked per ETMv4 specification.
> 2) seq_event_store() - incorrect mask value - register has two
> event values.
> 3) cyc_threshold_store() - must mask with max before checking min
> otherwise wrapped values can set illegal value below min.
> 4) res_ctrl_store() - update to mask off all res0 bits.
> 
> Reviewed-by: Leo Yan <leo.yan@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Mike Leach <mike.leach@linaro.org>

Does this need to goto stable ? May be add a Fixes tag ? It fixes real
issues with the values that could be programmed into these registers.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
