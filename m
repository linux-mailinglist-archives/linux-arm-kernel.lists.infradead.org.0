Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA36B4848E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fgwmhrrx/wlEXUZg6CR6fNSPr6cDKN+F1V4AQFWtDeU=; b=CM+clIWkxqJjFzfurwmTpf3VXT
	i7f3AYc5H9fyBk4nRFMgKc4Ai4JBeHV1WDWUatvqFFwuGJHEoYgSFHRf28NtQGY7yVfIknTsx2Nv1
	s+TkavXcikLxqKgpsPp4oR5BI1PcpIiQeieitbltVabWrwShVd+pkUzo2xbDZe2yo/4JBWPw7CDwe
	uJ/XDTLEl1jTdNCa8fFFZT7CR12eY4Su9CcutT7Ao6TBqeC38O1wi6EJ9jbuuTZBNK5ZrqHP645ss
	edLNgFtmBHTsE0KNtrWcrPe5s7jrjai34fFDowHZ0FY7Mq9EZWbhwqNG2vD21o3Pb4aviNVtgVsZ7
	KjSSezkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcs4y-0002dj-DQ; Mon, 17 Jun 2019 13:53:48 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcs3q-000282-DC
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:52:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id 474224E2056;
 Mon, 17 Jun 2019 13:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1560779558; bh=Aj++pHqYU38RgUVjzVhEsZzLuCxpd2JOWAVI9sMYaRA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=S4U1Sxe+4C3i45G0++fjoKLLoPuGiYFnV45LIR7xwcQkULJRaR5cEBqgltUBTqJxQ
 yvqkDt4Hrhf5iYXT1GLniZvCZaUTWe4KHi6y/yEMigYxEtN7QoitL87wJxuA53YBnN
 vgtvIeADmhw402/LJsmHbwXc5VlVtFtN15yxd+i4=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mZszWopw6Xxc; Mon, 17 Jun 2019 13:52:38 +0000 (UTC)
Received: from localhost.localdomain (198-48-167-13.cpe.pppoe.ca
 [198.48.167.13])
 by node.akkea.ca (Postfix) with ESMTPSA id C689F4E204B;
 Mon, 17 Jun 2019 13:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1560779557; bh=Aj++pHqYU38RgUVjzVhEsZzLuCxpd2JOWAVI9sMYaRA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=bu2bbmvf3kv1ajxpc5pSLVRtt/qGYs3YFRSxRn9ek1HHdXi8vbftnE+Pg/HP+NuMd
 LrFfAYckOBiFIK/M//9PjNhkmj5RThaS+nI8i+sqkyaTaMsH+q0VafgGIRm2we3CcF
 dBrPRf6vdbp6om2cGXX2foxz5EmOJhbiIqKM53uY=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH v16 2/3] dt-bindings: Add an entry for Purism SPC
Date: Mon, 17 Jun 2019 07:52:14 -0600
Message-Id: <20190617135215.550-3-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190617135215.550-1-angus@akkea.ca>
References: <20190617135215.550-1-angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_065238_445653_858580B5 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 pavel@ucw.cz, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an entry for Purism, SPC

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 64854a9e4c57..8835ef3aae4f 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -735,6 +735,8 @@ patternProperties:
     description: PROBOX2 (by W2COMP Co., Ltd.)
   "^pulsedlight,.*":
     description: PulsedLight, Inc
+  "^purism,.*":
+    description: Purism, SPC
   "^qca,.*":
     description: Qualcomm Atheros, Inc.
   "^qcom,.*":
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
