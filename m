Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 382447DDD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aXjM1SO+lUDafbTQvUQSzaKoZyEbjZ7YeHjiNhAoJSg=; b=ac/
	NzbpQXVEojEIxyGjE47jhCiaJX7n/xS5a2WgdzIVc1OoKj4N30vLlWXWNvAM209dlXxNbMS+8d4Gm
	TUKv2FYjMVsXYQVijse82Zii4WEioQ0VhSDXKgdEG8qbwHSjDgusnnp6uMTnWzBLkagEV1VC8CI9w
	jVdl/9iLhuvV7z1Z3VdJv6G2WVMuL9ELKvPW6xpHFbXvmTqsucYg1Z1NRpn5AwSQFQbjR+cScIQkq
	WvhAIzkDQ4xXc2Z2eJdCD3tuaFtzV4aqNdB3KsLXUhym1/xNsIbz7fr4RtNmqFLvrKXt38ERDxAyQ
	uQe26dRM3UPFFotKS2qGeY+1Inptl2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htC18-0001cJ-IE; Thu, 01 Aug 2019 14:25:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htC0w-000116-29
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:25:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so34141488pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wqdfjCZelzqWnJPwgzst08AWytXH7in0noJ3iCuvlR4=;
 b=fhAdM1Lrq+9VF57MW/JL8GC6oIwqzLt7cARJMFqNwFnSYTvBmR5NTq7PO4XMRnsmDR
 bfQleWl0BQKmtb8m/TNOqK48GvEOMkNSUd01vYzfCcnNBglVYFNGgadwx876ze8xkw7l
 sCM47Xszyb20tHZV1rJ2RDW7EYTp0vMHH2kYEQRzQQY5GQEemxDziAgxWPjm4kN20z4X
 Oe0cDHxS8K2zLyevMw8acB0ZDBY4Nd0wjFQuyw/Sxz2QNHQrk5dgQqMvunGxKhHnN25P
 1V7UuqlPpQxohJ6g5ynKCvegG2BjpTWh+DWSoYde1gUtVM4AIgi9zSc2M+Mq4zVykPiY
 2ALA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wqdfjCZelzqWnJPwgzst08AWytXH7in0noJ3iCuvlR4=;
 b=EzAaxbg0Q6AHNPX4V0yKLyXd+MjHJLY+OFUfo7RSl2CAV9qTiB14pyo/28XNVEZk9p
 XKcV+UfbCHgDdAkFO2wxM1552HjKN9CMpegFKV8sEcJGBCxC7Llqk1kIioGrIZDqBch4
 N69XtCBXDqSseAx8Yl9I68SZGqvK6RqGfZR4SL9z9GhKI3HHkZgJ1hiDWF3W8bK3ss1d
 TLo4cYVWH2M+diNXxPM5T5n2qQvQX7BeC6iAkeIDveT1WuJF45vg6NsYNo6zza8PDHwZ
 aXRzsftuM3Ilgj3h8REb7PL1KpXDk4Z2HJ8RKqUn/936V6n8+mHPN2i4spXDLu4lVVrc
 yWNw==
X-Gm-Message-State: APjAAAXza1Em9bCBfvEfSdh7D0LYRci/hrIOMlxa/8Qvk4HVv8voHWJq
 dNcfDdBZSElSgSUKjL4lysvrxeYw
X-Google-Smtp-Source: APXvYqxU2dGXfve+crnOEIX6KiXRUJlhkFmVEG5DRFZ5q/sJHuo6OWY0gZstO3EuHMWN1OKU1f7NoA==
X-Received: by 2002:aa7:8202:: with SMTP id k2mr54818466pfi.31.1564669504972; 
 Thu, 01 Aug 2019 07:25:04 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id f8sm39456311pgd.58.2019.08.01.07.25.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 07:25:04 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a77995-draak: sort nodes
Date: Thu,  1 Aug 2019 23:24:55 +0900
Message-Id: <1564669495-22718-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_072506_109992_A69361DB 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes.

If node address is present
   * Sort by node address, grouping all nodes with the same compat string
     and sorting the group alphabetically.
Else
   * Sort alphabetically

This should not have any run-time effect.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
tree.

 arch/arm64/boot/dts/renesas/r8a77995-draak.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
index 0711170..fe14792 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
@@ -19,11 +19,6 @@
 		ethernet0 = &avb;
 	};
 
-	chosen {
-		bootargs = "ignore_loglevel rw root=/dev/nfs ip=on";
-		stdout-path = "serial0:115200n8";
-	};
-
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm1 0 50000>;
@@ -35,6 +30,11 @@
 		enable-gpios = <&gpio4 0 GPIO_ACTIVE_HIGH>;
 	};
 
+	chosen {
+		bootargs = "ignore_loglevel rw root=/dev/nfs ip=on";
+		stdout-path = "serial0:115200n8";
+	};
+
 	composite-in {
 		compatible = "composite-video-connector";
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
