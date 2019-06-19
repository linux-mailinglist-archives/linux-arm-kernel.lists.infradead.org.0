Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7E04BE17
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/Vl/u9C1dN/HYgBBs3PyrgOPiXh71+qWXsgINmVQc8=; b=srQWwwQUdvJUEf
	cg+RmfIS7J8/PTXYcJX2hO3nKTVr9pr2GFjJ5CzntTNHOqbs5ZjLDR8OC1wSwPKhvsgTf2xWE7sIU
	Z+i1Cvsc/ZU5gp3liR7GSXAq+uz7IXGNg6gxgAm8qVVNVt3clMwHx2EV5mlM1fULtRSvyvvVwKBVF
	/iO0o/3MphKzPn5XrhjfDyQbMXwZ3yc2+eR/6OjHyhYysk8L6LtWXZUVR7ZwXsdMLgeNr+o4vypqQ
	WbWuSwvBFYhDLy9m2duVvBuEKQLcB64CvkzXzoS5gf4tzE7y/8z3hDzjxDYhYinsn54nv9bXfoReD
	d8SEAZZRM5Q+51Yaqs2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddS4-0005zj-Uc; Wed, 19 Jun 2019 16:28:48 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddRv-0005yh-1b
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:28:40 +0000
Received: from lhreml701-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id A9842B8F6A40CB58C3F5;
 Wed, 19 Jun 2019 17:28:37 +0100 (IST)
Received: from [127.0.0.1] (10.202.227.157) by lhreml701-cah.china.huawei.com
 (10.201.108.42) with Microsoft SMTP Server id 14.3.408.0;
 Wed, 19 Jun 2019 17:28:34 +0100
Subject: Re: [PATCH 6/6] ARM: hisilicon: DT: Switch to SPDX header
To: Lubomir Rintel <lkundrak@v3.sk>, Olof Johansson <olof@lixom.net>
References: <20190611072921.2979446-1-lkundrak@v3.sk>
 <20190611072921.2979446-7-lkundrak@v3.sk>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <fd8f8b6e-a9aa-7e94-8e9e-c44b466db73c@hisilicon.com>
Date: Wed, 19 Jun 2019 17:28:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190611072921.2979446-7-lkundrak@v3.sk>
Content-Language: en-US
X-Originating-IP: [10.202.227.157]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_092839_247278_55ED8192 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-kernel@vger.kernel.org,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lubomir,

On 6/11/2019 8:29 AM, Lubomir Rintel wrote:
> The original license text had a typo ("publishhed") which would be
> likely to confuse automated licensing auditing tools. Let's just switch
> to SPDX instead of fixing the wording.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>

Thanks!
I found linux-next has already fix this.

Best Regards,
Wei



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
