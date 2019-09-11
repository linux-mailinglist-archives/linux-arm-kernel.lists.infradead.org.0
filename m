Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D4AAFBB7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 13:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bfi8Ab7O2qVp20WONRlWAiYWn1ql/4OOJlxDXwmxj3M=; b=A9U1Cs7fOkBGnu
	Uvs93RdhgWIGi77N5fSLSixIv6dIXABrCZ43AEXUJJG4v8IHTOVzceg/z2CvobvPN0CWgoawfjibT
	w/EVOnvLK+q+qElgPRe2eroaRX2wznWr4ndAruwyUhhebUjfx7KbDFzbbAVOmzkNbK8agMADCjA25
	kaQXd/+QzfEnpCqyfRiMJjK7Q69CwblyILcTySJ+gdItv5FPRDIqyHeRuM2Yx7RvATIJj5HjgnvCw
	1NREwwQg5ijadm6eeMuwnabs3JPss6kqiCZJmnBTq3VHid3v6Afg+EYTQ6lIFN83NvnPVTIRuPtc5
	XtQAEtbrAbR2Ogon9eZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i815r-0002Tk-0A; Wed, 11 Sep 2019 11:47:27 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i815L-0002S2-Rr
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 11:46:57 +0000
Received: by mail-wm1-x342.google.com with SMTP id y135so2021353wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 04:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EhNVqd7lKYTm2RjaGn886HTdC3x02uNTfuifCk7g2lg=;
 b=FhnuxKLxRpgRFJ+2mA6bg+MunVeIvSpIS27r/gVmAIEs2YIck3qeV3LdJymVgReAoW
 3qQmUg9gZ3ELvUrtW/vF7VVxnLEMXEhMAkNTiVuPKMGIEpSgTl7+LhFIKF+h5nv/NsVA
 OBHOl9Zz5vniIrS44Chb76Au9/FynnfzK/8vHRPUw7rYf8jJT/md8yM9P1rRcIfxq7wK
 K7rrqTJ/N1+iLuMf367E90Q8UmfrgjFTZvQ1Px7hkPU4i4O55M6s0P+fK+Kg5oMao1Jf
 XObZ/oe5dTduchmpxopCmlh8+QmHdWkP18Ipcmw/gkon/RD1oR0E5LMJ04+KgSF1i9RT
 wpWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EhNVqd7lKYTm2RjaGn886HTdC3x02uNTfuifCk7g2lg=;
 b=eTen6o9P9I3Duje3KSSjUQsF11x/UpCZVGHOx6u62WTjZc/TBzJWTtry79J0Fa5f9Y
 VNoRRmzz8asXnavwVDqy+zJK2ztLJrBTA9S9X8NCj415/8kv1kZPjLW/TJeaw4yj5Wtr
 x6MaBNhVekEO+dAI8Y5Zj+cxs++rt/n2d1wXnylGXhXRxBGgWtdbaSMCCQDohp4fYYG8
 QFAB0aj2ardEi/yx6aX7PyazhcXrJU7OfQYXtv6uM0qYE8JqZT70WKsdUR21MA+oFj+N
 iOxkECd+/TtiuKTiHU+USHDZy1H2wl0In+8Pt//oojPqIP1yKKcPwUFhgFgU3G3aSaad
 2UgA==
X-Gm-Message-State: APjAAAXMCpROoCMNxdp8/aRjLyQm3ebtNwvpzdAOZS3/DG8X1OE1JmpV
 EmjXnYS39Rr+S7n1NXZ7W0I=
X-Google-Smtp-Source: APXvYqxCcM+NFG1ZIPUS5eQvXWa05L2llrF+e94UySmKsX6lXGf/8t2UCuJrSW5dkKJ13v5FrT2NmQ==
X-Received: by 2002:a7b:c752:: with SMTP id w18mr3543962wmk.63.1568202414069; 
 Wed, 11 Sep 2019 04:46:54 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id h17sm4864705wme.6.2019.09.11.04.46.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 04:46:53 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 0/2] crypto: sun4i-ss: Enable power management
Date: Wed, 11 Sep 2019 13:46:48 +0200
Message-Id: <20190911114650.20567-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_044655_928613_E7B3C2F3 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
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

Corentin Labbe (2):
  crypto: sun4i-ss: simplify enable/disable of the device
  crypto: sun4i-ss: enable pm_runtime

 drivers/crypto/sunxi-ss/sun4i-ss-cipher.c |   5 +
 drivers/crypto/sunxi-ss/sun4i-ss-core.c   | 115 ++++++++++++++++------
 2 files changed, 88 insertions(+), 32 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
