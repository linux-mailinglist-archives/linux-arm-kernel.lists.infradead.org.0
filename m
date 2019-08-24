Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BFF9BC51
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 09:08:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vNyMaFj5uvs6Vx3sPdLzmmpCsB7rLVEaxPwIuTZz6m8=; b=bLD
	XnMcSlM/D4gCgKophVmgLYMgY80W7JYZT7TghawDz00KxW16MFmvHfPqy2i7TQ5Sq/E9Phc2rPDHC
	xAOiEumkNbTte1/HCaNxFx0kzAby+c3SYeX5V9b0c48xRfsWF+hzNa5B2tYLivilQ6ODqlCMGayA0
	7mmH2Nih/45/Z3expGokFWU7NNN/quqABPW+6ID7ejLCu2ZBcAj4hqKGjmc4jHoFE8Tp7Wu4CScND
	AUTUkIPQYD72LLViNCCOUtpMkkczsMEbfz1JTGd/9YNMrSAVqd7WR/lXDVAYDMsxYp9V9pKC78frO
	QU9ioFbsD7R6RzEoFGEAEJ0Pga7CaIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Q9t-0008Ij-Bt; Sat, 24 Aug 2019 07:08:21 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Q9S-0008Hm-TE
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 07:07:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566630463;
 bh=PKxEsX2rISWKrQgeMW80jwB5sy0XViIuMLHUBk/9zKE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=RTrS/Au//V1m6EYSNRGyIyWBvkOzVWmLtAKoLO85mRng3Yfk4MqUCfkhnHGB3kVrG
 a/zdlsKo6pec2dmUo0tW++x+FoY1IoXma25AKsTP7Ius0tIvPu4Vk/IZyCY2FVfvbG
 sBiAyfZXZSp5yaVzG2QMNdP8nYoOfVfhsZVeZ7jg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MgNh7-1ij2Dw1QY3-00hyJX; Sat, 24 Aug 2019 09:07:43 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thierry Reding <thierry.reding@gmail.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 0/3] pwm: bcm2835: Minor fixes
Date: Sat, 24 Aug 2019 09:07:22 +0200
Message-Id: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:5sT5Ex7dt/31unK59b6877E1kyCY1ETyVze+xHrp/25aGjWqyKl
 +7UxjOl+imgWagWboabnY3NcHgxK+CTt4kfy1Ht75YBHE1BnneMkaHKFPl8TdoAZDIiBiqK
 hUmE0zLqxBUYPy4a891QFuSrkIOkb5FCS1q3H6jLWFu3jdTcbSTcFNrMx/ep6sPLmhk1Hvx
 3SFtJU0PsIP4P8lgQIHUw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Y0qf36lRIz0=:QFZR3QfKNKspBowGFNoHnQ
 pTKW+L09U8yVdh2YPm9XE/i7ni7VMagHaJWIHC2FZFlKg6hiFJIB4WmV+GUy9cjveyexVnf1d
 eGbFhRu0HzNBrgvzNCfPUWvcCQv4tMbrR1mte3lhwahkilubNecAI9ipmBIaNHmypq+60hsi9
 HUl7d5OLjxSkCL+WVM9DdFiAgRs3mUEr4Q5jV84mwOeGieLvZ3T21A07ZfG38R3wOz514vIMK
 k20jQrXUzjPdxKGyNC64PHx1N9fmwVtV33oilrTUZ938MAAPodzQKbhZJfCGtDAicCOYhMCaS
 0I23OKtA60/y+jfZptz1bYnqA4hRzIFjmvc4kLi9L0/L+dvR5Lx+a4/I/iP8P0dmRzkysqFuJ
 yQEjcmH53M3Zou8J255U9+pSFmjrRiyHvscodlJtYSKsQ1BU4WtR31RNV6XGT+pH48KKKOCsI
 q17kOfLlNAXo22TNOs42Wt1ksI2C3ralBFiqTwgeK/bxTZI/ktrKqNYmhE60zu/Tge2+PAhiG
 6tbfzSO0UeHsiZw85eEOHp4NeReDxIFYwRQ1sLyEdn8VDl9w3sWg1wZ1zzAu6MAY+6rzFAsP9
 lgvcn3asr4fOsFgsokd1fnJolVhtxrzO6INVZXnSP8jFXfuPGtWBnaHbjkBIltt6zUCQ9AqB2
 i7xbRjutAHwnhD3utc+jeXloW6fWhs26dK3xBBHZwoJ8dV+uYkCjhvMzEKNClNNOjE6R8t8iI
 ZL//qUDLT9e/XVJZ8yonEI/oL4PMFjy1eEx+UVqyMnBYQYzQbFYc8xPgINOYP8TiRvxRCcXsw
 qBmGryLnUs9OTMdck2NDUYfC4Fw3uV5RnXbP8bV1+/zXXcTAxgUfrEJ+CKBAQbt8zcCnV9MAR
 CX/xdvGIOQnP/OVVlrGM6xYootULsHoOc+XAZY6mvFdkweqbnkqmVWMyCUj0zTQxeQN6DLnCG
 ytvpr0/ltTdLQt9Jnmox1EznIUOeoYL7hCAXTIuWGUtB9z/gvAnWRInpTTaNyCrVjHzNaeHRY
 L6a5jD2FWBJTcGQTnv4vmWpuyLmeD3RsdRhtQTdd8PclewWaC9f36BkPE05dgRsiIKCc+KBbw
 Sp1T1X2jb7g5VHfSQlnR/H4fR8O9ixmSIuknfBsDfn3fz1XYDVnRwtKlx7NSbrUsLZHE9CHGM
 36/T40kjbsy00Dw+nfc0At7DbxwG/ZDhtT0BCCCswGBxkEIg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_000755_232718_B59B07AC 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This small patch series contains minor fixes for clock handling and the
period range check.

Stefan Wahren (3):
  pwm: bcm2835: suppress error message for invalid period_ns
  pwm: bcm2835: fix period_ns range check
  pwm: bcm2835: suppress error message during deferred probe

 drivers/pwm/pwm-bcm2835.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
