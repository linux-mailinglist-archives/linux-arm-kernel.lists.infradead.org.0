Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DDF193D63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 11:57:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TA441D8ESwKHyIdpYMGmyChYa/MQ+kFdQs/IGsjRbto=; b=duxMMeWLvpnJwv
	zncCCQCtNpUlOTGc+MSxkwWWIhMJlGpGX5aalYSR5/Ks96EClqxXLMFyV6hTvfD2QtDOKUyleyHfO
	uc17maLGGcbu/u8R9/AArACCo4JibwH/8YfyxPLencl2E2rHyxYwGGshwXHmqclY3a+b3P6ecyr5V
	KE8DI6grxN27BsdrlFqbeQlVbev9VxRWeB/Ke3THZJcPsICdON7j6N/IdEzG9RIr+vNRJ8FU+IpZY
	70LwXLxImO7O22qgEMm4vOK4PSIBKo4wFgksceeWihlndeA+OO1SkcgWpQE7aQdh4q3ckePgy9XjE
	9eL/yGPHJnmcrA51Dclw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQBp-0003K5-MX; Thu, 26 Mar 2020 10:56:45 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQBh-0003J1-2b
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 10:56:38 +0000
Received: by mail-lf1-x136.google.com with SMTP id j11so4413577lfg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 03:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=47qXZzwAbKRjmlZIR98ky/JOV75sfZwm8sWlwjShF8c=;
 b=EGCqvfJE6vR1DAd9s5QD9Lz37cQED2VqxH8++YisKkjfp+p7F8m2Y71LDftQBpb/2n
 i5VgyFZ9WS8uu99Tqbsk26tLxx8VfPW2OQl5zqQ8Y7AtEKez9H72KpmrpqdZ9HDTCCX4
 /7w+vI3ihA0ONx8vYXi6P9G41+zT2cquEvOCqPZhp1QKQcGeoXiYyDVE/vplychWsqje
 P79LblH0YEbwBPDoDKyXQd6hF8RY5vEk5YhEJ1efuYiLPVx4yd+X/chm+hWLcGnZ0BWN
 iVID2OyJ58JpmCSQjz4O+fKvPfnXg4za+xEf7Upx9Cx5aS+GNZRwLpNMFjJP14qQc5yU
 HIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=47qXZzwAbKRjmlZIR98ky/JOV75sfZwm8sWlwjShF8c=;
 b=GGgmYWhviVZBlY2eb3oNrd0FCxIO1SV//z/dquQqn65085rm1+VtvuZVflSRkSQ2Sn
 2HPw1+31zR0iICTA/dh5VFxe502yuh4s9n0LuJU+AvJaZK3ph1mLlprxLjWfT0oPoxn8
 cS3JZKcjZDGflTf7C+2NXgwuVKFP+aKpZW/8uxTCVQdXecbqUbroimyoKZderEZ8FArx
 ulITdl3axt6zbk8elM/a3Y8T/qYPbEnzEQDtfcY4/aXbZM0zpIFMrz1uM2ZpHINNa6NV
 maEH8A/bSAYBSYYi6cLh1/EIZHJ3RB+C87K+TNcjyOR/1DaTmCR/yXEX7lG7429a5w1p
 HNjg==
X-Gm-Message-State: ANhLgQ0s+yIPaZFbGdU0fDE4WagnZtuQNLseXqBpSv7tLUjir/4v5XLh
 kBKNVmPo4il+XpatIbhWCGr1Pw==
X-Google-Smtp-Source: ADFU+vvS1OdyK1KZuc0v+FzxWV0LS3mwrT/slQOOveM59Ax919FAfDjO8Iw+zFw0NGknj1fhGBUQFg==
X-Received: by 2002:a19:4cc2:: with SMTP id z185mr5441924lfa.0.1585220194880; 
 Thu, 26 Mar 2020 03:56:34 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id z17sm1214653ljm.19.2020.03.26.03.56.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 03:56:34 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] dt-bindings: A few updates to PSCI and power-domain
 bindings
Date: Thu, 26 Mar 2020 11:56:24 +0100
Message-Id: <20200326105626.6369-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_035637_129535_9A728C10 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recent updates to the PSCI and the power-domain DT bindings, deserves some
additional improvements on top. This series takes care of this.

Ulf Hansson (2):
  dt-bindings: arm: Add some constraints for PSCI nodes
  dt-bindings: power: Fix example for power-domain

 .../devicetree/bindings/arm/psci.yaml         |  5 ++++
 .../bindings/power/power-domain.yaml          | 28 +++++++++----------
 2 files changed, 19 insertions(+), 14 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
