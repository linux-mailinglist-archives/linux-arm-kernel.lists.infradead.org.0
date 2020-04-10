Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFB61A3E2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 04:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mp2GoO5/lRAU4HJlcMpMzQyzaYCK4CORQ4GE+WEtNsU=; b=MV/1qoxIOZFrNHlsa+sTrPYlZp
	9K7s723fnKFH9Y/evC0qYAwI2229FbvfSzF+s3YGXiOu7EljyIwPm3M1fCYvUAgu8ZMPUk/izhgi4
	X4RL9oZXqvhZqcJ3wDs+C9agLdfLIPJSKgU0QfEHitZ4xrLPkS2vc0y+LkyIK21JSHmYvTaoP4sEP
	2Dz6H7qILKD7Z53pPUeuZufytxs+ucCUHZ7wZj4XhSilY7Fi0rzuec93/yL2PItA+kAiPf0i/dFYm
	Xct7y70JOV+Ds0JoFVS4xUWcCtCOYqzOXC2ZSGb367AwV89OBGpfMd1oXATWq1MuuwjHJcSJwirfY
	0axE8rTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMjNr-0004dH-3v; Fri, 10 Apr 2020 02:27:07 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMjNk-0004cp-Ir
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 02:27:02 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4CAA7F0BAA4467AE4D68;
 Fri, 10 Apr 2020 10:26:53 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.190) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0;
 Fri, 10 Apr 2020 10:26:42 +0800
To: Sudeep Holla <sudeep.holla@arm.com>, 'Thanu Rangarajan'
 <Thanu.Rangarajan@arm.com>, Charles Garcia-Tobin
 <Charles.Garcia-Tobin@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Subject: ACPI support for System Control and Management Interface (SCMI)
Message-ID: <52a50069-7140-b9b4-31b4-8c99e8c0d991@huawei.com>
Date: Fri, 10 Apr 2020 10:26:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-GB
X-Originating-IP: [10.173.220.190]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_192700_806551_50F8A0D5 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: John Garry <john.garry@huawei.com>,
 'Matteo Carlini' <Matteo.Carlini@arm.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, Jonathan Cameron <jonathan.cameron@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

We are working on the enablement of SCMI for Kunepeng920,
which is a server chip using ACPI, but I didn't see the
ACPI support in the mainline kernel for SCMI.

Kunpeng920 and the upcomming Kunpeng930 have thermal
sensors and other system management features which
needs the SCMI for abstraction layer, do we have plan
to support ACPI for SCMI?

Happy easter!

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
