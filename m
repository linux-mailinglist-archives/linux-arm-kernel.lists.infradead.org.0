Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0F7BC3D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 10:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ti7yQLFE8IW7o0lI/KQKDQpl3JNC3s+XSC4z4b/tznQ=; b=MAiRnsn4VtfhTN
	Uy0lc8X8TOu27IfwMRwh8nqtlB8U+4GcZtDoe09GEVsp6MRxEwHtt17JGxq3GsWG0KRGRLVcvW8Kv
	XbvmWssDR/l/kp2G+sP9hDjCRFFtr28WmUdDWudfPcUk1kNJ/mfOeQCv3j4pEdI6Fv4yrnc9UkWeL
	Wd+JzV6QpKf8AkufTPDgimpoLVo2R52v5+l/7zFLDYziAJAh/N5TQ4D/Ev79uz7qeg5RQCLx7pXZW
	k3F/rQGynOQcG6ErjIZz6yWFbBU+c3R+Fwb2ubyNFiSvI+OnKH3O21BUcz5Ts/1GgzLIy1xeGD0/2
	bgmNDc08EXZzIr9Uuwvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfsS-0007E1-96; Tue, 24 Sep 2019 08:08:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfsD-0007CM-Mv
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 08:08:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id v17so946331wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 01:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LvmWXRtGWT9R3WNFFzfM69HUUZTLJdLx3RX6w/RLwN8=;
 b=qTUPUuiaB1BbUrj1/J+eC4muw+BCr0E6ZHcwgfrV8I+uv7diyW8G8RVHouV/04bXSB
 2y4pboyPEWtF5PGHbRRBDZMKUl2R4PowLAuv1CVw90DiALiuZT/9SWNpM0jtDEeOiQVO
 W5S1Mc0PJBQrV5/dpGE61cEcfWndDUamlixQYwH7lKoQeOfczOOh5SgXmdWXr9ypf5Wr
 x38S87iRhJBat9iEVEfuv3tOMGf+bsZ3j5DRS/00CPac229ZnqSReiFu3DBSzzpYcQtM
 1+a5Mag4cbpMvU6iuHB76LP1jdiTQ1RooGE56ilT8W0ygz4b+OHsahXzk39PqNhQM4wi
 qAWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LvmWXRtGWT9R3WNFFzfM69HUUZTLJdLx3RX6w/RLwN8=;
 b=mYabFc7FE8w1ojJDq/Yro5Q/2zjiAoDVU4Pfd1Gq7QLDPGIoLbpO3mKQQt/d7jj7TU
 /LyWF4oucROL1fVIe8xu9DxQv2gJtqyLx6KQC+JFKijwmvtik1CPnJt3HYsa/3b1d35z
 Zay0NblzFTun/gJDZH3ZUJGhoeyZANQISic+hwCHFzt3qRYCCDTsd3df9VtUpDIC83ik
 ldx9Dyo2XAedxfPntYEX3Liaf4p+uzASMVUz58PIFLwMOc7DmcCYVJJPnUynextDqm9m
 IVNSJaAUST8KMVXSFuF66M/IcKF+ek86621u6UvDe6R8q489Tj8iiKNMVPw4J2XJx9Bw
 rp+w==
X-Gm-Message-State: APjAAAVAX8uQhOKFV4nE1UPp6kGTro6HVPDBDjvvqXMqTeGxBEpDC7Qk
 1PLAmhLpmw1UOMmb3mAVop4=
X-Google-Smtp-Source: APXvYqx5+wQFqSOFrr3XdMZfbvhzWsF4sw0PdC7cOZYcRdMZ/dTvBJ/GlLlkBdx+VNumT9tyn4uIGw==
X-Received: by 2002:a1c:7f4f:: with SMTP id a76mr1575598wmd.117.1569312515832; 
 Tue, 24 Sep 2019 01:08:35 -0700 (PDT)
Received: from Red.local ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id u22sm1825256wru.72.2019.09.24.01.08.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Sep 2019 01:08:35 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v3 0/2] crypto: sun4i-ss: Enable power management
Date: Tue, 24 Sep 2019 10:08:30 +0200
Message-Id: <20190924080832.18694-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_010837_750075_34F2CCF1 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

This serie enables power management in the sun4i-ss driver.

Regards

Changes since v2 ( https://lore.kernel.org/linux-arm-kernel/20190919051035.4111-2-clabbe.montjoie@gmail.com/T/ ):
- depends on PM
- fusioned suspend/resume functions with sun4i_ssenable/disable
- fixed style problem

Changes since v1:
- Fixed style in patch #1
- Check more return code of PM functions
- Add PM support in hash/prng
- reworked the probe order of PM functions and the PM strategy

Corentin Labbe (2):
  crypto: sun4i-ss: simplify enable/disable of the device
  crypto: sun4i-ss: enable pm_runtime

 drivers/crypto/Kconfig                    |   1 +
 drivers/crypto/sunxi-ss/sun4i-ss-cipher.c |  10 ++
 drivers/crypto/sunxi-ss/sun4i-ss-core.c   | 139 ++++++++++++++++------
 drivers/crypto/sunxi-ss/sun4i-ss-hash.c   |  12 ++
 drivers/crypto/sunxi-ss/sun4i-ss-prng.c   |   9 +-
 drivers/crypto/sunxi-ss/sun4i-ss.h        |   2 +
 6 files changed, 133 insertions(+), 40 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
