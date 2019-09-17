Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D818B4577
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 04:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z8OwZOGKJyWOa5U/x8a49Okp8M/YwgYtZEJXmzp3/CE=; b=KQTa1w7tDm1rmT
	9noG3HShRJ/w/KJqhWaU7rbCrTftutJk0UeOYI4gxfTLJAmy9cfb+iBseyBnD23d3T1WHX6hnN005
	ukK1lonz/NER5xuEAvXZvHdH5VGKRCeIeWiVV19CJjqf+lSqCWGEWIiS0lmoWX6z5km8rOIxCGbm7
	CrkbIKWw38otKdLphb8wvTgR5KMB6e7iIlVoZwcVuh7T9Ib9Sh7spZr+bgZmKIjtnGC7IAcTZlvys
	S0ypHEX2YkvMekwJAP5GyRdhqBh1mn96N0DehpC+8Xg7HVyHPLc1zDafLJK1VoCBynVBizaeezR5i
	qBdCbqWIK88xTD9IWV/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA32L-0002zF-Gk; Tue, 17 Sep 2019 02:16:13 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA327-0002lW-H9
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 02:16:01 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5B4ADCE8CECF440A3F7E;
 Tue, 17 Sep 2019 10:15:49 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Tue, 17 Sep 2019
 10:15:42 +0800
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: [Question-GIC-v4.1] Plan on GIC-v4.1 driver development
Message-ID: <40d7276c-54a3-0cca-a207-217459850c21@hisilicon.com>
Date: Tue, 17 Sep 2019 10:15:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_191559_751540_FC7F3DFA 
X-CRM114-Status: UNSURE (   4.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Marc Zyngier <maz@kernel.org>,
 "Tangnianyao \(ICT\)" <tangnianyao@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

This is from Nianyao Tang.

I'm planning to do some verification on our GIC-v4.1 implement. I would like some
information about linux GIC-v4.1 driver. When will linux support GIC-v4.1 or what's
the plan on developing GIC-v4.1 driver?

Thanks,
Nianyao.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
