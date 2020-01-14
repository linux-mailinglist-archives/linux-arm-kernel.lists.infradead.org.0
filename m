Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 926B613AC29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BelqlD9YWhqHvtpN8NNTEDebjrYlzGMymfI/PQrwC2A=; b=fGPbBQfia2jBj2
	QHbAhogUFhkUwg0iP9Niskk0THt6MchtpG+TpAJel7+rct8yuShYxvVL6CCSP4pCizxXvA8iSbFoV
	cZ0nMr+mrgND1MCRozXxxqbUbUtAxe8zSn1w0A6wnM8pFooYyNTtC6p1zwx5QLjczzD6+5fblsMKb
	7/vg/1YYPZEMa7WoMZnDHahzSzUBAcHXcgPWacHzZDRRMHf7YgG/PO74wytE3QfEj2djXe1F64dcA
	TuFqQdN/qsuY3ayQyMGe5lDhqYb335kQrGa4VscO7J9hnTilueeDSfMUPQ6rtgIwR/B38cFSITZSC
	Dfm0+qEvZWqyUL4TgKsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irN4K-0002JI-AI; Tue, 14 Jan 2020 14:21:20 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irN47-0002Ij-UX
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:21:14 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 305A29FA6ADF3375DD5C;
 Tue, 14 Jan 2020 22:20:57 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Tue, 14 Jan 2020
 22:20:48 +0800
To: Marc Zyngier <maz@kernel.org>, "Tangnianyao (ICT)"
 <tangnianyao@huawei.com>, <kvmarm@lists.cs.columbia.edu>,
 <linux-arm-kernel@lists.infradead.org>, <fanhenglong@huawei.com>,
 <wanghaibin.wang@huawei.com>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: [Question about KVM on arm64] Consider putting VINVALL to deactivation
Message-ID: <bf470803-8e1c-d1c3-d5ac-731536196543@hisilicon.com>
Date: Tue, 14 Jan 2020 22:20:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_062108_148066_AD0C71DB 
X-CRM114-Status: UNSURE (   6.15  )
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
Cc: Lizixian <lizixian@hisilicon.com>, wangwudi <wangwudi@hisilicon.com>,
 jiayanlei@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Marc,

On activation, VMAPP command is followed by a VINVALL, which could be quite expensive
for the start-up of virtual machine. If a vpeid is allowed successfully, it is not
used in system. We may consider put VINVALL to deactivation to ensure all cache of
certain vpeid is invalid, to simplify activation. We consider start-up may be more
common and more time-consuming-sensitive than shutdown process.

Do you think it's all right?

Thanks,
Shaokun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
