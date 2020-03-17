Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334071879F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 07:55:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=025wMqccEIBM4Du6Iq4lXlH4oUEQhefbBSzK0rpK+Vo=; b=FDYPVv0SrmTd/U
	hG5D71LatDgTjPi8cSbEjss4Hm73HZToIJB93Fmb+dE0QWHRBKjlzXWadC5Egi08UbZ61m5I3ohwK
	mzM1vfx9uefU69XBuOadH2/7xzpSMasSW3PWc4ydUYJnNp0ndQh0R1b0KW/jK9rUAvyQ2hrRlhPWj
	JmX19A4A0DLQvhS6IH0JM3xzf1R/8s7IaaQvVjTkjr7vRCnBDPJZB/1dzhHML25is9e2evfnr6j+A
	JhZa1dDE7ir1WPYrFlzN7yPu/ky7ZgNS4gALk4ozsf4J9kTBl7xIJ8qnwT5K2PR8cqxgQBNYN6vaC
	Mzzek9F9XF/Yn4WLtrzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE68N-0003jG-T7; Tue, 17 Mar 2020 06:55:27 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE67w-0003WG-0k
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 06:55:01 +0000
Received: by mail-pf1-x449.google.com with SMTP id h125so14744930pfg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 23:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=cF0mn8RFp/NzGOPpgquFoVLhCbRSN6dQrHYHqFzbKxU=;
 b=qLUq4/RNPb7PhrgnudeQu/ls8asTv9i4YDOfr3NggSvcNYi4UxSfYMit8S1WUgfRKZ
 hZbbZQPFLrVYc4w+L0UZzkonnR+9Rm8+cgeDoLy//zUl/eEx1tyOtsRTwwk0IC1GmMk5
 7CS7xqEvKVY1hdXlUYzYVEQFG7dy5X2lR4whv4tssypZlespqwDBYf2ykgBrHzGRsoWw
 KSyWF/LIwFFvygdQi7hxsX3du+o+gHjUR3p65oe+tr2Bc5ohTBv5n7uD892DON5VSkoX
 pinFPh3FrUqi+8QXt/ZEbxdi0FQwUvd8TPga7GUwJMefUnNRxfnPnWu3NX9YAlqNlHUu
 10hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=cF0mn8RFp/NzGOPpgquFoVLhCbRSN6dQrHYHqFzbKxU=;
 b=XhfkGQgn8murdTBzfMDZjtdNHMpqGyJS4AuZSmvy5qpCnGZAex5B+LOd2uuxLfVMeo
 mRSjsQCmo/4EDDKxU1wdnBnG2oPCbDVe6Ekf8b3r//M93I7w2W28owu54cPYPdWCx9uR
 2UvGdFAHsNaV3tqSsBTWqDFofee6Z1g9LwXWHM/Sb0tGL7h0ORUqALm5edAaJufutzKI
 hF7jhl5wtLDLHamCkDx9qgBaXiAugKgz3cNOdYH/M7pgl6ZPfeh1RTecBsf5FbnlP48N
 F3d6EtNUig4kS5M3e8ivfJWB76Si8pwNbWnOO2zvcNY37rv8tJcwSGRnhlua7LgToatv
 8xcA==
X-Gm-Message-State: ANhLgQ1C3LS+kB250oYfS46N/LVIofVbLRSf2pO+4hYeX2UKsf6vi1Dt
 +fBTxeAEkcBj7GmwjAsYiO45ZXnL3ZIyViw=
X-Google-Smtp-Source: ADFU+vt2Zvqf1px/Dmb35lmQnUB5JpW8RvY7l95YZat6XfupQdXF2UMeOYFTa4BNyZ32vltscuYTU3kAv+PeRtc=
X-Received: by 2002:a63:8342:: with SMTP id h63mr3660917pge.141.1584428098211; 
 Mon, 16 Mar 2020 23:54:58 -0700 (PDT)
Date: Mon, 16 Mar 2020 23:54:46 -0700
Message-Id: <20200317065452.236670-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v1 0/6] Fix device links functional breakage in 4.19.99
From: Saravana Kannan <saravanak@google.com>
To: stable@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>, 
 Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_235500_085621_3CC0937F 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As mentioned in an earlier email thread [1], 4.19.99 broke the ability
to create stateful and stateless device links between the same set of
devices when it pulled in a valid bug fix [2]. While the fix was valid,
it removes a functionality that was present before the bug fix.

This patch series attempts to fix that by pulling in more patches from
upstream. I've just done compilation testing so far. But wanted to send
out a v1 to see if this patch list was acceptable before I fixed up the
commit text format to match what's needed for stable mailing list.

Some of the patches are new functionality, but for a first pass, it was
easier to pull these in than try and fix the conflicts. If these patches
are okay to pull into stable, then all I need to do is fix the commit
text.

Thanks,
Saravana

[1] - https://lore.kernel.org/stable/CAGETcx-0dKRWo=tTVcfJQhQUsMtX_LtL6yvDkb3CMbvzREsvOQ@mail.gmail.com/#t
[2] - 6fdc440366f1a99f344b629ac92f350aefd77911


Rafael J. Wysocki (5):
  driver core: Fix adding device links to probing suppliers
  driver core: Make driver core own stateful device links
  driver core: Add device link flag DL_FLAG_AUTOPROBE_CONSUMER
  driver core: Remove device link creation limitation
  driver core: Fix creation of device links with PM-runtime flags

Yong Wu (1):
  driver core: Remove the link if there is no driver with AUTO flag

 Documentation/driver-api/device_link.rst |  63 +++--
 drivers/base/core.c                      | 293 +++++++++++++++++------
 drivers/base/dd.c                        |   2 +-
 drivers/base/power/runtime.c             |   4 +-
 include/linux/device.h                   |   7 +-
 5 files changed, 265 insertions(+), 104 deletions(-)

-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
