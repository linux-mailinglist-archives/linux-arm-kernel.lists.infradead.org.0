Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F795164D68
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:11:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EcGM3wIzHvQq+F1iO7mM0aB5yL/6iFroJQTziDlxPuo=; b=idJWiskBVpdnb7
	B6nNVl34sU9YPnOeDQldriB7sWBzuTZ0hhob3urhQds1ExH1oZXENZZOdizaCJmcJRYycQrTHPlk6
	PhKtQOq5BSFh7phM49eJok9/KkSXiu53KOt6fe8VlRADBXn4NcRJIxleob4VSS8gZROYuZGCCwOJC
	sgwgUGK3n5IpQpP41IsyDVAtKpPdiMxXXyZrdBHTlixa9DuJt30L8PJg5gPppdJLHII1LMYFGvEPp
	azNeHJMdflMV0eXxbEQwFSu66jAfLvEZ0uJvxZXrHm9RabUixDZPKclXvyO3mii2M4/biX0H63t46
	h12dzMhowL4wV+LNsgRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ToG-0001ne-Ut; Wed, 19 Feb 2020 18:10:56 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4TnP-00009Y-R0
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:10:05 +0000
Received: by mail-lj1-x242.google.com with SMTP id h23so1346773ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 10:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VHRaRIY6VC0lr/bsxS9DFYm2vnnWlx5lRwPcPyEFXY8=;
 b=gPoKimKTfqXeaHb/8TGnGKiKadlA4zsOW1otR4I/sil7LU1xLql4X/Z5B+MFOfsTop
 w/ibtafB1NiWhq7Xv+8ILNm+hTBM7E5IUfN32t5XlIVVJZnNzZudtvHPYZsBq5discGm
 LiJIoaqOEoHn0bJVztnhrUFEPj05q727TXZxPFRHiCZOVpOeq27877/zTFYAKzu2BpGd
 DsfcQMHPnzI39piTrkm80ut5XZ+iY96UV+eMlAofUXDvtjNFZHAEg9M8pXTNOvGpkBNv
 pDB11JGdX4pDVm+AyNGSP4d3Q8pDUUU40G41Spc9gd35dTl7Mgia6V15oP6akiDPas1S
 8cMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VHRaRIY6VC0lr/bsxS9DFYm2vnnWlx5lRwPcPyEFXY8=;
 b=qbIgs6GpWZMfWV/n3p4GbkFsvIX/5jaXogsWrmFjZRKjXyoGoQXQL0JLElbJu/zJwk
 Lzv9adiCrCFD7OHI2r22JQw6C3lAU9mcP7pKEY57pts0aKApviSTKc2rqeFY0xkqRo8r
 RHp5Kei08VuFdNbykI70PhQ53vAX6hlzlPnXunhgP5lWxUXqCS1sth0GwWvs38pXBGzK
 BWcLLWXJ5wj14bXByX3GrXUGbiyvd2cDdka5Hj8WaXog2L1071CDTLJ2RAOXPYuA2N8s
 HNaB3D3zqT67XSPCa/Tk/4W7w4mAIe8fR7OeOUkaiD9aPIzHapAgioyAxpAUtvGu0/5r
 g3nw==
X-Gm-Message-State: APjAAAW6RWK7yig7dNvBzz3jDBGC+wB/XjQIVUhkZPVKOz423lqWCY/J
 0IgrqVDWRIDDsUYiYkgWxQk=
X-Google-Smtp-Source: APXvYqxvm4JywuwtvNksBuTIyRXNkm+Tp130I25jlGLt/f+T62qAbvOhoYaS6P/K1V7awdKdjw1/Hg==
X-Received: by 2002:a2e:3608:: with SMTP id d8mr16524098lja.152.1582135800094; 
 Wed, 19 Feb 2020 10:10:00 -0800 (PST)
Received: from localhost.localdomain ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id 14sm183942lfz.47.2020.02.19.10.09.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 10:09:59 -0800 (PST)
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: mripard@kernel.org, wens@csie.org, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] drm/sun4i: tcon: Separate quirks for tcon0 and tcon1 on
 A20
Date: Wed, 19 Feb 2020 20:08:55 +0200
Message-Id: <20200219180858.4806-3-andrey.lebedev@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200219180858.4806-1-andrey.lebedev@gmail.com>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_101003_913045_4A87FD58 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
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
Cc: Andrey Lebedev <andrey@lebedev.lt>, linux-sunxi@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Lebedev <andrey@lebedev.lt>

Timing controllers on A20 are not equivalent: tcon0 on A20 supports
LVDS output and tcon1 does not. Separate the capabilities by
introducing independent set of quirks for each of the tcons.

Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index cc6b05ca2c69..b7234eef3c7b 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -1508,6 +1508,8 @@ const struct of_device_id sun4i_tcon_of_table[] = {
 	{ .compatible = "allwinner,sun5i-a13-tcon", .data = &sun5i_a13_quirks },
 	{ .compatible = "allwinner,sun6i-a31-tcon", .data = &sun6i_a31_quirks },
 	{ .compatible = "allwinner,sun6i-a31s-tcon", .data = &sun6i_a31s_quirks },
+	{ .compatible = "allwinner,sun7i-a20-tcon0", .data = &sun7i_a20_quirks },
+	{ .compatible = "allwinner,sun7i-a20-tcon1", .data = &sun7i_a20_quirks },
 	{ .compatible = "allwinner,sun7i-a20-tcon", .data = &sun7i_a20_quirks },
 	{ .compatible = "allwinner,sun8i-a23-tcon", .data = &sun8i_a33_quirks },
 	{ .compatible = "allwinner,sun8i-a33-tcon", .data = &sun8i_a33_quirks },
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
