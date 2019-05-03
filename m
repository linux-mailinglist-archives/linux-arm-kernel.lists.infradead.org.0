Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC0B1321B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iscr4NDtI8Q6xp19LWYXppet2Wk9CjW7J/+6SfXM8oc=; b=MAQPprVWnN7ldm
	M4uza8Z0o4guHHqgXlHRY/EK68oBh/g87Ut0T+P2s96+webQf/bVdmWxaZRK/ESulwEFqN6WYb9vJ
	mv44F3PcajKh2bJNUmFr1MMXXJmYsEYLewWU2UAEkV7LVICFDDHeMJYq6Samn4L4gW3TVpIzmnrgK
	NbnZHaWlPOFTx5SaJZV76ztLEbdV+YVLjs1am8AhhySzN7JhkpzqNqQuWlTC8YAG1v/0LvqmXroZS
	cbxAfI0noEKdIcBjOChuzXMXQZcjpRzS/Y8T3EttDhIARmx7aiJISGxFr/lMfXd/j7V8dOpZVwXqD
	tbdsXbAxfAiEYeAXUbrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaxV-00015D-Jw; Fri, 03 May 2019 16:22:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaxN-00014m-Du
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:22:42 +0000
Received: from localhost (unknown [104.132.0.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E555420651;
 Fri,  3 May 2019 16:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556900561;
 bh=OF5ce0CgPYoRrlJQIiLHhqaO8z0/x5yTLqq4lE6iNdU=;
 h=In-Reply-To:References:To:Cc:From:Subject:Date:From;
 b=0RoKFWqX2evkTLZibUmSzAMJukPM6mqxSOwoxlLWf/fdwhecd0cg0M+NBcGDjeZM/
 ay21pEUQo7A9+0choeMNiSM9TTLfhbxDpxsQAeoovhCDrTzbwZWlwQk0ztjNiEHTML
 jC4Q62Ggl4hl5YhQfti/vhK+EnRYBoo0/gcOu1Rc=
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1905030937270.3572@hadrien>
References: <alpine.DEB.2.20.1905030937270.3572@hadrien>
To: Julia Lawall <julia.lawall@lip6.fr>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [clk:clk-parent-rewrite 18/78] drivers/clk/clk.c:371:11-16:
 WARNING: Unsigned expression compared with zero: index >= 0 (fwd)
Message-ID: <155690056016.200842.251435349483915088@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Fri, 03 May 2019 09:22:40 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_092241_481312_558BD37F 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Julia Lawall (2019-05-03 00:38:12)
> On line 371, index is unsigned, so it is always >= 0.
> 

Awesome thanks!


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
