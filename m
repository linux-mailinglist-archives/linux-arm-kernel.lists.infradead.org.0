Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766881F85D7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 01:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=saflZPi+gwzN6nzNPLA+ZG1iAQJJ//21IFRXjc0STo4=; b=SKR
	b5D+qz6RF1IjvKHqBPwgkndfdOiFopk6L6pL9M8IDMKaWZeAsfD36/Zw4o7jZDRqHend79VkwlYf5
	Ad8eBrgGKnztIfGNDn7lHWVrYwvl8M3Dn4KgZvITlDe0LT4Y7CPiCboiR7BqPP/GEROonsq3mVcCV
	QPBBvuVD3N6PN5ELlwyOymoMtDkKBw+oqTzGqbL8lQGGHe3smUfiOQ1JC0E9kHrW007D4kvdD3bjL
	HaBSocSnwxxN7Ghs3Si3tO8ZYvu3ZX9WSfPodsLZ8JVs72KiE4X8hNXg3kmV8vGh7h6uTMgb6HmDU
	pV07DVU+mtEXJGgMn9UOZ+/nonkQ87w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkFLi-0003AC-JS; Sat, 13 Jun 2020 23:14:06 +0000
Received: from mta-p8.oit.umn.edu ([134.84.196.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkFLZ-00039Y-G1
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 23:13:58 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p8.oit.umn.edu (Postfix) with ESMTP id 49kth50ydhz9vbsj
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 23:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p8.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p8.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vmks9J-oI4u9 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 18:13:57 -0500 (CDT)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p8.oit.umn.edu (Postfix) with ESMTPS id 49kth46JFXz9vbsc
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 18:13:56 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p8.oit.umn.edu 49kth46JFXz9vbsc
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p8.oit.umn.edu 49kth46JFXz9vbsc
Received: by mail-io1-f69.google.com with SMTP id x2so3325615iof.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 16:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Lp/57Kv3gzuXj/K9oQ77nASFzku70Zj4jK0Z7RozDsE=;
 b=lfurDX56hYBZrhdFYqEBnv2irvi2WRAzXzjIzOMzTNHuv42xHT5JVvBul2r6yRZfSr
 Cedk/u4yLdw8aRqEc/y4ItmczY/Wy46YSJdJrRMiyu6axMe091p2oVRathwkVLAjctph
 O1ryAN6KCqcJBCUYQiS5rpomqGicoXiT0GBMpThSYx8h/WfcepNjKEwEdueyxHsiT/QC
 QuMW8qQhASGbepJxBMeb2/E+/u9MHhAnP4kSZh7r1eGnqZTnwEm5ywzhNHk5NVpJQ75p
 aeacfU6DR3UAp/DccV5MCqEE1fH4GmLxOcOkkO/DPszNBMyGWO8UrRz2Jk+okWcCDdSo
 lqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Lp/57Kv3gzuXj/K9oQ77nASFzku70Zj4jK0Z7RozDsE=;
 b=B1/PcgdBBw87IJnVP1uUJuOF0V0gnGmECENETnH1jAbINS67j/IrJJh28Y54Yq0CVl
 +dbhBe8t8Kh/a9WXKWJhddBPNAMMTfAdksn0bepWBbGTDMAWpzgKzTjMhwWAYJhlAjdX
 oqbuvEodjlKagQEfCAIYaoDLJ6+TZgpWvHxsjAD5nJQ/t/xMAHFobb8v77wwH1bLFwVW
 F4f+zzON4By7NQ4vsFb0hn7eZu3bjZew+v9PKcLL97XxyP60cMPSx3YdeTPybQOvdSyh
 UQnozi2Vl010w9/GyJrlNwrh6dnaloyvfaMcxGIQeHA3q445UGrnodYTDW5s05HXugof
 sWvA==
X-Gm-Message-State: AOAM531bagpKdhSP0wdE7d0+lSS9L/h6//mifaEtrJ8vbp3Hrcy4R/8Y
 mTISvqGYGXIHfP0n5vXIK1Jmoq59bMCC+6wdOonWhmOAyB9+BMrAW4Ee3i6PHKOYF1ge3eM2FSQ
 SYQhTH2Ngf+7F0A5Lmyf3sVdmqjmd5H6TnixUYqg=
X-Received: by 2002:a05:6e02:ef2:: with SMTP id
 j18mr19983906ilk.69.1592090036463; 
 Sat, 13 Jun 2020 16:13:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJztT1frvvFPpkKu648hyiONgeEYkHge5KRR8FaxCVSOS07PFim7J0gL5UIgkxz52VKBRrECXA==
X-Received: by 2002:a05:6e02:ef2:: with SMTP id
 j18mr19983882ilk.69.1592090036227; 
 Sat, 13 Jun 2020 16:13:56 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id b8sm5368985ior.35.2020.06.13.16.13.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 16:13:55 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] media: rockchip/rga: Fix a reference count leak.
Date: Sat, 13 Jun 2020 18:13:49 -0500
Message-Id: <20200613231350.15504-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_161357_620748_A0C4B48F 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.208 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hansverk@cisco.com>, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>, wu000273@umn.edu,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Qiushi Wu <wu000273@umn.edu>

pm_runtime_get_sync() increments the runtime PM usage counter even
when it returns an error code. Thus call pm_runtime_put_noidle()
if pm_runtime_get_sync() fails.

Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index 36b821ccc1db..bf9a75b75083 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -81,6 +81,7 @@ static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int count)
 
 	ret = pm_runtime_get_sync(rga->dev);
 	if (ret < 0) {
+		pm_runtime_put_noidle(rga->dev);
 		rga_buf_return_buffers(q, VB2_BUF_STATE_QUEUED);
 		return ret;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
