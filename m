Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BDF84A7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O1yWcsjiJzYCTTN4znAKp7r7gjGTGDqndaOCt+8A+Mk=; b=SHUsf8LtM1PQO+
	AChdG6OllU/R2+QnAKpXVTUrPG2eu6K4bKdREDItTRcoqZkbSUqpnXAKdYvjPji6/4cZmklOy+sDV
	J6xnO/0HCAAJieSCJMvrch9wGTqbJbq8oOGcWHN2a1fzAzCaqaWNVeVRAGl3o5DyPvrpQ5VRi2yJs
	w3RB4odAW/QDfXl1VF2Pgqf0qg3FMFXRatdSiZFkCA+OYGCmT++mXMJ5ibsYOrJ3AnZkhV3lwpjkv
	tynEGdnKFiN3UZXbxyTg1kIYh4mS1KkIX9e+K8ulOgjw2dR8x7aTIKdYViXLZ4CEST+bHABRx1h0v
	rNQ7dahA8OcPZZDY+nhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJxq-0005Pl-JM; Wed, 07 Aug 2019 11:18:42 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJxc-0005Ox-MV
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:18:30 +0000
Received: by mail-lj1-x241.google.com with SMTP id x25so85177490ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 04:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=OPtDIWD1oyhmvgdHSOSG81TcfHz+uzX2gkbcVtn5ULE=;
 b=BKg1XWz76ThRetJwm2Ypk0pOm23cGUXpYhH2r8gddn3xAjYJ5CWfD0j1qyCgWuBRiO
 C/epNQA8aWh/sWQPKrkiHTvxQc4z0L3ncGkiKT0bAdwiq1C61QtpvTCcDCW2uisk7OR+
 7FlctYuyZKTgbys5tZ3EXNLSxgyj67UoT7nVsDQZ0rxhoBjyoHwvMmpjfKteZ6UV47R0
 6I76lQUTYm5Z1UICmiqzv9ysTQzx4j475gksfMPOTwidtbkVNH7ujF9jiaex+H0CKkWL
 VGvkpCPKtPKwVLnn7kpe+xOcNHPE88/eAg6A4xUwbiysqwIuGhMLzQf6UsUfkOI12GfL
 MXDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=OPtDIWD1oyhmvgdHSOSG81TcfHz+uzX2gkbcVtn5ULE=;
 b=iqN8+pFO/B3IbZocC+G6R28eGoJWiKaM0zLiHUNSu6vJ6AxLrt1o+if4zBu3Bl30Dm
 /AKxLFq39bi8f+swlM3Tp01fptUGFUaRkb4aS5lk9jqgcn9C6Ab6iHkZu1i1DOH2dfpy
 eZ4CbNwpBocTyBa/RZU0EdYTKl3t6cQL5MKnKIz3RVHTwyu8de+OBYI9TCHY5ZW0RKha
 sW/di0HdfsfpZaYiRZXyAV5A2lRFv9ypRk/bAcPAt8yChFClg9/+bMxjyuWwml4yuKRx
 CgDGC226HKF6PgYd/y4h8KTlgjBJ937u5VubPtkBCwRrC6KhRn9C6BKSrEris4AASgDg
 dpQA==
X-Gm-Message-State: APjAAAU2KBAPFtLqgxPhBld+moK05eVZQm8/vxFHkNHrVERyq1OCZcjT
 M+02CRiYVPYpYSpKnwh+kY0jvxWqjnNKChWKYKy9QQ==
X-Google-Smtp-Source: APXvYqwTAVe95rSksZw+erekFdosmSxQDfjfhjtERnRYyENWOwshak+UScYbzsb44hFPW/YALmJunz/0Cw+mT4FzW4M=
X-Received: by 2002:a2e:6e0c:: with SMTP id j12mr4497521ljc.123.1565176706159; 
 Wed, 07 Aug 2019 04:18:26 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 7 Aug 2019 16:48:15 +0530
Message-ID: <CA+G9fYvehn=5Rn0RHjFvCc1pCDFTUtxNeR11CQjD6rjM53D4ig@mail.gmail.com>
Subject: Linux next-20190807: arm64: build failed -
 phy-rockchip-inno-hdmi.c:1046:26:
 error: anonymous bit-field has negative width (-1)
To: open list <linux-kernel@vger.kernel.org>, 
 Linux-Next Mailing List <linux-next@vger.kernel.org>, kishon@ti.com,
 heiko@sntech.de, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_041828_770807_DFEFB284 
X-CRM114-Status: UNSURE (   4.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lkft-triage@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Linux next 20190807 arm64 default config build failed due to below error.

/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error:
anonymous bit-field has negative width (-1)
                inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(v));
                                       ^
../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:201:50: note:
expanded from macro 'RK3328_TERM_RESISTOR_CALIB_SPEED_7_0'
#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)         UPDATE(x, 7, 9)
                                                        ^
../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:24:42: note: expanded
from macro 'UPDATE'
#define UPDATE(x, h, l)         (((x) << (l)) & GENMASK((h), (l)))
                                                ^
../include/linux/bits.h:39:3: note: expanded from macro 'GENMASK'
        (GENMASK_INPUT_CHECK(high, low) + __GENMASK(high, low))
         ^
../include/linux/bits.h:24:18: note: expanded from macro 'GENMASK_INPUT_CHECK'
        ((unsigned long)BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
                        ^
../include/linux/build_bug.h:16:47: note: expanded from macro
'BUILD_BUG_ON_ZERO'
#define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:(-!!(e)); }))

Config link,
https://storage.kernelci.org/next/master/next-20190807/arm64/defconfig/clang-8/kernel.config

Build link,
https://storage.kernelci.org/next/master/next-20190807/arm64/defconfig/clang-8/build.log

--
Naresh Kamoju

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
