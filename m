Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D170524BA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/sV2pry2we6jS5Lb6WkbpOa2i2qZosJZeLQ8/21x/dU=; b=ej9
	P25RWWRBx5BYgfswWAylcujEKNTmSaqrWJ7AY13EHZSkecoJ7ec/oicVBvYsNaSeJWWRClPfyyBzG
	9JfOiGHeLh5SNgi1ghg8IEa2UJsCUFdfOa7cxrzSIy3fDYiBxTPIlyzEBs0FpiGOAr6sMiC8UvMnu
	rCL7jrdZT7OhocQaRogDMIPzJFQAQY/ABCZ8u3BZsdCiG5PSb0TnZF4EoJxrNTkD91dk5dib+XGc+
	iUeAp5EDOAhifQWkAE3vz6U2p6TRmdR96kE3dnvz2K440QqRRzq8AZaV7p3O3x0QcNrgiJT4Xv0hW
	4k6SvHvHSm3jKCNnlq79Orly1l4UMqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1BE-0006va-Vr; Tue, 21 May 2019 09:35:32 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1B7-0006v2-Fb
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 09:35:26 +0000
Received: by mail-pl1-x643.google.com with SMTP id g21so107399plq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 02:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=BcrBjNA9Tz5dGFNp5fZjQydBqPzFfr7sOnV00Q/kGKk=;
 b=mHnuGqwcHVA9QzUzGRIKoiCvFyVfKiGJP6H7y0Cp2QQlhUyM7G/saLc/IHsxYHTwMY
 4NHNLLxX0/CHcCb59QKSUsrh+dU0H9NtQU1pBkpJxgnEfT4P45oEwHv0wYxRaJdhv3NU
 TFl9+8FakXz2Thwqfqr/KfUXeGW6/+d7V7R38raqQZ7Nx4rZvhq8z+QhMkK7aMpVxYXV
 xriAdfsqiPih9oqpc4JGK9eN3MX2A+UFHjUPvp6XEivePvPVIhzPaxeLWAykvb/D9wMG
 /FCr2p84dKHyzkV18sbme240jtTPFIwQz1VQeFEW4RYTBXspZ5lPkuNIIg5YRz+ELfAa
 1IQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BcrBjNA9Tz5dGFNp5fZjQydBqPzFfr7sOnV00Q/kGKk=;
 b=THiMKnmhPM4n788RfNIqNt3xCadGBHDycf6r0x09eoiY2/owzHA/52FINma1MWdeZd
 eAszBcGUnciKIKfwSTZ96GEV1uW2TihTGAS+51PfjNH1bgmdfDxqPoCt7dujMYjp13oI
 +keMxHKxE0bz1lUBUpNnUszCxx+RnlMIfA8LT1ypesm1U0PyPWG/Mn9x+KIbCbkim9iY
 vps15jsx7SkuFNYtlpK2PwPPciy4bpJFVlmHtebQ6PD+MNMP8w3gELV7mZuPDc8+U1bq
 LdFyEUuASQNkSOCIkChDKorALwVple+bqf5HtIgxu2vR4L2iyn961GTMq4+dpvs5tmxY
 cY8Q==
X-Gm-Message-State: APjAAAXLE56vMMSkNpCIlZTarB8RUFPrPaebTOXpU0rkAbBO6qDPlZfs
 9iITBvKaAU1nWFhuVvrFo4Gz1Q==
X-Google-Smtp-Source: APXvYqwXbni4FmWu8cVHkn7REQOdZWicQVyH7AbWOk5ATCaQQKLGT8i5VShHXpOcZkUcef7q6DJpGA==
X-Received: by 2002:a17:902:4481:: with SMTP id
 l1mr68079415pld.121.1558431324465; 
 Tue, 21 May 2019 02:35:24 -0700 (PDT)
Received: from localhost ([49.248.189.249])
 by smtp.gmail.com with ESMTPSA id k22sm16995349pfk.54.2019.05.21.02.35.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 02:35:23 -0700 (PDT)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 bjorn.andersson@linaro.org, agross@kernel.org, niklas.cassel@linaro.org,
 marc.w.gonzalez@free.fr, sibis@codeaurora.org, daniel.lezcano@linaro.org,
 Andy Gross <andy.gross@linaro.org>, David Brown <david.brown@linaro.org>,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 0/9] qcom: Add cpuidle to some platforms
Date: Tue, 21 May 2019 15:05:10 +0530
Message-Id: <cover.1558430617.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_023525_534172_708766DB 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes since v1:
 - Reworded changes to the idle-state documentation on Sudeep's feedback.
 - Renamed several idle-state node names to be homogeneous across qcom
   platforms. We now use cpu_sleep_0_0 format for the node name while using
   LITTLE_CPU_SLEEP_0 format for labels to help differentiate the different
   states for different CPU types.
 - Add a new patch to add capacity-dmips-mhz property for msm8996 to allow
   topology code to find its true capacity.
 - Add power-collapse state to msm8998 in additon to the retention state.
 - Added acks

MSM8998 changes are untested for v2 because I couldn't access the mtp I
usually have access to. Hopefully Marc and Sibi can help with testing.

Description
-----------
Fix up a few entry-method="psci" issues and then add cpuidle low power
states for msm8996, msm8998, qcs404, sdm845. All these have been tested
to only make sure that the C-states are entered from Linux point-of-view.

We will continue to add more states and make power measurements to tweak
some of these numbers, but getting these merged will allow other people to
use these platforms to work on cpuidle, eas and related topics.


Amit Kucheria (7):
  arm64: dts: fsl: ls1028a: Fix entry-method property to reflect
    documentation
  Documentation: arm: Link idle-states binding to "enable-method"
    property
  arm64: dts: qcom: msm8916: Add entry-method property for the
    idle-states node
  arm64: dts: qcom: msm8916: Use more generic idle state names
  arm64: dts: qcom: msm8996: Add PSCI cpuidle low power states
  arm64: dts: qcom: msm8998: Add PSCI cpuidle low power states
  arm64: dts: msm8996: Add proper capacity scaling for the cpus

Niklas Cassel (1):
  arm64: dts: qcom: qcs404: Add PSCI cpuidle low power states

Raju P.L.S.S.S.N (1):
  arm64: dts: qcom: sdm845: Add PSCI cpuidle low power states

 .../devicetree/bindings/arm/idle-states.txt   | 13 +++-
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |  2 +-
 arch/arm64/boot/dts/qcom/msm8916.dtsi         | 13 ++--
 arch/arm64/boot/dts/qcom/msm8996.dtsi         | 21 ++++++
 arch/arm64/boot/dts/qcom/msm8998.dtsi         | 50 ++++++++++++++
 arch/arm64/boot/dts/qcom/qcs404.dtsi          | 18 +++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi          | 69 +++++++++++++++++++
 7 files changed, 177 insertions(+), 9 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
