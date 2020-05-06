Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B201C7E29
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 01:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OfGuA0F1zMDIXVD8iEbHzQZk1D+z0PgC7jtnocZfiU4=; b=XPz
	I3BpozUthesnaKhkppdLBqgNUFBH7FXqWjWE4QSKPWWbnv5HtXMHj8GHmF09lz3L5yWL9JzqbwZ/1
	VOHmwaMLcCn7D+qYLq+iCL6/5vXpv9svt7m+DQsaey2Beon1gRxHjDoS2mDezX1obunxqYS27a6oI
	pTvGY3Xzu3w20IybIoagPDA3HrgLkyicF+UqQzrmRKRyyDFNTA3JxdVfy1Nc/8FsB6AMYPYP7+isQ
	e7x9jIcA1n11fTsoHbKePdrw9tTHbw25oKU6OcklMWoWjxdTew91zJa/tvf5hCZmyNQuimwgArQ0F
	ylV++DQCcvnCMyddmVhwzyP71YVrYvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWTpF-0008U1-2N; Wed, 06 May 2020 23:51:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWTp5-0008T5-Ju
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 23:51:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id k12so4369310wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 16:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QWLWd/SxotZnrp8mf3BV8Zry/m2K5tOeHc9gKLSmM2w=;
 b=nI67G7yEP2Dp7T5QQKYaH3x/1/Qa5MfUkrfdWOMfaBQ/gNp8Y/thFWt6qxkTuk9tUh
 GHc4Myk4CS7S0BmlwLf+fD8q3G2kOj1uckiQ7igurtgzorboMfkg336GW8RaNnkKLjbV
 LywcvSQdE88hyVnSTaGpBTufpw4xVMr6d7K6Qu1m3HgDa8ENlpOuXXFdD1nr1FtXl+7O
 W9cAKZc53nokw8gUtnjOAJOiM14YpOcjyR2etK7MzXyRb5WdhTEi2qujXALrA9IlE+Ji
 tXw9NPaBgg73rrxno0J5SXU1t9HJ6pLPHxbknX3ExtDTpasXMEsgX8mVbzYExEg+TJy0
 dDcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QWLWd/SxotZnrp8mf3BV8Zry/m2K5tOeHc9gKLSmM2w=;
 b=cpKqn2WItZ+RtlW3TjQAh3SLnrPpbUQ/p2mfyGbyQUhby6PQTLXkuH2s40VmZujFOr
 tmtm7aXhV6EHPyrfsmR0g6eoaOPlSuW9e7GZm3bGx9nWHC05Gyo2bwEYmqgSuc3Fl9hX
 GZeF4MiNL2pgtAHZ8Bd+6zmLRKwP0RNy5x8TSEMFL9BBn38bVxmeqpI+UlL8AdFev13F
 IBFT2Tf+9VGQeWht+GkDEkCwMaZatVwBGsYMYsmQHRm0c+nO+Z2Yelis2rPRK+CF6PlS
 w5IgTYP1+LbakNmmcB2xltWVC7ZefmQs2DYyS61bKqSZe+6A6WKjWxvOTb2gVAlQl3M+
 gbAA==
X-Gm-Message-State: AGi0PuZdqxImgc0NJuSAYVX8jlLWDy7oS8X1hbC86FV2g7uTGgtFOW3D
 73EnGuZVM1ZY0LG3IcdlpWh/u3MQ
X-Google-Smtp-Source: APiQypIKVFKX6z2UfcCghxC/wV+lH5ZGSlWmN4jB8+DmjdvF/S20oMUfOiA7/EdXoVjCOAYQ4ycZ8Q==
X-Received: by 2002:a05:600c:22d6:: with SMTP id
 22mr6957030wmg.121.1588809089715; 
 Wed, 06 May 2020 16:51:29 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b20sm3693161wme.9.2020.05.06.16.51.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 16:51:29 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] Allow either FLATMEM or SPARSEMEM on the multiplatform
 build
Date: Wed,  6 May 2020 16:50:07 -0700
Message-Id: <20200506235009.25023-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_165131_656445_88386BA1 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: opendmb@gmail.com, Arnd Bergmann <arnd@arndb.de>, sboyd@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, rmk+kernel@armlinux.org.uk,
 Florian Fainelli <f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This patch series somehow got lost back in 2015, and while looking at
the various patches that we are carrying in our BRCMSTB downstream
kernel those two patches should have made it upstream.

It does not seem to me that much has changed since their original
submissions back in 2015:

https://lkml.org/lkml/2015/6/4/755

where only the first patch made it to Russell's patch tracker.

Gregory Fong (1):
  ARM: Allow either FLATMEM or SPARSEMEM on the multiplatform build

Kevin Cernekee (1):
  ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting

 arch/arm/Kconfig | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
