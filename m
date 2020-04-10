Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC84F1A4A44
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 21:17:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hHSAWYqy36XMZeyJvu/p6SXD8DMhPQF8MkTl5+opjvo=; b=gfpzFPCsRekCJJ
	Gr2Y/Y/TmNtAIWsdAGX7U/+H/Vp4fTSzHFQqIw5yWww7CYFurbBzs1QryDn4dL0JsUSh/P1Xe3YrI
	BGxAIboq0tkhKYWmuO47l9m03edtGxVWyjSQVQGA9nx3WbX1qMDtv32APFU5KuOIbxMHFy4uOq4/Y
	iDMGqicfoWvcYXCHkN3yy+pJSVdUx3CX/FnHEo+BZ45NT+vOvNFbHw6yybvD/uwghhpGU/G0BzNAR
	lAUA0nvA4Ar3gpF3iXTKhMEJD8CYLyHVeLWwJ8fQoN+w9nyWyFkbmrtlssos/VhjkWD+YAziLHBGW
	IhgHTCon0D5MkeaolZxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMz9t-00026s-As; Fri, 10 Apr 2020 19:17:45 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMz9k-0001zY-PQ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 19:17:38 +0000
Received: by mail-ot1-x342.google.com with SMTP id n25so2748678otr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 12:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pGMNxl5yMaSl8w4TVy6/u5eqbJHU/Il2MpyvoWjq+Hs=;
 b=cJ4hIknacOZTf+wTNHq17b7pSjadFHPOsl31Rr/7cFhiBWqXjznKp4SYO/Fa30y1oU
 CDgEOxy2o0za+R4gRtGHD8ZTCDK/vata9dknSwXvyhiP0jkBxQOh/HFgD82OvIKxZ5Qg
 GVlL42E+DSIrJWrjAB/hLCC41H1by0iDzKbzytR2Dyi5U4nFTQ9utqE8kI1+PKxK68Tn
 PTmNiSgYbjlMyUDrbb9Y9dGq42a28vdsobMxH29zntYKSwNEIeuqawyqtvbJ1l45uIo/
 FQFhsXzEqhns0G+zB3YZvjF8PPkiVpp4DR9/uZdINhyyajINXUs1xVP73IH1e/avxy+9
 RG1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pGMNxl5yMaSl8w4TVy6/u5eqbJHU/Il2MpyvoWjq+Hs=;
 b=amyq5bgBP75KtnBEAhYAsYlXi7XO+w79ewCBuwBzZ60JxFXaaaHFq6wi2KUWyfinC6
 4O9j9Jc1cnUoDpPk7WfFB9HvHIswCb3m+MxC2pxWbYffXDVjd4X4OAEV0IrQpMP+f5lv
 bzoj0O+jbLX/4b36XcAECbmQl0+EZmXM1ef4EM3BGtxXDYQxqNSu5hETCqR2JgKUHTuJ
 gvDS4Ye4mH7cU18g/CC+kXAPWezkVZ/zjHE1uAluqOk4LAZsMTqsX5anKvnyjMn/nKky
 yGMEcHJNXvocbdRBFxONkp4EK3GwtWfw6/eVLllQhljYWd0tVZSm03ulqtQOGmm43+bD
 iW2A==
X-Gm-Message-State: AGi0PuZNyzvS2Nefrp7xTscOPZDu5cIMU4apDFneRG0tm2NsHkRd4JuP
 Yuk2gTIqEawSRbFE/oQQnoI=
X-Google-Smtp-Source: APiQypIPe6SDOZEbT2UuatfbKpEq3Q7lnEcSmKVNAe9RU1+ELrHnloyze7yIhau2lR+NFI1Io5EAuA==
X-Received: by 2002:a9d:6a95:: with SMTP id l21mr5173279otq.237.1586546255357; 
 Fri, 10 Apr 2020 12:17:35 -0700 (PDT)
Received: from Andrews-MBP-2.attlocal.net
 (45-18-127-186.lightspeed.austtx.sbcglobal.net. [45.18.127.186])
 by smtp.gmail.com with ESMTPSA id i17sm1597363otc.16.2020.04.10.12.17.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Apr 2020 12:17:34 -0700 (PDT)
From: Andrew Geissler <geissonator@gmail.com>
To: openbmc@lists.ozlabs.org, joel@jms.id.au, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: aspeed: rainier: Add gpio line names
Date: Fri, 10 Apr 2020 14:17:04 -0500
Message-Id: <20200410191704.82625-1-geissonator@gmail.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_121736_847114_C8079C2A 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geissonator[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
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
Cc: linux-gpio@vger.kernel.org, Andrew Geissler <geisonator@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Geissler <geisonator@yahoo.com>

Name the GPIOs to help userspace work with them. The names describe the
functionality the lines provide, not the net or ball name. This makes it
easier to share userspace code across different systems and makes the
use of the lines more obvious.

Signed-off-by: Andrew Geissler <geisonator@yahoo.com>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 34 ++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index 0a7a8b84c118..01db238ce741 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -70,6 +70,40 @@
 
 };
 
+&gpio0 {
+	gpio-line-names =
+	/*A0-A7*/	"","","","","","","","",
+	/*B0-B7*/	"","","","","","","","",
+	/*C0-C7*/	"","","","","","","","",
+	/*D0-D7*/	"","","","","","","","",
+	/*E0-E7*/	"","","","","","","","",
+	/*F0-F7*/	"","","","","","","","",
+	/*G0-G7*/	"","","","","","","","",
+	/*H0-H7*/	"","","","","","","","",
+	/*I0-I7*/	"","","","","","","","",
+	/*J0-J7*/	"","","","","","","","",
+	/*K0-K7*/	"","","","","","","","",
+	/*L0-L7*/	"","","","","","","","",
+	/*M0-M7*/	"","","","","","","","",
+	/*N0-N7*/	"","","","","","","","",
+	/*O0-O7*/	"","","","","","","","",
+	/*P0-P7*/	"","","","","","","","",
+	/*Q0-Q7*/	"cfam-reset","","","","","","","",
+	/*R0-R7*/	"","","","","","","","",
+	/*S0-S7*/	"presence-ps0","presence-ps1","presence-ps2","presence-ps3",
+				"","","","",
+	/*T0-T7*/	"","","","","","","","",
+	/*U0-U7*/	"","","","","","","","",
+	/*V0-V7*/	"","","","","","","","",
+	/*W0-W7*/	"","","","","","","","",
+	/*X0-X7*/	"","","","","","","","",
+	/*Y0-Y7*/	"","","","","","","","",
+	/*Z0-Z7*/	"","","","","","","","",
+	/*AA0-AA7*/	"","","","","","","","",
+	/*AB0-AB7*/	"","","","","","","","",
+	/*AC0-AC7*/	"","","","","","","","";
+};
+
 &emmc_controller {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
