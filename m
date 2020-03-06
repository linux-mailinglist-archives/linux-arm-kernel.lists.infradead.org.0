Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383EA17C36F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 18:02:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lt5e7SzoO1zNByqEDwFIJDrsg0TxBFTpxkFkwBrrcKw=; b=FKU00l3MP7sMn5
	M3uaKTMMtyZ3z1aTPZ84pbkGifgnvwo09h5MpxqR4YWZzpOBxX9scU6CfYfo35EPJVLr47WEiF10C
	PQxg0uv012pWfsM4vB1lyE7G9pQ/P6cR2ysxq/kgsuZ581mu4EHQWwLdNarguyAAKXU3FGMfWdF0h
	1/0uKHp6tNuqCN26qApKdlMoqfcbksneRol7L6qhUwpuvrQoAkfW2ih9BDNzjcVhwURdtmrOUXcUM
	mTSThoNJZGZrZEzkqs9yKywXuAJOsrge+E9AJ4sgMKs+eHQXrgTkdK4MfJ4T/GSPslHjZ0Up0Sws+
	nC3qXvpxMIABHlbsYSgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAGN8-0008Tc-G4; Fri, 06 Mar 2020 17:02:50 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAGN1-0008Sl-8a
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 17:02:44 +0000
Received: by mail-ot1-x342.google.com with SMTP id i14so3100429otp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 09:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0huqSOOM6TQWT/uaipc+FS4s16ouSaOa4nymxBl//rs=;
 b=E578MAb7Yr42MvvPNFo3yDbFhNAT2AbVP9J18ov7OwRiwaeS0UWnAdlPX7xu42IjK/
 55M6bqYkOS6SbkVuoPSZX5YpTLKcRGUDvUw/7zZN3UVyrhTUpMmrUyj8i94atSmzhhpJ
 LZS7Je07zTvXE46VUBdwzDh1ojHEGF/bC5WDBDx2bvne42OuXymWdMKOLknROBzFnuEs
 kVmS+VH+7OSgqPcA7L/mffmoSTi6QxV1nOpuD8qsY9QbuFRe3WBsYJFHQyWP0Gxm9Lyw
 QWN6bf2APE3id1PWNFTsri3m4NlprvDfX2HxBVF12A+vF6mp3FT1oY7bPkk3byvq6Lf4
 CD4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0huqSOOM6TQWT/uaipc+FS4s16ouSaOa4nymxBl//rs=;
 b=sCKe7Swjh5Yh+Thj5noCstqc+G5wAF/PzOvsS5KKFMZvjU0ghA/SV6vJk7irPhnnHd
 VpsVVFWUG108HGa7h4KIZfpPGGwj4Pf3IuKMv6cZqK2it9moeyig4WEGwSzMjfZd2Ya4
 lb30GaDzdfAL4MPDkqq3gBbu7+pU7fuXeeDY12V6MuZHhDdvxly9FCk48V2zd7aJYDXq
 hjOqFTF4g7FMLYBs7pJX6WKpaWvGo3Rf1jkR+S4NkmH7E9CAhgeN+baJbMk9t2vpTxdq
 yB+n2JTieQkQwZl7ZBS15fT1JmLLOHlWIsV7PWYVpMHXknRY2KePYGNvQlZw66QLtYc5
 GhUA==
X-Gm-Message-State: ANhLgQ1Zr1zfv4nozd2tGZlaFabCnr1f46JcYNxDyyfESz64JEEHqyp8
 ybmT0BnrYFTgsyRfWjixaL4=
X-Google-Smtp-Source: ADFU+vsoao5aucvzlM9qEqT53U96NcowhLRZAwGIJeWQMdIOpwMlemrRqJtLU3zoSd8q9SxSQrbZdQ==
X-Received: by 2002:a9d:6c94:: with SMTP id c20mr3429727otr.285.1583514160968; 
 Fri, 06 Mar 2020 09:02:40 -0800 (PST)
