Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816C6FE7E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=k1HLQ1VBHOs35sRMirLsbVN8mRuoGhesbAlw41ip/XI=; b=llm
	D0Ozh3ATglybjT+CSUfzTvgkhH+uUGv5JcySSoLVK/1HvAU79Nfht/kzhk+rc/NrNBNFicDzrEeFH
	ffSMHl7povp1mhguZyYf9ELCeEKGzOuRFdGYPeSZPZ7bM17mtMv/Cuz9HKmMA79Pkc+ml4VbA4814
	cW68hwlNzR72afFfoVbR7d9WkCzv5olMhuJMNMZ5OqUqt3nFHNkLRAbbJx3Ra2UfStNJjznkBcyzU
	WX8UFqjKSxGtnddCr9zD/NMYR7bE8G+jbFKXdgQ3wB9aAbQad9ay6MCBrL1T3tgA5774RLDwLRxNb
	4EUooILY/Wf80eXwsaVq2d/Ewin5Cfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkAS-00077e-SE; Fri, 15 Nov 2019 22:34:16 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAC-000769-Eb
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id c13so7336628pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Tc+IEmTbMBJCj4EiVIkUr9PV2atSgJthk3up+qVhyOE=;
 b=BoaaaX8RsyTJpotwcaZaTD6Tyhn833MOIIDHMWr3NTNPT5Mmx71uuoUUG3DF6Dup9s
 lAeMeISC4gG/92nA7AyPgTb37ys0iuHbAxbDO3MU0OERSfxWYFUPDT113kahRoqHbacV
 1t2mCpDH0ZffJLXrG8zehsSd086kaA621p1+yYiMxgHdxcG5EAUKq3YCqy6MmqrI/Es/
 jcnzhcv9t4AopOYTO8EQg53V68MNnuwplarZG6y/N4NId2Rw73Yj2+YdKFtJGEvW7J+1
 VuZbzXMxe1W0aqKbfqGyJgz/TEKm+UhMbJtGGZ6czxRqmh5bNfZmhSfjIiVFZ/z7ZgGU
 1VrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Tc+IEmTbMBJCj4EiVIkUr9PV2atSgJthk3up+qVhyOE=;
 b=hWIq7e9YSKpC7gH2V3XOpJNQ3i8S5lMJAR/GP4TavvVR7+2tBI75Z48sJNzVNdAIyY
 dUcYSXNFHw5LCi7tvaan51INDyAZ3F/tqpqXT8mjWL2rnb+8hrcOqOBe46V57S1+W21z
 Xs/Z3EqoEVWH3HMWszURyNaeSjEdY1Iu8ADG3beVJncQJiJxZGwumN2B4AOwhbjtvkCl
 WVyojrnUyPQlB/vnsLb3BuWcJIq67S6Ditu9eF8cts3BNJIe/yeWqX73Irvr4W/oJsoA
 xR2Wjk7SXA8foFA9v5XP3hDLiDIfFs7AvclG50quaWwYichKzcL1349o04bW7mh4ZpXx
 RF3w==
X-Gm-Message-State: APjAAAUI9Ka/nG3tIPu18sYbevWt/0j3KaeZhiCv1fUn6KlPJxKxnWEB
 uRoX5It2/lwK3M9dgnDoCdmrtw==
X-Google-Smtp-Source: APXvYqzUrFqYWdMgMuMww+ixzlV+FmQouQrALIgHfRTCaefzB7ScRo91nDaA8H/KKozVPoI12PkkMQ==
X-Received: by 2002:aa7:870c:: with SMTP id b12mr20357084pfo.30.1573857238096; 
 Fri, 15 Nov 2019 14:33:58 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.33.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:33:57 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 01/20] i2c: stm32f7: fix first byte to send in
 slave mode
Date: Fri, 15 Nov 2019 15:33:37 -0700
Message-Id: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143400_517307_3B91F820 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabrice Gasnier <fabrice.gasnier@st.com>

commit 915da2b794ce4fc98b1acf64d64354f22a5e4931 upstream

The slave-interface documentation [1] states "the bus driver should
transmit the first byte" upon I2C_SLAVE_READ_REQUESTED slave event:
- 'val': backend returns first byte to be sent
The driver currently ignores the 1st byte to send on this event.

[1] https://www.kernel.org/doc/Documentation/i2c/slave-interface

Fixes: 60d609f30de2 ("i2c: i2c-stm32f7: Add slave support")
Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/i2c/busses/i2c-stm32f7.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index ac9c9486b834..48521bc8a4d2 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -1177,6 +1177,8 @@ static void stm32f7_i2c_slave_start(struct stm32f7_i2c_dev *i2c_dev)
 			STM32F7_I2C_CR1_TXIE;
 		stm32f7_i2c_set_bits(base + STM32F7_I2C_CR1, mask);
 
+		/* Write 1st data byte */
+		writel_relaxed(value, base + STM32F7_I2C_TXDR);
 	} else {
 		/* Notify i2c slave that new write transfer is starting */
 		i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
