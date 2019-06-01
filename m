Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944F4319FD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 09:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3bDhjeeDJNaBfaaNyfsrFnbgsLfeMwFxhY4eB/U0m5Q=; b=o27ktUG349mk91
	BKaa83TlXsoaw/62bAVhDriDJQ/RG1IcKl7K9smr5ujcxsskthtYaUcLOor4bGUybdojgOeyLvKJP
	pyTwv3wBG/mpDk/EyhG1RoNvTRrm19Fx5QkEogBse87kiXKNRfjy13hZAJ/ZiGab3C2iRVmvm1zGo
	Ikikm1HgXQHc8ESQqRo/vbAUa+3GR/1fZDAVS5i5ecXMFeQ4pE2JUSTAw2UfxLmAnntcJSYvVuA+n
	mlc9mw3xq4IHWeFAsc84+JpvDftcIrYF6nKAcMD0LEtQT7gOjSzlasR3MGejsLY6XH2sHtH6ixO0s
	Wk6Q99sN4ar0kCZmwzpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWy76-0001wh-MJ; Sat, 01 Jun 2019 07:07:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWy6z-0001vw-Oy
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 07:07:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id x4so7878379wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Jun 2019 00:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=71VNyN4Ro2czwJ5KFVnEX3HLCh70R/RKyfgoDtrVXOA=;
 b=BlNzkwkFJRUzE/oQj3uKii45pcdM2Y397RITq392c+sOVkV1Rq9dfrlfmXRz2av0oj
 Fj4WKKsra0JjdSMBBVvktZ5dDKbayLd67d//U9qgk7R4DUlrqWgrBNXaHhISbkxgGQAG
 68/e1sufkwFiTyyVGujDzP/G3/TTTrPOOfq+IfhuJHcpl9yejG9OgFOpoOYUycNqab+K
 KZY0zwhEvb7PQFRM9cpOsYM3AERqpAVEDsrZvaL3033kTc0QfmuPYrHzAiLJQDEN9p42
 LxthztYbqidR7qu1hKewVgxu1MHt1psO1Oi5r8LL7yIXqu5wOxRgGxRSDqnE8bBg4wX6
 8HXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=71VNyN4Ro2czwJ5KFVnEX3HLCh70R/RKyfgoDtrVXOA=;
 b=qDMi4X2OQiVSRVfJndUVvpd+sOUMxK653Q+Lh2cIMFL5PX7tt8KQfOU480jDr8gXuW
 r/LTYgunQqiJFKlbP9lTeTr2RTxpIUU3eONG5ySplqj/i/2w9270z6f8rZhTG5JNzosf
 ybV12dsgm5qlxqlaQUH+K3LqKJolob6Ffpkkvz7iBU32NmV4l9TvZNpKi+SMdNL9sS8Q
 K+oivaCaaOVjq/7tL/dLI5zYh4bcDcE674Jz2JTX8f7H4e99tX/DFIxIvLMSSElv7ANB
 4GHj/sgom5OvrlDJY0sIAlS6yiO3JUXWKIUBXcnU0IK7Lx/QkxhycuVXiKO/CK79F4Xd
 OLBw==
X-Gm-Message-State: APjAAAWvXjF84TM7cMPrYH6rL2Uni5YiJGB9piXsL9Em7ac8DYTr7GiH
 8PUy+eRuPgHWE2ly8xlu+2g=
X-Google-Smtp-Source: APXvYqySCrlRzCFEF6/6Dxo+v8AfYqfnaUyGqhpOsIqLUJDk0UHzcQhk9iTNzszTHPxZEmixS+s2+A==
X-Received: by 2002:adf:e344:: with SMTP id n4mr9091822wrj.192.1559372847280; 
 Sat, 01 Jun 2019 00:07:27 -0700 (PDT)
Received: from morpheus.roving-it.com.com
 (2.e.6.5.c.a.a.1.a.8.0.3.1.e.3.c.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:c3e1:308a:1aac:56e2])
 by smtp.googlemail.com with ESMTPSA id h8sm19008382wmf.5.2019.06.01.00.07.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 01 Jun 2019 00:07:26 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Updates for UDOO Neo
Date: Sat,  1 Jun 2019 08:07:15 +0100
Message-Id: <20190601070718.26971-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_000729_837492_86900C76 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pbrobinson[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Robinson <pbrobinson@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A small improvements series to update licenece to SPDX License Identifier,
enable two of the i2c interfaces that contain either on-board sensors or
a connector for "bricks" of sensors, and finally enable bluetooth using
the serdev driver for the TI module.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
