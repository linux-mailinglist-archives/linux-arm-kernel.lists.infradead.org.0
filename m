Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38176424D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C3zKp4f32YoBQlzlLaoL8cggx15pnmICeSzg7G3Pbs0=; b=qwgRjwBfHLJVlcEpKC72jUmMm7
	ABCKEO+8ASaudP7xcna4fYWX5xBHKOHe++6FVK8Bqzal7qP+w/BJZHHuc7VuwXKwJDRR07PENxb5C
	7j+BLhTjDcK9z/PtVuz6xx0OqKi78CaGjRNmO9pf19wKGtdwzI4mYVqW6mJCHIwFosAvCFbjkiJRU
	TEZGCwjSif5S0k21WqlhfigiM/+JAsKgF512+xC1rNEZpsdgUj3GZrFcC6zAmzJWbvsgkiO/h6jJN
	Vo8/TEzkCKfbWu2JyrMw/rGsg8/DGAaIX0ATMIHw1IXOexCLtPhbwIvMA8HWp1iciGphiOx+nkx19
	ZoQRUtZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1rk-0000k5-CR; Wed, 12 Jun 2019 11:56:32 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1rZ-0000jT-Uz
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:56:23 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5CBuJgk018223;
 Wed, 12 Jun 2019 06:56:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560340579;
 bh=8UHFs7k6sfh7C8n9f+bbb2RVJXSDiiSPoC5uEcos7Yk=;
 h=To:CC:From:Subject:Date;
 b=rbTp5I2LxEXPbmL5p/xR2KFkpLMHaQsrB1Fuw42DZf8qTV2jeZygCkN8Q0ZTYqvrT
 YUS63y0oykoK7EeSVnl+LxbNhcL7iee/S/R4vsKCnYnGzKpyqKbQRMlqJjBF0wOYFh
 q4vRBOuzTswIMZ5dxo6ufNG2lX03Wd7sCZzbjxGk=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5CBuJ5N001201
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 12 Jun 2019 06:56:19 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 12
 Jun 2019 06:56:18 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 12 Jun 2019 06:56:18 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5CBuG5W012747;
 Wed, 12 Jun 2019 06:56:17 -0500
To: linux-clk <linux-clk@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, Michael Turquette
 <mturquette@baylibre.com>
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] clk: keystone: changes for 5.3 v2
Message-ID: <1deb7a85-0859-54f1-950a-33de3a08f9fd@ti.com>
Date: Wed, 12 Jun 2019 14:56:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_045622_086656_C985B90A 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Here's a 2nd take of the pull request for the clock changes for keystone 
SoC for 5.3. The only change compared to the v1 is to add the required 
drivers/firmware change in. This avoids the nasty dependency between the 
pull requests between the clock driver and firmware driver.

-Tero

---

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/keystone-clk-for-5.3-v2

for you to fetch changes up to 81f4458c9c6998fcd37c427d16d76d4dba65d015:

   firmware: ti_sci: extend clock identifiers from u8 to u32 (2019-06-12 
14:45:00 +0300)

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
- Also contains a single drivers/firmware change which needs to go in
   via this pull-request; to support the 32bit clock IDs.

----------------------------------------------------------------
Tero Kristo (5):
       clk: keystone: sci-clk: cut down the clock name length
       clk: keystone: sci-clk: split out the fw clock parsing to own 
function
       clk: keystone: sci-clk: probe clocks from DT instead of firmware
       clk: keystone: sci-clk: extend clock IDs to 32 bits
       firmware: ti_sci: extend clock identifiers from u8 to u32

  drivers/clk/keystone/Kconfig           |  11 ++
  drivers/clk/keystone/sci-clk.c         | 239 
+++++++++++++++++++++++++++------
  drivers/firmware/ti_sci.c              | 115 +++++++++++-----
  drivers/firmware/ti_sci.h              |  63 +++++++--
  include/linux/soc/ti/ti_sci_protocol.h |  28 ++--
  5 files changed, 362 insertions(+), 94 deletions(-)
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
