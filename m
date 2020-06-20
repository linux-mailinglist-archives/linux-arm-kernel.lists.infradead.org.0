Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9D0202624
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 21:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YGCavxWy5zDRg6qfbbohCwH+/YhiJawVnmB1LAnHRSQ=; b=K5KByvDFqP/KtI
	tvL8NNG8ux0Q1GJ44srrMliRAO4e4Jqi/TmKBPfL4c0BuJIcxsnju6CfYuiSNTRmHM7yklaB0jQzJ
	7kbNBn94BtUnWIldPOpu34s2P6m80PVF0xUZjsvlA9PonZE8i1aQMjHN9/ocF46RWxmR3l9bmKjzY
	pGje2wUUgFC/k5oQ1MbsbQMVfq5IqNHw3N04aVl+V4W1Y7hh5u+5VJK3L/QcZik4i63i0XpyzrYU+
	gKkuVi3aH78gvb4mvNJbbGXNPeEJ7T82txca5VEve2qArPZsUvwdSr9bcfA5QHQj3k/M/kWjet57I
	2ztjqhIBX79SrLL8dDQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmj9P-0002Q7-Uk; Sat, 20 Jun 2020 19:27:39 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmj8q-00029a-Q4; Sat, 20 Jun 2020 19:27:06 +0000
Received: by mail-ej1-x643.google.com with SMTP id y13so13939511eju.2;
 Sat, 20 Jun 2020 12:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mUJH12LGeW9ylYQEdpmnE0J88t7sUIOSezt8ZphdlhI=;
 b=ntaLZQiFRDVbnTDcEeJmaep8QFe8P5X4WgGS4Eo3LTzE/WmPZLunUnKGx46AH2zK5v
 ljBWj3sCov2YBpl0GnI7foLID/zGz/NiFdcS/W3KvxVJSmO/1TqTGbQpRM1lVsF0JpAi
 CnMM/jb2mhg3TXUsHxoW8imEGoD0xVO1fZh9xtK+HuJr5FC1PXq2EajvcF+ovM7A/ASg
 twTNA4hK18kdYBmfi2ObV98lVtx2An7RnTQQWRZu6HtCLAKnTQDTctWVJu6CpedJEsYK
 8taXz8a8LHiKYo39atZe9D1gs2G0c9IuW3FpftVSEmpiT9GfuMAbf+WPXNTbqeAKzQ9+
 l+Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mUJH12LGeW9ylYQEdpmnE0J88t7sUIOSezt8ZphdlhI=;
 b=t2a8CkSlw1uXfBxjdYASnvY1rqAs5sO8CH5rM4nxsfYGdL6QlcBxENR5Bv6HK/G3+J
 sb0cpY3b3OrGcwloGz05mf5ke/L+bie/Ky3j6xS+TlNWLLBmyDa7hFxvmMyCdVNIDG7s
 8kPztWocadkMSrjNfrnhT4P8AJd9L9PyW/WNMuGPi8WXtg4UuDLun9dYBxkyW7ABM8Lq
 LXYFPRfb1ZoougjsqAAR1B2pUCJwrNm4RmPi705eVS7s5wSrlft1d4Oak8uCkW1SPyJq
 Y1xU3UHXtmdvQfmYZBA+0VGEoWVYhdKq2/t4GjK9ZhCzLNggzrEtbRcXb1xJ/xhT8lAP
 5+sA==
X-Gm-Message-State: AOAM5301MWlJDasqAavT5rpVcT5xIlpQhhWE2FaAi/CM7eteDAl43kG+
 hT9A0vHFeAdmCvLDjjIcgmQ=
X-Google-Smtp-Source: ABdhPJxsrLJ6aA6NVzk/zX8t11cs2ETNgzWKiUMxMnSjlqyiheQL1voAGp96yx9pCHlNR3b39ESu8Q==
X-Received: by 2002:a17:906:7a19:: with SMTP id
 d25mr9321045ejo.333.1592681221933; 
 Sat, 20 Jun 2020 12:27:01 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id
 gv18sm8034044ejb.113.2020.06.20.12.27.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 12:27:01 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: davem@davemloft.net, netdev@vger.kernel.org,
 linux-amlogic@lists.infradead.org, robh+dt@kernel.org
Subject: [PATCH 0/2] prepare dwmac-meson8b for G12A specific initialization
Date: Sat, 20 Jun 2020 21:26:39 +0200
Message-Id: <20200620192641.175754-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_122704_842616_AF30D745 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some users are reporting that RGMII (and sometimes also RMII) Ethernet
is not working for them on G12A/G12B/SM1 boards. Upon closer inspection
of the vendor code for these SoCs new register bits are found.

It's not clear yet how these registers work. Add a new compatible string
as the first preparation step to improve Ethernet support on these SoCs.


Martin Blumenstingl (2):
  dt-bindings: net: dwmac-meson: Add a compatible string for G12A
    onwards
  net: stmmac: dwmac-meson8b: add a compatible string for G12A SoCs

 .../devicetree/bindings/net/amlogic,meson-dwmac.yaml          | 3 +++
 drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c           | 4 ++++
 2 files changed, 7 insertions(+)

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
