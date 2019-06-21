Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F334EB7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QAd7FsZ0+5Ygw8MjLuooC9hYjV/lHa+fmWHPLpcplM=; b=EdNAWZyA7hxRKe
	dBwBSYolW8yGW+CB4/66W05lu6i00C1spMl3UwDitUaDrJBOY3ourYUvD44lqGvJaiehQA3hXzpmC
	CrZXyA9O78e2wEsPoltj9qu6a3/Ujk0oYKG5HYuTTNVnOkOiXOBq9StLIjSHj7O6mHW1rx673NB4t
	CVsMMj0TQKb5+WEEp8nH7CmTZz1s+ITMA2y6FPObkeqPO9LuMS7a18Xuarg6hoJWYACGzF1gJJvvE
	7t6BGaEAc+A+l3Kl5imh44+JKLH43QbWy9ftqldfohZiu2Y/l4ChAHhYS8+4eWiFclrrOiP8QIonn
	2lF1hF4hzpF11bzLTbBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heL49-0004ww-UY; Fri, 21 Jun 2019 15:03:02 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heL3N-0004V4-8p
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:02:14 +0000
Received: by mail-wm1-x32f.google.com with SMTP id v19so6929227wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 08:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/Rd2PAyUJ2O5zWZ5mRDhrORHn7YMDVVllcAtfcYyO9Y=;
 b=qkzcw+DBg4F65GG5CBzhE2kFEXltIBBgro7lnujd5xnKoqmTFbNPF3FEjZ/Ysal7PI
 qzQoQl/Of3h8VHqP9mVvBYHk+mTHw/YCs5xV946af+ajYTquAgxCrEGPZCCYHmMIB8+u
 RsFi23UbPgbYqdnP6v6xUJiinrAvnCjVfFI3ZoZqWjN5bWge5Br0DQmoG975Qx7vgKEt
 SrHILEFZO1NyEpAGP2C1uCD+2NMyUJPzQMyi9W4vszvmjsPdNDDYmggT88WzjMz4ni+w
 Jnyzd85rAbjeIZ782eTkIrHnK8iLV85KSVLUwnn9WQANfSvX7GuZGQ+PwA+eCZsSkjUW
 mukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/Rd2PAyUJ2O5zWZ5mRDhrORHn7YMDVVllcAtfcYyO9Y=;
 b=g6YZe2Dx1twVovJ+2/Ta7JtFepLrWyXtN/Jk39VwTsDz28+VbjFL7fGRYaQlxIG/0F
 VKH4IkSTpWLQuGysATgEPuj9tOQu/HcGYeeCx1CGS7vVS1rUJFGQ14ttDzld3CK+ah/p
 dAZDFK7NC5+uNvoaYEcREets33AZqEkZXM20cs4F8LVDrN4G2qBv52g5/DxgGUgVxvy/
 GUd0v2gXxV5eCoO41SDkBOGJFNuqLvwJf5xRUqu/T7bF6w7SSegk2HykjkEoJuDMIVju
 Gx/aciD8q/GSYYHJFIegdvpu7rKF9Z1/pJQMTPC2/pViXGR4zZ6ApDdtfMLmM8d01tUS
 uN7g==
X-Gm-Message-State: APjAAAXIBitZckiRdKvOmqicUpnSR0c1UpYg6nZe48/FLT3r56NqiYbr
 LIK3ew5ke9wVw9IqJRqTC1w=
X-Google-Smtp-Source: APXvYqy6vim3i1nwgqyIKgviYV8rTnVgZwhbzoejz/yJ01k8iOhM94+mPSfDJGXKzGYGQFh+Ez61RQ==
X-Received: by 2002:a05:600c:2182:: with SMTP id
 e2mr4428799wme.104.1561129331491; 
 Fri, 21 Jun 2019 08:02:11 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id o6sm2913937wmc.15.2019.06.21.08.02.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 08:02:11 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 3/5] soc: tegra: Changes for v5.3-rc1
Date: Fri, 21 Jun 2019 17:02:04 +0200
Message-Id: <20190621150206.19037-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190621150206.19037-1-thierry.reding@gmail.com>
References: <20190621150206.19037-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_080213_316537_59B5246D 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.3-soc

for you to fetch changes up to 7ac13f6dcbd59b8f99395588cd7ef31f7e3bd3c6:

  soc/tegra: Select pinctrl for Tegra194 (2019-06-13 10:44:08 +0200)

Thanks,
Thierry

----------------------------------------------------------------
soc: tegra: Changes for v5.3-rc1

This contains a set of minor fixes and cleanups for core Tegra drivers.

----------------------------------------------------------------
Krishna Yarlagadda (1):
      soc/tegra: Select pinctrl for Tegra194

Thierry Reding (4):
      soc/tegra: pmc: Fail to allocate more than one wake IRQ
      soc/tegra: pmc: Avoid crash for non-wake IRQs
      soc/tegra: pmc: Add comments clarifying wake events
      soc/tegra: fuse: Do not log error message on deferred probe

 drivers/soc/tegra/Kconfig           |  1 +
 drivers/soc/tegra/fuse/fuse-tegra.c |  6 ++++--
 drivers/soc/tegra/pmc.c             | 18 ++++++++++++++++++
 3 files changed, 23 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
