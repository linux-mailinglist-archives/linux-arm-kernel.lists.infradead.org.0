Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFC3186633
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:18:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yEAwEYG3daLOFdy3NnoWs4G7cryY97G/d00SyRXd1Cw=; b=uXCvn+y1upjWvi
	kuZqBqzVGVqb/V2j7V01G/U1mOmslpEX1yPfXOoAwEzAkiZX0XAjnbYlmkNd5Z0OTfjObzEY+6533
	iNOZUlGcnASjoom/Tv9GBXC4TAYF+2+tm2Yrof8ONSrTbw0ZjCCyLCiYw6PBhmcMW9yKYG1xGPsn1
	bWqHV6bslvOVfKJ+Xu96mw9OQ4WQw+kJwOMNhKPlQkmeSK6VzhMFWzN7QceO4FMJizTZgm0R+4rK3
	IfjE7VV+PSFCLlyEJ/ktNIj3VKjMqVWJm+ZvqcX2KXxE7dLXGiMLL/vWSHFqgx/14gZo4CKEdvUiC
	KsR9Hmxc92zXfWXNUU3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDkxK-0000JM-Rh; Mon, 16 Mar 2020 08:18:38 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDkxC-0000Eg-5B
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:18:31 +0000
Received: by mail-lf1-x144.google.com with SMTP id t21so13180017lfe.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 01:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=e8xWATeaFdB5A/sF3U6cna4bQhWtK6FTn3yL6JZrqe8=;
 b=NAoQxeGwiy5/D4NgofG1iWdj5/pK11R1yCxLRJFO/nxj3oxKe+HCEbyJyNbbWqNqiW
 s94eYZlfRltPMu3H9LkOmtQFxU4nmInnZgS/YQK08wyo6qiPRfS1QWaITHaLcV9L7XzO
 q2topcZIyTpLVPFmFgiqrocD9AgH467BBy2utrrHM2dGIM1VJYdLkODyQJX4HV5/0/D8
 iyokt5EfXVfGqHIfxA2IaBkOD1+cK+8lu1gxOCb0mfM1ZIBqWabAo8RzYhDiX5kGI7M1
 WMJ3jpEA2E174QD7Me5Sw3E0hbZmN5Fv45pShYuI0Ju43OTdrZKXXyzJxJKoxrTnYHH+
 +kPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=e8xWATeaFdB5A/sF3U6cna4bQhWtK6FTn3yL6JZrqe8=;
 b=e1/mklXStTsqZjpTaEigD6ZBiFs5eWbVET9trllqpQIolMlOpwCE+bGFRuFKUHvV6e
 e+qYbJkM/BTnmpod6eKwIiLMZeRU0MDgMFXeVNROrAzHQsfLQUY1SmuFW+lyYaptfZsV
 BUed2PCoBJYIIZI2xLIodi38kRIIVEvJsL5HgYnGjbtyayLOvwo8xem/Ura15WYhcCGT
 726emALfek989V2Uo811Inrvc5WQWv3S9StEJK2Dv/3L3SYLFrUuSSQcpPzd1C3X2bGJ
 FhFFhVyQc2+LUF0oEbEHctZwPu2+ZSwC/IPfweyXzOtvaQMdeqSiDNrovFWI0js0P1+P
 n68w==
X-Gm-Message-State: ANhLgQ3Kc+doaDLhKIsLwackKqrQpbKDReUbiTI3JRftBHVSX4u3yrCO
 MJ4If9c8/AbOtS1piAtNBwqBw565jLnPP82hz9nX3LeqCTVrxw==
X-Google-Smtp-Source: ADFU+vtI3uV/CYXpeIedzCSvlScxDZSrTWoWWDT0Vov6HwqDqmw4pAb5On0tSBsVGDIXHGmqXMXNYl8oyaHQZAETow8=
X-Received: by 2002:a19:7406:: with SMTP id v6mr3990022lfe.194.1584346707428; 
 Mon, 16 Mar 2020 01:18:27 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Mar 2020 09:18:16 +0100
Message-ID: <CACRpkdb8T9CZYvYEFYnQTOMoXGsn43N8TgKfvoJZjTwRHW6zhQ@mail.gmail.com>
Subject: [GIT PULL] Ux500 DTS updates for v5.7
To: arm-soc <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_011830_256957_2533A773 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM/SoC maintainers,

here are the Ux500 SoC DTS updates for kernel v5.7.

Please pull them in!

Yours,
Linus Walleij

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git
tags/ux500-dts-v5.7

for you to fetch changes up to 2118c8fd9889a5e76fe91547dcaa6f16ef165172:

  ARM: dts: Add devicetree for Samsung GT-S7710 (2020-03-13 14:06:51 +0100)

----------------------------------------------------------------
Ux500 DTS updates for the v5.7 kernel:
- Fix some DSI nodes
- Add GT-S7710 DTS file

----------------------------------------------------------------
Linus Walleij (2):
      ARM: dts: ux500: Fix up DSI controller nodes
      ARM: dts: Add devicetree for Samsung GT-S7710

 arch/arm/boot/dts/Makefile                     |   3 +-
 arch/arm/boot/dts/ste-dbx5x0.dtsi              |   6 +-
 arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi  |   2 +-
 arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi  |   2 +-
 arch/arm/boot/dts/ste-ux500-samsung-skomer.dts | 581 +++++++++++++++++++++++++
 5 files changed, 588 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boot/dts/ste-ux500-samsung-skomer.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
