Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E15B20081D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZiqaopfKuOPQs0SDStL0sRipL0jeP0XoyKmKOv9QJVo=; b=J3I
	O51snKqvGzYYtCgGDWDlVnZU5a3sJ3xt4j82cGxZMP7Ld77u9DPZRcoPA3VPLqJVRhPmHSVnZH5Ll
	K9ed79JTPk3LGlzMyaw9Kh1UFsz34bbuokVCG3NI6PAUZPwcMrsrE+zwTj/+1QF51KSehZqHrJPQ4
	Et//XWkx90oxAaMYNBH5TLNMREPZp0jyvzpqOJRTNCqnwKhmFrkcfRN2qQle6mmaWJVLeLW+h6W2w
	aWZkrIsZIc+4pEfYNhJzCgCFuWlTzqHBXyoxcTaqXDhf264xlEs7x6dxxIXuET3Qt/SDrrgmlBxxE
	DwerpTwqND1UCS+C+KBEkVN/B9H7HkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFbO-0007HI-Jx; Fri, 19 Jun 2020 11:54:34 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFbC-0007Gm-R2; Fri, 19 Jun 2020 11:54:24 +0000
Received: by mail-pl1-x642.google.com with SMTP id k1so3847323pls.2;
 Fri, 19 Jun 2020 04:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=zMo8MqpGrcojR1hu7gkCRGNTOG7j0ijRPmvlVewWUos=;
 b=YI97RlPMLGyRbSuJRbi+umDjfTca99+ghiQrmrlW0mKwUOsobIygCn551WZCkAsalv
 v1lkPth7EzHXSBb0Z2KmTkH91OxB+dGGX4pRSUrTkpBAFLDz66JD4Gt9njc6/1NkRlF9
 ccaX18Qf8k5ARWqVLucrT+8Asd/7gRrtvHCJGsu5Oeo2zF7NDCwHqgwz4iKPf3YOzxQZ
 NmNfEz95J7vlG1sbT+Y4uV7iUm+8KmMbTGSvj7dLJhx2hd3CI5NxGHOEamnTolvY03CC
 l+MXzFpco3S8vYKItM5dj4oH+9Y6La67ry66D/vHwQzUfhQ8bETL7tA4onToHMsH5EWk
 AIoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=zMo8MqpGrcojR1hu7gkCRGNTOG7j0ijRPmvlVewWUos=;
 b=D0u8QFj0ThHkHyN3uuQ4RtnPl/bFBuwOTpZV+maRwUzcS7fBlSIWaguytkTkHgYvxI
 uPqhjtw6rl6q+BPZQD9HfucfUVIg/KVWdyreEG9tBdjSfBD0oDNeAWsBKPnF5TGm5vB5
 I7TzsMNqNxf6HaZG9wLC6MUx3rFOFof6RAWfmYQQdbiviia24E+NxfGFXi+V/DFiauan
 k2Ssqv89JHqo1pnK83QUUGHGuMUFM0lqyqw3RGeGYsw7UKOtBMq+Y0wxBB+jM2pn9ecb
 sao7EAcC09WqdqeMxnjVBmdCqn5gczG9igUSKun8L9SqEHFQq2S+LTuxM+sKauZIusjw
 yjRQ==
X-Gm-Message-State: AOAM530ZKRk70gh9WOLs1sFzOkzvQCuvaikzqp5r4QCIcIxlgUBDIHtC
 wdvRMTZoDo0fyEmLFhRHUUo=
X-Google-Smtp-Source: ABdhPJxVCcy/FmlsDxTpc0oGXo8VISLG/G70q11V1vZLt9e6ze3um1Q+NKeMPmkO2NaRFcgW2erl4Q==
X-Received: by 2002:a17:90a:b903:: with SMTP id p3mr3348490pjr.4.1592567661891; 
 Fri, 19 Jun 2020 04:54:21 -0700 (PDT)
Received: from localhost.localdomain ([2402:7500:46c:79b7:a5d3:5b37:1d99:175a])
 by smtp.gmail.com with ESMTPSA id n64sm5026712pga.38.2020.06.19.04.54.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jun 2020 04:54:20 -0700 (PDT)
From: Gene Chen <gene.chen.richtek@gmail.com>
To: lee.jones@linaro.org, jic23@kernel.org, jacek.anaszewski@gmail.com,
 pavel@ucw.cz, matthias.bgg@gmail.com
Subject: [PATCH v2 0/4] dt-bindings: mfd: Add bindings for the Mediatek MT6360
Date: Fri, 19 Jun 2020 19:53:47 +0800
Message-Id: <1592567631-20363-1-git-send-email-gene.chen.richtek@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_045422_892487_EDD22B7B 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gene.chen.richtek[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gene_chen@richtek.com, lars@metafoo.de, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, cy_huang@richtek.com, benjamin.chao@mediatek.com,
 broonie@kernel.org, linux-mediatek@lists.infradead.org, dmurphy@ti.com,
 pmeerw@pmeerw.net, knaack.h@gmx.de, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This patch series add mt6360 sub-device adc/regulator and
fix mfd architecture and add dt-binding document

changelogs between v1 & v2
- adjust binding document schema include mfd/adc/regulator
- adc: use IIO_CHAN_INFO_PROCESSED only
- adc: use devm_iio_triggered_buffer_setup
- adc: use use s64 to record timestamp
- regulator: merge regmap to mfd driver for r/w with crc

Gene Chen (4)
  dt-bindings: mfd: Add bindings for the Mediatek MT6360
  mfd: mt6360: implement i2c R/W with CRC
  iio: adc: mt6360: Add ADC driver for MT6360
  regulator: mt6360: Add support for MT6360 regulator

 Documentation/devicetree/bindings/mfd/mt6360.txt |  122 +++++
 drivers/iio/adc/Kconfig                          |   11 
 drivers/iio/adc/Makefile                         |    1 
 drivers/iio/adc/mt6360-adc.c                     |  388 ++++++++++++++++
 drivers/mfd/Kconfig                              |    1 
 drivers/mfd/mt6360-core.c                        |  541 +++++++++++++++--------
 drivers/regulator/Kconfig                        |    9 
 drivers/regulator/Makefile                       |    1 
 drivers/regulator/mt6360-regulator.c             |  485 ++++++++++++++++++++
 include/dt-bindings/mfd/mt6360.h                 |   15 
 include/linux/mfd/mt6360.h                       |  240 ----------
 11 files changed, 1389 insertions(+), 425 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/mt6360.txt
 create mode 100644 include/dt-bindings/mfd/mt6360.h
 delete mode 100644 include/linux/mfd/mt6360.h
 create mode 100644 drivers/iio/adc/mt6360-adc.c
 create mode 100644 drivers/regulator/mt6360-regulator.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
