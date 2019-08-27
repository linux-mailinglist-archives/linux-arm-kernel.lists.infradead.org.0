Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D06E99F122
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 19:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eLAfYu0qgLMaaLsyBz81aR67+oEjNwip9hle+oJxsrA=; b=om9
	8oSVNW7ENr2m92dlDRSvzJ9wgZ8eQb1B9nD8DBKZcbHcDa41B4V+TfztFa7w4/ng2Dfsp3utDtHSw
	Ud0lD76ope3v9BeHCWQk5MB/mPow6C1RsnMMj2vob/5lXgVxkIiD2DLePokvkewmjwafFx57d/I95
	Ki4LdfP9rjYxQ/Fkdwi4tfhA/LrcCk9wcwUv4bBKPjPVOL3ppHQ+l1+IcEzkiWDheWRbAjD6u7W8x
	yameac2Zil5vUrUZmgqxUgE4cFPLAhf0OHV8kSvQ3Nb+2xFEPGIEZJvk3mb5OcaRhp3cBteR9W3zV
	fQnljd5YnjVlb4KIqi287PUu4QG7Utw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2eun-00087R-3p; Tue, 27 Aug 2019 17:05:53 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eu4-0006Ru-FB
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 17:05:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566925495;
 bh=qthJNrtuM8pBdEZZab622Syq/04SnshDxQ2PcFBexUI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=O1NRNbF7UROsPwOAEuNmwj0fy5YwPUg+6aoazddAVyJM29gCdaJxpRW5jfpzR9OHS
 9AfQ9q1ctLb7l1nodx/hfMwDteO7cyVi0krBLkZzI2M0hJeqrPXr5pZqih9k9fOfm2
 ilHPgQpiqHaBlYg9mnZJ6pZ9GEnyRWBuwynjPLHk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx003 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MBFUT-1hsSHa1YRR-00AEF4; Tue, 27 Aug 2019 19:04:55 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Wolfram Sang <wsa@the-dreams.de>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 0/3] i2c: bcm2835: Add bcm2711 support
Date: Tue, 27 Aug 2019 19:04:13 +0200
Message-Id: <1566925456-5928-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:LhDBa2yNwC3zkMWXPUedjbf8o6AioAbq0LbLHZXwEo4aC7tYQzD
 Xb0XKxS9Pc6pBNqha0wpQe1Vv/YmmI+VyPE4aIz5aWbPGnn44srnLfJR0S98Pm4xGuAWbNU
 Q9H4qh2WHP0qEJ0vS9itbiRGd0oISVrPGvq+I7d+zlBe70j4o0/hPx+3b1BfObqkAvTioUm
 Y3+4NjEbnmWQIZAG9bHBg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qmYvDv6WUOU=:h+Hwczhx1xkpsbYEl+DZKl
 HKBg15n2enyQOAj5Ympa83hDK1jNjBr4UTotsJ+wQ014+Iuxv1fceEu/udwt5ms9Jbu3yaXR/
 DtcYG/FqhqFChFhaJPOQidi5J86W1la7onT5yyZaIx7I9g1rj0FgV6k3TFsEO3Eku5fWrKTzK
 A+MLffIBZmnW5175eaxYm9mSgwBt35jNQL04a1C8rdMJgMXotLX8hl6/7JDqGl+TWK3NYvW0m
 B+5kGeYdOWmXRjSsp74t7Nwei4zINiPvhdD+Uz9QFkyMgtH2wBNS/aEXdOy+Va9m/NmkAS+lq
 496awv4i3MaKf25ScX/K2nMndZVCwXJlk5MinGvO6O+9jRnBOJClwBvOISPMwnRKkeOFZ811G
 sKiX8+rCXCCpOKOEpUCjcqh0kihj+4bEdGXysYUEBho7gyAK/+FKzbvh275Qs442vIXD7SkaR
 vAoTJ0BFiUEXrs9/MoY26WQFZmI9pNTtJ6tNvf0itGhEN8oA3SEr+TpPnSQ8uFfTOrl/vD4+Y
 p3lLI3IBCn16WebelkM+QWoOvnsCRSQXkx1qKS09qbRQG7FfFk3Qgu+luCblXQCJC1VQWuajq
 xIS5uYBXY74k+3gTawsJBS7OL4NSdKR6PZtT+tDF1kGK3pYAHEPbGk1YhseEE23w0D+e9oxPm
 cGN+r/cQUjvwVQpEWhHS96cTcFYBDibTmmBq9/vdsY2CVskZScViKq+YoVWriSkTFnK59qya7
 saODvF8aACGP08VR1yOklrGIVe3ZKhQr9Gqx6tE93X+HChSZ+o0pxYaS05pf2So0MHui1nlXg
 crmjmpfg+VotbkQakYcCjFF+TWsY3BlI9jlw4VhLNZ7nVQzUlbOpIRWBuuvrpwrRd9+R496Vi
 b3XIvwGyH4KALjCif+ZH8sIVlBIfPvzO+d3mfB9J8qY83pdF2/60mhp9deNsteHoA6WvxLqWz
 UWryfFRNg2gHGvwFpQiTfgra+PnXEn2AsTEVG2Uw/3rUxiTXTou3/g3QaN2eCAMIYJm9sI3ef
 8f71tI3UrxOI2g18iWVFW3SqnoCHUpditduo08unh3j9m/YLlIaKXrLpK/ghSsPjQ1VtYfEuV
 rf9PUN082GiNn1sT3/UuQZZ0zQ0/Dai1kKiTQ341tS95lUmKQmGqoBRmWPyWavoE8WZ3ydwsl
 Hft1PsltlDajD4fMserQdzDzYYdx9jEBjJkIrv3tKcmYYQjg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_100508_903488_AFF1ACFD 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series has been split out of the recent Raspberry Pi 4 support
series [1]. I hope patch 1 and 2 have a chance to get into Linux 5.4.

Changes since split:
- add Rob's and Eric's Reviewed-by
- address Wolfram's comment regarding of_device_get_match_data
- add patch to distinguish the many interfaces on bcm2711

[1] - https://marc.info/?linux-arm-kernel&m=3D156571347332483

Stefan Wahren (3):
  dt-bindings: i2c: bcm2835: Add brcm,bcm2711 compatible
  i2c: bcm2835: Avoid clk stretch quirk for BCM2711
  i2c: bcm2835: Add full name of devicetree node to adapter name

 Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt |  4 +++-
 drivers/i2c/busses/i2c-bcm2835.c                           | 11 +++++++----
 2 files changed, 10 insertions(+), 5 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
