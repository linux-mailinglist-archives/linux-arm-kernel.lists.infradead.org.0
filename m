Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC475FC75C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A95koN52bj2iSzSXijj7rtY+9JJwwIHwlDyMBZG8Am8=; b=cNv8htqWRFSa69G+sPxnZsDVpg
	w2U8A9NHFoGIL27g4VBF1R1pwadV6MtXZTeCF5mvno/QTcgELPxiXjoYrxk7HUrY3UXbanXP8jvdX
	XN9Jx2OF0RC9oGmcUSYz9U+oIwMe3tXsdoaMTOw5ZbD0VJsHhO+Cfm881JPZJF9pA+VU5CWirWFd9
	8s14Lzt1qxngTKPkQ9qVzJyod7Gf684hIhzcv04Vu36rL+IEeJrc1XxfbzA8NBVwllpgbRrE58oaB
	7T+0IH4h/70D6Nn4llkqsSysusmDWtI4MnUNpBm5dOA9OT8/X3Xc4eqjyfzzmuDoa408Dxr+47xIY
	nWLWoMWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVF8G-0000lG-QM; Thu, 14 Nov 2019 13:25:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVF7q-0000Wk-D3; Thu, 14 Nov 2019 13:25:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id z26so5653525wmi.4;
 Thu, 14 Nov 2019 05:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y+NZFoUdEcf0PJWdPHX/G2eqhW4MUVM4QQTYn0oEj1I=;
 b=CkN+qodGvOgi3HNbVRPFCi2d/Rmb81dIwiBAj8ecN7XnKalPX/eTzj1ufQjZktOPYc
 tZlxPbHyj1g0xIzlwH31cxxmWqqXe7kqTrS4ZaJWbJQ4dtpuDEZCJZbZaFhNLOcUaoya
 nfax5ZQZUKlsOXpqBbFmiLtLqiz03tpU4fUlK/MHW62aO0TQ/6HBb2cldcFVX4LltOmk
 lanEy0j4Mc1NNHCD2Ry6TByzlRM4P2rlz2NEf1JMUXv8Wf/ObZneHSDcOh7K0v4ckgRC
 aupF0h6wmETm+DNx30WlXJJ2ar1bpMKgQQPIky5OWhbcaNENwEZMTHQeLpagqyQAMZ7B
 33+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y+NZFoUdEcf0PJWdPHX/G2eqhW4MUVM4QQTYn0oEj1I=;
 b=LtaVEXYtxD3YaqDLBHxDI+SF6TkhgpDKMK/vIN8FXWWbU7RjcAU9jmMaHZTixO3WMt
 8dJ+wx9sD4ssEajxwX7TEB2FQ12MmWIytDFCJsxa6AU/sFmkJeVGKue7DHzTJhk2otlk
 gEsidbroAjJxHhbMjU6NEbg69GtA1ZCqFQKf1axDBPxKy3lD3hRYCJ0fBscVINEBW/KZ
 dWK6FU+auWv3jKS0Jb8PEmLiopJvpaciS5DlpTWDPno56PbXenkpZdDVhEPyeIDNd2NK
 /eIltMKBCPRxu/lXrHWJ5UtOMFw7jZ2uec9X7/qhzFqLzgVAV0jQr7s2kx8VCYnU3YxI
 kT1A==
X-Gm-Message-State: APjAAAX9Qc4RImdySz8f7JA8nuaj8FSmD275liQKLz4GqKKZfggfi2ij
 Y1YI4aUlLgTwlA3jNq7zQlc=
X-Google-Smtp-Source: APXvYqxdDVgViAKJ2YgU7ehgIo/fK4DVrmQv2FVO8JOYUn+KW7EwMEZTGrXyImi3jae5SwSx24noRQ==
X-Received: by 2002:a1c:2e09:: with SMTP id u9mr7768943wmu.108.1573737928601; 
 Thu, 14 Nov 2019 05:25:28 -0800 (PST)
Received: from localhost.localdomain ([197.254.95.38])
 by smtp.googlemail.com with ESMTPSA id l4sm5897905wme.4.2019.11.14.05.25.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 05:25:28 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, sean@poorly.run,
 airlied@linux.ie, daniel@ffwll.ch, hjc@rock-chips.com
Subject: [PATCH 2/2] drm/rockchip: use DRM_DEV_WARN macro in debug output
Date: Thu, 14 Nov 2019 16:25:20 +0300
Message-Id: <20191114132520.7323-2-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114132520.7323-1-wambui.karugax@gmail.com>
References: <20191114132520.7323-1-wambui.karugax@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_052530_463621_0A9AA2DF 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wambui.karugax[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the use of dev_warn in debug output with the new DRM specific
DRM_DEV_WARN debug output macro to maintain consistency across the driver.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index e5864e823020..d7ee8d1835c4 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -796,7 +796,8 @@ static struct i2c_adapter *inno_hdmi_i2c_adapter(struct inno_hdmi *hdmi)
 
 	ret = i2c_add_adapter(adap);
 	if (ret) {
-		dev_warn(hdmi->dev, "cannot add %s I2C adapter\n", adap->name);
+		DRM_DEV_WARN(hdmi->dev,
+			     "cannot add %s I2C adapter\n", adap->name);
 		devm_kfree(hdmi->dev, i2c);
 		return ERR_PTR(ret);
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
