Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C05CA1AE4DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B3ajIJ9pvCRnk5tPTXe2fcBC431hcPeP23l4NAgbHr4=; b=mMRk1zdKcj9iY1
	v40VdU5SvtnuL+JZP9k4FMQQ2O2jt7pFizQrSU6Sgh2dQQh/J+m7qa9hTWiDlV0AVu4et9w51k+Zk
	TuJ74aukEv/xs052HkOwci8HEZXMyGd2Ku83E2Pn990qzfVIQPWANEy5wGeGWdNgxFnjWtWtOrOxv
	Vm5g6VMGCitxsDXKCe/X6Gl9TweNnq0d0XkpgD7zobtYDhUyZm3SYpWZ9Oe9PTrs9RDsyGIRViBVF
	+ivHYkxTmnkD0YjvG5ZDJrjaOfQla8bY+YZcUsSvx0URMHRb+owLrox0T/qVKUNwILscnYi3Hhkq9
	tzlve8aJJt4JbW55M2+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVpj-0000fG-Fh; Fri, 17 Apr 2020 18:35:23 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVoq-00008D-T0
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:34:31 +0000
Received: by mail-pj1-x1043.google.com with SMTP id 7so2437640pjo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 11:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KldHZTnr7jqdruc1snUYVZ+gDF1RtUxdIYHh8TAAFPY=;
 b=uaAWu+d/OmQIgs6fP6iNvKsTDVfi41RwuXLxUNi7g59TACc4Wu2eOjBRNgdgDZ88mU
 IWvCova0KaKuJ3/yPlmRUG7P75A9gheFEtjCtOyZmfbCZKXtAqG53SwYWSUEXsa3P5Eb
 U4P97eazQIOysH3i8IgCkfuqdYldLMHge52RsX8CcTBtBvrSC53qZOJwA+l97gtv16YA
 Iz3z0Mge613VqHwEsBTjvsoljc1v1XpWG4hT0s+98PUTwFJKYFmv8DzZSUS/r3K18XEa
 zX/ATBcX5AevlXOCsD5KNznlqUOi1288u1NEDUGaE0n8bDiAX8eeqtWcn1eAKuJwFSBx
 NkMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KldHZTnr7jqdruc1snUYVZ+gDF1RtUxdIYHh8TAAFPY=;
 b=H3l++i8sXljc6NLDyj7hZgIkT3ZrXV1fSzhH/tutRExclT0jzaBTHyFRZAjTzipk3r
 8wCHCZ+wqeZVwsLevVf2KUeOxyGakJqsKUOtsYbJ5H/5ixZiydIhV8YXxULbfI6myMk+
 TCW3epQsS+V+QSlw8ThHc0DjL5XoC8W5sQQrrEoTUZSHjEF/Jd0BGrDXQJLwPzGf0ZUx
 c2kom/GNSbzncG4JFbMCotD4jRHYkNTd15UZM3RhHFWrfIgcHWdHw/QUadqGW/0l6QY7
 j3LyhCybZ6nAA90PLPo6XpzAG97DVVNZtl7YNFtrtdIZCeBt9sBMz4SDdQZQg9gpHazt
 9eeg==
X-Gm-Message-State: AGi0PubwOb1LDYOl6++mNrLyla729saWG3b3ttEp6ep+BVCG0+X2j9Pp
 JG8Zy7ZiwuefilomiLbLbUY=
X-Google-Smtp-Source: APiQypIkH5Cq/WH/rUflEuZ754+vLCbmlo4nFnm4eDXOOhyU3fJyIkobX28d3PLqNzSNlnJaEKJbbA==
X-Received: by 2002:a17:902:444:: with SMTP id
 62mr4697411ple.301.1587148467552; 
 Fri, 17 Apr 2020 11:34:27 -0700 (PDT)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id o63sm6544022pjb.40.2020.04.17.11.34.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 11:34:26 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next] net: phy: mdio-bcm-iproc: Do not show kernel pointer
Date: Fri, 17 Apr 2020 11:34:20 -0700
Message-Id: <20200417183420.8514-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_113429_019233_3EC0031C 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Displaying the virtual address at which the MDIO base register address
has been mapped is not useful and is not visible with pointer hashing in
place, replace the message with something indicating successful
registration instead.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/net/phy/mdio-bcm-iproc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio-bcm-iproc.c b/drivers/net/phy/mdio-bcm-iproc.c
index f1ded03f0229..38bf40e0d673 100644
--- a/drivers/net/phy/mdio-bcm-iproc.c
+++ b/drivers/net/phy/mdio-bcm-iproc.c
@@ -159,7 +159,7 @@ static int iproc_mdio_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, priv);
 
-	dev_info(&pdev->dev, "Broadcom iProc MDIO bus at 0x%p\n", priv->base);
+	dev_info(&pdev->dev, "Broadcom iProc MDIO bus registered\n");
 
 	return 0;
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
