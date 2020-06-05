Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D501EF3B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 11:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EMUsA4KC8m74TfvnKFsXAYnhQlcGHIVyTu2JyDbgwPQ=; b=Mp0YMdHFOy1OI3mxpuw3VkW/T
	7xcgtDlKZcXpRPFXXePPIPcymR+NUR8btxBm49TTyOrxEcfLOzsGlkeWQtI7cifVaHeuLwWV+QTeW
	GuVMyxSpr2cKoVehFF785/7tIfZIhQIY7tOwOnN9/hWS8vnHLJzehbhr9gn7nnWQpK5T3vW9EIP6o
	qjA7UrFhgl7gbZYC/dL30sxf15Z1wI8QoZTOLrJtUkgU1AOJ4SCFOFA+xSxmeQzHQiHlURLpN4yk/
	1ErcC1Uvw2D9ElEDQHl/JkxTuWxCjixBt/xbAYWaYT+Lon8mlMWd765GCTarPhI+eysUWSk76AQD8
	R6lkmZvIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh8LW-00025d-Ic; Fri, 05 Jun 2020 09:09:02 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh8LP-000247-Jn
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 09:08:57 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E38BE8A2349040B75B79;
 Fri,  5 Jun 2020 17:08:48 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.204) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0;
 Fri, 5 Jun 2020 17:08:38 +0800
Subject: Re: [PATCH] ARM: imx6: add missing put_device() call in
 imx6q_suspend_init()
To: Markus Elfring <Markus.Elfring@web.de>, <kernel@pengutronix.de>,
 <linux-arm-kernel@lists.infradead.org>, <linux-imx@nxp.com>
References: <cf810c93-297c-c02c-9bba-8c3d097b8e31@web.de>
From: "yukuai (C)" <yukuai3@huawei.com>
Message-ID: <2ab2cc9f-c720-75ca-e20c-0e4236ff45fd@huawei.com>
Date: Fri, 5 Jun 2020 17:08:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <cf810c93-297c-c02c-9bba-8c3d097b8e31@web.de>
X-Originating-IP: [10.166.215.204]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_020855_809444_1412C8EF 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Anson Huang <Anson.Huang@nxp.com>, Yi Zhang <yi.zhang@huawei.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 kernel-janitors@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/6/5 3:07, Markus Elfring wrote:
>> if of_find_device_by_node() succeed, imx6q_suspend_init() doesn't have a
>> corresponding put_device(). Thus add a jump target to fix the exception
>> handling for this function implementation.
> 
> Do you find a previous update suggestion useful?
> 
> ARM: imx6: Add missing put_device() call in imx6q_suspend_init()
> https://lore.kernel.org/linux-arm-kernel/5acd7308-f6e1-4b1e-c744-bb2e5fdca1be@web.de/
> https://lore.kernel.org/patchwork/patch/1151158/
> https://lkml.org/lkml/2019/11/9/125

Hi, Markus

It is useful indeed. Although I didn't run cocci script, since it can 
produce too many false result which is hard to filter out.

BTW, I see you haver done the work already, I guess I won't send any 
patches related to 'missing put_device after of_find_device_by_node()'. 
Any idea why these pathes didn't get applied ?

Best regards,
Yu Kuai





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
