Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C331A6ED7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 00:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YnjKUtjN2UhH+5+TBe8ygSQ60FMVhN7AK0tf+9Njvac=; b=frPvmyCA5Wl5Kj
	WpWwm8mJs1YOwxljEicHOHE4HWwutXIK1ZtML/9zVgA+P8su6iZARzJ8egCbLPi/Zsa7PbB6F7r+N
	KjiO/JDeIJo+v1QAc0tNWzWPoLT9elZPb8mFBaCjJHavIYEQldVfn7Mi7kcN2j8NtFd0whfm3K6Y8
	Vi/CTWMHWXxG0CSpYy0OzbKttKOSq8kx4r57OhgwUTX7Y+Gz/cDaLr9JK5oi7EdndkhMcyFHzrytR
	VKF0tHongxfNbET5U9x3gU21FkvPStPcRvlkyOorTZNq75L1R01UIjY86XJAYMoSMXonqeyqwhfvo
	kCLFIC4HTTcTHeauvr4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO78i-0005CE-Tq; Mon, 13 Apr 2020 22:01:12 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO78a-0005Bi-JN
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 22:01:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id v9so3743818ljk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 15:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=beTCdjD9mBgR4YFC6YHzV+CN3PBybk3lFl2C+p4DAr8=;
 b=aNqF5LQDjh4Jp0mxwWNgS0pt/uW2vrMEbddCLpbtPMleQOwSqg5qsugFI1V9mUlGbD
 ftrMhnFk9sy9a8perUPxaIuwSrshwZSYBCFSRyDKdNWeUgWDmNm1yefqEouqJQKi3aL5
 OSr7jygpgTbU0vL9lNW8cVo309JUUldgCEIjF9TdqAB6l82nP9rF9m84vLEKwNKTerNB
 ANuf7D0mn2wVK23++i23E9LAomqYnbTWPrfvgc4lBWMg6uTC3LH7DHfmVJ/mZvu+TmLt
 O+s+mBzuVH8VU1IDOnrDP8aktTHgv14DKUkOmK/6Zc84BXQNIJ5JWzQUBxJ4g5Gt3ii8
 ou6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=beTCdjD9mBgR4YFC6YHzV+CN3PBybk3lFl2C+p4DAr8=;
 b=AgBE2YReq60Omv4OoNQ6Y2L00VbESpnOReUvfZqa0x6TCMZRiK1VUMKr0TUHTtE2iO
 jhF1QErq4Qocg7Z8xf2fQzvbaj3NzbNp4CEeamG4nXl8Do8vclYmRcW1vWwaHO1wnqjF
 qYWBGQVx32m6XyEHjU49new77j0Whtj3XxNtWSbKk2ayePQVuuoAUObrk9hFv7MpUsFY
 Q9GB5DBAh8pZ/VbsdhjUx9fxqLAg2euQbhnsBgi7S2k5vnmJ03qJQVcRIcC1yHbh9ax5
 goICqvOHqf6AFL/4Q6cWOD4ZkpUK6vh1C4XvMe6TBHa+4NKYaZdrXEKs7ePcCH01g/D0
 BgCg==
X-Gm-Message-State: AGi0PuatmGC8WijINzbGoncrR39LKeKMu0SxQbjNcvzuFV3PUEy6zMF5
 irwXo6Ks4eHfeFjrh+4uHyE=
X-Google-Smtp-Source: APiQypK3XR6vxv0lxmZIgBdXP2rEtblb0MiCnDiaK3vm6MF2w9zA8bW20rxretqwoRZBcqnHTACpOw==
X-Received: by 2002:a2e:86d8:: with SMTP id n24mr4349639ljj.129.1586815261957; 
 Mon, 13 Apr 2020 15:01:01 -0700 (PDT)
Received: from curiosity (ip-195-182-157-78.clients.cmk.ru. [195.182.157.78])
 by smtp.gmail.com with ESMTPSA id
 c4sm8871509lfg.82.2020.04.13.15.00.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 15:01:01 -0700 (PDT)
Date: Tue, 14 Apr 2020 01:05:20 +0300
From: Sergey Matyukevich <geomatsi@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [bug report] armada-8040-mcbin: 5.6-rc5 boot failure
Message-ID: <20200413220520.GA25917@curiosity>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_150104_637826_EC53DC3A 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geomatsi[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russel, Miquel, and all,

MacchiatoBin Double-shot board fails to boot v5.6-rc5 kernel properly:
USB, PCIe, and ethernet interfaces are not enabled. Before that I have
been running v5.3 kernel w/o any noticeable issues.

In brief, USB and PCIe devices are not detected, ethernet PHY fails
to initialize with the following warnings:
[    2.444150] mvebu-comphy f4120000.phy: unsupported SMC call, try updating your firmware
[    2.452191] mvebu-comphy f4120000.phy: Firmware could not configure PHY 0 with mode 15 (ret: -1), trying legacy method
[    2.474615] mvpp2 f4000000.ethernet eth2: Using firmware node mac address ...
[    2.484420] mvebu-comphy f4120000.phy: unsupported SMC call, try updating your firmware

After quick bisection of the board dts files, I came to the following results:

- USB works again after reverting the following two commits:
  -- 96018a6fafb1 ("arm64: dts: marvell: Convert 7k/8k usb-phy properties to phy-supply")
  -- 01d0deba28f6 ("arm64: dts: marvell: Add 7k/8k PHYs in USB3 nodes")

- PCIe works again after reverting armada-8040-mcbin.dtsi parts of the
  following two commits:
  -- 1399672e48b5 ("arm64: dts: marvell: Drop PCIe I/O ranges from CP11x file")
  -- ce55522c035e ("arm64: dts: marvell: Add 7k/8k PHYs in PCIe nodes")

- ethernet: not yet...

However looking at firmware version complaints, I guess that the actual
reason of all those issues could be in ATF version rather than in the
latest DTS changes. Probably I am using ATF version which is too old
to work with up-to-date kernel: armada-17.10.3 from atf-marvell
repository on github. If this is indeed the actual root cause of all
the issues, then could you please recommend a preferable ATF version
to test with ?

Regards,
Sergey

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
