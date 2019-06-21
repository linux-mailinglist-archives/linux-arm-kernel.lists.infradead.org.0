Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD454EB78
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kiqnjjdF7ttXyYjrKbhsTW/EhpWNf31ORP0xMoaVV+E=; b=jjI0SApvn7hiQv
	RlrsxmNd3slmKQ9dKviqpRXhF61a/zy66PfazsdetbTgX9nB55lGam7w2ffvCCQiNPzocT0syaC5i
	N9FSid/kdnMKhlZgKLbOWRfAN8mraTvEFTwL5Iawz9rCbPjjfPDZ1C3u/hl3NDpVf3yfVLQSdvt5N
	dILvlNRElWQXA7kb1RVFmB2gOcRD+mGwQznVkcmNA5F723ELkcOzbObRd8PTyPdlifcDPgba52P44
	q/7NMeyXK0LKFOhn7Cnj9gI66xs9EhVQBNV2MJJMd/G9c4iQErOHFznItJCTf+zLRdMXb8X3rwcO5
	unFwdkg5fly3cvNCl5/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heL3X-0004Vh-TB; Fri, 21 Jun 2019 15:02:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heL3K-0004UK-Jb
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:02:11 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so6964360wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 08:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L6dQv323Ey+4JIjdvTNU3vCXrozzKoZF5cqgk/Zii2Q=;
 b=oYMXiTi7gTsFbaVkl8bkK3VjNmg7W75D+0HSYCtoAyztnBevEe5ZWBUQG3WHE4TNYG
 ipVqnCwkcMCZyWysCr+/CEbO1N0yg8Ei/ZPxQTFuxGEl/gu5IS0Hov8Kd6Do3SpjNeua
 Q6lGBpIKXF6c4DDK2q9BZ1OgALbfNW/qxK5lfUUI3jfeMfOfsIbAPtp3obpEMugyP86V
 GfX58CtHxFd7r232R9GoXestxkX9RBpYDAfeRq5pYLTgdhutGRnKoLnQOX4APs4uLZml
 1oQBPdfr78yIR0VK3bwF9Cj3D/QqrKKonBYE2x5URiSGLslEWsYqd1pz+2LsHmSu4IFo
 qTDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L6dQv323Ey+4JIjdvTNU3vCXrozzKoZF5cqgk/Zii2Q=;
 b=kN+42pXEJ9H4K++oT0IZ2JPlZpfFi7qlgWdB6aA9XWd58KSKwgMloZiHWeoDAQImMj
 Fp0QyFXjh5jxHlAKBY/pfr22oc3q/fw9ZXWctio90aifxMVARrsDeZjIVQIvYZyRP6Of
 U0GlhPY6foF45VRR2WhDiIp04yb4d9gMJcauM2vBBwYoGNbg3yudNIYc1exbHbLkAJHv
 dBLrm3zFCEO0++Gzu5vmphR2tu8CVVJXmiVL70kiN5Gli9PABbY1YMsBfitI9DkqEAUh
 CMB28ukVlcnLScuveDL7MIlpPHZDCkN6xckXZcOL8Fpu+cP0Kkk9WhIU8cniOnrxEyBM
 NKHg==
X-Gm-Message-State: APjAAAXvj+8uSJ0OeXA5j2+SwApD2txnrMK30lMiS+gJKr443+3SlVo7
 S1iZOgj/axjAFoI7BTDoTdI=
X-Google-Smtp-Source: APXvYqyywkuCCQ4TzzIszhPEqQRM4uPekw8uBNBNrr0JsRaa4vg+ysnSPdvzNSky7V2AqMVkXRxlyA==
X-Received: by 2002:a5d:508a:: with SMTP id a10mr27908816wrt.59.1561129328516; 
 Fri, 21 Jun 2019 08:02:08 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id x129sm2241343wmg.44.2019.06.21.08.02.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 08:02:07 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 1/5] firmware: tegra: Changes for v5.3-rc1
Date: Fri, 21 Jun 2019 17:02:02 +0200
Message-Id: <20190621150206.19037-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_080210_673259_62C91D71 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.3-firmware

for you to fetch changes up to 61ed7ef952fc482ec8d4a966ed0d1e32df276c59:

  firmware: tegra: Early resume BPMP (2019-06-14 17:45:17 +0200)

Thanks,
Thierry

----------------------------------------------------------------
firmware: tegra: Changes for v5.3-rc1

This contains a single, simple change that resumes the BPMP driver early
so that it is available when the various consumers want to enable their
clocks.

----------------------------------------------------------------
Bitan Biswas (1):
      firmware: tegra: Early resume BPMP

 drivers/firmware/tegra/bpmp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
