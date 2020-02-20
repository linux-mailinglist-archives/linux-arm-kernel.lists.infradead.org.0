Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 630F11655B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 04:32:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OpU2oFTDea+W9VvTJCcjsnpG5mSoc5uv3jPm2DKoWo0=; b=cHbK/b+gW8UeiZI8YqFu/5D13
	Ax4GYH8dTzSoqV8h+L9RJMcYftNS3Hrej7kJbZPSFnUqbCjt6suJM1UZqqQaGEsaVsJLu6AfoNHrw
	2OVM5DVQULxY+AsdB+2EI+d3BjS9FaFGjg5tF/LSdgtYdv6GXYyokLGcC6AngY0uXEJNx6LxtS2vd
	BbqLn+mkC/etvkANsxDAV4Al3kGBQAByQM9J+H29kzTun4el8hqHSYSjpPhJO3L59N7zrGSnfNmto
	jAWSb2QzsQ0qK6mBWobyBFr8Y5qiCnhfi68Mp/UYQ011uoLmq0Ba35MC+r7y/7Qnpy9Ejbh502AY4
	GSCiEhIWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4cZg-00050E-8h; Thu, 20 Feb 2020 03:32:28 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4cZX-0004z2-1G
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 03:32:20 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 75B2729AE35B8809BAF8;
 Thu, 20 Feb 2020 11:32:11 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 20 Feb 2020
 11:32:03 +0800
Subject: Re: [PATCH v4 07/20] irqchip/gic-v4.1: Plumb mask/unmask SGI callbacks
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-8-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <3391810f-aec4-f073-c6e9-9147b680b254@huawei.com>
Date: Thu, 20 Feb 2020 11:32:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200214145736.18550-8-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_193219_244821_32E5EF9D 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Thomas
 Gleixner <tglx@linutronix.de>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/2/14 22:57, Marc Zyngier wrote:
> Implement mask/unmask for virtual SGIs by calling into the
> configuration helper.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
