Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9C47DDCE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=G0otvH2sXE0XrZgExLv+081YDCJEN3wbqh0F5rxueBk=; b=pxp
	Ptkngq9W488kXK98W3GQazV4Y1gQCRkGWlZRQ8H9r0Pn/IeS4cFyWAaagi5wNHoAj0dzLfa7txO/i
	V8+uMAXjiTs4lo0lYAsFvxzVp02scWlg+2AwoYRpE2O/G30ZWshgfAPgD8kfPbxS6ZqJsigpoG3Jz
	/IlxhN8y4lwFg58t9ug1uUcoV2iEYHCliEeaJTwKQ1dz+UISBthOPiP5gslR1NNkrgkCw051EvwfN
	tK2GtRp9/+ok4+bU+DLaJITnpj5LeAl7S0RD8e0oSchXF3N6jQWFrI99j0NHip47zlZo0DhKsUa4v
	gn4Qd605HU7iBrsKFGM1fh96rJc+aaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htC0I-000841-O6; Thu, 01 Aug 2019 14:24:26 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBzw-0007sF-6b
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:24:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id f5so25486671pgu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Awhox3F4tQJJinnTUNEkNON8yyKLtYgh7agQgfIyeSY=;
 b=m41sf8Zg1/5ng3zQdwOqm+l4ssScRYyoqgFETtL298ZQnfrACVAx6DgWO9B+ORdn5L
 tIh+6OgdplqNwS1Rmwx9jjvt6iUlJ+ef4ATq0ItrfLR0VKFIHC9snTEKz6DgjDvPAvBF
 MBr98s/b8pDB9XK9D245HpOJ2zav6WPEgNlqt2LHU6GUgJPpw3QNxAljdMwTenOT/+B3
 7TlQJTBXS4PGr0N0O8XE4oC5+apA0JbKLSEHLQcOhqpyelbKZPu6MVi9n/+oAaxHMraP
 q6PRK/8FAyI2Af73z2mN2EhpzM962cqeWs5QJu22H5vR1VBrEAUzJg81qfLLNqKedNzA
 YmVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Awhox3F4tQJJinnTUNEkNON8yyKLtYgh7agQgfIyeSY=;
 b=TytCxoo9QbRBW6+ebXhSsLhKDFhozfFzDjxk5dvbpWpqSzo9GMBqxlaShk3HlbXoc1
 N0fc+i7DBzo+uG5xza6tnRgVkgNi386NWyHOGCDW+m6f7A0Bb90RzMxQQSrjOxwLgHey
 ZxshOGIPAM8Rie9P11+F2MtnrTpTDPD7M9YW1pFowqs7ftQvlH9X8z75diwHYWQuXaMR
 07hoQWtnGYqGS1Nc3C+Ngx3C2/okCG7i0IjLe5c7lTRyrY2FLnTnPGkX4iCH8sdCIc4G
 2PHTUR+iuvCSkr/Pr6L3N+NGKmKseyYvaAACY5LVy3wZObCceT1YnN0J17cmG5fuirH+
 +cuQ==
X-Gm-Message-State: APjAAAV7TA50pYaHCwggx8gRXK0DeoMWfEjM7Bjh0d9zD3jvu9i5Po5y
 kjFfAkgeffN6gET2ekd/pmQ=
X-Google-Smtp-Source: APXvYqzCHPtdX90V6bs3zx92DwLgxloFoOqGz7sMZeyqiE7sibp9ET/bf7tFBXPW4ALvZrsV6jClfg==
X-Received: by 2002:a17:90a:5884:: with SMTP id
 j4mr9381708pji.142.1564669443767; 
 Thu, 01 Aug 2019 07:24:03 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id 201sm86387592pfz.24.2019.08.01.07.24.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 07:24:03 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a77980-v3hsk: sort nodes
Date: Thu,  1 Aug 2019 23:23:52 +0900
Message-Id: <1564669432-22593-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_072404_319706_BD1815DD 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

 arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts b/arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts
index dd14a41..adbfd8f 100644
--- a/arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts
@@ -22,12 +22,6 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory@48000000 {
-		device_type = "memory";
-		/* first 128MB is reserved for secure area. */
-		reg = <0 0x48000000 0 0x78000000>;
-	};
-
 	hdmi-out {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -63,6 +57,12 @@
 		};
 	};
 
+	memory@48000000 {
+		device_type = "memory";
+		/* first 128MB is reserved for secure area. */
+		reg = <0 0x48000000 0 0x78000000>;
+	};
+
 	osc1_clk: osc1-clock {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
