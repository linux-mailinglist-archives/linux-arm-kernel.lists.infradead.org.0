Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE42B182212
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 20:19:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6nMAUZvMKFpfxRJFdj+Anz+cWylwhVPB5bsAwr8d9jA=; b=r7Vepai0LPcj3+
	UCkVEg9a6Ou0WN2rJJP/TGAAjsQvT+IrlXvK6XOrRuRpYYQ252yT6zp7uj/9UYsZPvOo60cS/jqUa
	BQ/B3RAKHJGY+0sicfflUIIGuSQViLmWEXMYld5VQBHNcaj86nBbCDf1YJzaFcdMb2BjkNkNjVsap
	KI+bwNrJqB2XGzHYgLxxtCIl8wV4huPLjYWabREGde73nfryuXtT0FkQpJC8IzDEVnrlY603zn6Uk
	8Ij98aCu75Vij12RvGuk3vPNfE93m1A0ozHaBYjgYsxHNAA70Egs8uS9Z8qiX+Ux4HoPRjA4kOr3w
	IlGvPuYvJMgUtV23LDKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6t5-0005vX-Qb; Wed, 11 Mar 2020 19:19:27 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6su-0005uM-EJ; Wed, 11 Mar 2020 19:19:17 +0000
Received: by mail-pl1-x62d.google.com with SMTP id j20so1538468pll.6;
 Wed, 11 Mar 2020 12:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AgA8NXVVreTrbc68nE5t9RxNm/CfbmPdVBm+V/xZGZA=;
 b=Ra5czn0cz8MQvrnhNDEap6qccGc/050Ie9lY8KvZSJx8DwxM1ldR4EKQSh5WEqaxyS
 xYF9hUZqIDIQT3/lMwdgozbCBLLtUHRKYiEbi4jw4duvuwQOtElG9/7wO44JP0eczHRM
 Dxsp6Bk+7yOQH4ZtBE0QVZM9RTqDk8Mwsn7lKwTiMqig9txszVT9Cf8hOh6jehBZkYGr
 1/1bZjX/DLPSpaaBK7DGubvYsRwUorTmARB3R/VM7r9hyt9bspIR8HkN3kcvc/DTY7Hr
 RBopIs3D719sXwKTDQ7EnjBQ3Skg3Sg35c8707QLuftGu777U7MWzc+ZUFUKozNZmMHR
 EkyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AgA8NXVVreTrbc68nE5t9RxNm/CfbmPdVBm+V/xZGZA=;
 b=OdiB5OON6Y3g/y0wWoYWw+FVUG6WSy1d5Xg7WRmwpor6NNyxvHzLYHK1fhKO67woj3
 bT0cUPzT5JQOggXcr/PfLJDeo+R/r25T1YvnR9GfMknFoexycjgt9/O7T+E3W99WnTb/
 Rg1d9XKmqflzEWw0UQ7693Es3rm1W5ka/EhWvgw33JFIOHGoMSqRunuFInfbCcQ4mGD2
 0RV59dbGh2v1FE7Fpf6jloQk+9dm35ZLgcIpx3JABtf33X5VOt+NnMELE7Ypsl+ys8hk
 11y+/juXLIv3jLfZXY0EshuNYEMvRzJsW+opw8z+cOPNbBeC8sh0kF+jHN/5QHP8cyc9
 OjWw==
X-Gm-Message-State: ANhLgQ1fByujuiva0cKk9ZzuDikUUcKOTmgvZIZ8TdWu28YSaC1/dzWJ
 gjruJ/sNiEC6K08khuG+YuM=
X-Google-Smtp-Source: ADFU+vut6cvW5Ep/5MnHwgb71GM6QOKN+GXWUmMoSF0wCH4v2hNV7CL9paPgi4pfd+r34U5ISQ9Azw==
X-Received: by 2002:a17:902:b10c:: with SMTP id
 q12mr4569032plr.303.1583954354047; 
 Wed, 11 Mar 2020 12:19:14 -0700 (PDT)
Received: from localhost.localdomain ([103.46.201.94])
 by smtp.gmail.com with ESMTPSA id z17sm3792673pff.12.2020.03.11.12.19.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 12:19:13 -0700 (PDT)
From: Aman Sharma <amanharitsh123@gmail.com>
To: 
Subject: [PATCH 0/5] Handled return value of platform_get_irq correctly
Date: Thu, 12 Mar 2020 00:49:01 +0530
Message-Id: <cover.1583952275.git.amanharitsh123@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_121916_507880_CFB19FA2 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amanharitsh123[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amanharitsh123[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, amanharitsh123@gmail.com,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Mans Rullgard <mans@mansr.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As mentioned by Bjorn Helgaas in a private mail, the return value of
platform_get_irq must be checked against the conditon of strictly
smaller than 0 and if check must return the value recieved from
platform_get_irq rather than any other macro like -ENODEV.

Aman Sharma (5):
  pci: handled return value of platform_get_irq correctly
  pci: added check for return value of platform_get_irq
  pci: handled return value of platform_get_irq correctly
  pci: handled return value of platform_get_irq correctly
  pci: added check for return value of platform_get_irq

 drivers/pci/controller/pci-aardvark.c  | 3 +++
 drivers/pci/controller/pci-v3-semi.c   | 4 ++--
 drivers/pci/controller/pcie-mediatek.c | 3 +++
 drivers/pci/controller/pcie-mobiveil.c | 4 ++--
 drivers/pci/controller/pcie-tango.c    | 4 ++--
 5 files changed, 12 insertions(+), 6 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
