Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F43B8F55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 13:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jj5tYTYIwGoiEF5JVFHWrp2fFBWnJbkxCLTBjnOSX9E=; b=gmcFsX6Ha1MsDM
	dTeqLPf/taRH13n4JTF5+YnZ1rhfQqY+xZF77Ui/gmIhCn+o7sH2kjjjxvWwqMYcqSj633Imptj3L
	2Qy516zRu6Fj5cvhQjulJhCyRjb/McZY2s/K2WVsC+6GO6njyZruFhlv/oGGgiiMOZLQ8tAy3uu53
	HrJ4V4ImDvagqf6fEBunokLolc2PzBY6kB5Lqki6/gL3XjFtIL0ySxrgIFGzD1OzP1nm1d+qWU4IM
	S8bADjxjQICD4qGT/oSRc9cWf7cRWqRVtyeAX7lVuDbDIbnfKbd1+NxsTTpcCoenBZogwSd2t9YL3
	39Apz6sZ/YWyeLaiK6LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBHX8-0004nd-7r; Fri, 20 Sep 2019 11:57:06 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBHX1-0004nG-Fy
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 11:57:01 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 3F013F8B1D48FEEAB0E9;
 Fri, 20 Sep 2019 19:56:46 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Fri, 20 Sep 2019
 19:56:41 +0800
Subject: Re: SPE capable Arm CPUs in the fields
To: Itaru Kitayama <itaru.kitayama@riken.jp>, Sudeep Holla
 <sudeep.holla@arm.com>
References: <864D2B3A-E49A-4F9E-9277-E8B64B36E02B@riken.jp>
 <20190920094009.GA13906@bogus>
 <c41d681c-3486-022e-e988-9445f78c3ef8@riken.jp>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <22dd2699-be30-87e6-32c5-320adbfaf8ce@huawei.com>
Date: Fri, 20 Sep 2019 19:56:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <c41d681c-3486-022e-e988-9445f78c3ef8@riken.jp>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_045659_705986_73F0D8AA 
X-CRM114-Status: UNSURE (   6.08  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/9/20 17:45, Itaru Kitayama wrote:
> Thank you Sudeep. I look forward to more N1 variants showing up in the market in 2020.

HiSilicon Kunpeng 920 (ARM64 server chip) has SPE feature and we are working on
this to enable it with more perf support:

https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg2067868.html

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
