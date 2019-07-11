Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6264366135
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 23:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8665bm9c06dE56tGu4oJl2zHpHpB8RuCd3bgWtq71WI=; b=Ug7qED4tax1uFa
	Z0lequyKrKrpCYUYieAlP54JHtZ26PkT05jDlzOkPt1hlKaMIFSYyWtGD2ZQ9xwG1Sx/p9kPZOr9t
	Hcvr4kuE8yDMxI3lS+/Ck2tEEeOH5/9t16nxIbKbPazI7FT6oxHatzpgQUkTBfdePTFyq3BgRXdF+
	sOe3kUMPLkksLS7LKuFNGvSEHRN7avFZGfh/K1YU8uz+ersVAOr7xolwgDC9Fa47/Z8XW3U8uJojN
	r1g66nN161PbQimcwWD5/inxIoLFBSTHzpB68gt0C3Q0uwV3fxjS7iqF/q+9mgbm6CKG/ekbkrvxC
	sDbrdpIr1RuzNkQ2mYrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlgeu-0006Hh-QC; Thu, 11 Jul 2019 21:31:21 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlgea-0006Fz-EC; Thu, 11 Jul 2019 21:31:01 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9B36014CFC090;
 Thu, 11 Jul 2019 14:30:53 -0700 (PDT)
Date: Thu, 11 Jul 2019 14:30:52 -0700 (PDT)
Message-Id: <20190711.143052.1773408891723438773.davem@davemloft.net>
To: joe@perches.com
Subject: Re: [PATCH 00/12] treewide: Fix GENMASK misuses
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1562734889.git.joe@perches.com>
References: <cover.1562734889.git.joe@perches.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 11 Jul 2019 14:30:54 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_143100_478657_50B61ABD 
X-CRM114-Status: UNSURE (   4.61  )
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
Cc: devel@driverdev.osuosl.org, linux-iio@vger.kernel.org,
 alsa-devel@alsa-project.org, benjaminfair@google.com,
 linux-aspeed@lists.ozlabs.org, andrew@aj.id.au, venture@google.com,
 openbmc@lists.ozlabs.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 yuenn@google.com, linux-mmc@vger.kernel.org,
 linux-mediatek@lists.infradead.org, netdev@vger.kernel.org,
 linux-amlogic@lists.infradead.org, akpm@linux-foundation.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joe Perches <joe@perches.com>
Date: Tue,  9 Jul 2019 22:04:13 -0700

> These GENMASK uses are inverted argument order and the
> actual masks produced are incorrect.  Fix them.
> 
> Add checkpatch tests to help avoid more misuses too.

Patches #7 and #8 applied to 'net', with appropriate Fixes tags
added to #8.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
