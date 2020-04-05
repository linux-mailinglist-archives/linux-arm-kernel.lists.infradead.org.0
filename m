Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF6619EC50
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 17:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAU7rog9YL0xbGQQHYZL76ISwe6hQU/zYqB8Mn7z3iY=; b=LA+3WCYsLbsfij
	8ZstMs/w0aC+1lNL6T7UHPDlRh1xJpYAUnqFA2+gH2h9ohE3AfOb35KN2JYYTFYI5exzByQ0rLWKh
	JEBDvz/WUhRZFYzjPZxCl29pcpKIgkI1bAfqxm1YHcpaDmK+wQRZlG/rdVKfaaxnkdsFUSOihMESj
	UoJbz8wrmsKzk92UUY/dpvMaE7ZjaiNZp7ugXj03ytgHZ/LKwieYWk+iXb+iGRPsysqfs/tYvHtBH
	m7SsFIAgmJ1FwqgKfWiqDeu2lLV8gGBc8TGs6/KaNk4aeQnMMNxHGMU9PQAfc7Tnk5HsiNSTQ+0HQ
	TOizvXfQw58d9ALPkS8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL70s-0004c0-G1; Sun, 05 Apr 2020 15:16:42 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL70m-0004ax-B8
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 15:16:37 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48wHLz13BFz1qqkK;
 Sun,  5 Apr 2020 17:16:27 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48wHLz0Jhvz1qqkj;
 Sun,  5 Apr 2020 17:16:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id AMy6rG1mVrF5; Sun,  5 Apr 2020 17:16:26 +0200 (CEST)
X-Auth-Info: NLuF9aOkbZJnmSpqviyCYslrsxH+gXpuE3E8XjjjeN4=
Received: from [127.0.0.1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sun,  5 Apr 2020 17:16:25 +0200 (CEST)
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200401132237.60880-1-marex@denx.de>
 <20200405144305.GT8912@Mani-XPS-13-9360>
From: Marek Vasut <marex@denx.de>
Message-ID: <38dc1697-28e3-8680-4998-74e30339a2eb@denx.de>
Date: Sun, 5 Apr 2020 16:55:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200405144305.GT8912@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_081636_531598_F0F57973 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/5/20 4:43 PM, Manivannan Sadhasivam wrote:
> Hi Marek,

Hi,

> On Wed, Apr 01, 2020 at 03:22:15PM +0200, Marek Vasut wrote:
>> The AV96 board device tree is completely broken and does not match the
>> hardware. This series fixes it up.
>>
> 
> Can you please share a git tree with all these patches? These are not
> applying cleanly on top of mainline/master or linux-next/master.

Alex asked for them to be rebased on
git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git
branch
stm32-next

So that's where they apply.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
