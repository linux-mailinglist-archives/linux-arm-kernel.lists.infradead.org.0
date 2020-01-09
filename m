Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEA5135B3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:21:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=evrWqJMOHn2RZ2Ti/5xmjImRvhEfwQj0/ahnyO4WGbA=; b=DHG
	KQD/ebA47Hatpha13ptOw/iu29cAMqSpzivmJ84HFx5PttCJOb+rm1Q5+RW0bwotT0EX/MJHml/OQ
	mbqC63p/rm+gshIIdqLdwvOE3UZHMn/aVWThh7AfavH0joi1E5pH39qM4h4InkZv4A9Ugo47ZpKjz
	ujD8xfAPnfTVeqDfW4kFOJAAKK7PeU+dB4hXtU6XWgBNBViAfzMop+QUNmh0Eh8dADhXN1k5CcxiS
	HWaM0ESVUpyQg7900PzLlzDQQv/tSRWxtGkb9btGlUWR7Z5u1TO6uyfW5yDGbJxg4Ia+ZCW1wrdQN
	0+n3zOcW2PDJI2DVrnjwkzRwqzN8GyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYgX-0005eJ-Qd; Thu, 09 Jan 2020 14:21:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYgM-0005cj-Ez; Thu, 09 Jan 2020 14:21:10 +0000
Received: by mail-wr1-x442.google.com with SMTP id j42so7515872wrj.12;
 Thu, 09 Jan 2020 06:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=WK9gkU3m513Bp7Cu1KXOPb6NwVeeFqZuUplsaUVFOIk=;
 b=ghO3EugBL0+/4U4+kMiJ6nLW+1QsNX88U6mry2WtI8EVV8HzkEHzR0K87NLTCQSos0
 kihimaZh5YvIbuaSzQGGkHW8qo48pxNQDa+GEEa+n0X55v7xC6OrJB40TC21P3OIb2Jh
 P6CmXgLCA/oiF8najEnmbqZ5hNYbpdIiI7R1JXjH0Ce2PX6fXWyFR1prAuR337wZljBu
 vZtcohvXrDx9I3jNflVUw/E1UiC8k9swnJCkaFY+ZDImtNMEzpN3tw/m6f/nQgFe4FKp
 JRo862ZtpCgPSmEZeIkqteJKZMFjytf90Roz9N1nDzwPNO92bXCALRQwg2Rcb7l9Dlh8
 FPqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WK9gkU3m513Bp7Cu1KXOPb6NwVeeFqZuUplsaUVFOIk=;
 b=fYXNO4Exc8AnOKyh0fpjse8pUyvBt09yMZngm2F8nDpYNED7aSRy6RWJ4RlsauFfmR
 K12xd8Muc3CgBycSonkx0adCQfDwv2Vbpz/W5+YT90/n6dVGTAsKc5biPfN4BVTQvJhF
 cPNe+XRagYtk+CGcH9fUte/l8opqb50sBhrTbdMQZpSxR5o3Eh7s9KDnILXltaeqa1Fq
 URYtc69IuYGC2dvhkPXe4jleRA6LpjWn0rvC0009Eq+dyZqq+xPuDlEMqM/sWNM2B+Zy
 /gJO7Q/xnDPqFYFbXItlzV8/L6tWl/QsdE45pSumzVBZrBLIrs3gD1Y3A4K3SV8hDBZE
 Fbcw==
X-Gm-Message-State: APjAAAWOQ6UnPFe6NXBBNDBhUbZRevIy7DwR/gchI4+oxMlD2BgRsFYa
 fCbA+CWCBG0JASphNGWuDiU=
X-Google-Smtp-Source: APXvYqwf5cjzGgESlCq81pbBePPTkbxeU1QNXFhPZqiJ69f3+QB80EdywpsFxWfxqtJMEgBWZVeCAg==
X-Received: by 2002:adf:8b4f:: with SMTP id v15mr11505791wra.231.1578579664576; 
 Thu, 09 Jan 2020 06:21:04 -0800 (PST)
Received: from localhost.localdomain ([197.254.95.38])
 by smtp.googlemail.com with ESMTPSA id b17sm8337337wrp.49.2020.01.09.06.21.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 06:21:03 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	airlied@linux.ie,
	daniel@ffwll.ch
Subject: [PATCH] drm/rockchip: use DIV_ROUND_UP macro for calculations.
Date: Thu,  9 Jan 2020 17:20:57 +0300
Message-Id: <20200109142057.10744-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_062106_523500_44E2B8FB 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wambui.karugax[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the open coded calculation with the more concise and readable
DIV_ROUND_UP macro.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 0b3d18c457b2..cc672620d6e0 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -328,7 +328,7 @@ static inline uint16_t scl_get_bili_dn_vskip(int src_h, int dst_h,
 {
 	int act_height;
 
-	act_height = (src_h + vskiplines - 1) / vskiplines;
+	act_height = DIV_ROUND_UP(src_h, vskiplines);
 
 	if (act_height == dst_h)
 		return GET_SCL_FT_BILI_DN(src_h, dst_h) / vskiplines;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
