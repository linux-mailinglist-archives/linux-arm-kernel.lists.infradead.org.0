Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9938C152885
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 10:38:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zJ6wAFGuKANdRV7dnvkMyGK5CMhczf0ZRVNtCc8MJxk=; b=XiI/VpLNw0GK0P
	W6aeuJVVjCGQkBVxp1qxhNl5tORnvoDMJ5Jy/rp8oB/rhplQfOpUT3xZHkFNxFkws/oWUd2mXHlKN
	UIhFeo9m+qwEdm7Cth6pjGJJRy+zNztxu02CezllckIstqa/f6PMlpDVcN0Xq0me707ZKkojmdNCr
	S+7xwUdjwSP3zeOc8si20vNls1ADc6J/g8QoNRATDnY8RnZbgP3gtlkZx8uibLlt2QCyWEvdz0mBm
	9BGLhhGg7jC96wUa8DLd0Kxxn5Dfr7L/I+5rwtbswx0W3kf1kT+Pk0XooEhHtNuZgLn6l0ujgscnM
	PABwWTbiUOtF8eVvCtjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izH8T-0005Bt-1Q; Wed, 05 Feb 2020 09:38:17 +0000
Received: from mail-qv1-xf4a.google.com ([2607:f8b0:4864:20::f4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izH8G-00059Q-Kg
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 09:38:06 +0000
Received: by mail-qv1-xf4a.google.com with SMTP id j15so1092802qvp.21
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 01:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=t+hNfXtjwFMsmQ+t75tk3QCZWXLmXlUbrDyATbIS/Bc=;
 b=MPdYJEe/X6+UOZ/iI1BO4xiJs31/Seqbo6Q05MkN0brP5sV4pUta35ASqc5ULG8ziQ
 MIUHRAe8OceKhjKHENrwwX88Qlu0xqxjT9OFOuFAAHORAv2N3GXNou/tSWw1lGrfXJoc
 1O9xQ4fansGi92J16e/+mBRYDj8j0Pb55onstvRNM6TkiRBJJOdqXPfRsL4YUzImAPeD
 gVXNWPUqdg9Cw6znnQcyC87bJXikYGVVqErTVVC9yv9HOZvUaMY94ZIEwBU2Y2wQGjGV
 t3LQeT3oP6JZ1MG+jwnSUPEbUi1mKjw1OJDzO4MlWdnEkb+z4ifpd/IdsuYlVLNIaIdZ
 rWUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=t+hNfXtjwFMsmQ+t75tk3QCZWXLmXlUbrDyATbIS/Bc=;
 b=K8vyCT+Rjm/NY6zzwmUmLmtlngWM299LxFuAImN0Otoaf4ZzDwSoZX6j1jazxdZFaV
 U3sLGB0nO8CCnhxyZTVs4wkHrZLWkn0pnK943UnKx2YR6f2hqfhHuoCygYkSmvKtJo0G
 R4GINrg+qPzGoJD0IYQCMkBxastg1CTMBDhqiADO0/6aFqTUqgyFh/QJBprA5ACJJMLM
 q7VPjdntUuL03kyrLnSgMRYmtnDvnxWqEhf/LVxml8nul2LxUDwcOi8wLm6PiPa7zNNt
 7t1peBfgjwbNIzZ+pthBe1Eq7/So5z4hkN1ZNwhU37C68CTaGRCoSTwEdY+xhP0IuVzr
 BOYg==
X-Gm-Message-State: APjAAAVnOUp6LVcugvMnkLIXojBL4171GQo/7QJe8wy7oB83BwLOGYbs
 NBtcMqGjT4eWLI7tG+bEFAcsj2zhlplU
X-Google-Smtp-Source: APXvYqxWq6o7mBKpCGRPGamchrFfwa2yARrxJ2bCNGi7q5SP7eZKkfVJhzmt1ZrNjdgv4w8hfmP3yhbrXV7A
X-Received: by 2002:a37:de0b:: with SMTP id h11mr9177628qkj.274.1580895480903; 
 Wed, 05 Feb 2020 01:38:00 -0800 (PST)
Date: Wed,  5 Feb 2020 17:37:42 +0800
Message-Id: <20200205093745.79298-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH 0/3] ASoC: mediatek: mt8173-rt5650: HDMI jack reporting
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_013804_672252_8468BE43 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alsa-devel@alsa-project.org, cychiang@google.com, tzungbi@google.com,
 dri-devel@lists.freedesktop.org, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, dgreid@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The series supports HDMI jack reporting to mt8173-rt5650.

The 1st patch is less related.  It stops running in probe() if failed
to register audio driver.

The 2nd patch supports jack reporting in DRM driver.

The 3rd patch supports jack reporting in mt8173-rt5650 ASoC machine
driver.

Tzung-Bi Shih (3):
  drm/mediatek: exit earlier if failed to register audio driver
  drm/mediatek: support HDMI jack status reporting
  ASoC: mediatek: mt8173-rt5650: support HDMI jack reporting

 drivers/gpu/drm/mediatek/mtk_hdmi.c       | 52 ++++++++++++++++++++---
 sound/soc/mediatek/mt8173/mt8173-rt5650.c | 17 +++++++-
 2 files changed, 63 insertions(+), 6 deletions(-)

-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
