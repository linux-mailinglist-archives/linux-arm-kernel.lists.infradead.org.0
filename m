Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E681110ADC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:32:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Doc5hlyiyD0sV10DoS0g58U7C+AgDIJ7hPnYMxKBW04=; b=QD8FIzYUu31GDpRfTofmR++1g2
	cWja0t4jZkxEN3HRRj+Eb2LbOKslAJNYx5UGC0JCIzN/tgAp8NprQY4VJqhIXlhV1HhqVnDvlVphQ
	WrnWglye7BLurqveQMRuPZ3DZeiStg0EMI8M2GzEjtTlBILoQQXaS4Ehf4wWjceaTnty1R5Td+V0M
	ndDLEuCnvzSI9YkusmYvNHM9XR7tXO93m6G9yFFmyKmZQmCIyKOLCVt8uL3y7BVDv2lAwvM4LyRD6
	5nt+Goh49FpMbundlX6qePbpBa/onAcdbDNdzTyB6S1yuLWUDd0NNwREN5Gut4mAyhsm93kOWtcJs
	6zOKOMFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZucH-0000P3-MW; Wed, 27 Nov 2019 10:32:13 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuZe-0005fD-Jx
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:29:32 +0000
Received: by mail-lj1-x243.google.com with SMTP id e9so23825847ljp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pCpbFgjGEgfPklFZJxNcT3sX+taTfAQr4roju7E3lrg=;
 b=F6S0qqMGVu24iWB5xlEUSenjorh1CqR7WhxPvplxFREi9q67F98DX7cpAJ0g1E3MEG
 x2OgkDcfshrPloOeK6km8it8DJciTEPHEKCPWYCEJgDI7fd8OhHudj7Wu4ZThoWMAjk0
 +BSufJfudRGkRs8vxAs1hjbf7XsUFeSbpJgvCwtyxAqe7ZboPbj8K6QqqZk4aNFAlxqD
 EFrKZ7dQwLv6pcbRk/6RXsBH9zT557UEKXxHVX4LXIY7NnK/eZmRJb9qIPgKCwiG8uko
 Oov56PJE88Y/KVECS1Wbg9wwXvvSPUJYZFt8UZ7ui5CX2WJsFUq0pdp0NFWzt5/TUmOW
 ZaSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pCpbFgjGEgfPklFZJxNcT3sX+taTfAQr4roju7E3lrg=;
 b=PAxLxA9iqLNrgOyYh4v92r6XzZClU2fQurIDmrGujcPDI0nogPhP6H3W8mPIHdaifP
 Gd5aEQIhkStyl4JDVROvPFUE9AVnong6a+c6wI8A4TOj8ONj/sPY82DU77s5Kj/bcKIq
 P1YS+DOJMJinzer2XEl3Gsk3tH9J7eqC7Flir0h31qsLzSThptd+DcZoTsQkXoeGrllR
 bXEVIqqX+VZaWgYx9JxyMywhQ6nQDiDMAcJHGYjWAhnq91zIAaphVKcTP1JOUlcJvAR0
 GNG4ovVNXUm0FIUsA4+6j11462GRrg6xjFkGz6gUFzW4+uCnpsJZCaBWEkIgX5+2RHL5
 y0fQ==
X-Gm-Message-State: APjAAAXQLB6ZRpZZtEV+jxvT4lZ5vmN988Z0hrJqVk2pos6VlcO2Ps4p
 d35MQIX7YPoH92yGUKOboI0V3A==
X-Google-Smtp-Source: APXvYqzTXEyPT0SJHyyvevP9BWE50w3KY6/GovtjKu17I96JMN6sVEEIl4LfjTP/gkozAdXLVnmHfw==
X-Received: by 2002:a2e:9083:: with SMTP id l3mr31130772ljg.127.1574850568391; 
 Wed, 27 Nov 2019 02:29:28 -0800 (PST)
Received: from uffe-XPS-13-9360.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t9sm6868260ljj.19.2019.11.27.02.29.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:29:27 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v3 07/13] cpuidle: psci: Support hierarchical CPU idle states
Date: Wed, 27 Nov 2019 11:29:08 +0100
Message-Id: <20191127102914.18729-8-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191127102914.18729-1-ulf.hansson@linaro.org>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022930_668694_141EE3B3 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently CPU's idle states are represented using the flattened model.
Let's add support for the hierarchical layout, via converting to use
of_get_cpu_state_node().

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v3:
	- None.

---
 drivers/cpuidle/cpuidle-psci.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 761359be50f2..830995b8a56f 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -86,8 +86,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 		return -ENOMEM;
 
 	for (i = 1; i < state_count; i++) {
-		state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
-					      i - 1);
+		state_node = of_get_cpu_state_node(cpu_node, i - 1);
 		if (!state_node)
 			break;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
