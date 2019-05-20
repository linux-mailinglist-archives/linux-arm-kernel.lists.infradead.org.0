Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5F923A51
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TmqzU+Tmr62JC2GecprtrGmr7MKyroDE41IR4jFugyI=; b=Z8WeLGhNZlhOfT
	Ig9vLMwbPLnDG7+7zkA+NyK3NRf6owM8w7bVlSlymo3/GQz1CItxxpmKDOyGxgXFHDrvMpt8wEcau
	yaKPVk21ozDc7sq3wv78ZBtoPoYJ2QqHlnvr4DBYQiaIfwRGJ63ID85HAik696d68m45oHkJkaTZc
	SauaFkxWh3Br6D8/St6dDTyTj55rd+vS7wU31plUjNkmxhNf92CYwb3N3kIyrGiujzCfCRM9d4htB
	Ghd1EY+oM4eIFGP4ZcGQRahkCi2L+owew59FDMXkmPSLs+bJ6bblxG64g4j/cvi+0SyWIkIW95CLv
	pw3mBjiZ4+DikX3j/P2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjQM-0005so-DG; Mon, 20 May 2019 14:37:58 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQ0-0005cZ-HJ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:37:40 +0000
Received: by mail-wr1-x42e.google.com with SMTP id d9so1945020wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XhITG8r1vNkTCHFKM+YaAb439MLc72/vlXKVj7QWfUc=;
 b=WIim+JzhP1LYbCN1OmF9ULJZSE0ip0fGM5+jViv9j9twDp0BhzyHQ/rIwKo5LU/ZqX
 WA699SIwko+9yh6FNwBJKQhIOLUqXPs2p4BpAy4RXk9NwK7dyiGV8RrxVzpd5Ru3SVEI
 9Hqlhh+y5CNjXFVla/CJE8c/LrlQnqorRexnkBYngJlIfRa2Rv8xpZBsvqr7dZPsXnCA
 ur4QQfbUWG3bDzNu84YM6b+dKk2QGElWZCgCBEfdJ71HA7wOEBLzCI31ay/ymfJfxQmL
 WjIaJqFR66/b4OYRdja/WZ+lJHtvqMr6qVD+GXOi9FMNR6bjiNz2rLavLCzBj8uKwH8U
 vVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XhITG8r1vNkTCHFKM+YaAb439MLc72/vlXKVj7QWfUc=;
 b=Kw8aQ3HZkYkWLhGvDwV9RxuCjU+Ujdef+aR53IluzQZbS5su/YyGoYVUxARI8plVPy
 4dAOUWpz0eX/NiV03c6/MyYAOpZ1aU6szidSXShJoERRvhUgcXd2ZIEyLb/FDLgRhEmc
 2usyVctnz4Dir3GOM2jS2D01UUXSAa49VohIVLhMTgP4DzfydaYzATmVo6dMVvCV99Tk
 367tVc6Lg19IaCpiMQwcTZ8Ddt8pAP0gx9a5UKboGajZLIGVMDTarIZ8akjSOMAAIcmX
 BDUXeMUX6DEfogLDvuSGibdBwmXxjVDAffkzzD5ir67isqn4l3K8aYis3KOZCs5X/Etk
 HncQ==
X-Gm-Message-State: APjAAAWb6/BiwZoPg7YTPt//k5hbDpl0JJRt0HxkArAqhx+Qforli2ry
 63yzIjVxYaVS+o9xXdcVwCFz5A==
X-Google-Smtp-Source: APXvYqwnSXPnI+q0H7qUyt6TFjaq7N5LFUn9YOBwuJv3uTSQjR5xuREGOuXviK3FGTWqYQnSvvgBdA==
X-Received: by 2002:a5d:4e46:: with SMTP id r6mr45832358wrt.290.1558363054684; 
 Mon, 20 May 2019 07:37:34 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b136sm19076204wmg.1.2019.05.20.07.37.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:37:34 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: srinivas.kandagatla@linaro.org
Subject: [PATCH 0/2] nvmem: meson: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:37:30 +0200
Message-Id: <20190520143732.2701-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073736_711113_BA8BD71F 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the SPDX Licence identifier for the Amlogic NVMEM drivers.

Neil Armstrong (2):
  nvmem: meson-efuse: update with SPDX Licence identifier
  nvmem: meson-mx-efuse: update with SPDX Licence identifier

 drivers/nvmem/meson-efuse.c    | 10 +---------
 drivers/nvmem/meson-mx-efuse.c | 10 +---------
 2 files changed, 2 insertions(+), 18 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
