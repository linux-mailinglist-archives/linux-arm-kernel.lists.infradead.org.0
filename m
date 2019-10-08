Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F01CFC5B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B8RT6xqNDalSZOWTyzc4uejGLPRmaYTlHHXALlJptnE=; b=EZI
	Uj1JC+VtJcmpnrQ3LHjhgLGP2QPRb7pvWSRGlE4MSD1aWPsqw64BcJSSMtLTpOAO4DiTGNyi4ekl+
	IXW+2Qcoicfyqz74g7OACbjA049tUwz8OVNkJQPBcEngWpeYZiqpvr2LuuMcolN0jXKwXxXk86WHm
	RNWbZPpybno2QizzTu60UhuTaA74qX/iPlHvDSmoFcQA0p2dA3h7NoDBkT5r6K4I4uGqT5cwh2+Dt
	gZ2KLXa8OMAKFmyK56nU66qWJuOBtzIQVeO1/S9B+VyKm0FovIM8JPf14QjxqWmz4gh0sUaVMB6Bd
	VQqqUnPe3YM8IFKonSWZ46dDut1FCOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqQz-0001nj-4D; Tue, 08 Oct 2019 14:25:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqQs-0001nO-0J
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:25:47 +0000
Received: by mail-wm1-x343.google.com with SMTP id r17so2504892wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 07:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id;
 bh=T1EoziBTkltAHMdc4buw9CGaKKcLnkZK2Xg/SL3bAR4=;
 b=yXu869UJT4DZ6ShP3Lq21w+k8SvrbwZ8BBXbEyayU0MvLGlVN3E2x1fFomLnlsmvYZ
 DbfNuFvjNpjti30lwXOENTvIDu4MiRca3YQ2N3r+cql9Kj2PyDju9lqX0OP8pmASzC6d
 OY7DttRSnAnzlQTE+sbf2xRBiizj5VykngpWgDfQ+hqVB7DmbyCkvXuR1zl9aBHvDCuL
 I4vAqaRSq+jigGBskbCgUemaslfTPxO6cVZS13SB++qADsBWF5EETqcj6joc8XpjbF4w
 mccVrmF0uFeTTkh+HJgtHsrDi+bbyz9pdJ3c0muVodEpQYuYq4hFnwbSUaXHLE9N1CUh
 hPOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=T1EoziBTkltAHMdc4buw9CGaKKcLnkZK2Xg/SL3bAR4=;
 b=sOPvF6LVV0K+/MCijC1QQf3wcv4V1wB1Jrj3jtGwyuvBrXodSCUyH95/jbS1ciswYm
 Wo6d0UV9v0u3IXTOxI9E54CMehW2mq7zSnJW9GytQ4UBHEg2Nj8K8+Bt07hgtNSxxI/u
 AoB3VCAZS1PjkJNrng2BIQ2nSm+XFCtN540CiZ0XG/QkG65GSflFN/0uF06mzUG5Vuq9
 pE2DonF46dZpoXaIYBmsEMIJPFq3U5jTliSZEg/hyylBfwZxy/22xvJgrMXOK2bU4Nu3
 TqdwO05Qv4Hyn8PgSiFJgNueWeWnDe1w0T64VCp8BJWG8gwGZJ4EoGSVnFFgdGHazVBn
 Xvtw==
X-Gm-Message-State: APjAAAXO8WMiIqxebyDBtoMRCMOvrpNQ0TZqN6yo5TgE0U5eQUr/qleq
 l3N29z+9AxghPQ74oVFPxfjE+w==
X-Google-Smtp-Source: APXvYqyWKsQ9SfdIDOC7smhgfVGN4ZnXDTPhORIUYTwQs0c17NQHzryFDWGsfQjjV5PUvpaqvl9hSQ==
X-Received: by 2002:a1c:1fd3:: with SMTP id f202mr3957965wmf.18.1570544743722; 
 Tue, 08 Oct 2019 07:25:43 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id d10sm4485803wma.42.2019.10.08.07.25.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 08 Oct 2019 07:25:42 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com
Subject: [PATCH] rtc: xilinx: Fix calibval variable type
Date: Tue,  8 Oct 2019 16:25:41 +0200
Message-Id: <20765c4c27aa92c75426b82fd2815ebef6471492.1570544738.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_072546_047694_AA12C36B 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rtc@vger.kernel.org, Srinivas Goud <srinivas.goud@xilinx.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Srinivas Goud <srinivas.goud@xilinx.com>

This patch fixes the warnings reported by static code analysis.
Updated calibval variable type to unsigned type from signed.

Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/rtc/rtc-zynqmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-zynqmp.c b/drivers/rtc/rtc-zynqmp.c
index 2c762757fb54..da0dbea8def3 100644
--- a/drivers/rtc/rtc-zynqmp.c
+++ b/drivers/rtc/rtc-zynqmp.c
@@ -44,7 +44,7 @@ struct xlnx_rtc_dev {
 	void __iomem		*reg_base;
 	int			alarm_irq;
 	int			sec_irq;
-	int			calibval;
+	unsigned int		calibval;
 };
 
 static int xlnx_rtc_set_time(struct device *dev, struct rtc_time *tm)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
