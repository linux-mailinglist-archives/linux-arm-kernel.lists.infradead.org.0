Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A131133514
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 22:42:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZA+cFjW8aA6ZDjSJ2uEYNJWfaC71HUJPR8TuwKk2DGk=; b=K9BNCn6ITv5eWO
	YbNixFZ5QH0WQyvRCtV6l/ezJaib65qZGKLy+yIKXPd6PkEC+hU3QUNxsiatbKxFtLHs+BeKLMWU2
	9Xpin6RsJ53ZKL3xQzRg4NMCQ1tfhuzOLo6JTtQ4vTpKogjF5dci2IRny5lWxOUiHiqoZFEhE0mI5
	J6tgSoA50FesEf+YZqO1Ubv1ZzYGyJgzFYJtUS9zduW/e63fSj6vZQu+5Ucn0IZIj+3B1waGShB5U
	um9IuXsT5BVqVYyS8nf8ScU1HklttUHr58JgKVOAMwDclyMbT4Tq7/QkMJia8eFw2jtDpD4dJCsTQ
	c/shRAT8bY/zqSPiI8nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iowcT-00049r-TY; Tue, 07 Jan 2020 21:42:33 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iowcL-00048v-7a
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 21:42:26 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9C97B15A17458;
 Tue,  7 Jan 2020 13:42:24 -0800 (PST)
Date: Tue, 07 Jan 2020 13:42:24 -0800 (PST)
Message-Id: <20200107.134224.1676825160556917131.davem@davemloft.net>
To: f.fainelli@gmail.com
Subject: Re: [PATCH net] net: stmmac: Fixed link does not need MDIO Bus
From: David Miller <davem@davemloft.net>
In-Reply-To: <5d4a30a5-7af5-7147-11a9-bb5ca3564baa@gmail.com>
References: <5764e60da6d3af7e76c30f63b07f1a12b4787918.1578400471.git.Jose.Abreu@synopsys.com>
 <5d4a30a5-7af5-7147-11a9-bb5ca3564baa@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 07 Jan 2020 13:42:25 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_134225_269504_0FEBAA8D 
X-CRM114-Status: UNSURE (   5.64  )
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
Cc: Jose.Abreu@synopsys.com, Joao.Pinto@synopsys.com, alexandre.torgue@st.com,
 bot@kernelci.org, netdev@vger.kernel.org, sriram.dash@samsung.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Florian Fainelli <f.fainelli@gmail.com>
Date: Tue, 7 Jan 2020 11:05:07 -0800

> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> Tested-by: Florian Fainelli <f.fainelli@gmail> # Lamobo R1 (fixed-link +
> MDIO sub node for roboswitch).

Florian please be careful not to let individual tags split into
multiple lines, I had to hand edit the second part of the Tested-by:
tag into the commit message.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
