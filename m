Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24564A0B67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 22:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kYxJDvHsYoN5mBf2P6ytiDV5Yibq7JsTv8QxAXFaNYE=; b=K0Lwfz12Zqekjk
	xgyYWU2ASuL2k5WJS3WGn642rd1tiK8n5XdhCnAl/jBtP2h6QVE/WlZombiua4cufOGa6bDERCPyF
	8wdZwpFylAngAXnKdzZ9kGxvDryG8RFw57agEcbhTqHNopLvqDTX6KJB0BYYcSJf4gHXgl/GcJA6t
	BCUEaW8pv+DmhvrrDfQbjl9BZXoUnHthTLAjI8qOD/SC9oqy3IqECr5Ckjb2bXe3JR0iMRBrkau/V
	nxsDRSZTNW+wg6DvIZPilljl5JGnVaeKxEMnLxMNpb2f6XTOuPfvWtjQ7ILLyhGmGpyXneLK9ftu8
	iTtQ62OglR9DoolLiyhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i34Xh-0000LF-8p; Wed, 28 Aug 2019 20:27:45 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i34XV-0000KQ-N9; Wed, 28 Aug 2019 20:27:35 +0000
Received: by mail-pl1-x62d.google.com with SMTP id y8so467802plr.12;
 Wed, 28 Aug 2019 13:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Oa6hwJmjbKjuqI8KO2uQ2NpWyR7vXRuA7cSnTsaDRIs=;
 b=Uxdtln2knW+a66Nvahu7hXNoA79NZzi/SFnD3iimU/bnbJJwkFMf2VAlfAys0QIQmv
 5EgHJcGm3vRv0rCXec46xJMD9cx5CHWlL87gsa3z2K61OXRvGmPdiLGZ8DhHQiO/Z7aM
 0H//UheQy/CrJYQMYJjnX1Sv8J0AfEJI5XHlrpRh8rRY/0vYoVonNyEcZk+Pqbi8wZ54
 kqecVYNYdkFdDaCy7iGpQXYbV3Qb8iW5Cw+snpvlcWNkD+NTmywWR9lb0JDKtEncTuZm
 qIYWwYwbgBgnI00oxT/B6w3nfqR1pyn4AVXWpQ+2JbPce5p0P0baNP0c7sYb2gQ6FLKk
 to1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Oa6hwJmjbKjuqI8KO2uQ2NpWyR7vXRuA7cSnTsaDRIs=;
 b=XouWS7iu+6u3xKcB4EDpv31uPSFU4S7UFboPipBJKq/GhONbilS6ASKzA+Bnu1J8Nu
 +TvIvXgr0bMpbe0OZsUBTyuK2IUJ25XU9d/u8+v+vubpapL1WN+TlV1P42RxxFmHno/4
 +11CAUeztLXbWpYJOOt/Uq3pOI54wFsrS34NQzrHkyfW4hQRqx7GoqT+uki/TgNC4TYS
 UAY5nfesvqQ6h4yhEnyMtJIXYz2Gs4OHVhGokFptjeE2uAKsTAES2jSHyRnILJgz/Sg1
 SP3h5RIvbFQ8bEqq1nki5l33HUSd1YQMhgJvSD2Tjtz5+qJsfpxHEMM5jUQ7COY/ZBAB
 0pSA==
X-Gm-Message-State: APjAAAW78w9IXJu6sR3R4xiXox82jnirnNQ8OTANBwUrs5ia+1A/gE90
 IOvk/D3dUUeuJ7+EQ7IA2QE=
X-Google-Smtp-Source: APXvYqxuiA+0iXSqabEEiaHcDthz8NSS9AsGph/Zx11FbtNQgeEo36tT66h3LGF0XtVp+EJXHYEiQA==
X-Received: by 2002:a17:902:1107:: with SMTP id
 d7mr6091471pla.184.1567024052408; 
 Wed, 28 Aug 2019 13:27:32 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.111])
 by smtp.gmail.com with ESMTPSA id g2sm253373pfq.88.2019.08.28.13.27.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 13:27:31 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv1 0/3] Odroid c2 missing regulator linking
Date: Wed, 28 Aug 2019 20:27:20 +0000
Message-Id: <20190828202723.1145-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_132733_756979_B20C779A 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Changes based top on my prevoius series.

[0] https://patchwork.kernel.org/cover/11113091/

TOOD: Add support for DVFS GXBB odroid board in next series.

Best Regards
-Anand

Anand Moon (3):
  arm64: dts: meson: odroid-c2: Add missing regulator linked to P5V0
    regulator
  arm64: dts: meson: odroid-c2: Add missing regulator linked to
    VDDIO_AO3V3 regulator
  arm64: dts: meson: odroid-c2: Add missing regulator linked to HDMI
    supply

 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  | 44 ++++++++++++++++---
 1 file changed, 38 insertions(+), 6 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
