Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57414B713
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 13:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MurX7YqqtuMcWcyyG2PbvfisRCc2lslGQmUxI9rel+k=; b=o+34GzhfT76XWw
	6jUJYar2Fwh6hjBhD8UfCyNmtdeKnVtqHviWNE01Lx/qVzPw0bHdXmH/ixpVF/QU/bTJXmTjTSVbb
	bku8qUmrgakkmHi9zxeXpH8Xcl3yEbR/7EK5WaW7qIw2wddZ4Ok2aQV0Gq/6UGteeVEA7ZOrK0jo4
	jeVepuL9XLR7kC0ndHq4QDzEFAvKl7OY7U95dtmq65wYoE1OtXQy6rdLOGNXX9a+FK6pTxWly/a8/
	oKM7QtVOc1IIkIUR4nudm/5wZEaQipbAt0Fc2YWbwDHPdfBzIy19MXKZ94BtDEy7zvAyQxlAQ4yFu
	EFioFlQ9F7ENK/EHXkpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYoV-0001pP-Or; Wed, 19 Jun 2019 11:31:39 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYoH-0001ex-Bn
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 11:31:26 +0000
Received: by mail-lj1-x242.google.com with SMTP id i21so2907496ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 04:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=gIfkWT1q6BUJSVKsEepl7xi96yPZVfmdTElGnPdPG+I=;
 b=Kj76DRzoq7whTi9jGsTHLUM8ByZGrDAWXShU1hXbpDY6ZeRay6tKbGh1tD7YRtScty
 8D+78OEB/Y/hmrhEbjFyctPjnTmth3U5nrACBaKYo7sSbgn9Q1NVYqg+HgAPC1IPmQao
 N9oPnV5UPIBPthlW0C68bGRez3alnfqPH3upR+V3PPjdRaVBAi6IvfVk88zWAb0n7Nim
 TJIr7xSh6x0WgDZiLXm9sari8Jce6J8PRua67UgqzUFSFqDT4tvPuy8h/nRamMksIZIZ
 cd+QKHpn4s8t7Fof0au8GtYN6VlC5ZqiXBK+uT+pBwZTjK3fwLc4b+M9z9eS68tk5G9d
 G+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=gIfkWT1q6BUJSVKsEepl7xi96yPZVfmdTElGnPdPG+I=;
 b=bjVxGU7VQwtcyr9lum6ohT9jifayJcg1NeVWv4RBG0jFmOAXMCp6sDwZsfQG6UzVd0
 1xBgfhxfDo3ZEZZUNcDYq4k8qAKaDyh62We4TbaF29qBwXOe2BO9Kps169kiVajWftJN
 HhxMqLeQ2PRv3Z6UxS7mGONSGOhYg93A339xKm/MFV7XHQegB36pv7sVG0jJFvaWoJpN
 PsNE80hrt2iLrzhBVRWn6JbqvFVzipbOTt/Vpyt5fAhPrZ4bWL6QBQLP8rE8W9obEr6w
 PaStbjSEucIIXayWx+NR7n9u9N0PUpoGk4oAVAm9YFI69mEA6eFLOQWZMxMnIt6CMLpb
 /eNA==
X-Gm-Message-State: APjAAAUPukAUu7b+pK8wlJQYc2DE5+tX/Zeebv3uWb4xW3OA4QPgNO5J
 dTSjBxsmrR2NsUfOKq1omftTrXx0+DCdEX1uY6c6RA==
X-Google-Smtp-Source: APXvYqz2wD9uvWl9aGTLnH7f6KYYpKwwV7G4pDiaGOk6MYEeqGt9PWJ5xYiTGmHuJU08sEilEURRkRKfJ/GxcCiT0nA=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr43928714ljg.62.1560943883429; 
 Wed, 19 Jun 2019 04:31:23 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Jun 2019 13:31:12 +0200
Message-ID: <CACRpkdbTdVeDaCra3iiaRhf3vby3zMx+WaL+AQ5XhS6VSyGZ7Q@mail.gmail.com>
Subject: [GIT PULL] Gemini fixes for v5.2
To: arm-soc <arm@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_043125_418035_993222AF 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC folks,

here are two DTS fixes for the Gemini for v5.2. Please
pull them in to ARM SoC.

Yours,
Linus Walleij


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git
tags/gemini-dts-v5.2

for you to fetch changes up to 36558020128b1a48b7bddd5792ee70e3f64b04b0:

  ARM: dts: gemini Fix up DNS-313 compatible string (2019-06-19 13:24:03 +0200)

----------------------------------------------------------------
This fixes up two issues with the Gemini DTS files:
- Blank console after a while on the DIR-685 so as
  not to waste power
- Fix up the erroneous compatible string on the DNS-313

----------------------------------------------------------------
Linus Walleij (2):
      ARM: dts: Blank D-Link DIR-685 console
      ARM: dts: gemini Fix up DNS-313 compatible string

 arch/arm/boot/dts/gemini-dlink-dir-685.dts | 2 +-
 arch/arm/boot/dts/gemini-dlink-dns-313.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
