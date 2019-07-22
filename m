Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D487D6F936
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6rNGQ/MbAVnRQih+HFF0VP+ONsMVBctm2bEpyfAAsDk=; b=dPcWQIWq7JuXBBiVus4Gz7S806
	eFYhR6WfLMX2xyyM5lOVtb1pDuoP9bK+q2uV0XnJzsUJvuhCiQvPl9gCTXu2GVpQC67GFxfdTWy2V
	EZtYhdRJSi68itJFuTkq1nfU3zGE1fqf7uc+uqrzjmLYZRsbfE5tT2Dv3wf+g79cN1G8mtiIxi8LE
	k8g67utHZZ2YzfCEsj/jm463l7vJlzJfGs4+umQ8I2ioVT31eWhFrwuwiLOwcwyfjxR4NJW3j+nf+
	V2D6UdoIOSe+soctllHYpsxu8Yn07wFMZFCr8zqciregwqI/SRvBZCrzPcVqG2q5Q6CscmIAzbTJf
	bC55vOUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRL5-00075s-75; Mon, 22 Jul 2019 05:58:23 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRIk-0005HP-Av; Mon, 22 Jul 2019 05:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563774936;
 bh=dzdr53EkDfSZtFiMzw7a6OARSi94GiDFaqLyZtNfIl4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Zoy6CrDzGb0Z257hg8xs0g4en5VEPmyESBYKfH+Cj+CsdxJYV1SqQsXjLJa0wxSaS
 KWIIcthQ96sN/IK/kUtssbyxRPfANK2ZQxlGtSK3QTuJOM5gRO89c/WF4mP5VcMOG0
 ootWrmBjktFZLjczcpg/AJTA78QFdckNAQ9k4fZM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MFz0E-1hbjeY0XRe-00Eqxb; Mon, 22
 Jul 2019 07:55:36 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 02/18] ARM: bcm2835: DMA can only address 1GB
Date: Mon, 22 Jul 2019 07:54:33 +0200
Message-Id: <1563774880-8061-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:3KYnU+KY93ySQbXoN6a7vr1jZuSLg8oR5n1EsXsNkt36rd20DMS
 VBwjTacicgyaL4favnKV7k4PUTLCz84tq75/L+aTV3VtqhtKZBCLf/tqnwY7FPBwUWhLzBa
 6eSsLC+RleLIhpzKaVqw1B/UE7GF8EVGriMPREiCsX69eLwypHAnQpaiIJsA6YsG44K3Yv+
 Pm4jcJw9o3l0kKerr3tqA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P4wBPLw9+NM=:GFs+lWv7RZDpBlDQGOMwSf
 Hl30jJQScoNLQ6Ir/S88NdNWLIdXPDdkwQdv9dc2oFCKRJmet6i6ksHMc2S9dRbKniQF4bI1t
 yVcUfXwKZsNXTjPUMhEvj2eIoXUIO7IPRnOjuHflFhmRtiot04fdXW/9MzD9T3Cjnu8w/QyFf
 AvTNO8F4JVS8y46dtCYJGZGpAZno1kWv/Fz/9mfCioH3XvkxSKvhz2L0/CsMyVWcFTRyPwvBz
 1BFLG3YLUX6P8DiJHjMy66AyWSOjANq/ojzkF4LVdLGUNKxAOnGZn0941kYtkyF2V0bkIW0J3
 aSUpU79SbqN3KLczP7ceacUt5ZsmDH6WGWhHKvP4cM5HRgdRT5fn4gBtEbyq2wyK1uLi/EOyp
 7NC5ijRHALHKZwKR5Wq5Ao5+AK5CTPlkKeR7+JEEkCrwTrWxTnOW+VhY8jUNAtdlkZ3yZSuhK
 X1t8ZjrXVybxl907t1/GkBb5EjkC6Sj62kkPfx9nKq8Ra2TVAZo+0ww4XHNVFvDfWxxSW2j9z
 L9nbbMBrpN6WslJAtCf2aBX0ii4sT1629K5qbP6nfPbjKOJqW5pJdHGIGUpivkRfOmE/ft6Se
 EDZQDNGNBznpsIfat5aNE9EZi4J4ivGs4fspOf51lWBwLFLkCA0f+P5Qn1ZtFhR+sZNc8K80x
 CHmpq1jnxNDs/RzXga1OoqM5lb/Urn845rccq1D1WY6o9EiuywVa9nCTZUES8ETXkW45F3tCQ
 ZyKndUdnPXu254beD7lyVSBkQeO6DodhR1nbtmSR4d8HMbrsIHfN3pnD7uYRgu92Zwm5r2xnD
 HL3CLpqeHJtyH6v4gA67BErm9t/zhGg25IxsH03iT6l0/xUWwUE0LGtM3vPj03vLATI1naGrh
 pdNOcDPXgI6MtJ8brbApn61dNqNjluyy+Jlr8ICZEoGa2biKBS5Wp2jaElaPBdp2Jy6Pk9mKh
 ueBYlJnX7YwYwmAoFTQvDIgcn077DIejGFeTJzhYQrZfsO7TSDhgR2ayen/ofMuyd5fNc4Fln
 Htbmm6rfIHFIr8ZjvOuFoaVvgKXKT76vD1M667L6/zkcHHhTZwbOUm0l/h+h59zuJzF8ThEzN
 LOSgChzoqBan3c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225558_695836_DFF8E131 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Phil Elwell <phil@raspberrypi.org>, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Phil Elwell <phil@raspberrypi.org>

The legacy peripherals on BCM2711 & BCM2835 can only address the
first gigabyte of RAM, so ensure that DMA allocations are restricted to
that region.

Signed-off-by: Phil Elwell <phil@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/mach-bcm/board_bcm2835.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-bcm/board_bcm2835.c b/arch/arm/mach-bcm/board_bcm2835.c
index bfc556f..d2b31a9 100644
--- a/arch/arm/mach-bcm/board_bcm2835.c
+++ b/arch/arm/mach-bcm/board_bcm2835.c
@@ -24,6 +24,7 @@ static const char * const bcm2835_compat[] = {
 };

 DT_MACHINE_START(BCM2835, "BCM2835")
+	.dma_zone_size	= SZ_1G,
 	.dt_compat = bcm2835_compat,
 	.smp = smp_ops(bcm2836_smp_ops),
 MACHINE_END
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
