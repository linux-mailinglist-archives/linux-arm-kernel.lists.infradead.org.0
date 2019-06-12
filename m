Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D11042C39
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iszIlh/PHxxOhfH+vy3fqnW9vFs3BD9f71BrzObIU7s=; b=rdm
	IVoNbasHCxMjYKVqyU9I7Frg7je5ARkg0rHAsVMyDc0IWrCY38V6cBihYXwTYjFo+zOWF2aFiDwiJ
	UQl1htj6VPlThUZLDIS/xWDzYCxv9NBk5vilfm4fwKsyOhwFiqWbgxmErZLssTWPECwJE4zbhIoVv
	Oi+q1WBb+XeFW60xyTti66zxhpuqpDvRi9S8BGr3sxMroD7UAkfTgZtFKWVmUvdBkTEBxSgqaJgV7
	VzMF7am+jNk2FMuP3lkXyUYg/KQ6Cx2Tp279iL9taGTYjr//lGlCaKTzzKAM0LhfL8bYLdMYM91/L
	OdqkTstBVsZRBOUdz+5D+E7SZvyqpqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb67A-0002Ax-Pg; Wed, 12 Jun 2019 16:28:44 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb66v-000295-6C
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:28:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so9951402pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 09:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/637Q6mpGunbWTAeL4j92iIRZqh/BthAxQ35Wp87uVo=;
 b=kNy5kaOzUSULBLa2qpUzpPcKl9RFuSXoIoKo4YGwkexxHVmH7oVF+JRzf/aXzjmedx
 wgLvedExBw5Y/CiYz5LCXINEWiyH52vC7JBcpT2VTz5o79G12beH25AjyR6zLj5rdA0N
 PmI9m8JbXr9lVOMew+i8MVa39wlPpxGIXT8skMLPsvBWbNCx0cWvbdR3RI+EZcx3tOlR
 j+w0hgzFtY+qTJVKaZ24eYjvCoI1m9YCNAbPm6CuRK+UW4w/zWy3Vj1BRq7hLNyrsLlT
 sfR1Jxa3Bu6HR5XBTGziok1krxisyYpPyaUNt2EaGN/J9CdYVmgKKvS7obCU2x3jR+pk
 iW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/637Q6mpGunbWTAeL4j92iIRZqh/BthAxQ35Wp87uVo=;
 b=Brx2MpquqguXvEf5NVk+yPs46kGz+H68Ep4TrDz8+I0yGBapVOiiYcqeFx2m/pZEzY
 2tIVPf/MtoYjj5i6L5WH0WtQMQnGRP6UNPTxoz2r9jAZtebVcXNo5w2QmLIHiN2u2aCM
 WR7ghFZSuECeMDKs6h1/0stvopwV6BBCBCRxM2CovDvXPtGvpvCz5AGz4iKF2KX3QcOP
 Vbh5lzGSRGb8IJQFacqYKNeSSj3iyQp2D3Bl6taHYE5nG+Wt0ODRUJkUVIsB1m4onF86
 8rO3q5i1SGaDR6pif6v2oy6YT2WJyM4juK1ZZTSK/Kcl42gOhamh02beDguPO3PN3t8J
 2GEg==
X-Gm-Message-State: APjAAAXtMwluxUPuaxbXrizc3PZTjh9yPG45x2kWt3eCA/A62Z/9GoSn
 VPTTjpy0t5r3PQpthvko7g8=
X-Google-Smtp-Source: APXvYqzmt51QG675QIk4A/SHIYXjiiU69ZTW95jyerlieuhn1HcqSs1SkgZqH1PrPgv+PJHvJ+J6tQ==
X-Received: by 2002:a17:90a:4803:: with SMTP id a3mr80503pjh.58.1560356906597; 
 Wed, 12 Jun 2019 09:28:26 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id 201sm70084pfz.24.2019.06.12.09.28.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 09:28:25 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, maxime.ripard@bootlin.com, wens@csie.org,
 rjw@rjwysocki.net, davem@davemloft.net, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [RESEND,
 PATCH v4 0/2] cpufreq: Add sunxi nvmem based CPU scaling driver
Date: Wed, 12 Jun 2019 12:28:14 -0400
Message-Id: <20190612162816.31713-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_092829_254333_E224E1FC 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add sunxi nvmem based CPU scaling driver, refers to qcom-cpufreq-kryo.

Yangtao Li (2):
  cpufreq: Add sun50i nvmem based CPU scaling driver
  dt-bindings: cpufreq: Document allwinner,sun50i-h6-operating-points

 .../bindings/opp/sun50i-nvmem-cpufreq.txt     | 167 +++++++++++++
 MAINTAINERS                                   |   7 +
 drivers/cpufreq/Kconfig.arm                   |  12 +
 drivers/cpufreq/Makefile                      |   1 +
 drivers/cpufreq/cpufreq-dt-platdev.c          |   2 +
 drivers/cpufreq/sun50i-cpufreq-nvmem.c        | 226 ++++++++++++++++++
 6 files changed, 415 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt
 create mode 100644 drivers/cpufreq/sun50i-cpufreq-nvmem.c

---
v4:
-Remove sunxi_cpufreq_soc_data structure for now.
-Convert to less generic name.
-Update soc_bin xlate.
v3:
-update changelog and title
-convert compatibles to allwinner,cpu-operating-points-v2
-document the valid names for opp-microvolt-<name>
v2:
-update changelog
-convert to dev_pm_opp_set_prop_name instead of
 dev_pm_opp_set_supported_hw
-some change in OPP Node  
--- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
