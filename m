Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1FB11D90F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 23:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZT3DdOgCD2FR8zDq9jPLAH+qd//VO0Pw3wtJVi3SriY=; b=CYbOvMYgv67SBu
	nVTaz9pSO2IfgOe66hTqFFL7NSf9nlnYdwabP/Ah4BnTUIf9Y54qOa9Aonbb+ky7TW1WY5DqqWVk0
	i2T1E0ABu5xWufONJTRUeEsOYhosKi0Abk58T6puD732KuC7Pxx0/312PA2zojZom32V9bNG8gaQh
	0Cspj1qtjbDJRQDNzthwFQYxDcwbdXmPvmL0ioZ3MaMEHETCgbnIHwsgIwI3KslSHkuaupgM7Qovd
	tbASZF5uXbbPz7pLtknHK7hsT6/2LfxDTx27q6uT5la/Bs4Jf5oTgARLRfUaobyLQs8OBoBDU2IEw
	YAeaQf94WUIcm8Pyxy3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifWex-0000gG-99; Thu, 12 Dec 2019 22:10:11 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifWee-0000fd-Lv
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 22:09:54 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 22897806B6;
 Fri, 13 Dec 2019 11:09:42 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1576188582;
 bh=+GrjulGj8W3gsECBwATbZi+48pIVbe0VIJhJK0bHuQo=;
 h=From:To:Cc:Subject:Date;
 b=XHVTDYJzJrcV2AkpsdI44AqHF0qaBFkgasGDVcYAGOKfR4BXJap+uloTrglnYIPf3
 dDM/NoZR8MT2JNID49K+BkPBArU/MDC+LopMauX0hDcXAUJZAR6HqUEAwfYnAlEb4M
 cOcl3leqEFPK028/VlwsLGi5Wo8pbLH1eKC8RabqZwlhQLG6h/J3VfsUTloZ5PNlNm
 KX/JraNZgCTrZ2neWEvEV1/SFaHWYBe6Co6ydnXv+DAcQSVDztySN1PY0LPeo1ZU2c
 T9JH48yw8puJjvHYLcFQzptLPdwyp0u9egE2LD4cw6x0/cZoEZrjNdmMIkemu4QeVE
 oPtBgYBnRWH6g==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5df2baa10000>; Fri, 13 Dec 2019 11:09:42 +1300
Received: from hamishm-dl.ws.atlnz.lc (hamishm-dl.ws.atlnz.lc [10.33.24.30])
 by smtp (Postfix) with ESMTP id 2237113EED2;
 Fri, 13 Dec 2019 11:09:37 +1300 (NZDT)
Received: by hamishm-dl.ws.atlnz.lc (Postfix, from userid 1133)
 id 63604540505; Fri, 13 Dec 2019 11:09:37 +1300 (NZDT)
From: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
To: linus.walleij@linaro.org,
	rjui@broadcom.com,
	sbranden@broadcom.com
Subject: [PATCH 0/1] pinctrl: iproc: Fix level interrupt handling
Date: Fri, 13 Dec 2019 11:09:22 +1300
Message-Id: <20191212220923.15089-1-hamish.martin@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_140953_072940_A77AA0E1 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org,
 Hamish Martin <hamish.martin@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An issue is seen on the BCM56060 SoC using the pinctrl-iproc-gpio.c driver
for one of its GPIO blocks.
When a GPIO on this block is used as a level sensitive interrupt the
downstream handler is not invoked until the level returns to its previous
(non-interrupting) state. This makes the level sensitive interrupts
unusable. Edge sensitive interrupts are not affected.

The fix is to simply ensure that we use a more appropriate handler
(handle_level_irq) for the interrupt based on what trigger type has been
configured.
Similar setting of the handler is done in numerous other drivers.

Hamish Martin (1):
  pinctrl: iproc: Set irq handler based on trig type

 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 5 +++++
 1 file changed, 5 insertions(+)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
