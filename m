Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C5911632D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Dec 2019 18:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aVJHQrGu2HYwCVC3OPbEN+uBfVPPgChATUC9s61lKsc=; b=Y8/866HBRhkjGo
	l3LzDyxHA9jBvJgA/ddHg32B6W620wwzDp3sA06VfDIUjZSeqlt1SWoHhpzTqE9dmxpzq07ekP6Nd
	yNmd8H/Y/28QaUEi98khOh9gONSHpybO4OYO6Zx7rI/JKguJGTO+t3yhJzAhEkjERopHtv5tgVqeu
	w3oiE/Z61MZ6t1O52E6Xta9d2CPGlzormtahIE8l7qXBwB4OtD6neRefa/JxOejphT8UUqvQo6Vz+
	Grhp55dmNQqTx9D/WI+TXJR482dUEai/jPuTr31E3OLJT/Me9vjzKD0llFd7OdnCpNiqAZ7HeSvH8
	ajbx8XuflNYs9l9lXwNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie0DG-0002vt-Lu; Sun, 08 Dec 2019 17:19:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie0D3-0002sb-Nz; Sun, 08 Dec 2019 17:19:07 +0000
Received: by mail-wm1-x343.google.com with SMTP id y23so13645450wma.0;
 Sun, 08 Dec 2019 09:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gu+8XaIloextUHW957Mh8GSvlNfk6Ho+2WvTpE6YLbI=;
 b=ntEJWwp25ChtTEmus7kaTseWRnnt4433csuQqPdH/cYACBb1MO4xJwO6wWHQSbA1zX
 fnvaiAiCgGo6ynY4RRumZL14YYOP3zCqSF4rsoFfG1tolFIeD7zxZmUrSvCozM1FYu24
 W6dBfwOmS1aJ9rdS0GUPN8FNgBc0R8OOKA60VHUzqem2s824NyrULJx866i9Ki4Qc/sr
 UtmZIGkGJvCe7lkSG7zeMxMcAEaaksaFIAjCP9+FuItI1MzF1rF3XUfTuG4dUaYTGTOl
 8BvS68O2VO0h1jM4/ypFZCnn/tkW44q/aSUi/ciFzL8FS7nu1DEJBpchEeiwDIRmeVI4
 q5sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gu+8XaIloextUHW957Mh8GSvlNfk6Ho+2WvTpE6YLbI=;
 b=HC52utbGIP4ovMiQJNtKGDakIpWRBUxGgbuG+AmbAHy35D6e0VSpKOCC+rDgWL7kR7
 hLekuPbqvmG4+/wzPqfX8MjPavsJyMil3nnVWWibr8VRGyhQV0H7BYOGSPYa9+ZQyA3I
 dAhe0S3tRdpOjJyZYcOe1qEDHbXoZ2zDWj7pA3lZHjnidVnRmBnnhK477ooYPQlTn+bq
 kLHK2voV5fs6ETfGfQFYvBLvD5K2kkFKodfPG3c+vD9ztEZ6i+6Lz0FsKhhM9pR5BY8B
 3KpeckSUeP2KrjGYPUGImpm5RByE4WZ0nTqVtuWtUSMj/Flmj+zbucPJeKiZjZhrMszF
 dSFQ==
X-Gm-Message-State: APjAAAU90dJMAze+6kPaZNj4ztPF9hOlHzYvmEoeGwRqEWlz2Nof46Rr
 7hVskRRSsmNHmljlPo2uPfYJzoMt
X-Google-Smtp-Source: APXvYqwl5vSlTNtHmhBHy96IhpgjESZ2vDOODYVSQ2Xh9Rx4mQ3d3VrOlJuOKtGiQrnauWl4d2kqKA==
X-Received: by 2002:a7b:c0d8:: with SMTP id s24mr21854540wmh.30.1575825539428; 
 Sun, 08 Dec 2019 09:18:59 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371AD700428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371a:d700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id g25sm11791383wmh.3.2019.12.08.09.18.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 09:18:58 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	narmstrong@baylibre.com
Subject: [PATCH v2 0/2] Meson VPU: fix CVBS output
Date: Sun,  8 Dec 2019 18:18:30 +0100
Message-Id: <20191208171832.1064772-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_091905_785277_3C658A3B 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The goal of this series is to fix the CVBS output with the Meson VPU
driver. Prior to this series kmscube reported:
  failed to set mode: Invalid argument

Changes since v1 at [0]:
- add patch to remove duplicate code (to match patch #2 easier)
- use drm_mode_match without DRM_MODE_MATCH_ASPECT_RATIO as suggested
  by Neil


[0] https://patchwork.kernel.org/patch/11268161/


Martin Blumenstingl (2):
  drm: meson: venc: cvbs: deduplicate the meson_cvbs_mode lookup code
  drm: meson: venc: cvbs: fix CVBS mode matching

 drivers/gpu/drm/meson/meson_venc_cvbs.c | 48 ++++++++++++++-----------
 1 file changed, 27 insertions(+), 21 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
