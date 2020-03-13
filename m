Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE1A183F1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 03:28:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:MIME-Version:From:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HL3WXkMGwX6lpG1jHRo+tIUXwH0BMmSL80nBqo3el5c=; b=KRY3woNDw1dW4phGk6zJASDMA
	FGHsiYGgLMj1nc0XZ2vmJ0Qa0FYR6EYllgygnVXjAVeUXxHr46vf1Bcg7Ooqpsw4ZdtqEVcEgqOiK
	zZ5Uoy95ooDH4qtFp0CVXvshRzzk1NL7jlBY30SHx3VXsC/Cs5UIeBRYYgnoJ1lgKxf4tD6jQ5a+6
	SCo7B+sLvYo99D9c/pAFphYY0+CXHjQ/O4MRQSMw5a6p5E6+Eiv6KS5fFxgFueQAnXsszMEEIZfEX
	iTXFIsv4K/I/StuR0pfapwZY+pDe1c0Z5G7R1IcVDICfOe40H3o9tOM9hc56Z/LdJfC6G0ce1tMHK
	XiSQURmWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCa3E-0000ec-O8; Fri, 13 Mar 2020 02:27:52 +0000
Received: from mail.cn.fujitsu.com ([183.91.158.132] helo=heian.cn.fujitsu.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCa35-0000dE-Nu
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 02:27:45 +0000
X-IronPort-AV: E=Sophos;i="5.70,546,1574092800"; d="scan'208";a="86248074"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
 by heian.cn.fujitsu.com with ESMTP; 13 Mar 2020 10:27:29 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
 by cn.fujitsu.com (Postfix) with ESMTP id 71797406AB15;
 Fri, 13 Mar 2020 10:17:26 +0800 (CST)
Received: from [10.167.220.69] (10.167.220.69) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1395.4; Fri, 13 Mar 2020 10:27:24 +0800
Message-ID: <5E6AEF8B.4090905@cn.fujitsu.com>
Date: Fri, 13 Mar 2020 10:27:23 +0800
From: Xiao Yang <yangx.jy@cn.fujitsu.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.2; zh-CN;
 rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: Torsten Duwe <duwe@suse.de>, Torsten Duwe <duwe@lst.de>
Subject: Re: Current status about arm64 livepatch support
References: <5E5F5647.3040705@cn.fujitsu.com>
In-Reply-To: <5E5F5647.3040705@cn.fujitsu.com>
X-Originating-IP: [10.167.220.69]
X-ClientProxiedBy: G08CNEXCHPEKD04.g08.fujitsu.local (10.167.33.200) To
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206)
X-yoursite-MailScanner-ID: 71797406AB15.A8823
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: yangx.jy@cn.fujitsu.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_192743_944529_4C1F4F05 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [183.91.158.132 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Ping.

Best Regards,
Xiao Yang

On 2020/3/4 15:18, Xiao Yang wrote:
> Hi Torsten,
>
> Sorry to bother you.
>
> I focus on arm64 livepatch support recently and saw that you have tried
> to implement it by:
> -------------------------------------------------------------------------------
> http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609126.html
> http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609124.html
> http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609125.html
> -------------------------------------------------------------------------------
>
> This patch set seems to be blocked because of some issues, but your
> another patch set inlcuding the first one "arm64: implement ftrace with
> regs" has been merged into upstream kernel:
> -------------------------------------------------------------------------------
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631104.html
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631107.html
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631105.html
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631106.html
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631114.html
> --------------------------------------------------------------------------------
>
> Could you tell me current status about arm64 livepatch support?
> For example:
> 1) Are you(or someone) still working on arm64 livepatch support?
> 2) Are there some unresolved problems about arm64 livepatch support?
>     What are they?
> 3) Will you send a newer version for arm64 livepatch support recently?
>
> I look forward to your reply. :-)
>
> Best Regards,
> Xiao Yang
>
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> .
>




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
