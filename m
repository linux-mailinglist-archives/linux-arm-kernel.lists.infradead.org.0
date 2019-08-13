Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DE18B7F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZctv8ZriiDUpoq4X8RcbkMd1xrddd67iCxw3PU+RIg=; b=Ma59sCbErgMi8O
	GbyK0Wf+fABWGkWBoESqSXRr+UR4rM+3FT2nXEnIq3szEMk3TJb4qqymy0t9iQEdAgtSnIPY7ibze
	hI7NemWw3NkgLy6Op3G9UbVap6bIsO7L+ikj94A7dUa4lof90fK/nUM3HL/lW5gEqB9GNxywUUwg3
	N032Bm2/+c+H4X9OT6gT7PzhE1UKRjs7wklw+YOAwFwtArrLOnm4pVYnAR+QAPKiSJMruA0FkHtBG
	4+2pgekq0jl5AGQcbuAUTmBHKcklZnoQlXXDSislhMQRMGLv6ZSGkXLYtrQ9EW3v4sfdVehOYkqvt
	VDKNEz50+YxEeKqpj+EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVZE-0007JX-GD; Tue, 13 Aug 2019 12:06:20 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVZ2-0007JF-TU
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:06:10 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 953858179;
 Tue, 13 Aug 2019 12:06:36 +0000 (UTC)
Date: Tue, 13 Aug 2019 05:06:05 -0700
From: Tony Lindgren <tony@atomide.com>
To: Yue Haibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] soc: ti: pm33xx: Make two symbols static
Message-ID: <20190813120605.GX52127@atomide.com>
References: <20190413141243.38620-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190413141243.38620-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_050608_990986_102FB8E3 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ssantosh@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Yue Haibing <yuehaibing@huawei.com> [190413 07:13]:
> From: YueHaibing <yuehaibing@huawei.com>
> 
> Fix sparse warnings:
> 
> drivers/soc/ti/pm33xx.c:144:27: warning: symbol 'rtc_wake_src' was not declared. Should it be static?
> drivers/soc/ti/pm33xx.c:160:5: warning: symbol 'am33xx_rtc_only_idle' was not declared. Should it be static?

Applying into fixes thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
