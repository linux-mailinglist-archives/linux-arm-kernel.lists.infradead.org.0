Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10308131D8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 03:23:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dAsZrks95ov8AV3g06IfQacRepwURfb6doXaaVhp8Ps=; b=QF9dFmgH/vo4TV
	p7T1D2aRiI4x9zMOPoYBPO0r+jSpW9aQMRYWH8xO/8tGXJwkvRyVpZUQRJprjnIWniVkbEjOiZa5T
	9xLNGhRXJL/d0NyfDSynKm+WlZ40Z51DTQ5ZyDlqEXylhXkvYHJdS/O+Q68Va0YPlh5xbKiJ73CEL
	I5is37bhhDvMs4sO19LeqJJmRt4kMM70mli3gT9kDgnm8E5Qxk85gOdxg5XeZfVV766mY5fb5q9pX
	CM8/5ScncyslXZtjoqAc1Mn3j5CgNTlru3IS/8QBjls+4FD2f0n44ZJSvfFFmv5sAcbUTWXFZ4xoc
	iXfgjwCkOWmIOY76VuiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioeWY-0006mV-Ab; Tue, 07 Jan 2020 02:23:14 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioeWT-0006mC-3I
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 02:23:10 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 06F32159E228D;
 Mon,  6 Jan 2020 18:23:01 -0800 (PST)
Date: Mon, 06 Jan 2020 18:22:59 -0800 (PST)
Message-Id: <20200106.182259.1907306689510314367.davem@davemloft.net>
To: Jiping.Ma2@windriver.com
Subject: Re: [PATCH] stmmac: debugfs entry name is not be changed when udev
 rename device name.
From: David Miller <davem@davemloft.net>
In-Reply-To: <15aedd71-e077-4c6c-e30c-9396d16eaeec@windriver.com>
References: <20200106023341.206459-1-jiping.ma2@windriver.com>
 <20200106.134557.2214546621758238890.davem@redhat.com>
 <15aedd71-e077-4c6c-e30c-9396d16eaeec@windriver.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 06 Jan 2020 18:23:02 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_182309_137694_3210D7E4 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jiping Ma <Jiping.Ma2@windriver.com>
Date: Tue, 7 Jan 2020 09:00:53 +0800

> 
> 
> On 01/07/2020 05:45 AM, David Miller wrote:
>> From: Jiping Ma <jiping.ma2@windriver.com>
>> Date: Mon, 6 Jan 2020 10:33:41 +0800
>>
>>> Add one notifier for udev changes net device name.
>>>
>>> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>
>> This doesn't apply to 'net' and since this is a bug fix that is where
>> you should target this change.
> What's the next step that I can do?

Respin your patch against the net GIT tree so that it applies clean.y

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
