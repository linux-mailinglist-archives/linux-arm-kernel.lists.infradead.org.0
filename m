Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C01C9550
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 02:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F54EuV++cwCnqJIYqMDnt5LP8pmbZrZ2ubydZw8I5Ns=; b=UKu3ZuCl/d826h
	hrwR0sAnKiaLOpRbEagVFbpclrdf7N1E9ENMMyXxQ7yL1FdyCwYPNGlcKMmtaKhtuQ0MFxJr5YY/x
	VtsHHXmkj6wD7eTdK0bfEI0ISluBVj+3LoEU8ZB8bfmOzaLx3zUR9WG4GhL4Rw4rhbknJXHIEROO1
	7UVbYLZp4/ipPLUeTS0k5eLjJH+31kqZd+XDQivrGYhWEswZ1MqeTdfey0WteU10ceMiibfDsJKE8
	MR5nWIZWHUZNVrKBfKLnptKZvpL8sm9w5i0q8I5WZ3JDNOQnPQz9t73mU/pNYd44lU3FtFYuYDrFX
	ZWLlUfv1pGkEV+Ha4QKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFoae-0005fJ-2i; Thu, 03 Oct 2019 00:03:28 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFoaW-0005dM-3s
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 00:03:21 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 74CBE891AA;
 Thu,  3 Oct 2019 13:03:13 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1570060993;
 bh=duga9/EcB9ODsepVPk+Bsd/e1jD6BQ1JTdG2Xp6Vhgs=;
 h=From:To:Cc:Subject:Date;
 b=Ln3yz2pkIrGyGvOK3h2DunrTNzXsdqldTqPuBEwweioGCxbbI/kouzm6cpPOw3fqM
 CSaDrKYDB4EZY9nLDGSmMC2qG/gHz01URAl2TL4kRGd6AfN5Py4VHrluv0wFeFLP59
 BB8/WfWjp0AztmhDCt7CUGHHe+qF+fRfl6oArbynpgZHPFyQ7hHFTd5hq4iM1qTavp
 M1FIkaBfe//iEGzoxyh7kHZknqZKLwVpVKAbQq3WGzejOclbY/zTcxb6V4BxwPeDr4
 qK2l09a1zZDqEBDfh95fAdZD0zM3LUn5i1DI9hILQGlS3/Xvf3LC1DM/AnaVdOIgy+
 riITwvBPZuy1w==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d953ac10001>; Thu, 03 Oct 2019 13:03:13 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 0CDBA13EEC9;
 Thu,  3 Oct 2019 13:03:17 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 331FE28003E; Thu,  3 Oct 2019 13:03:13 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, rayagonda.kokatanur@broadcom.com,
 li.jin@broadcom.com
Subject: [PATCH v2 0/2] pinctrl: iproc: improve error handling
Date: Thu,  3 Oct 2019 13:03:08 +1300
Message-Id: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_170320_526019_8E4AC380 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I noticed these when debugging another issue. The first patch is a fix
to address some error handling. The second is just cosmetic.

Changes in v2:
- split bug-fix from cosmetic change

Chris Packham (2):
  pinctrl: iproc: allow for error from platform_get_irq()
  pinctrl: iproc: use unique name for irq chip

 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
