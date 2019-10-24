Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC35E3D32
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qxe3BPig9OWzO73HyG2MFHa8TsM6o4YGYO3HhNbM6vA=; b=Wcrobkc1ZfN4Xe
	E8DAZBsnu9CpYHtv9h3Nm3L8qOTN+vxGjlUHN2G562Mep1zAsXI/XtP/Xuo8YU+E8kGUlFyjYf0Zs
	3GlhO0thNFYk8Iy6tGbB37l5SU4ydzUfH1qj9UQA9GEDMHjZqf4ucAaYQIcXlXcymIeCAXFM/Ernz
	CNQ6YkzZVJO85zLcZEtqZs/wioIWE8KrsUmFczTf2cIBycFlJJHQZIgREa/uI50ZWSKztQR9t7nq8
	/4wvmnAIEdBJNxRCV2oKfgKGZIPNDge4IubkScKe3liO8Z98TuLL3BFEOY5vS96Dy/9cu6+LHGhjy
	keOHV2SR2q7VEqxCcEng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjhf-0007zY-Aq; Thu, 24 Oct 2019 20:27:27 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjhR-0007xy-74
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:27:15 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 51734891A9;
 Fri, 25 Oct 2019 09:27:09 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571948829;
 bh=TzDk+b26arhZ49teYJMAkw6XfZatjK6lDIP138sg0hw=;
 h=From:To:Cc:Subject:Date;
 b=vKpGLy4DUFGKsKvFoeBuAX7I/uu8cwliyFbFMFUrGs7H+PfigBEOvQKcvyjl2rQTJ
 c3m4Ut63NcgQ5C1jU1uCqItuOpVj9KYkpegm+5WnvYmghdtFC4dTmrZKutIqxj538d
 7rDdTNGNeh4qcDmTgXYsVWpYlBgISGue5YwCLWFpcQ3v8QivWhdpmQLhRXNhkPs+AO
 RsN6NsAxFfyMP+9sICbiq1i9Nw/kjPg8XtJGnR6VzXymfK1to2gm7cWEwstJMYOZgg
 zR2EZZHbtsZw5ImWkr6LwNYffC/2mkMwjLgSf86sOpi+kxTmrV6VU1dZOMWDS2SNyC
 HrcNQm4PTTPqQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5db209190000>; Fri, 25 Oct 2019 09:27:08 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id F192D13EEEB;
 Fri, 25 Oct 2019 09:27:09 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id B7E7D28005C; Fri, 25 Oct 2019 09:27:05 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v4 0/2] gpio: brcm: XGS iProc GPIO driver
Date: Fri, 25 Oct 2019 09:27:01 +1300
Message-Id: <20191024202703.8017-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_132713_650066_105DCF7E 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is ported this from Broadcom's XLDK (now heavily modified). There seem to
be 3 different IP blocks for 3 separate banks of GPIOs in the iProc chips.

I've dropped everything except support for the Chip Common A GPIO
controller because the other blocks actually seem to be supportable with
other drivers. The driver itself is halfway between pinctrl-nsp-gpio.c
and pinctrl-iproc-gpio.c.

Chris Packham (2):
  dt-bindings: gpio: brcm: Add bindings for xgs-iproc
  gpio: Add xgs-iproc driver

 .../bindings/gpio/brcm,xgs-iproc-gpio.yaml    |  70 ++++
 drivers/gpio/Kconfig                          |   9 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-xgs-iproc.c                 | 321 ++++++++++++++++++
 4 files changed, 401 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml
 create mode 100644 drivers/gpio/gpio-xgs-iproc.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
