Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BB119F5A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 14:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4gDeHXYc8fLeqj38V6kak8HoVZgtNKx0kH/D4ux8VzA=; b=g8p8sx/srxwHSV
	nYOWHDvlkeALuwTqzK6Y3O2NKdhLMdFPA+mSx508lTHznJZDYflzJJ1x7h6ATHbMc1UZEVrNRFWTu
	5bu1DBLWCPgcjWvCuztG8ii8r419S3ts+2M+lU3eVXl9zy18MlHeXPd4Nd7cO4WYBJIQ/F+436t85
	tqj17+ular1HhMvXom0wUaIkG0CV/D9t+sNp1+uosn8LheL7lmMLaGozrhWPiDsiHjSQRZqR3OEuV
	ATpwpJAJGz24bHSKw15IT1YcoGdd3HMvpIZzCj9xc0c45+8X2ynbHqSuVHUHQ1tLOH51hT0CvXCDt
	V41dYu6oWe4B4FfyAqNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQcc-00033k-8S; Mon, 06 Apr 2020 12:12:58 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQcQ-00031z-7b
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 12:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586175164;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=UJEUxj0jwmvFbSWzcQzQQawOJWE4+NTuqlw2Od/YYEY=;
 b=WRKdncNT2ioFYRJIhQ+rkYmlvVnwlfgma3Hd/7dOmhgkMUm4x5b8axIgPDW8iaOq0K4ltZ
 XvYARekU3qVcsCaZU9yNFF/k8TTWKNZYrHABCWOQUbubb9rN6Jxq0ZVnDF8q2KNH7/M8F+
 DWxHbkmjkQOPcq8FmJXgrNpsH4Wt2uk=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-233-NeBTpSl2PBWoUy9lJh2UjQ-1; Mon, 06 Apr 2020 08:12:43 -0400
X-MC-Unique: NeBTpSl2PBWoUy9lJh2UjQ-1
Received: by mail-wr1-f71.google.com with SMTP id q9so1154628wrw.22
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 05:12:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=SPcP2t8lgIVNaWgLkTC+5LiUSA3IkB94hHSuyx8Ua+A=;
 b=C4e7OFS9xyicyxxxfH03Oxzkf2mfeEY1Z1HXc/bwMRLZadY3FZuIj1hutgE8YwWYbk
 /VctP86aGTsHKRCxfBNAX7lcnMPpF0fAj5trTA3sNdLWQNpWiIHYfr0tqzNV9Mq0QVdJ
 ADS0KsVfwuYx41pQDkcGoRjDj+FJotiYWj6DYxWzhd8tVRBkG9GmuHdRSX2dfbYvvqHD
 awch4gPUBzZmxSzaK/6DSjTuM12+vcVr252kSKvFmcU4wC9wOMuV3FkK2c+Ok57lrpx6
 jgWDTjTJlFkeH2brIUyeEI/2rrTP+sfGAH91xMPZjtuwDDKRUws/70Dr4rdjVNluFx7X
 peuw==
X-Gm-Message-State: AGi0PuYkmrPnYaJcXDz0LbwLySK/NW3P48QB00SLecg+db0Y2hb0Iozd
 kIQ20iJh9jNtLdwhmOAobRk+hU68nIb/Gl0J0hPS6gIFgWIQeP4E99aEait+zf9arkRUxYrzaCr
 Za/LMu+NdMzAqRCQpoJQp5JDwayfXsHn0MRc=
X-Received: by 2002:adf:a448:: with SMTP id e8mr22701982wra.238.1586175162022; 
 Mon, 06 Apr 2020 05:12:42 -0700 (PDT)
X-Google-Smtp-Source: APiQypJtoKJNCJ63tLTQ6tdgF03knUbStVYMzzh9MJmBNZHx9ZArp5aMDNwqhctJfhSn0f4QzwKBZw==
X-Received: by 2002:adf:a448:: with SMTP id e8mr22701965wra.238.1586175161880; 
 Mon, 06 Apr 2020 05:12:41 -0700 (PDT)
Received: from redhat.com (bzq-79-176-51-222.red.bezeqint.net. [79.176.51.222])
 by smtp.gmail.com with ESMTPSA id h5sm25309277wro.83.2020.04.06.05.12.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 05:12:41 -0700 (PDT)
Date: Mon, 6 Apr 2020 08:12:39 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] vhost: add kconfig dependencies
Message-ID: <20200406121233.109889-1-mst@redhat.com>
MIME-Version: 1.0
X-Mailer: git-send-email 2.24.1.751.gd10ce2899c
X-Mutt-Fcc: =sent
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_051246_366028_FCB1FE2C 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 kbuild test robot <lkp@intel.com>,
 "christophe.lyon@st.com" <christophe.lyon@st.com>,
 Jason Wang <jasowang@redhat.com>,
 "richard.henderson@linaro.org" <richard.henderson@linaro.org>,
 "daniel.santos@pobox.com" <daniel.santos@pobox.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add kconfig dependencies to disable vhost on configs where build
currently fails.  It might be worth it to go back and fix the build
there down the road.

Changes from v1:
	add patch to disable build with ARM OABI

Michael S. Tsirkin (2):
  vdpa-sim: depend on HAS_DMA
  vhost: disable for OABI

 drivers/misc/mic/Kconfig |  2 +-
 drivers/net/caif/Kconfig |  2 +-
 drivers/vdpa/Kconfig     |  2 +-
 drivers/vhost/Kconfig    | 17 +++++++++++++----
 4 files changed, 16 insertions(+), 7 deletions(-)

-- 
MST


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
