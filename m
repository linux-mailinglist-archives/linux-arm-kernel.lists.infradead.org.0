Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1338666783
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 09:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7IhX4SKt2nPEOBeF2ONqFBr327VR4++gk7nz3n6B+VA=; b=ePElBCS945kYf8kPGwByKfpqKN
	K34iQar2fXWH1pxDOX5eAYQftbBBdr9r1iryb9bzqmUVhax9adktsz2rYNdgT/YvgZeC+EGN+pNoq
	5KxrLhIF3YbOqvQJVNL+90YcKqXagktsI/P/9+ujy/ykSE89M9GV6AxDMz6cCrpcgXyJIP0qh4ZtC
	gxu/wEZGBgx6+yMefOHun3PBQ/+dEl1fB4T95e3jDZ5uJnd5r92aghXtoXr93/idAauULCa0RrJVt
	G7CXiuu84khOSibhoDKmF1eY8Rlca4HXwI3VR1GDxKddBDlk3vtwUFSGze1P8u+szjgdNHpjU68vB
	tLCBPyAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlpkH-00068S-SB; Fri, 12 Jul 2019 07:13:30 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlpk5-00067G-6G
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 07:13:18 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 228A1C7B75CD3A77FB1F;
 Fri, 12 Jul 2019 15:13:06 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Fri, 12 Jul 2019
 15:12:57 +0800
To: <kvmarm@lists.cs.columbia.edu>, <linux-arm-kernel@lists.infradead.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Subject: KVM: arm64: Update kvm_arm_exception_class and esr_class_str for new
 EC
Message-ID: <e6e8cd90-d309-7f1a-c8d1-85aa03fe0dfb@huawei.com>
Date: Fri, 12 Jul 2019 15:12:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_001317_497929_43E16FD1 
X-CRM114-Status: UNSURE (   5.22  )
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
Cc: marc.zyngier@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I noticed that we've added two ESR exception classes for new hardware
extensions - ESR_ELx_EC_SVE and ESR_ELx_EC_PAC.  Should we also update
"kvm_arm_exception_class" and "esr_class_str" for these two EC, which
might be useful for debug in the future?


Thanks,
zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
