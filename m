Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 982108CBFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GASQJAEO6YFUdju/bTyRHqWeBeN2AU5voiq7+0tl4Hg=; b=klxc6Ke9dk9bnw
	9JIOG7I5sQ6vxVHyftJ2/fGbycu5KjN7+cqPvwtB29wBfEqTXrlGJoqlOWATB/K1jPPjWxuGJzPh1
	nXa2cWt8gh+7n/5/aAAD8VFz7ivl3vix8zqsOeukWBS24v00I7DpPHWJuuW6zozuHAUq1CVQrpaEQ
	s8S8gPU5V3V/MHWcumHsHijbtjoHh5glrV95nOnddl9MY978pH/fDnMzOlVbYYj1E2AYMYlXyhOiS
	14e63ezp/KE0HNrDoIJIOfuTRe6Aun85uAWeg1teRU0RXZ+Nnwhje8P9IYFXcLZwVA8kjIFBY0L1W
	oKbykcM2K+KnvD3SK13g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmvP-0005Oj-LR; Wed, 14 Aug 2019 06:38:24 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmvA-0005Ny-TS
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:38:10 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 79DC780C8;
 Wed, 14 Aug 2019 06:38:34 +0000 (UTC)
Date: Tue, 13 Aug 2019 23:38:03 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tri Vo <trong@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Kalesh Singh <kaleshsingh@google.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
Subject: Regression in Linux next with show wakeup sources stats in sysfs
Message-ID: <20190814063803.GY52127@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_233808_996702_D40E8C1A 
X-CRM114-Status: UNSURE (   5.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Looks like commit 986845e747af ("PM / wakeup: Show wakeup sources stats
in sysfs") has caused a regression in Linux next where I can now get
some errors like this during the boot:

kobject_add_internal failed for wakeup10 (error: -2 parent: usb)

Any ideas why this might be happening? Maybe some deferred probe
related issue?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
