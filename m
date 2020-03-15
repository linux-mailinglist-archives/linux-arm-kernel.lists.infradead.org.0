Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E805185F63
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 20:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DjG+HFFJADFdwoMV0XsLmQ7lYWVaKKTJOtNd/kLfaDY=; b=mgx
	6y1Vk/UzfdQtWpJm9ztGdK6L6px5kGoO7xbOjjgUOBCrW2RXeOBcv9o0jZpyf/A4YYdTCoztak2O5
	6qSDcK7HoU/lBA0VW+gw/2HzZolNADvOMqvHjz0Cl3ejEMZw4FwM/Pmigas0vtBga9bFW/DeSOZEI
	dOT+x1PaO/BlrGYnYfYQ6cIwWVFJ9s7F782p42L1Hj9kV5ITNljs+Gq2k30hx9YHo8O4vzrWG7D7E
	1bHBHqYSCaZlHbTNu4ouNrhF34pHSy5iHLDzFmAYsau3hwASxXVNYSq/VAEwqTP3Fb7f/0R5DIvCs
	BtdrXOOyfx3oUXCf1avWUdXi1MRMe8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDYkq-0003zQ-MY; Sun, 15 Mar 2020 19:16:56 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDYka-0003wy-IV
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 19:16:41 +0000
Received: by mail-pj1-x1043.google.com with SMTP id bo3so5862892pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 12:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=CN9k9v/8yanEjvR23mTlz7kA9CFHoWHmloWkKBS3Xfc=;
 b=S4yLSbp0ndcNFd6XrNeRW3x72H5xjX1PGggO6RKE2KMhHWTPIOarIaOzSnkPqdkmmu
 3KcSCod7vNk9ClFu4pv4qhzNy3vKgg+BoMvzpq//eBCfQQW4355FWsYReXn5WsJVK5UZ
 R3JbLN8UQ3esw79Bpw6sVrXK7shFgDQUUVdlss81RJfudRMrz6W6dHMkJfNdYJvemb1q
 URIMNQzOx73yinju9GRZId5tQAtB19vJryHOAxpXzVsJZ7JnU42zFeBNiSIoOOIsstCQ
 0YYBxYBdtaxX66HCSplM2ksq7Ba4JTzDHkDMQN2EAUjbzmYlqyPbA+sDYRo1NmMqaEAl
 W9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CN9k9v/8yanEjvR23mTlz7kA9CFHoWHmloWkKBS3Xfc=;
 b=rNyLuoxJr+K4NonGo5up+JXy4AoXgJeVG4XPJROZhRQZpScvdztvmUUw/RvqEJ8h7N
 YulnicbsGhouDaMiYc76pmslevxdsuYQIgvPR/bc9RPquVavGQ5hHrGhL1WQlIJ5Qnal
 RdsF5YQ6LBFxoE9bmhZdNIQtvTdgsyFjCRxxsosrRJhUkRaJUfHD13Qqxj8PEr2TBzL6
 xYZ6n9J0VgOwbuJBNx45HUWdjjhrR4IBUnlqZJyvePSr1hHGDKWW2UsQfbEPUEN/FH1m
 e3JV6XxU0jhRN4vs8uuSBYARPjw688cfH9UfEsdGqsJJzpkE+bm9SgIxn+2RhLfs4vkI
 QYMQ==
X-Gm-Message-State: ANhLgQ2F16W7snyn0Cq+8+/KIaOIRsVI8s8GKZ9a3DnCL1q3/DfnUPCO
 ze1UMWqBG/o/GaWgCRKyXTc=
X-Google-Smtp-Source: ADFU+vsjhDVjjDl11WUJvFRigf5KGVcQfKwnZ9/KJdInHA9LulswWg4d2VO7LJ3xsEd9l0h9798aqQ==
X-Received: by 2002:a17:90a:191:: with SMTP id
 17mr20937506pjc.88.1584299799816; 
 Sun, 15 Mar 2020 12:16:39 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id 13sm61431882pgo.13.2020.03.15.12.16.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Mar 2020 12:16:39 -0700 (PDT)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v2 0/6] usb: gadget: aspeed: allow to customize vhub device
Date: Sun, 15 Mar 2020 12:16:26 -0700
Message-Id: <20200315191632.12536-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_121640_612615_F609713F 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

This patch series allows people to customize aspeed-usb-vhub device IDs
and strings via device tree.

Patch #1 converts the single "usb_gadget_strings" instance to a list of
"usb_gadget_strings" so it's more convenient to support miltiple
languages.

Patch #2 moves LANGID validation code from configfs.c to usbstring.c so
it can be used by aspeed-vhub driver.

Patch #3 initializes aspeed-vhub strings with default, or from device
tree if according device tree properties are defined.

Patch #4 overrides aspeed-vhub's device IDs if according properties are
defined in device tree.

Patch #5 moves fixup-usb1-dev-desc logic from get-descriptor handler to
vhub-init time so the descriptor is patched only once.

Patch #6 documents new device tree properties in dt-binding document.

Tao Ren (6):
  usb: gadget: aspeed: support multiple language strings
  usb: gadget: add "usb_validate_langid" function
  usb: gadget: aspeed: allow to set usb strings in device tree
  usb: gadget: aspeed: allow to set device IDs in device tree
  usb: gadget: aspeed: fixup usb1 device descriptor at init time
  dt-bindings: usb: document aspeed vhub device ID/string properties

 .../bindings/usb/aspeed,usb-vhub.yaml         |  68 +++++
 drivers/usb/gadget/configfs.c                 |  14 +-
 drivers/usb/gadget/udc/aspeed-vhub/core.c     |   4 +-
 drivers/usb/gadget/udc/aspeed-vhub/hub.c      | 236 ++++++++++++++++--
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h     |   4 +-
 drivers/usb/gadget/usbstring.c                |  24 ++
 include/linux/usb/gadget.h                    |   3 +
 7 files changed, 312 insertions(+), 41 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
