Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB44743584
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCjbdfq+mqCinqSKQmU+e0ziGQLU9bLQJk1rJ0COF/c=; b=EFGfHCEU7ax+JJ
	0elDf66qlSvWyIWLxM6/zJjAVzSnHcrbjcSEG9V20xQJA0OKc+xIp/QkYOEefWhVxVD6BWOFmYz+f
	E0240VGswHOpAb4X79cSxwcnnCAzP8fnjVaW/AXB19d3b+dvVTcYVM5ibRP6prwbsAT4/DzgtnrOh
	Wf5emG+2bJDXmwOO5eUKNyoyztAAD9rRkcYCZzmZYXJJGlYwqftcN/ioamaitO25AVUFGM6bJ8WL7
	dWDnpXAOCpbbc9atjsfOfjjKwfGSV1JmL6dRyhZ3p/hQfzkg/GoO1VDzXGEd+hm4bwSuOtv543YS9
	zMNPFHhVUNA9/jOHs6UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNvP-0001eR-9W; Thu, 13 Jun 2019 11:29:47 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNtn-0000qS-Dg; Thu, 13 Jun 2019 11:28:09 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id AB2461C04B2F61064578;
 Thu, 13 Jun 2019 19:28:03 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 13 Jun 2019
 19:27:54 +0800
Subject: Re: [PATCH 1/4] x86: kdump: move reserve_crashkernel_low() into
 kexec_core.c
To: Dave Young <dyoung@redhat.com>
References: <20190507035058.63992-1-chenzhou10@huawei.com>
 <20190507035058.63992-2-chenzhou10@huawei.com>
 <20190612084551.GA24575@dhcp-128-65.nay.redhat.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <681c9884-4b8b-be87-2d78-d5f53ab23f34@huawei.com>
Date: Thu, 13 Jun 2019 19:27:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20190612084551.GA24575@dhcp-128-65.nay.redhat.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_042808_278303_AD6E92AC 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: wangkefeng.wang@huawei.com, horms@verge.net.au, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, takahiro.akashi@linaro.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, linux-mm@kvack.org,
 mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com,
 kexec@lists.infradead.org, akpm@linux-foundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 2019/6/12 16:45, Dave Young wrote:
> Other than the comments from James, can you move the function into
> kernel/crash_core.c, we already have some functions moved there for
> sharing.

Sure.

Thanks,
Chen Zhou


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