Received: from andrews-mbp-2.austin.ibm.com ([129.41.86.0])
 by smtp.gmail.com with ESMTPSA id t9sm11550743otm.76.2020.03.06.09.02.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Mar 2020 09:02:40 -0800 (PST)
From: Andrew Geissler <geissonator@gmail.com>
X-Google-Original-From: Andrew Geissler <geissonator@yahoo.com>
To: joel@jms.id.au, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: aspeed: romulus: Add gpio line names
Date: Fri,  6 Mar 2020 11:02:17 -0600
Message-Id: <20200306170218.79698-1-geissonator@yahoo.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_090243_327990_FF591BB7 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geissonator[at]gmail.com]
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FORGED_MSGID_YAHOO     Message-ID is forged, (yahoo.com)
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
Cc: linux-gpio@vger.kernel.org, openbmc@lists.ozlabs.org,
 Andrew Geissler <geissonator@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Name the GPIOs to help userspace work with them. The names describe the
functionality the lines provide, not the net or ball name. This makes it
easier to share userspace code across different systems and makes the
use of the lines more obvious.

Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
---
 arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts | 35 ++++++++++++++++++--
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts b/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts
index edfa44fe1f75..fd2e014dae75 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts
@@ -231,23 +231,52 @@
 };
 
 &gpio {
+	gpio-line-names =
+	/*A0-A7*/	"","cfam-reset","","","","","fsi-mux","",
+	/*B0-B7*/	"","","","","","","","",
+	/*C0-C7*/	"","","","","","","","",
+	/*D0-D7*/	"fsi-enable","","","nic_func_mode0","nic_func_mode1","","","",
+	/*E0-E7*/	"","","","","","","","",
+	/*F0-F7*/	"","","","","","","","",
+	/*G0-G7*/	"","","","","","","","",
+	/*H0-H7*/	"","","","","","","","",
+	/*I0-I7*/	"","","","power-button","","","","",
+	/*J0-J7*/	"","","checkstop","","","","","",
+	/*K0-K7*/	"","","","","","","","",
+	/*L0-L7*/	"","","","","","","","",
+	/*M0-M7*/	"","","","","","","","",
+	/*N0-N7*/	"","","led-fault","",
+				"led-identify","","","",
+	/*O0-O7*/	"","","","","","","","",
+	/*P0-P7*/	"","","","","","","","",
+	/*Q0-Q7*/	"","","","","","","","id-button",
+	/*R0-R7*/	"","","fsi-trans","","","led-power","","",
+	/*S0-S7*/	"","","","","","","","seq_cont",
+	/*T0-T7*/	"","","","","","","","",
+	/*U0-U7*/	"","","","","","","","",
+	/*V0-V7*/	"","","","","","","","",
+	/*W0-W7*/	"","","","","","","","",
+	/*X0-X7*/	"","","","","","","","",
+	/*Y0-Y7*/	"","","","","","","","",
+	/*Z0-Z7*/	"","","","","","","","",
+	/*AA0-AA7*/	"fsi-clock","","fsi-data","","","","","",
+	/*AB0-AB7*/	"","","","","","","","",
+	/*AC0-AC7*/	"","","","","","","","";
+
 	nic_func_mode0 {
 		gpio-hog;
 		gpios = <ASPEED_GPIO(D, 3) GPIO_ACTIVE_HIGH>;
 		output-low;
-		line-name = "nic_func_mode0";
 	};
 	nic_func_mode1 {
 		gpio-hog;
 		gpios = <ASPEED_GPIO(D, 4) GPIO_ACTIVE_HIGH>;
 		output-low;
-		line-name = "nic_func_mode1";
 	};
 	seq_cont {
 		gpio-hog;
 		gpios = <ASPEED_GPIO(S, 7) GPIO_ACTIVE_HIGH>;
 		output-low;
-		line-name = "seq_cont";
 	};
 };
 
-- 
2.21.0 (Apple Git-122)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
