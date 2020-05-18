Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BAD1D74B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 12:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xGSMo8BQyBlzq/2btGksJHe2Pu5lGPCixExfzTcXYww=; b=erBDnEWHuPhIXr7tbJURtV7kY
	fUfQhDVtpPqnpt+Cdn4mTq7qWxklzGo4u2o1KKR06haOorw5n4HksNS1D6AAqaG1El8WdBG9AoJ/v
	4Z0VUBh/uWdu9wOq2f2wK79L2LTy7JYeH8bEreFytikN5VqLoSJDypoh7lkCHowwUG8gT6i9X/VSu
	KsO291EkERwrwVXDPC2fWIHduFUCuoE15u02/3Jvb+VWe1dK1+MYLGFNnYp1c3e+KhOpTB39usyhy
	3eRK9h7VOlWAOTgcNEM8ID0WiqJc+zEbCe+bn2ZgaP8hZFl41U85+YK/HhK+9TG90YA8xuVghB1hc
	VMmCUgSaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaceS-000253-75; Mon, 18 May 2020 10:05:40 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaceH-00023C-GP
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 10:05:30 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 18 May 2020 19:05:25 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 26634180B84;
 Mon, 18 May 2020 19:05:26 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Mon, 18 May 2020 19:05:26 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id DEC7D41C5A;
 Mon, 18 May 2020 19:05:25 +0900 (JST)
Received: from [10.213.31.127] (unknown [10.213.31.127])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 26A161207BB;
 Mon, 18 May 2020 19:05:25 +0900 (JST)
Subject: Re: [PATCH v2 4/5] PCI: uniphier: Add iATU register support
To: Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>
References: <1589536743-6684-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1589536743-6684-5-git-send-email-hayashi.kunihiko@socionext.com>
 <DM5PR12MB1276D6181D86C8DF0F98427ADABD0@DM5PR12MB1276.namprd12.prod.outlook.com>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <e3c5a841-7098-542d-cf71-9591fd24db5c@socionext.com>
Date: Mon, 18 May 2020 19:05:24 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <DM5PR12MB1276D6181D86C8DF0F98427ADABD0@DM5PR12MB1276.namprd12.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_030529_659467_56DE2EEA 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Gustavo,

On 2020/05/15 22:16, Gustavo Pimentel wrote:
> Hi Kunihiko,
> 
> On Fri, May 15, 2020 at 10:59:2, Kunihiko Hayashi
> <hayashi.kunihiko@socionext.com> wrote:
> 
>> This gets iATU register area from reg property. In Synopsis DWC version
> 
> s/Synopsis/Synopsys
> in all patches
Thank you for pointing out.
I'll fix and be careful about this.

Thank you,

---
Best Regards
Kunihiko Hayashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
