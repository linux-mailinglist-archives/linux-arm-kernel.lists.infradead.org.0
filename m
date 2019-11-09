Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC346F60FD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 20:03:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GLzX2EEplUTSJzUzNLlrRtNDTOOThQ+AoSg3w5svO/Y=; b=SDb6IvuQJ93ENCFpdwEwt3wh/Z
	htvtYwOF3nb0AoLNxeOW2dWzsnh3nxYKSJcr4SZVzNtOLSicWrs7P8ZeTnuDxHcn1RzW4kRrlKsDM
	QnZ/ZsFZn3Pe0ZNwDYvhiQt+YL8zQvr6+L49drNFKrTBcELHxWA11xAw8iC8WYO4WqyzUxb1XqVqF
	Vo6Y9uoMe1Q783xgMoR/v90eERrRyjKeQzEe3e/h5/8BlEU2Reg/s7WpFePB2G1504TmdmdALfNTX
	mPyHVGpUM0EQqIBoTpIuQ92/eU+Woc9FE0BorEbwrHndUfz+puK4Dt13y0CQaH6CkTgRZFR5abGvB
	8qV+2qQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTW0h-0007I8-LB; Sat, 09 Nov 2019 19:02:59 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTVzr-0006n5-8T
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 19:02:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573326040;
 bh=JVZl8W/9+KNx/j1P/L1YRs6FPMBmOMu1UabPhPEYHhk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=DzQZLIz11T7B0jcpKMacTWNzT9xT9IJVM7VzKQz80cPYIi5oj0v/xhbcTADaPNBku
 eTntYI1c0nTMjAyVEKCx/iatQK0GsBh3Ne53zLMyf7RupV8rAEsv0goL+Lwd1FQYDo
 UK6sHj1gdc2RwVnsRY/2iGrdZkmC55Qi/e5auU6w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MaJ3n-1iNrBy3naH-00WDmc; Sat, 09 Nov 2019 20:00:40 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V3 net-next 3/7] dt-bindings: net: bcmgenet: Add BCM2711
 support
Date: Sat,  9 Nov 2019 20:00:05 +0100
Message-Id: <1573326009-2275-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
References: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:pwOME3b6oWQDA7hj+VvM3FemGnxDGMVtUsrmvUWBojPjbsUJj5g
 300M716nvIH+/zzW6V95lzzIdameXkzy+65nxaA75HdvSqLrcJ2yZnwSz7FA1wfFpen+iQH
 tky3K6sTWcon0UzYKedln4kAsK8ye8zgkz9Hqpg4yb3xyM3Fk/zpM+a4O2QFOnMprCq0r1V
 BQN3WJ3jsfL9CLL4aRf0w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KGhR4dW8DD4=:Ia2jekfGARc0JTClwjuthO
 Ggbca56CYDzUGE4+duwBPhXaaHf1RBeXFkdLcC3OaenVxeQ8lxnJgKLkZb1wmzpHZtNhXJgns
 jAUtGBK1aFiyazU3OPEAWh/zpQcI3kavjFedgFdmP4E3bhFF7aY5GemASALMGiNEC0ro67nzn
 OZSgGl7b0nAxzgwdZAody3dipOLABhxh9Vt5EH4PAnHh/riFe6ywP3Ezp2MOFlJ+zihhTiw5M
 h9q32ulShIW8c/dMTLZNog1pAZvGDFyieYjOiNajKCjnktVEnPk+Sguaelc6qD3+8bi+RImYL
 LpDHCRZUslUbawDEEXVuzpZxMwF2QhLhG0A74fkyGvsSk3Zw098XalWDPKh6Ce5kXmvtwN5PS
 bIKGepNUzZhMWdvSXHNVvWvSK/xbSUY4PnzNsgmBx6Mw1lOpxYvU7EUsLRDd8pwHthuG1ZDVA
 HzmeY1NIjsOGhsON9/ZmiJkhEDeh2VwWg5mqbQ7KGm4VpgTJUvgA+Z6cqSkf3VfyrDbcyhG1c
 ig65fhzxN/sQXtT2Ykl/z2jclURcPWEnEQvfchloqVpbPpan3vk0YlExdDk7xbLpxY7cIMc/4
 XnqS5+1M5njW5tNVy1rqFD8H09aGuzgjbDzykBsSHE6pN/jsSscn8ZAgqBx/jiIK3OaxMz0aO
 Ea3+t6NJA6VIJoLJjp2tz8uOOKKG3uERMrH5T/q1BRjNk1Kyb8Y+90AwRFUO5WG0yxqoW57a+
 GpYkZTldT/7noge/ElaTZp6KhBzHAc9YvLOo9yCoNuLCNYf0++otADT5fTSVM5StNF6gUFkga
 lwbsWcy5SCD4HFOK1OxxxRZ/pNHvxwa38razR/LW5Vu0zL8DpnNKRaUmjzLI8IQsP8b8UlIzQ
 gO5qcl7OZkjczFnZoxy4jQOrKxYbldepKHE74KK1bTBOR//si0ZEwj04h6GJbpMHpbR6q5JQe
 c33egWAWEKg08DvrzOd8fzPU3XQq52uPtmkzGzFe76+bbfeqPZ3jpBZzE0tngumXQ4pgMANkB
 IZ5Gw9k+IpY2UzE+LBwbxUM8WmI6/QvnihmhE6YRX1yyFGCT5k1tj8madseyz9FUTqkt1rxqz
 LLy3R5P/UMN1dlHfQVDbIPp/8YLODD91babv8SPolH5oZvM/KmjU2WgJn+YF3z+sbCdyh8DJV
 SKDGvx0e6vyeK01WtQbjcV7PIMaBtnvbftgzRhRMNIJZApR4tbqbBqMVxm8/Pm5QzXsUh7RiZ
 bCuM8wEp0xQXviYILNDj/NljX20pU72FLq8NOPg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_110207_588872_309A08C9 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
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
