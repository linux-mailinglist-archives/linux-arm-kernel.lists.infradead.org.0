Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC39A524E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TX1if34LOhoaE4f+nH2d/ww2n6PVl6VkzTF1WULOzyQ=; b=Ms/hNb7Q8fFyhT
	fxKA/X0bZ+27z/D4boP8ohs+DoLgAEzFIBliS09Plw0q8Dbm0ANMAHeW0Btb0sdbd2ljgfqj3jLoV
	zqryH/ARcGLJTW9qG5yV/hBwrZVv6iDfqBiX9QdR2sDDwgN+XGLmdRxThssrEThF2634YS4sdfq6d
	RyAA+CcBT/D0QDR/lrHBQTohXxhZ1r+/yxCcYn+28YaiVVNd72VPUox4o4OAs2+DPrFYwR+zE9SA4
	kachX0aBnKg7zNZB+wyoYChzgCJ1Lkjd15ywHqCH26y6zQ0xpxxhjlQankqvh3NZaFIOp6pHYw7hc
	PVaZhIkyK3dfc5Yc5mOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iAg-0003zf-6e; Mon, 02 Sep 2019 08:58:46 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iAQ-0003ys-Lz; Mon, 02 Sep 2019 08:58:32 +0000
Received: by mail-pf1-x42e.google.com with SMTP id w16so8669728pfn.7;
 Mon, 02 Sep 2019 01:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qNKkEatiJoZRzu3l7+tCiW/lbxptuU32yXwmrhQiGjw=;
 b=cbb0X2d+8o6qvDEi5+eUjNHtnp8B4P2+Bpa/eMT09/s83FMYUNjWDUf7DuL2em3yND
 6X0ZhAa0Tu8oYm0xrR2KMNPqWQKrW8E7Iogz63mHSQpmKzWMlAuwvayi+7ZWlkiTi+vf
 rYAlD/DSPisHTEQaYKPIzWh9Tu3cayXp4d7dLUm8n2cChVxivAwD3VBSPbndXbZo6657
 UXaj13IZ8ftwiJOZe0tke4LlZO0BFu8bdm8cGl7zWeWiPkWYiPKsXMPXSnfblsoAVw+0
 BF8c/caIajOxZW1Ad5vL7egQGOvZNbTtMzB3hvQB9cxQ5T/STwHh7SlixheJNR8ICG8e
 fRZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qNKkEatiJoZRzu3l7+tCiW/lbxptuU32yXwmrhQiGjw=;
 b=Iu1rO3eHtL8VAT8eCKkOoIM7E04QFB7wPID7GuDmq6zABzL6xTV3H6yb4WfmB0YXm+
 wZDy6ziy/QSyQTh1vBAbEfvW0qJZkTPUpGiIkfXeWUP/dC9Jjtm5ZzNhTOK/6sOggsa9
 lXIw4gMsMQMWHPRexoTcg/CJ0UegtP9rVbgXpTxA9pww1W3aP0jS7WrVtIZvKaVHiaG5
 PY0LxC++TMLPAAPPEbIzJxZbN4tE7iyllCdFdhnW6XpX61xpSxlR3RVoW80TRioM12Bk
 LVor/wFoqDz8snQboTsd2wmn7NG8NlmMXpCB1BVfSW7NOR6QSodbYWKq/KVBe4VPNRXK
 bJ7A==
X-Gm-Message-State: APjAAAUFXKBQ1c6IcMTGN9Z2w/wWGTW4PBinI5dQRp5t0xgJbM1plQIg
 OzmFhjS0Rv9r9sL7Xx/Giec=
X-Google-Smtp-Source: APXvYqz+ki+D4n1A3ykcoqOa5nft6U8cBaJd+tedI5eD+VnnpGUSbpoErI9k9eWEYk9iujG1E8MmPw==
X-Received: by 2002:a65:504c:: with SMTP id k12mr24593144pgo.252.1567414709776; 
 Mon, 02 Sep 2019 01:58:29 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id y6sm6313117pfp.82.2019.09.02.01.58.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 01:58:29 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv2-next 0/3] Odroid c2 missing regulator linking
Date: Mon,  2 Sep 2019 08:58:18 +0000
Message-Id: <20190902085821.1263-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_015830_748833_417A3B0D 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Below small changes help re-configure or fix missing inter linking
of regulator node.

Rebased on linux-next-20190830

Changes based top on my prevoius series.
[0] https://patchwork.kernel.org/cover/11125987/

Changes for prevoius changes.
Fix some typo.
Updated few patches as per Martin's suggetion.

Best Regards
-Anand

Anand Moon (3):
  arm64: dts: meson: odroid-c2: Add missing regulator linked to P5V0
    regulator
  arm64: dts: meson: odroid-c2: Add missing regulator linked to
    VDDIO_AO3V3 regulator
  arm64: dts: meson: odroid-c2: Add missing regulator linked to HDMI
    supply

 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  | 53 +++++++++++++++++--
 1 file changed, 50 insertions(+), 3 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
