Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C44139330
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 15:10:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7+h2FIkipQOKwshFtLgD8bLueZ0IaPx5gp5gRIZrlY=; b=EYpvPg9YcsKkY1
	l8igp7PXPeWmSo/h8XizrCqJvJkfwLa1+uvVdRsgnKCqlBQF4uu8FkiRpKl3Gz1dHRTpLdM/uiSzb
	6B+LScsRVdOPOj7Ro5r4w9tfdVKnctYZInxnu+65R0G4OFw0nb00BXVjN3mhcejZ0m0PJhmFFOBCG
	/GZNQCuRBiS0OFHZ1jvOxEjkBBcg3n1fNI8cTN0xcrnae7OXWUBjx/qhg12bKytr1WIwglvQ6P/EU
	g1C+xoJ/55Qs2GizwVL950Hiz31WfogpvaMHCtORkNrejPT5ALdSfXZLxmzf1b94Recyx88p3FxAU
	1Jgo9uNL+1+lRfaX5QhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir0QP-00017Q-R6; Mon, 13 Jan 2020 14:10:37 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir0QE-00016D-UB
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 14:10:28 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4B278465F1C7162D1F9F;
 Mon, 13 Jan 2020 22:10:14 +0800 (CST)
Received: from [127.0.0.1] (10.133.229.220) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 13 Jan 2020 22:10:12 +0800
Subject: Re: [PATCH] trace: ras: print the raw data of arm processor error info
To: Borislav Petkov <bp@alien8.de>, James Morse <james.morse@arm.com>
References: <20191214121109.8349-1-xiexiuqi@huawei.com>
 <20200109114603.GC5603@zn.tnic>
From: Xie XiuQi <xiexiuqi@huawei.com>
Message-ID: <3086a22d-6d66-df74-5878-60a8fc0f1499@huawei.com>
Date: Mon, 13 Jan 2020 22:10:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200109114603.GC5603@zn.tnic>
Content-Language: en-GB
X-Originating-IP: [10.133.229.220]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_061027_139643_8E1BFE4E 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: tony.luck@intel.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

What do you think of this patch?

On 2020/1/9 19:46, Borislav Petkov wrote:
>>  );
>>  
>>  /*
>> -- 
> That's for ARM folks to decide whether they wanna shuffle raw error
> records into userspace like that. CCed.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
