Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB3A1E366C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 05:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmH9MClIZO29Ki3sGj9E0hI+HJ7SH2EE70BjRpWwNg4=; b=uJ2q7eJayL7DBu
	F7oMpLQgKPvYu0JqKxlKExxql3Mq+7Mtdzl/BxBqSDgLIrrWoVslrnYoVjXj2CFIB39tAW2Wwai8A
	H+9A1f046/3gwv7A+5rlnua28FJ/ltn+PaW+TzALam37NwwGKVfxIpkb0artOUYWJIYjiMD5QZLrI
	aVfKwrJJ77WvMhDZVgL2WXYYGVe1B3af8peKa/nRlstZQymwgAmCiiGpVkGiHOqFqZ3blStDPVxMz
	yTKI/2U5J5LEY5qidfzgR8L4UPDIFiCS3KE4y4nh7RV8UBOyMVrcqRqfz+LboeQxHBkzZztAG/SsH
	gLIGTpVZOAcH8k4GPP0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmdV-0004p7-CN; Wed, 27 May 2020 03:21:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmdK-0004oT-OO
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 03:21:35 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 449D5207D8;
 Wed, 27 May 2020 03:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590549694;
 bh=0HJqmsukxEbasVpB0fF6u+rD8B57992xBAQgVKu4vos=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Mi2ISsnNU9VRd0oVowT29uMrvDgoQXlh6ejF5wBU8G0zam7mydG3ewqR1VOzSQzje
 CCTsde1bR3zcyIiv1CxVKQINxSi76uvVOOWps6OFskQGFjDsTzP7jatk3KVMu+tU2Z
 E5QEZxQnhI1T1+ni/FYMwVrT9td1xl3m7trLemxY=
MIME-Version: 1.0
In-Reply-To: <20200515142720.290206-1-codrin.ciubotariu@microchip.com>
References: <20200515142720.290206-1-codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH] clk: at91: Add peripheral clock for PTC
From: Stephen Boyd <sboyd@kernel.org>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 26 May 2020 20:21:33 -0700
Message-ID: <159054969349.88029.10932617999893578868@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_202134_811437_A157CF5D 
X-CRM114-Status: UNSURE (   5.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alexandre.belloni@bootlin.com, mturquette@baylibre.com,
 ludovic.desroches@microchip.com, eugen.hristev@microchip.com,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Codrin Ciubotariu (2020-05-15 07:27:20)
> PMC generates the peripheral clock for the PTC.
> 
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
