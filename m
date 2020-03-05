Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6185617B1FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 00:00:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VUJxmkVOJIoGeHvchDjSN/z19yOgrdt56VVr1Rsgy8=; b=KMpNJTluPz7kgn
	i2Xe+JEKWsqnp28zFrGObHqzo50HAcASNDe8l7mxyNC1vu8qP4zuOthE88arDQEceuwdBvVEUj8s+
	nfVSI412ZKaVcPUENHzXZMqLufDjk4mw9joNstQVz6l3ysRPKsZQObFeFgQFnj9WH5Dxx89ttS37x
	qVR+5FjkKrBv0Qal20cKInc2vsPU0LBcGa8c7lPh+hlACj7zyGX9qjgc61LYsLxIhA9TmGl+jcEiX
	wqo+DufGHPpc56MMuZbA4PCDUz4zblsnrwRRbZi+E8DugcwBchpIUdIL4W5Nobe2ODA1zN3O/tVp/
	DTqU82j3KyXVNIEdhDSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9zTM-0004gm-Vr; Thu, 05 Mar 2020 23:00:09 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9zT0-0004eE-GY
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 22:59:49 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E2D0215BF42F3;
 Thu,  5 Mar 2020 14:59:38 -0800 (PST)
Date: Thu, 05 Mar 2020 14:59:38 -0800 (PST)
Message-Id: <20200305.145938.2059614345989381629.davem@davemloft.net>
To: tangbin@cmss.chinamobile.com
Subject: Re: [PATCH] ethernet:broadcom:bcm63xx_enet:remove redundant
 variable definitions
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200305122259.6104-1-tangbin@cmss.chinamobile.com>
References: <20200305122259.6104-1-tangbin@cmss.chinamobile.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 05 Mar 2020 14:59:39 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_145946_566523_0C1C872D 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogdGFuZ2JpbiA8dGFuZ2JpbkBjbXNzLmNoaW5hbW9iaWxlLmNvbT4NCkRhdGU6IFRodSwg
IDUgTWFyIDIwMjAgMjA6MjI6NTkgKzA4MDANCg0KPiBpbiB0aGlzIGZ1bmN0aW9uLKFyZXSiIGlz
IGFsd2F5cyBhc3NpZ25lZCxzbyB0aGlzJ3MgZGVmaW5pdGlvbg0KPiAncmV0ID0gMCcgbWFrZSBu
byBzZW5zZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IHRhbmdiaW4gPHRhbmdiaW5AY21zcy5jaGlu
YW1vYmlsZS5jb20+DQoNCkFwcGxpZWQgd2l0aCBTdWJqZWN0IGxpbmUgZml4ZWQuDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
