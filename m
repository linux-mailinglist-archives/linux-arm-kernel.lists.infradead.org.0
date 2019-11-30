Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D2010DDF1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 15:58:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x8B/9m3jzSJz8iCPq7182oCzlnOE0dMW4kp0Fv7Nh3w=; b=F5tv16yb+nzPWL
	ABvNsYPt2Odms+oEZXFAc839djCW3TO6Mv7vgykNp/WuvGTiTYDyPfsoBmont2H4AS7E5j1CBgdPS
	YjDx36OvUy0KWvWy+xRwnGg91bEtxO1Y5sqNVihxLovlI+C76V1KiJCq/4aSC93+/p26ry0xeHdwQ
	lmvqn25Bo0fEuRWFwddfIZx82bIu/rYFs5VYvXA7nhb4zHZk2KyMF0HQM9bxV6OjfFZ2xTowCjghF
	mVXuf+HJBcwQXz9gWcpOg/dF7Q/Ga8Mwuplzo46oJoOI8iQ4RkIcD/LXTWOXas61Kqls5HWP+le2m
	p1pNF6WlkBHUS9v6eKxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib4Cs-0007fW-9u; Sat, 30 Nov 2019 14:58:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib4Cb-0007dR-5U; Sat, 30 Nov 2019 14:58:30 +0000
Received: by mail-wr1-x441.google.com with SMTP id c14so13858194wrn.7;
 Sat, 30 Nov 2019 06:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=clpGjkWQjLwNVa9dG7ghNAn26+3WI/efWDFoEsdhUXk=;
 b=T+B5MWx1NUXbV9Bve4Cj2BaBZFPdpWBp8JvKYzy2fgm8gNV68Yur4CdWocG7nFEqs7
 QKTxDu7k5uOJDRn39E2x5FnXAZ13tZzV1iydluFTjUumiMwAqiJ4mKTidxQvZskfzeqm
 TqvjIVTROHaLGz2zMHuJlX2bVCxXbh/x1dafdLACR3WRq7NpUioDlVows2SZwEcMFxyG
 JeiY2613NZzisJmhXVZIkUlVqX/SX1ikNEr/jNOvEl3VREvoWG13xMbeKISMGQe5MMyK
 yxTIC+rt0lsxCAmbujUVPwSQFwyI6CAQMqD8GbyaTEixD7h49O97+Z7uq5vUh/NxRYjW
 1rgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=clpGjkWQjLwNVa9dG7ghNAn26+3WI/efWDFoEsdhUXk=;
 b=jC5869lIAsCRj0of6C9RnIHVdi0G7T6VZjqWwZZgWV2yVf9NLYInecriR5XvsF5GmC
 V2qRaJJOqs+4k29jZWYowV6Wxgru1qVNXmV7MOFSaq5iX8BhMlXge6T377pDjiscY603
 NElPkx1XV7WAJjIE5BhTnghzx+tFIUUaltDuHQOIVr2YJlj6oDaU3n1nsriJ9qNjmpAu
 FoS/t81SnrPgXSyhP80Jw/4A9V0/sZOTNPwV/mIplkDd/y5knVLunz9IYH4Gd7nnBg2p
 BK4VboRHfDvtPVU24KLbpJ0Ml4nVfpzChvzbkVaPV64sXLOYgan2xXe8dyNzVRlH/N6X
 Cr7w==
X-Gm-Message-State: APjAAAUek4Ko3L+/1PAhTvVDhMkFikDWzL3bSz4FMeiM24wpktyqIfPO
 3MayIl+VsBl4Wbv2jaljF9wL/MU5
X-Google-Smtp-Source: APXvYqxeq/6g/DE7fjLghbw4h3yd67AuhejpMU5WGS7hxkX9senxEe2MERpW1XPAo3YwA0fHLrozxQ==
X-Received: by 2002:adf:bc4f:: with SMTP id a15mr6836305wrh.160.1575125907164; 
 Sat, 30 Nov 2019 06:58:27 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id c9sm3510202wmc.47.2019.11.30.06.58.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2019 06:58:26 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 narmstrong@baylibre.com
Subject: [PATCH RESEND v1 0/2] amlogic: meson-ee-pwrc: two small fixes
Date: Sat, 30 Nov 2019 15:58:19 +0100
Message-Id: <20191130145821.1490349-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_065829_206495_AA92CD13 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While working on power domain support for the 32-bit SoCs I had some
crashes when trying to actually use the power domains. Turns out I had
a bug in my patches which add support for the older SoCs to
meson-ee-pwrc. However, I didn't notice these because the driver probed
just fine.

This is my attempt to spot "problems" (bugs in my code) earlier.

RESEND: sorry for the noise, I forgot to add the linux-amlogic mailing
list. This is important so patchwork can pick up these patches.


Martin Blumenstingl (2):
  soc: amlogic: meson-ee-pwrc: propagate PD provider registration errors
  soc: amlogic: meson-ee-pwrc: propagate errors from pm_genpd_init()

 drivers/soc/amlogic/meson-ee-pwrc.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
