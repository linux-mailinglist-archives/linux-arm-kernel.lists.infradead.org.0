Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDA64DD4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 00:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HaaDCAAfvks+7Zp37eXefps8GGQ25ecSyoTlhph9cm0=; b=SZIzX9qx8Fgxl4npgpdwMhffg/
	W2CyCDnFBet4vLjJT0YB3JWxLrPip3zzfTEGhGf5FtdBGby7clmiY5I8q2RN3T4zMlxRYcpYU1BP2
	xdxQ0Eu+UkqHaawFGnBqiLxaNNERNVhgk9zoAh9PvK9Gs13b/85+dWTluvUu0S3YaZTrCyIvbKkvx
	k9j+6HDV/BDlNnor1b9jL8qJPuJjF7LNjDE/2f35wQtzogioHie164sqX9jV1SYI8OXdcRbLws1nZ
	yacJ1VGKPG/aVvWHtMTMICEJMn/gVA8tUaISWmStsVbzn7uJxNK1xhRnfIUiQR3pOtjSpncMaD3pq
	ttf8vrdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he5Jj-0002Or-1G; Thu, 20 Jun 2019 22:14:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he5IR-0001JR-Sb
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 22:12:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id m4so1693186pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 15:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GvxBY/i2ZSlgmLIDUuRnFPPWvrwaxjh9VeMcvUEhcgY=;
 b=cV/eDn4E8MYKEIrkcvvFpRm8TVvEF8vqvLn/Y4k6iS+aDbLyJZPUoSxQhomCOw5hoK
 y6mlRCLwZDhHtXC1ibJzKtxHGAMUrjHb+5iHtMf+pzu3RvAm5A/EE8JonuVrTjON/F8t
 SkibQO2c+Qi1dPt/gyuuR+sUq7D3Qyr9yo0iKpKNSmzOmASDwFh5oamIMZbkHZ9cMxdX
 mgwDlW3i4iBBhEbDxwD9K4Hk5r3b42z6kO/Lvj8CAQFTClP7yswFWdmDgMgzalC64glm
 FKBtHjpls9TaeZ2koEdQEESXMU8QDelL/67qo2UexXmROvA4e22zVA5TSCWgrB958AG/
 FnFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GvxBY/i2ZSlgmLIDUuRnFPPWvrwaxjh9VeMcvUEhcgY=;
 b=ZW25NlayPfZ9xE9UejGrvxXxAdA55JEIAvcNBkiBuXP+OkC2mqH7ff8UV4zaIr9TOU
 ZvIMIo2zI7njC6v/ZL2QXGMvp3KeSWHnaokEeQsWyY86FM/kzRmSs/HoiHtWcd6tapXh
 oQWYkxMXTqoeDU6CR3nx7zY12msgZQ+7Lhqh/oBFKCnUPeARzJGIA02fT3pvM2CM+ivu
 W7Io2CTzm56k9glu8rMS9GN4gtdbBpv+oMxCSWgkjYFA4gSBgEFL6tM+Bk/1JKqWXE8t
 XlNhW5d8goClQG0Auwri0mqGsLRbH3VgXJdEg2sEJysOqA/rvopKaA2GTr8EaeRnP6CA
 kZ9g==
X-Gm-Message-State: APjAAAUIGlSs235/eoWpvoLkytKc9ldi0VAfqC9doHQdaP8+O7gg4VvK
 1po+wTxBlOdXW1UpnPAxdtlSsg==
X-Google-Smtp-Source: APXvYqwAxSA8AZHnt57NqT+imeYSD5/BwWekfsP51A0bj5TjA/F+MKaS12yobEF2ZUlS6HxiqqFzbQ==
X-Received: by 2002:a62:e403:: with SMTP id r3mr98800176pfh.37.1561068762487; 
 Thu, 20 Jun 2019 15:12:42 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x25sm450636pfm.48.2019.06.20.15.12.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 15:12:41 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/5] coresight: etb10: Do not call smp_processor_id from
 preemptible
Date: Thu, 20 Jun 2019 16:12:36 -0600
Message-Id: <20190620221237.3536-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620221237.3536-1-mathieu.poirier@linaro.org>
References: <20190620221237.3536-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_151243_974944_4779D214 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

During a perf session we try to allocate buffers on the "node" associated
with the CPU the event is bound to. If it is not bound to a CPU, we
use the current CPU node, using smp_processor_id(). However this is unsafe
in a pre-emptible context and could generate the splats as below :

 BUG: using smp_processor_id() in preemptible [00000000] code: perf/2544

Use NUMA_NO_NODE hint instead of using the current node for events
not bound to CPUs.

Fixes: 2997aa4063d97fdb39 ("coresight: etb10: implementing AUX API")
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: stable <stable@vger.kernel.org> # 4.6+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etb10.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 4ee4c80a4354..543cc3d36e1d 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -373,12 +373,10 @@ static void *etb_alloc_buffer(struct coresight_device *csdev,
 			      struct perf_event *event, void **pages,
 			      int nr_pages, bool overwrite)
 {
-	int node, cpu = event->cpu;
+	int node;
 	struct cs_buffers *buf;
 
-	if (cpu == -1)
-		cpu = smp_processor_id();
-	node = cpu_to_node(cpu);
+	node = (event->cpu == -1) ? NUMA_NO_NODE : cpu_to_node(event->cpu);
 
 	buf = kzalloc_node(sizeof(struct cs_buffers), GFP_KERNEL, node);
 	if (!buf)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
