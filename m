Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C107F809B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BNOSr6D7iYuulb7CgCVaHcHCg2/z5UhYn8SChYA4bOc=; b=JEcfx6pG786FRoF/HfNMDlEhSt
	46ifCJ82eotzm3KV7O7M08Adw9vLRyWRFPNOMhtbxjPZ6Xfh+E+PLYJMmH+m9CtVi6awUl4TIQT4B
	WBQSv6hdAPhSrvPvG+YBAigzfwWgXOq7JRQBkoz+h02lqIyWJ8Gq9Mn+0XPx7c9yX72j/028dCzAd
	AHek5nmu6FQZJ8rsJwx3Yfq75DcQEHjiweJHu26IAMmMHcU3oxfoZzuywty5g4iMshoNFTilRZrFH
	Y2pyoi22FSsrVkb+Ceu4bWg6wu8sqvY7Hs6ByrcM9zCQANO8a7tflRk0T/w8avxbmv0JwjybKDdAc
	vYfsUhog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFjt-0002bG-AS; Mon, 11 Nov 2019 19:52:41 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFih-0001cu-0a
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 19:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573501791;
 bh=jyAikbVVRrPYgn/XSwbrVXcnTYEvKUjvXNC1/tigGeU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=i/dlo/DUcvwxzGVktgQW99DJ2Vq+tJF6Cd2QGH1Ud0ws5cwuYr67vyCqFtqYfqVxt
 G7v/oy115FdmaJLyecIxDw/4nJYObyvHjJIHf/pcIIeVoAssAvTs+FoiWGecOkeF7x
 aAPAjHGANJEie+Zp2bt9+i077vRr/Yg+mIMHu0R4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MzhnH-1hhUek2jXl-00vdsF; Mon, 11 Nov 2019 20:49:51 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V5 net-next 3/7] dt-bindings: net: bcmgenet: Add BCM2711
 support
Date: Mon, 11 Nov 2019 20:49:22 +0100
Message-Id: <1573501766-21154-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
References: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:xBehJ0MPIR6kysFz74j6TneXJCtJsc8Ik14GvPjliUkZNbYE5eu
 se1t/umwYp46w7t9aSD9NTCBzsAd+4QG+tnUKdP/UpGT2RlHrzfj/Qrw8n5oxS7+gnscMdD
 UaWtdt7hCIvHSx0kxpSfA4vbH4trDFbPW5UkYhgL4C+y+CCboLoRLOiTS738Ct+MVogLK1A
 +EqmHZOIHj02BhcZn7IbQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aHNgqRhvbKQ=:1eqhjT4X88JxB5c8xm91rE
 txFPAcx26aPKZK74X8qLWqydluXMDviQ3StJ8WTgy5My/CKLihzvLfqrXbv0r2r8nJlGiWjkW
 5FCu5zSO3U9ebdi2KVwKr2OqvOYYm/u6rGrdgLXZXTRsQrDfKFN69El5r3veHh9xC5j2AqeGA
 tcqMzeiyXJ3UcZbJX4Er8tL27pg0LnaGAShqw7pjlw4XB5Yl5oK3hHUMdgPfhTpSPt6hNoBsD
 Jn1LmfbvgU+zNt2E2NQ3YJCXo57Oqaj+AnTw3aNiYxP+jiOI/JbsnZoDKvPfZzWQC+3cEavlB
 mNZ/hPFOF4CiSiD8B/YBZ09ND6TR6KinPVdCBD+KhYf5TaP8Ax3Le6CHHeLZUA1vgkHeQKZCm
 /VG9N226znsUQvyhpapIbp1vm5jG0u/Kytb58P/r32O493PG1du2XLGwiDfB1fsAG/CtTScN5
 cNjlIPzxHhspJXcu3IKLIB3cKDCaBegkqd5v+FAYL277Lb3UDdoGxdNNGbuMUQ121jW7NAP3x
 cHDsjOPNoMsgzlLKT9+S42goB0+qdZE1QZYlH+DL4M0HNypq5AaJ5Tw/Tl9CAh89lsl3YHXUH
 77bglIDa2QILjK4ep8iFeMRdGXa7C33KHNW5okQwKjx7pmngq8HeRloqT1V3Vo98QbDfDSi+O
 F3hM6/tw/AWlCVQpIpWczpaDeX2yGfiqCZUSzXfM9GrHyWH9Yz4PnfyukM3WUH3oQw8MwSt5Z
 4y2uLh+kH5laXhIScerz5eFJ8xK3jwb/JmAcw0hOlTQhkWFRnL9va3xF5LA1xRncatWzhtP5L
 GJZC/qAl/DsUsjkrXczdxIZmSPLj5qMSe5KPxEiO1G92bgSK5h9kzxQJAp7BYSRctAqieQdoI
 QQf8ltYr1Jt6wy0E79ZWP5m6VHBdKjO+siK5JSYipra1qv8RfOiqTIwUjXTm7gHnfQ0ETllPx
 PiOyO1DUT2zuWqwb6/D+pX5S1yL1FZHlERbUWouXsVpfJHXW+CS600AQ6MG9WiitIceCgi8Pl
 3WSe+IHTM2T9wULMTlLx2Y4uinmFoRIwqOuv8FIZ+YmNJK8hJcT39d4BfZa8Ad+TrO4eYG8H+
 pDzL19DHyT+eVQ9+dF6bMbLHyuWFp9GjX8J+yNa6OkAGNS8Vv/NPE8jDkTk+rLIFskgtKdzQW
 LyxAOZnuncaEDN4IZ4AHE9sFoB9Byzfq4TE6Shp7Xf5J/GGBcrYF2LKyvAnyE9Ll++Lm9Gfnq
 EJB1YuRp6X6H8ZKW36yDN0PL2BqM+5/uTii9UuA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_115127_352474_5AB1CD84 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Doug Berger <opendmb@gmail.com>,
 netdev@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711 has some modifications to the GENET v5. So add this SoC
specific compatible.

Suggested-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/devicetree/bindings/net/brcm,bcmgenet.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/brcm,bcmgenet.txt b/Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
index 3956af1..33a0d67 100644
--- a/Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
+++ b/Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
@@ -2,7 +2,7 @@

 Required properties:
 - compatible: should contain one of "brcm,genet-v1", "brcm,genet-v2",
-  "brcm,genet-v3", "brcm,genet-v4", "brcm,genet-v5".
+  "brcm,genet-v3", "brcm,genet-v4", "brcm,genet-v5", "brcm,bcm2711-genet-v5".
 - reg: address and length of the register set for the device
 - interrupts and/or interrupts-extended: must be two cells, the first cell
   is the general purpose interrupt line, while the second cell is the
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
