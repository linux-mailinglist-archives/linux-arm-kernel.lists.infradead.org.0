Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0561E6ECD5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 01:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QIlyNTkHTt5EgkKa3qcdvwtsVbPJUCaGvukupded2lg=; b=btAn2SsK0m5KsW
	nbfzpcsX51id3FLhbbjcZrN2zCuDnu1VjGpJ+s2D0KbCSVhOEHaKUVdiWzsii/GkqpLGlY9/7Z7+S
	iuyW0BIK78pqSA2aAV5+po+fkamvDujSP/a4jb/VNbdXpAuYgt/ebHR31EyoPYUrOf49mNInIG2qK
	0lIjrc1H/VpHSvb0P8wGdKm/0LgFAlGcV9QlGk9AISf+rh4iIcmB0iYanzN+x0/3rUCeOJEjF8ew9
	qopsdM3eGfyYZ9iRSwY8oawgQicttaFIjEqec/rtA33kb9J+KNp7n2d9DQL6cDTR7p0DgCP0Er2TP
	aHAsZ4LzlHnFBdD9b8pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hocij-0003ZF-E3; Fri, 19 Jul 2019 23:55:25 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoci8-0003Yc-Jk
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 23:54:50 +0000
Received: by mail-pl1-x630.google.com with SMTP id az7so16317985plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 16:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6cF21B988mtg8JkiiTcyqs2kw0W/2vZ4uwNBCFvvJxg=;
 b=VGetOwiU8W6Z/ZIH6yHeTxN6eBQuK6msIQeicLWmsVqIOUdVrjh88gSSdpVgWNpQh5
 FToFO6imnfCJFIHoiZ5dNCVn0mTvIn7AGJwN1AN1t72Q3HZCIwgKqKCy9Yca3JNEHG/Y
 UU189UtvDEpfx9JqceNKzmDEG0Rn4nnk/zOvZyKIoB+zhPjcsvZWgxrr3Knkr2Cb9I+f
 URhAf4cVUnvEvi1lqZddiZriyPy8GbCOvBNYs7h2qt+BgHD1DktEN5VACq1HPNlyN1WP
 TxMMu5mJweBoXXs5jurgV4jsjcOTDGPJC75Y8vgfUhOZXRzlfOMeYLGMgORVEE6jH7rU
 KJaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6cF21B988mtg8JkiiTcyqs2kw0W/2vZ4uwNBCFvvJxg=;
 b=gQdUHXToyfNp0AfPIH7q7goFfJq8Qoz+iV9HQN5om6rcCRrL0hLwASKIxnw/aMo0N/
 up+6Kj9KoCOqibLYgRA66lQTwOgb0RIbOCpBSeQXyLlGhTxEae2/vo+y1k3BnIyd3a84
 4KkjnaPFZjykJ2gLIxBMsJ1IfQCeiOjHoqwsyuBCKiPcdpIftR8inLNMFjtT5nrgonci
 KGwyd8S7733Df5LtWgPM3uOMeJEiXR61W+sH4K1WIbdEv7L+brnKQ3JDs3oI/SmGZS13
 a6syptBzeLDxpbCO4b1B3yHtaXzOuu6bvVua3Neer3y1xHlsEyFULjY5z/h+0UGrAFZ/
 rP5w==
X-Gm-Message-State: APjAAAUbsRfwHfbLleLa4QFqiQUSWLvgBStYdC61QRppEpxIeUt3xh6Z
 PpIW/ojCIUWXEZB7Oq+lx/s=
X-Google-Smtp-Source: APXvYqzqDQr2Tyw1CVrA8UzuF1hfUD3iN3eA6nsQovNh4riXMppPXhP9mcZffXSTBgN3Cf9txn40YA==
X-Received: by 2002:a17:902:5c3:: with SMTP id
 f61mr55498786plf.98.1563580486272; 
 Fri, 19 Jul 2019 16:54:46 -0700 (PDT)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id v184sm31975215pfb.82.2019.07.19.16.54.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 16:54:44 -0700 (PDT)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 0/4] ARM: SoC contents for 5.3 merge window
Date: Fri, 19 Jul 2019 16:54:30 -0700
Message-Id: <20190719235434.13214-1-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_165448_697341_C6BFAFB9 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: soc@kernel.org, arm@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Squeaking in on the last few days of the merge window, here's the ARM
SoC contents for this merge window.

It's again another cycle of business-as-usual. We've seen a few new
SoCs, a handful of better supported boards (and new boards), and the
general tweaks, improvements and cleanups. Most of the hardware support
is described in the DT pull request downthread.

One thing worth highlighting is that a bunch of SoCs and boards now
have their GPUs described in the device-trees, since the drivers for
Mali have been merged.

We're also experimenting with improving our merging flow, adding email
links as been discussed, and added some more automation on patchwork. Most
of this should be invisible for those who don't send us code.

Please merge!


Thanks,

-Olof



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
