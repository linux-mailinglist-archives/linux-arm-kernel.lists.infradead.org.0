Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C881779F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:08:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QRWd9ZWvQji0qipOGf0Khw6ZYbI8afQxBmjPoKiFfaA=; b=bWabGeoTHb8EOz
	MQSQFcd3zQPtJvDZYW5DnJWncHhuCivtaRIH0c8VLqlzLgfrZt/peEQ1rODQOV1CkUD/K2ppSwTGY
	QGvOdoIfBxS2NaGFyQKqDwWIOw7w+0VDRZ2dpTwxblyt7l0pc9MJ8RhVhb3AR26cqiFSPIMugSC8r
	ykEiW5GGpiAUzYprKGqQHRexhAp+fwbO3SKItRkdBT4LzdR/0NxhIAn/68ktcM2bPpiHmKuX0aGIn
	BPcCYwc9Ai83gZyeI+hBH4SboJpUO4LaWgFHBMPyosGbJtIcbqIFR87dbTFU9IztPyXRl2kpKElm9
	eXA9/PsAYD3MUn3BY1Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j999T-0004lj-OO; Tue, 03 Mar 2020 15:08:07 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j999K-0004kf-44
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:08:00 +0000
Received: by mail-lf1-x143.google.com with SMTP id c20so3082142lfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 07:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hDm62swX1e309emODy6IWYyN9SUd3dpgxKcG7xrdMlk=;
 b=in2YL3sMp9ZVb0HypyT3fkJ9WJ/6VzmQFhOYfvsHYSCWwDcmFgMBm4A+f2vGlZR0Tl
 8dp9f/h62FrCz+jVZmP57bNnCJKUAsN2srwZWsFmlmQiYWbt6hgkzjiIqUMcRIu90KRo
 fLsDdbq8PPNnkJc3mk/8F+X+FuVDZqiBUnRS+TnoT9IijkwNcCetU8dZl3PAf+cRf7uk
 z1lYnF5mSUy4vsH/jgEbKH7cgPjMhUr7bKLbMweo5dPA4EqMBmIL8MSzbwzMwxDVELeA
 FLOmUqM6yRDS/WpYQfafp9a6QjeMFRNSa59bJqCP5/CbCLSDeKhj8toVJ65l1+Yat3St
 xBZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hDm62swX1e309emODy6IWYyN9SUd3dpgxKcG7xrdMlk=;
 b=k7TSWLHD7tW4/JIxdyvXL1Re0JBxMlxxKc68Fjp3rfKfdRlpuv+onvFIZji0jSrIHR
 zEAYg7B+1acw0t8OILlw7nCd7pP6fdG65IHFxYaiN1iGpL2/FJ8uHxbgT4mH9FAofnql
 sZasl2Xdkrt3jcD74Q4Drrh3KS8gA5yagHYsJAEzDwzVJJpyKEg/8sp7s4vELW3rChHQ
 Pv2ktYx0NEKVvhni4HoD7IHdyWhV1TFTjn63p9s07D2GV/Wwp1natkvjITvj99lO51b3
 xOatd4LqMtCUhLrMTKhUL6AJxv8bPkXQUxnFWVfZORMDRpQa6v/YkPIq2JFZURohAmV7
 20gg==
X-Gm-Message-State: ANhLgQ3nt0UoGTKBqHyv6+oo2UK2wQFJ/0zognBCu+3DdYPt+96zJfmG
 pJqLSQMoqp+5FE8tzkEyy8JUVA==
X-Google-Smtp-Source: ADFU+vu+xJCKU5jcGXcrD4NY7owa0bMU7ehQwZMdVV0PPkkCq1EGue6j/E/+90n6hI6Upie+o5FZJw==
X-Received: by 2002:ac2:454f:: with SMTP id j15mr3108670lfm.20.1583248075820; 
 Tue, 03 Mar 2020 07:07:55 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id n189sm12143135lfa.14.2020.03.03.07.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 07:07:55 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH 0/7] dt-bindings: arm: Fix bindings used for hierarchical PSCI
 states
Date: Tue,  3 Mar 2020 16:07:42 +0100
Message-Id: <20200303150749.30566-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_070758_170009_E5B84365 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The recently updated bindings to support hierarchical PSCI states, had a poor
quality from the json-schema point of view. This series fixup the related
bindings and silence various errors/warnings from "make dt_binding_check".

The two last patches updates some DTS files from a QCOM SoC, which is the first
one that uses these new bindings. Perhaps those should be queued via arm-soc
instead, but in any case there are included for reference. 

Kind regards
Ulf Hansson

Ulf Hansson (7):
  dt-bindings: arm: Correct links to idle states definitions
  dt-bindings: arm: Fix cpu compatibles in the hierarchical example for
    PSCI
  dt-bindings: power: Convert domain-idle-states bindings to json-schema
  dt-bindings: power: Extend nodename pattern for power-domain providers
  dt-bindings: arm: Fixup the DT bindings for hierarchical PSCI states
  arm64: dts: msm8916: Conform to the domain-idle-state DT binding
  arm64: dts: msm8916: Conform to the nodename pattern for power-domain

 .../devicetree/bindings/arm/cpus.yaml         |  2 +-
 .../bindings/arm/msm/qcom,idle-state.txt      |  2 +-
 .../devicetree/bindings/arm/psci.yaml         | 41 ++++++------
 .../bindings/power/domain-idle-state.txt      | 33 ---------
 .../bindings/power/domain-idle-state.yaml     | 67 +++++++++++++++++++
 .../bindings/power/power-domain.yaml          | 30 ++++-----
 .../bindings/power/power_domain.txt           |  2 +-
 arch/arm64/boot/dts/qcom/msm8916.dtsi         | 13 ++--
 8 files changed, 111 insertions(+), 79 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.txt
 create mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.yaml

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
