Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8024F7DB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 20:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ki1Jcko5FCIvdEwO2RLrwfp8h1KZOcuwOKfi+a8HtWU=; b=VWbf11JDuQkOFV
	AgEeyrDispQu6qtOS/O6oIComUmtTj6cvLvTf+8POE7w4r5YqeP0JVGxSFfukz+4vUgI9eHTcjyhz
	DggDG2+a/9yduKgd3Rbqjj+a8nFi+u8H95GDCQQVcwkYjAhQRm07TVFEFwHc6uW9bgGHX5E47Cht3
	heTPP6Ts0cRIUe7EzHhOPIJrSK0JV4xvPoWswigYMylJ9hdJsVamjr0G6khzYZ9nsj2QMHmHAOjKL
	FUqIGdwsL/BBOZocaLhEM4g3c+XQbRfLZfJMqxfDsaw+yW6G8pJEijHZnNUMOJaBjXZ4OLLwincnt
	PxsRUpQ+3P2XPbarshUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hel9H-0000gz-S4; Sat, 22 Jun 2019 18:54:03 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hel94-0000gd-Vt
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 18:53:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2lRkCjp8fvSiX3LtgZTt1WFMSmyzZh+b7YCWGtUyRSY=; b=FmQZjLAZWT+ZujCrK+8nEXKKiQ
 uOB86sg12LkLG2zSdq4DE7J2Z/1gDFQcBSMh8L10xpTidHsNFR6jhgxOOKlXshUMb/dikdJhLJRCV
 ulnCBOsKSPivs2s+lS5saAe71/eiQkA/VcQR2Rjg2wUkax3s+hyOhNt3Z+qL5GEDKYNs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hel8w-0003Vw-H7; Sat, 22 Jun 2019 20:53:42 +0200
Date: Sat, 22 Jun 2019 20:53:42 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
Subject: Re: [PATCH/RFT] serial: prevent armada-370/xp uart buffer loss
Message-ID: <20190622185342.GF8497@lunn.ch>
References: <20190621062920.16691-1-joshua.scott@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621062920.16691-1-joshua.scott@alliedtelesis.co.nz>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_115351_191216_D3EB0544 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> The question we have is, should the fix be applied to the common
> armada-370-xp device-tree, or should it be restricted to only affect the
> SOCs listed above.
> 
> If anybody is able to check, we would like to find out if the issue
> affects other armada-xp / armada-370 based SOCs.
> 
> The issue can be reproduced, if logging in using the serial port, with:
>     resize && echo "hello world"

Hi Joshua

I tried this test out on a Marvell 370rd reference design. I tried
both 115200 and 9600 baud. I repeated the test maybe 10 times at each
speed. No dropped characters.

       Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
