Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E0A9BE2A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 16:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LRn/tugkOiYLthuS5az/bopwJUlA8/xwyI0EZJq1c+M=; b=ojJ
	B7fzzmhYfW/jsSuOoIubpC6ev8XMphyrpycJcEflLKA/ZmfRphEeFwsOVxJLnFIlxnwUyeNzSBHug
	25so8WFZJuXfA/Fy1hFghOaVZIJVGRfAgxRBTf64cqskDrjTZRd6TDY6u5oq03MttKWDu4ZAYusIX
	pBBGMIvlr9qUkv/Zp4sICqaVe32fZbIb84iPmi13PjRZhlQIWCLdrOIrhu9HHxvllH3i85v6H03ZG
	/FMkcARqZ6x592K1ljG9o82q8puUodX6S/RRmm4levcdiRWcWIVnlTAT4HnAn4uVAss+SzsSWvODU
	LQzaa9+lI+abeH6O3YfOIlqaWypkk+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Wl5-0005ph-0p; Sat, 24 Aug 2019 14:11:11 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1WkG-0005MR-Gg
 for linux-arm-kernel@bombadil.infradead.org; Sat, 24 Aug 2019 14:10:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NxwNPOlEiwCdBelNbrY36mK+UACyxW+14ulvrl0uPjw=; b=1YI2KF0fGuUjTZ54TKebM0v6El
 OKQH5Q/HWvXBJ6pS/eUGCdeM6kuZOzLdvxT3tE/7ZOyYbRFxoNblxQTyQu0gQhfl2gQ5fwQ1Bsr0d
 gdunnXCBQ0QoN8f0X4wO8vjIgp4v059Q94fPS38eweHjRItJRcSE0gVx4is/8tPNrcNGiUSIT7huq
 6AtZ7K3hRb8kHZV9+Lk0B2q/2Fo+PQcspgIu+o+fefiaC78abzMtpYZHIyFzPDLmtXF+dBSvd7s0V
 Jp3/qtfKhQ4f7Jkeus4wf/tvFMrMpRUL6UVaMq2Ovi1qXxL7/XAhRMsJ+oxkWUq9Zk/mv/Gj1ZXCl
 t/ULuuoQ==;
Received: from mout.gmx.net ([212.227.15.18])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1WkB-0006iE-Lx
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 14:10:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566655797;
 bh=LypcnngedSoYi/RkvPcTz6HY4amHhNBvxl4IISgkoSQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=RuCygKrGtCZMe0DwFuYZnvgU7jOth8iCmb+vQvQgmY58svTv9qo/7/0NJmwaav5Gt
 kYwADxpCzgkS4mkY+Eout3d+sWEjA+/G0+S8S5uJXZH7Fol5gJHxAa2pTYI/aAz0w5
 3axOf/wGRg4JHaUutEn/uCj8LzH1nOTFt5cSNd7M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M3UZ6-1i24yF2pww-000ae2; Sat, 24 Aug 2019 16:09:57 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thierry Reding <thierry.reding@gmail.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V2 0/3] pwm: bcm2835: Minor fixes
Date: Sat, 24 Aug 2019 16:09:45 +0200
Message-Id: <1566655788-24949-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:vxBxRHcdg0o7DcxAQ9TR8WvI9dqQ2/+fg62BFOHjfUcKOUv+spp
 RtG6RUXpVmZRgRdeoAg9296JFlfw8d2/rj1QPHagUVBiu+m2OytO/rRp9+QY50XGU5jTwlF
 wxdKcDjAinqqoj2MaJ+r89gModQsaz8UMW3OV/w4zEwyozJK9PPk3lQR0eWQp88R1nkCHRQ
 Ci1uh3KSVR4faTQv9uZFg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vtBKKpo08c4=:4mO9Bp5cmgJiWpwJZk7wrX
 wj3mdsLSaNov2Gh2X68TlOcBAht2eZjsvfYOIh6ysCsNT7MJNfY0OJC1+m4T8LlBv09KrOJkZ
 nT7M8KwzcoX8BF5rJOoQYE6/t0+abCfO6SYZo25AW20oSfRJqaKhmY/7pEPJJcHqAg1ykQnm3
 sLqnelWYdyKkxdTIGVtStcu0OMAYaAOIusDKVMvXmKcYfwc2TI926tAvpnuVKaeYPDR5439aR
 VyChsfC4JsI14R6Huooqe6Nbfc9t9D78cSJrvCoLnHU508PxQnHRQLhSI/nxtlgKsTnNVTP3R
 OUWhGEEfwumZIeTJ5dIli2SfAJZ+EKrm9OgNx6MtgR3viw8rf84dSs+XJpRNTfLreCepvwPIe
 nZ88cgZAN9dJ0Xg1ow2KSNY13BlyG8f6IzBZy46OL5vBEA6j9aJT2EFbvz9r+uvrF2kWYEYPh
 mKDkVzutfDlJyJihrv3KsYUmylYWrvKV2gt1dEH/svn7L3ToVzrkLI21DRapTMN/Mk0OtN3I7
 9io8bsFPOUy1nCTFu5vIiJgxe9KYCbEezvzDxHz2jMFLtxywjX/vHBy+BB4hJ/OUL+o/gxK+h
 0gw9OQML6bGfRnGOe4Z7ABRrkT9OWq7oMNFQfL5CGV08izoOYvF/106iHLKTFQHX/EWbpXNj9
 t3RONgRLabSC9LVs+F+4Wwec3IghPWOdzqNNNH0Gm36IBkXATkyH9KXTD2oWnFdVD2rio7M88
 tSoF4UXmHTWXvfdFZQyDsA01oFb/GbmvVVvbXslTB7/18x1SH14VGh/S669eYliJouTftuD6q
 kx+cuBzAZUQUgdRHpg28zHQuP8sag0Hsr1ByD5XCHhqmkkbMVTHljcOYxt5sqvi+NntlOfgLw
 2DSyeFeDa3pARIz2UOttPGf9pUWUcHhSIkC93KaVPV654c5/3L216YkFh2ZxfVQDMKC/DIe7S
 54A3Qvpbe81AZrse/0g9YRDoXOBwD4Cfc5uW1uwjp/+Lbt8bkyzwzWY3FgUPBiQzlFXotZvOt
 BLXZ1GAR1mvnY1gn/3Dpj8LnXJS8SQFQW/YBG1jDVk1ChVWJ6uFsv5LhwdiggFuPeuXn3j29Q
 hHJCXZc7s99a60i5yX7ZwIWeltu7GR59x7Dilzkl/eO1Fs8CzGDPSwOs+aPS9paCLq6cmhZvF
 wLK2CTBzP6jmt4asARr7rngNMCXhww94guL91Wv1/jnJt5Lw==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
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

Changes in V2:
- simplified patch 3 inspired by Uwe's suggestion
- add Uwe's Ack

Stefan Wahren (3):
  pwm: bcm2835: suppress error message for invalid period_ns
  pwm: bcm2835: fix period_ns range check
  pwm: bcm2835: suppress error message during deferred probe

 drivers/pwm/pwm-bcm2835.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
