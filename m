Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0142B8F38F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vRfaqnJ2R6lBnWPxZ1cyUCUDrrfcAVE9dhD3gNXho+A=; b=REYAPIz1qYrq1wJ+tcRUetSDW+
	arYOwm7lCzU8roq2pRG0730sRO6ENY87SuNNRbxb8x30BpHpSWG4KfUFPBJ0+VfhTn/aA5o7blQ+9
	up2RcJQs2dgcgP+cmU4dzcjXznTzh5w+l14rh3Herarkrt2KPTI6gNt5DfGoTQrGd9gBIWw88aXvd
	Zju3M945QPxQ0rKSs+xEdk0pg3KfTTSfTTqj4kYxp97AxRn3bEtPniZQtrlNhGLUPY8Zs02UhcUPw
	crO16xbqo5VgkxjIy6wsIFZTw75H+BbNURJCDQWZeE2nh35fuSGRjf2CsGBtyIpQG32BF2wfF3mYt
	p568JcrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKaz-0004OJ-1H; Thu, 15 Aug 2019 18:35:33 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKa6-0002b3-Aj; Thu, 15 Aug 2019 18:34:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565894067;
 bh=4U1p4f+jfE8K6OohTuUOCs76mL7r63DrveLltSU5d4c=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LhV+cqdI+lprBIj2hMjL3gJeo/c20eBtxgdvpx7HWuVvMORPrtqzRd69SZj22/n9y
 wNboKlMZ7cSNnmVliIQvudmxJq1EFameGlIDh+8QZ8fSh1yAeAHGDIDTkcgVHdIek2
 aTva+1DqdPRp8I9E6rgLT9GLx/A0O5DSoYYI1Hnw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MpUUm-1icsRy3Ysu-00pqyO; Thu, 15 Aug 2019 20:34:26 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [GIT PULL 3/3] bcm2835-defconfig-64-next-2019-08-15
Date: Thu, 15 Aug 2019 20:34:03 +0200
Message-Id: <1565894043-5249-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565894043-5249-1-git-send-email-wahrenst@gmx.net>
References: <1565894043-5249-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:ieIssjeS3M87b//1wptjCQdyqXxFZSiRtONWxZ1aeDN1BTiJ4q3
 meJnJqS5X+tkxD2xbJiBPU4AFXKXdBty2/u+bjd8jbVGag+2vAmP/RTu068D67fUh96c+Cy
 j1frzcQUUijLWrWCwxW0tXSodOkbijnH1w7tLm36lEKjOHR8RqnEzEhKMlnH0yr0Z0S/kj0
 6JV89oB/AoFCCDBu07nlw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:t3wIIpspCao=:ENao8h3FtHLSNX8ElhDfKB
 lgAUFnx0IIMAEPhk6BHCyOcJg3hpfslzqrYl0BCGt17shA4IRSS0qDORZtDC4+7vHirvv4xIh
 AfyGmTILtZh9k0rUJMQkNXAtGlL8v+FemOwsCriNwTdIf6rNjlcc9xK48UneiCEKoM6qR/KvV
 z9RoezXPDJHL1Jvx7JVBEvLsjv9b7phhmhNAsYZQW8O4++3Zf9Mp9YbK8xTgIJ5Cg9bvDOC5H
 jVmgLOhZ2TaNODCvqpK1ZiJec1shCX7EFVFAx/EVTgHUW3jcgw1ytT6ciFOtHxsGHlzkQzx12
 vt9SjO5UX6WoEDTctxfRO8IX/MtY+aWNf0JOT+OsMFK20q46b4gqizWZblmvEiWZ6RyYh2Fyq
 DtK3D9Hw1rlLhNQYBtsLOAEXTecFw6v1KIIslVKZwkPo+/oWMYJdpABHqkJulw32rz+EhrXSX
 QMPeDlfH4GrXa2hwkF+cZMG5mtJ6zGQSHrgn7PQnKbMI8YF++vwNWJWyejoptlugeuNVHy2CM
 Z2Z2q2aWxwJzcYAL12HtJY1K8c1TX/JXCkewP5PmacZCSsEFoCyPjZQADlu/CwIdlWzGkLHjM
 f7DX1LmsNkGeZzRA8+DzREVyUmbE001rg7E2b1ToAXeX2m/V3CDHI1Z++ukL0Ly9zHfb8rhp+
 CJLoxJNWgFWlTT+gsAcRCMCnBN8LgYA60pJ9kN3VY4Ul6m2hk2/tvqBQdI93JyBa9gzvnh3pX
 ho1PntL93BzwQVt+oDQOHTwpZcRpLtUdTpkNQn3GXel8bxSSSPNdhlpLRjJjiQPg5qMqX6A73
 AAgoqKkL3yYP8CfgaFYrPTMDqJAGuZO05pGhlkiDn56Xw6OsF9LYBG2YgII6w1jdrRiUMBG51
 p1VJ6byJaffhvjZj2nDMEdjURrNQi/xkexQaNjXpMcwsDUZqv2KKH1KK97XwYEYSjjph8x46e
 I9vbdfBD8N1CgyHK2M0k7vL1r7h5WoLRYAtU/74Pe6/h49NnHJobxWo16pUaiYUPtiAFGvhMt
 wkI87HLAphINvGq0YCNSyfCNFb9TJbCEVM5YxoEqIjRHWxOz30xkHzLPOAzgvJxH9LaqcYtaX
 yPVzMbJsys4uiZCg+UHqnqMPgpuv3LrjZ2ObE54nUcgSVRAcomcctmKc8U9ryIT/ehRcDZqaD
 q5hTGdgxiH9pvGvyKOjYtFa6VbKeHiZOWmDW6QFeBSxn7/sA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113438_664137_31166E65 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the git repository at:

  git://github.com/anholt/linux tags/bcm2835-defconfig-64-next-2019-08-15

for you to fetch changes up to e2dd73ac4440f7143e990e76bad9a46dc63a5951:

  arm64: defconfig: enable cpufreq support for RPi3 (2019-07-23 23:17:09 +0200)

----------------------------------------------------------------
This pull request enables the new RPi cpufreq driver in the 64-bit
defconfig.

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      arm64: defconfig: enable cpufreq support for RPi3

 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
