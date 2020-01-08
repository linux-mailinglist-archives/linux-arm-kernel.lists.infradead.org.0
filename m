Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F04E133C3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 08:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oZBiAEiCsh9IBtK1wW53bE7n7HpOcWEha7zXLUcQ0lM=; b=AeY
	8kk+Z0BC5N/NQqJfuU0ly0dowfNpLNSZjwsxgcjq1Ove4HOV9YrV30RdswJVlsl6rMGUkGUWnrbeb
	HI7ETRG0M//rQeJiNwD7jn6XGOaD3o2wxvbnZSk8aXBQCCk0+PHqnNJJyfASwE2vj2B1Zct6Y3Y0r
	8ji0W6omsqD6tvtwrqfbwk40uhiOVkjvmfAK+9HDZ3blKEP+lXSsfqL99yFMjF5qP2jv2cb+f45NY
	58gAHDT+KvTOXyFiO+IjNN4kJRx0mFBQJMG1EOCZGYYx45ZJaJxI+topTgtFnc7wM9dkZDJN4rf2v
	X94m2abS7vEcvnX3y5iCDcTqqaSZmIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip5ja-0004YT-F4; Wed, 08 Jan 2020 07:26:30 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip5jT-0004YA-Jq
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 07:26:24 +0000
Received: by mail-pg1-x542.google.com with SMTP id a33so1125827pgm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 23:26:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BGo10uJ7yfot4T+e9WxjVmggP6J1wCJOQgtZDEvps6k=;
 b=DZYTvdIW+43poxmXAWsnbKEMXfMgAYTNSNSjzrKvHcbxYUNT70lgy3dQKoQG768UuR
 y/4QnZ41Z2U3eHE/WyeZxE7goX74Z6fTViI2rtkRlsG1+kLZX9o56Nr8Hf5pbVnmR+Lq
 xO2XIfYh4WJYvL9FM8OKz27dOyW+woGROnWGCj+7ePioeXlCFJbDT3OrkIQzSWTxbwBK
 C7gNn+O/JZlSIUHDuES4e78GNWe0O+MJRMUqv2PTJJQJE3V0644vAgqpYYvGB1Uo8liZ
 etu8LY3BomXKXaUE1mhQnk/KJqmRstxgYvxUOI4+rjn8OSNRK6jpeax5YJoH6y8k6T0b
 PYog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BGo10uJ7yfot4T+e9WxjVmggP6J1wCJOQgtZDEvps6k=;
 b=mNIelCk7O6x+3WwFgAgb8YCQdVXSBu8x1LuE5OywPbhgOsxGlUXmVHTp3Uh7ZGDhF7
 yAoprL3Rw3JG4rmKDhqM4w/KZEO+9mB/iegGitXcF3nNlT9iQLf7PXkC5TdptbR3CUp/
 rF2KGcPiFks4PPmAmlWLm/Jo8nOCIL/TAd7AmZ3tR+vzM6p/Ek+nrsKqqxZIKkUaAGpu
 EB0olNlZorjUFapOoudtU5OyTmGbos97E1PqKzfIGktUYzqEgOMfwA9RJvjgu10q79ew
 wANvLDQQHlZkt2LOVBAaNkfraXfIfrgKjS3mH1gUoeeZN5iO2CW8+FezsUfvPC5Y825R
 VbKw==
X-Gm-Message-State: APjAAAWtSVYYB1ggZkRegAjn7FemptNNwYH2QHgQLFJ3sKJkxqyywVZ/
 Fcsot2gjrfYwovNaj170bVE=
X-Google-Smtp-Source: APXvYqxghKJ14QjOwmxrl6htFh2WX6svt01e28xiCtneF71s3aUeytu3/ouF1j764HyGERYD9M/y4g==
X-Received: by 2002:a65:4587:: with SMTP id o7mr3730787pgq.303.1578468383088; 
 Tue, 07 Jan 2020 23:26:23 -0800 (PST)
Received: from localhost (199.168.140.36.16clouds.com. [199.168.140.36])
 by smtp.gmail.com with ESMTPSA id o31sm2231827pgb.56.2020.01.07.23.26.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 23:26:22 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com,
 martin.blumenstingl@googlemail.com, treding@nvidia.com, andrew@lunn.ch,
 weifeng.voon@intel.com, tglx@linutronix.de
Subject: [PATCH v2 0/2] net: stmmac: remove useless code of phy_mask
Date: Wed,  8 Jan 2020 15:25:48 +0800
Message-Id: <20200108072550.28613-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_232623_649374_FAA3801C 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zhengdejin5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhengdejin5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patches just for cleanup codes in stmmac driver.

Changes since v1:
	1, add a new commit for remove the useless member phy_mask.
	2, adjust some commit comments for the original commit.

Dejin Zheng (2):
  net: stmmac: pci: remove the duplicate code of set phy_mask
  net: stmmac: remove the useless member phy_mask

 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 1 -
 drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c  | 5 -----
 include/linux/stmmac.h                            | 1 -
 3 files changed, 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
