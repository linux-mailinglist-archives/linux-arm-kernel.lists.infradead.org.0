Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E07178B30
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 08:19:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:MIME-Version:From:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OP5dlB/KKT6ph+oQwkh+D1iVwNRkjxk33QVcuz+izjU=; b=Lv0H1egIfg+pGs
	S1Elwg+1bur2lTSK9Bhtt7+3bZIJp/Mxg3rhtxxjL4PYjzV2oGDZJbxZ/G9KpOTDoTGA8G9fNDKht
	r5f2uCijnO00yeFIm+UrplrZDwlWMDnc2GDG17lbdJL2yrrEseofSL3fH5rcLiU9vTqDkrKwU2Ido
	CLDEmlVmzlvMk2HynwXkuPYj8Du/X7rr2zDbE7sK8wrQ7JZ3Ts96k/QHwTspafzunTlkAxby1jS2r
	no291H6tOBmltwzu/jt65SR+W82VQWcN9rtsXFKz/DyfUMuHqnoQVjWQxvqdyCOtoBkI5DIhlk/Jb
	Vez4ZwnlbSDOWNFYKVqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9OIu-0003YX-VI; Wed, 04 Mar 2020 07:18:52 +0000
Received: from mail.cn.fujitsu.com ([183.91.158.132] helo=heian.cn.fujitsu.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9OIn-0003Xx-OW
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 07:18:47 +0000
X-IronPort-AV: E=Sophos;i="5.70,513,1574092800"; d="scan'208";a="85627551"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
 by heian.cn.fujitsu.com with ESMTP; 04 Mar 2020 15:18:43 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
 by cn.fujitsu.com (Postfix) with ESMTP id DE08C50A999A;
 Wed,  4 Mar 2020 15:08:51 +0800 (CST)
Received: from [10.167.220.69] (10.167.220.69) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1395.4; Wed, 4 Mar 2020 15:18:32 +0800
Message-ID: <5E5F5647.3040705@cn.fujitsu.com>
Date: Wed, 4 Mar 2020 15:18:31 +0800
From: Xiao Yang <yangx.jy@cn.fujitsu.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.2; zh-CN;
 rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: Torsten Duwe <duwe@suse.de>, Torsten Duwe <duwe@lst.de>
Subject: Current status about arm64 livepatch support
X-Originating-IP: [10.167.220.69]
X-ClientProxiedBy: G08CNEXCHPEKD04.g08.fujitsu.local (10.167.33.200) To
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206)
X-yoursite-MailScanner-ID: DE08C50A999A.AB589
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: yangx.jy@cn.fujitsu.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_231846_004656_ED06A0D9 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [183.91.158.132 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Torsten,

Sorry to bother you.

I focus on arm64 livepatch support recently and saw that you have tried
to implement it by:
-------------------------------------------------------------------------------
http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609126.html
http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609124.html
http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609125.html
-------------------------------------------------------------------------------

This patch set seems to be blocked because of some issues, but your
another patch set inlcuding the first one "arm64: implement ftrace with
regs" has been merged into upstream kernel:
-------------------------------------------------------------------------------
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631104.html
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631107.html
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631105.html
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631106.html
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631114.html
--------------------------------------------------------------------------------

Could you tell me current status about arm64 livepatch support?
For example:
1) Are you(or someone) still working on arm64 livepatch support?
2) Are there some unresolved problems about arm64 livepatch support?
   What are they?
3) Will you send a newer version for arm64 livepatch support recently?

I look forward to your reply. :-)

Best Regards,
Xiao Yang



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
