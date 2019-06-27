Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ACA57C77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgbNUHSp0CoQttM9v0kmr/WFw/23VAcK/OeS9sawdU4=; b=EKe0871VMYJaWN
	P83UO7zobhwZGN3r4vOmBMMHExvjAwWPEA7eOe9CK0OtpDxWRMPPG1NwYENCL6q4rve/XpVVlgD8e
	JP+Hu92tvzGeS095mSGD9aOCg/xo2gfih/Ijh5//gfoJQaEh+vrQcDcnLNS/XSjxMOwYAn0/OlUB9
	dhSy9QGU4u8oza5AJ0NDMFEdLGOTvO69JgzlZOnlYU9CezuJ4kLcDcF2JydR4sO46ZPylXlzn0lTY
	QBZ5Bn27mBoBuYZDySsuAgwg+Wvy43z0U2OVjlKIXNgCrPo87yYJjLG++vxxwF4kFxTz5KGNKEisv
	63EYRxRxwY5sDk3Khhwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOFU-00066T-NM; Thu, 27 Jun 2019 06:51:12 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8X-0006KM-4o
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UaLYBvhGq3gd4Gu9tR3ZCecL27yTjW+SoEQCmywb1WE=; b=nQ9masl3AWY7wpVJfUrirNG7F0
 nCbC8Qqcc0+PXc78O95vzgk5uKGBsFkdddN2ZB2aDL+raCmHM95FptJZDCvXZhSvvfSXZRmnNiUCg
 q8gr5qHBeMjBN67ZyCcBLvmM4ggiGQkKetyrpdryGnGSfFernc+Ks+iyfVZSJZeWX95NIaRvtsTSR
 YBvR/9SUtX46lSGZkPRJtQCSNQH1+aqj14ZhgjDCOh3kdvZ0rt4x9zI2VWezxe74Tc7fount+3d6K
 1cEnsZulw83/MFHYC3tmGbkXM+ffGyra4aUU1vwQBR9IyCtNO2TF7dMPgIUSpJqSFRzDtvtTj9whA
 bwSkTA8w==;
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgJt0-0005jq-00
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:11:43 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7A5856FB3196203F8FEE;
 Thu, 27 Jun 2019 10:10:58 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Thu, 27 Jun 2019
 10:10:55 +0800
Subject: Re: [PATCH v5 1/4] ACPI/PPTT: Modify node flag detection to find last
 IDENTICAL
To: Jeremy Linton <jeremy.linton@arm.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190626213718.39423-1-jeremy.linton@arm.com>
 <20190626213718.39423-2-jeremy.linton@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <c36d197b-9f85-4681-69b6-a573451b5ed6@huawei.com>
Date: Thu, 27 Jun 2019 10:10:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190626213718.39423-2-jeremy.linton@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com,
 Hanjun Gou <gouhanjun@huawei.com>, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/6/27 5:37, Jeremy Linton wrote:
> The ACPI specification implies that the IDENTICAL flag should be
> set on all non leaf nodes where the children are identical.
> This means that we need to be searching for the last node with
> the identical flag set rather than the first one.
> 
> Since this flag is also dependent on the table revision, we
> need to add a bit of extra code to verify the table revision,
> and the next node's state in the traversal. Since we want to
> avoid function pointers here, lets just special case
> the IDENTICAL flag.
> 
> Tested-by: Hanjun Gou <gouhanjun@huawei.com>

This is wrong, my family name is Guo, and please correct my
email address as well (for all the 4 patches).

Thanks
Hanjun



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
