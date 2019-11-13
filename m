Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B1DFACC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=miiMVRJ96xKlbiUOB2UG0jTqAFkmrocbqH20Fq6Jgs0=; b=BefoGSzOfpGaWp
	yEePgywSwyOmx7Uj7a2y6sDqyQjS/Kp5/Db+XQ+sKKGwc3hLvYnsvfTY23z51pCluw5BFswYC+m0f
	jEqpt5Ip0B+YaxJQl4RV31LYzDbTDpFT/Mdeplwq/3tjmVMf0CQbZcsZv5X60Nd+jztA7A6maGGP4
	n6jEb8TJXLuxBmxUkklYsXc3S5hENB7sU/vqZyqgMYnGGbwj60wEfukHvoAeRqM5a46oVifgBsNY6
	vSEd0C/hHDzKUNSVjDjml2fFMmcP/NMJwVInlSpminhBDIfmJnTIDv4b9D6CPOyikk70UOHbe41ou
	pYePdDgdogaIHERffXDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUoqN-00062v-N2; Wed, 13 Nov 2019 09:21:43 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoqC-00060g-Rm
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:21:34 +0000
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id 0571F7CB0A4E0E6C9A6A;
 Wed, 13 Nov 2019 17:21:20 +0800 (CST)
Received: from dggeme708-chm.china.huawei.com (10.1.199.104) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 13 Nov 2019 17:21:19 +0800
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 dggeme708-chm.china.huawei.com (10.1.199.104) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Wed, 13 Nov 2019 17:21:19 +0800
Received: from dggeme762-chm.china.huawei.com ([10.8.68.53]) by
 dggeme762-chm.china.huawei.com ([10.8.68.53]) with mapi id 15.01.1713.004;
 Wed, 13 Nov 2019 17:21:19 +0800
From: linfeilong <linfeilong@huawei.com>
To: "vincenzo.frascino@arm.com" <vincenzo.frascino@arm.com>
Subject: why no stack protector for vdso
Thread-Topic: why no stack protector for vdso
Thread-Index: AdWZ9O391ypNS57fRKuRljq1huUMLwACbOKAAADHcXA=
Date: Wed, 13 Nov 2019 09:21:19 +0000
Message-ID: <9711d978b96f4e18b684f91f90397c13@huawei.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.173.220.147]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_012133_072461_6689A309 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hushiyuan <hushiyuan@huawei.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Frascino,

Can you help me to know why there is -fno-stack-protector in the Makefile of vdso?
I wonder if we can delete it, as for safety requirements. 

Thank you

Best regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
