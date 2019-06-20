Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64734DD48
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 00:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qyxLUemiWS1vPuEEoW7mnurip1Rcj9RDAF/pTgL4v5c=; b=Lko
	UJgqg9jM6JeKqtj4QWw/y8mGUjx/2Cl6M2dmRgqVmqFtFQ1fHBA47/sFC+FdoXvZjIze/PLVsg1CY
	HF3wXEo2BrqVEBh4RUSHB9LxdJ1y7NrXdCav1SZ7Drv5MjQtpoblVBT/gOcL+4tK64/oWO3SEYpg4
	i3NH25nplBhVyRUQ47QwS8meHKuP8tiIjq2dPf5ZghKE0cd1zr75GxPqyXJ71bn/bm4bzYK2Yswy1
	4iqPOQsYzKCeJ44Brwp1nZGxfDKq4ecrpWbUBPPGZ+aO31k2u9TsvMb5XNLeXPVi19kqugoJIudkS
	jgDlWfSBWOVMp9XX30UeS+r9YfkPG5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he5Ia-0001I5-9X; Thu, 20 Jun 2019 22:12:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he5IN-0001HC-Ur
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 22:12:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id m7so1938661pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 15:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=dXuNxncjf3uHoTCqccXPqxROqKCYiNRUk7V6g2Jaeo4=;
 b=bkYTaBbi30WKTPtHAIUDF36UBbsuRZYDyeA787XaLZEqQsmK0jJoseMV/bIPjDZhsF
 gs9ThmEc8xvdrHRd7ifYnRyAHudyxvY/MyiYUSU3YE1qBKRkrrVO8rBOPhizUPAKgd59
 kVMqc17Ndw1D08ri0uCRlrFWO0ttrKn+yJXmlLeGfWKLqVMmCCCeZWJuoLYGibqJtQ7t
 54s+Q4FrnGEM5ffpnTlrvhvLiixxKt+PP7tXHsKAUHbWsZJ2mu+jUH80hlP6Hi4sbZza
 WuTgDBg0H8V4Q2cMRUrStV5eiCsw+UuhCNRxt9RyQ3u7A4IcW7xeRCme15FPLt2W3AmD
 6UXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dXuNxncjf3uHoTCqccXPqxROqKCYiNRUk7V6g2Jaeo4=;
 b=ie4iyfgrM/+Bx0h1xra6PKHqemPIG7TUFmy11KrCySLl2k77/ICWD+pqMkMauZKRpv
 mysUqcKLQRyxtFhOT5sh/Lkz5i7bkcQ/e4Kil76g+7PM9eAB15MOqCchzA0HBOnDJsma
 9ugZRSkqZGU/aIf7LTvYVejBQ4cusRiaSzuTFwmifrHJhtcybhuDs8pjDgclb3dWOzcL
 nXRzM1Ci8HanjAr4UnVjUz+9c73fFLgITpbUf8izkRLEnjrNijX6TAve2m3Fst6kL8Z+
 pHzfDmW0V9CMxoUqUwAaWVA9Xtm7rhKumbHUHkVNiR3damB/ejpinI7BodHgwVEWEjdb
 ZFNA==
X-Gm-Message-State: APjAAAW0MmcP8oP7CUeUcQlA7EVlsbQIO503ICTQqEr8YVfUxMf9mYos
 JiZOi9VGjVnxdjsuEuiqawxh7w==
X-Google-Smtp-Source: APXvYqzYQFmjNWY0iEgzbJ2LEYQ3stBu93YkqHKNKhVj+FnmKrGtodIEvzWS6Ab/VK2mt9Np0YZaeg==
X-Received: by 2002:a17:902:5ac4:: with SMTP id
 g4mr51081580plm.80.1561068759010; 
 Thu, 20 Jun 2019 15:12:39 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x25sm450636pfm.48.2019.06.20.15.12.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 15:12:38 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/5] coresight: Fixes for v5.2-rc5 
Date: Thu, 20 Jun 2019 16:12:32 -0600
Message-Id: <20190620221237.3536-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_151240_007391_10D2922F 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

As requested here is a set to fix problems found up to now in this
cycle, supplemented with stable tags where applicable.

Thanks,
Mathieu 

Dan Carpenter (1):
  coresight: Potential uninitialized variable in probe()

Suzuki K Poulose (4):
  coresight: tmc-etr: Do not call smp_processor_id() from preemptible
  coresight: tmc-etr: alloc_perf_buf: Do not call smp_processor_id from
    preemptible
  coresight: tmc-etf: Do not call smp_processor_id from preemptible
  coresight: etb10: Do not call smp_processor_id from preemptible

 drivers/hwtracing/coresight/coresight-etb10.c   |  6 ++----
 drivers/hwtracing/coresight/coresight-funnel.c  |  1 +
 drivers/hwtracing/coresight/coresight-tmc-etf.c |  6 ++----
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 13 ++++---------
 4 files changed, 9 insertions(+), 17 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
