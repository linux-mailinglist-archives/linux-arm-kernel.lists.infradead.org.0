Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A0513ABA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DoGpGlHutIMON87qMzaUWTKtXE8wVH3q81NFszS2JQA=; b=FRUwvcRX4eomkT
	l7rjAZ+m3PfAXYvhPFCI1ElwM0RnHDCRnwO61ceYLsKf3+26g6QU7xKDyUxS7003p7WHYJ0tZ13cA
	rY+YeMJPRS7Wg+3kTIa2XIfhzzi2r/8qfj0LaMP6j1pQysfc/DqVeMk5NyFr/nCGMCj2ASJC3+3kw
	dYxQh7NO83GMI/k21G4AGB4ULlW5jcky8X5lrF4DlyLSZ9yz8YQe+Nxe5VGdQYa3CcUYyom1+PEyy
	V5UwL8x1pZRROO85fIHAbh2mx24htdXvvGjobOsL62ZfzY2UcNQDF+E8bSDABcx+yCpZp5kwnKJMT
	oDkA0kaXPa4fdndSj0Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMjy-0007aa-IL; Tue, 14 Jan 2020 14:00:18 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMjX-0007Yj-SN
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 13:59:57 +0000
Received: by mail-wm1-x330.google.com with SMTP id f129so13858464wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 05:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WxdkQ4fln/Ubg69SQWZPku8d8xfNPtcWo6lDszFAgoU=;
 b=W5yD7THh9GoPrqpAR+V6A99baoCffIA80ESDKdfUT4jQ43HWe7mgvJtpFBECNzWpfo
 bz8xxkmz7NEenvBfXfcRuOdyeWxr/pUVVyFOh9D5p9Nqf4DNNkAg8yMwt2KipmDXSA4m
 F/Xi7b8c+8LkgBp35W80e9OVXqAPJNH2bBe+He6wKRT0YZa0l/hFhJpvHkcEUovLUEpi
 UHyC1DShgeL4HbPe4cvV8l153bzO81NZY3bLWpc1uh9L8pOP8grJOHDrSBs/SEUo7Q/G
 C6IkbFOdSBNykmToWLZSS6dvZWgV7mwwdZTUK+lIjdgNba/X1T0dVEkSEzSu50mSY97i
 xWOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WxdkQ4fln/Ubg69SQWZPku8d8xfNPtcWo6lDszFAgoU=;
 b=p92dxvmFy8hcIz9PAjPP+dbah+9bhySaAsw2CV7ctnH3S1CQ4VdCYsPBTLtt3DiMId
 U5YCM3yTR5v70G7pGDi9RraMWoOCz9rfK/RW/D0Aj95w9LFQmKaEkeQ/SFXj5CRCvwdw
 4+slfeWSrErpAqnn6HqqwXzjGi3bhxbIBATtcg9w0VLxzKfQQ7sreTMaiZxwf0XeQYHH
 Sp+v3DDBHri7ph7wIVL+lb+ch/wdWkbmGfzCRLeb5lHHN6SKUd0U369arimhT+2bJhsj
 HbRZR1EKrRFJvksriQhcDoFu1KNCIZdt6b3KrTzWbma4cTF4EoPFRb8U+ahPZhu6zY/g
 kwlg==
X-Gm-Message-State: APjAAAX4Y10jnGZrhjinOga2bkFG/je/ydJBl9ZglzoXFeO2Yl8DF9QI
 uzwyv4LFX3NqOnv8BpOzdEg=
X-Google-Smtp-Source: APXvYqzNVQbW7IsfrQ2HGsc5vwBjjCjT9FNXhoYr/xxz+X6aphiPMpyQ6yCNL9Z9aspgGTjXkf82iw==
X-Received: by 2002:a05:600c:20e:: with SMTP id
 14mr19620970wmi.104.1579010389767; 
 Tue, 14 Jan 2020 05:59:49 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 4sm17854448wmg.22.2020.01.14.05.59.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 05:59:49 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: alexandre.torgue@st.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 mcoquelin.stm32@gmail.com, mripard@kernel.org, wens@csie.org,
 iuliana.prodan@nxp.com, horia.geanta@nxp.com, aymen.sghaier@nxp.com
Subject: [PATCH RFC 00/10] crypto: engine: permit to batch requests
Date: Tue, 14 Jan 2020 14:59:26 +0100
Message-Id: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_055951_934938_9336D389 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
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
Cc: linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

The sun8i-ce hardware can work on multiple requests in one batch.
For this it use a task descriptor, and chain them.
For the moment, the driver does not use this mechanism and do requests
one at a time and issue an irq for each.

Using the chaning will permit to issue less interrupts, and increase
thoughput.

But the crypto/engine can enqueue lots of requests but can ran them only
one by one.

This serie introduce a way to batch requests in crypto/engine by
- setting a batch limit (1 by default)
- refactor the prepare/unprepare code to permit to have x requests
  prepared/unprepared at the same time.

For testing the serie, the selftest are not enough, since it issue
request one at a time.
I have used LUKS for testing it.

Please give me what you think about this serie, specially maintainers
which have hardware with the same kind of capability.

Regards

Corentin Labbe (10):
  crypto: sun8i-ce: move iv data to request context
  crypto: sun8i-ce: increase task list size
  crypto: sun8i-ce: split into prepare/run/unprepare
  crypto: sun8i-ce: introduce the slot number
  crypto: engine: transform cur_req in an array
  crypto: engine: introduce ct
  crypto: sun8i-ce: handle slot > 0
  crypto: engine: add slot parameter
  crypto: engine: permit to batch requests
  crypto: sun8i-ce: use the new batch mechanism

 crypto/crypto_engine.c                        |  76 +++++++----
 .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 121 +++++++++++++-----
 .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c |  17 ++-
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  |  17 ++-
 drivers/crypto/omap-aes-gcm.c                 |   2 +-
 drivers/crypto/omap-aes.c                     |   4 +-
 drivers/crypto/omap-des.c                     |   4 +-
 drivers/crypto/stm32/stm32-cryp.c             |   8 +-
 drivers/crypto/stm32/stm32-hash.c             |   4 +-
 include/crypto/engine.h                       |  27 +++-
 10 files changed, 201 insertions(+), 79 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
