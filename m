Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A511F449E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:06:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZBMi0JGW6xD8ziL6JvyNRZCB4ldOCMVwKRYjFwYkIs=; b=cD0Gp4+ZokMWBn
	jS/WZTnSsXSowL6RIt69kSsGwrqatCBec6KtL5MFI0ciuuKeI8VnNiSUpqL0mo4XI4zGbrDblSwkC
	hj3WHjKe9CIYvtxOe2Lin1ueZUtLEMID0onDXR6jAki8Ozz3e48i8uMYoZsr3ldVOZtdGMKWbmDoZ
	ijNKs2QJFluFW2frtehLmlJbfGDwXdXXqel4pTctcxLz6wOz2K9GIIR6kD3atqBAI9J8rPBlgRJiX
	FqTIJx7Jup/GbvJxdbSRZtb20vhTIo94qezVLISS1coj1nwNB0JPrlQ9/Pj7sxEhsQ+j2WbmRAdUX
	HRNwY19LjnuI8KV1J4Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiieA-0007rr-6f; Tue, 09 Jun 2020 18:06:50 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiidy-0007rK-QW
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 18:06:40 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 7D1E68088;
 Tue,  9 Jun 2020 18:07:26 +0000 (UTC)
Date: Tue, 9 Jun 2020 11:06:31 -0700
From: Tony Lindgren <tony@atomide.com>
To: Drew Fustini <drew@beagleboard.org>
Subject: Re: [PATCH v2] pinctrl-single: fix pcs_parse_pinconf() return value
Message-ID: <20200609180631.GS37466@atomide.com>
References: <20200608125143.GA2789203@x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608125143.GA2789203@x1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_110638_908455_AFC41478 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Robert Nelson <robertcnelson@beagleboard.org>, linux-gpio@vger.kernel.org,
 Jason Kridner <jkridner@beagleboard.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Drew Fustini <drew@beagleboard.org> [200608 12:52]:
> This patch causes pcs_parse_pinconf() to return -ENOTSUPP when no
> pinctrl_map is added.  The current behavior is to return 0 when
> !PCS_HAS_PINCONF or !nconfs.  Thus pcs_parse_one_pinctrl_entry()
> incorrectly assumes that a map was added and sets num_maps = 2.
...

> Fixes: 9dddb4df90d1 ("pinctrl: single: support generic pinconf")

It would be good to get an ack/tested-by from Haojian for this.

The patch looks right to me:

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
