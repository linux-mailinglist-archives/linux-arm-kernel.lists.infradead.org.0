Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2734C3B465
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yTkxUGyc8KWgKcF9Z9ScK9Pvmx1tBBxuVcqQydkdDvU=; b=SOLupNAOD0q6sf9MULkWUNaC2l
	UnZa2ayf9TBgqBCaJViEunxV49788E/cZz5wjFG70266v9GTeNBkuyKsn4+y+tznDyn84IqdGg8Eq
	gYHNSsGImVEwpYTVZl1yjYYdiwqglpNagdei58oVx/l11KJUf1bZeZ6JDV0Xqg1wfZd0AasYIpFMr
	RA44/10dx036bRk5WsSFBLx0iUyTxE43/F99d7jZm4uMcmk3lVaHxfW8QTu/aUNAoKgvjfcv7amYO
	+hMjUV6iBMGqc+6Ywp39fmXLI8x3oh4QZ1Uz939Tsq/HKEVrcL+E/4UbiSDazVGnLdCC3zqpRy8CM
	DVKCi0cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJBT-0002HK-Lk; Mon, 10 Jun 2019 12:13:55 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJBG-0002Gg-BN
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:13:43 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5ACDagN037456;
 Mon, 10 Jun 2019 07:13:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560168816;
 bh=osAjUsWcdirwDiL6VFKp3uYcXBRHoQkePLbEhd8oePw=;
 h=To:CC:From:Subject:Date;
 b=K01tIZmpwlWUkHBndyup+SmEHWCoMTdxIZAy59z+agy8sOVLaV8Iy0rprwggndBW9
 OAD18cgsya4KcXf0HVW69ne+E7GF0QytR0xADcegLgtJXTptZjiHrcO6M4TUyRM+9r
 V+wutYy9RjBKWMUZUeiDBedmNrQybtYfXM9mfywA=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5ACDaOI082558
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 10 Jun 2019 07:13:36 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 10
 Jun 2019 07:13:36 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 10 Jun 2019 07:13:36 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5ACDY0v129308;
 Mon, 10 Jun 2019 07:13:35 -0500
To: linux-clk <linux-clk@vger.kernel.org>, Stephen Boyd <sboyd@codeaurora.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, Michael
 Turquette <mturquette@baylibre.com>
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] clk: keystone: changes for 5.3
Message-ID: <3bd8aa21-60a5-f36a-b86f-425ce4f0163e@ti.com>
Date: Mon, 10 Jun 2019 15:13:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_051342_498515_BFA1B3D6 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen, Mike, Santosh,

Here's a pull request for the clock changes for keystone SoC for 5.3. 
The patches were acked by Santosh, so I took liberty to create a 
pull-request for these also. I snipped patch #5 out of the series (it is 
against drivers/firmware) and am planning to send a separate 
pull-request for this, or alternatively agree with Santosh how to handle it.

-Tero

---

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/keystone-clk-for-5.3

for you to fetch changes up to 3f1f22d8009035a641a359a09239bcc6ffac7bb9:

   clk: keystone: sci-clk: extend clock IDs to 32 bits (2019-06-07 
12:11:41 +0300)

----------------------------------------------------------------
Keystone clk changes for 5.3 merge window.

- Add support for 32 bit clock IDs for sci-clks, this is needed
   for the new J721e SoC which has a few devices that have more than
   255 clocks associated to them.
- Clock probing done from DT by default instead of firmware side.
   Scanning clocks from DT is much faster than firmware, and also we
   can omit unnecessary clocks which saves even more time. This has been
   done in the interest of saving boot time.
- Remove the device tree node path from the registered sci-clk names.
   This mainly makes the debugfs interface more readable.

----------------------------------------------------------------
Tero Kristo (4):
       clk: keystone: sci-clk: cut down the clock name length
       clk: keystone: sci-clk: split out the fw clock parsing to own 
function
       clk: keystone: sci-clk: probe clocks from DT instead of firmware
       clk: keystone: sci-clk: extend clock IDs to 32 bits

  drivers/clk/keystone/Kconfig   |  11 ++
  drivers/clk/keystone/sci-clk.c | 239 
++++++++++++++++++++++++++++++++++-------
  2 files changed, 212 insertions(+), 38 deletions(-)
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
