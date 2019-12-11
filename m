Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2478511A37D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 05:31:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4K0YEpIQA6djtHEcHTNp70q9x7FdnS4l/cMN09n4J5A=; b=b1L8GektOLpJs5
	5P4S4mkDTgd5XYI5txdBmXvVMxMSQZPANsLQcYEINhpM3+9TgZ2IofH0sWMRm3ORko1+gNZf1bTMe
	TYdBZPdn3WPiBtMBitNQVZmLo8d6WxGzd8H6iKk+AJPWK3mtmXPNpGzHGAgAHCuSQwwaM33R2Ph1W
	3fogRAWAeouTx6pegmuJnazp3IeJ0V8+rJ80cRvlGBBDflCfUnPCVqOVfnUMDd2xe4dRUNbyNBy++
	2rOwk5EsVpOoRD71OKn/gF2BH1iEelI6+8d3ajhncCT4ekErbrb0gTsAivFpGKOzlOtsjqlu14reO
	EjubxX8FWmVyrwP+WGkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieteD-0005HK-Hs; Wed, 11 Dec 2019 04:30:49 +0000
Received: from a27-55.smtp-out.us-west-2.amazonses.com ([54.240.27.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iete2-0005G8-LN
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 04:30:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1576038635;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
 bh=RjAOg7rapJ44sjcYuno76zg6PCITgSDHfukD67loebc=;
 b=lhSaxk8oPvE41J9sZBf7HbbsBpt0qnOLnmd3utc9J1Dgw6IQD/vG5MEniikDA7j/
 d53mok0MmUOm/kEQDRvTRqi0dN7SSycYDOIDyK61CzxP6G5xB9Hrg639NBide6yMvtd
 Jowpz7W57jvvvS6hsGaiUj1hN9gwa5t04CA6vqoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1576038635;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=RjAOg7rapJ44sjcYuno76zg6PCITgSDHfukD67loebc=;
 b=YWoyl8FZaIi3250AH83PR3svkJefLBY2zmAQezTozJGk750e0CM9dFDtrjpBOHwC
 lpVd/PBKxL6b5pQ/Gpa9hFa+fRyPpRWyu4RRSvdlYDuXre9KGpR6DD+ROxOTd32KvNK
 BjyytrJKlMz2cHL0BIxo6ZByRFIKT8HzFbztinm4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DF588C4479F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH 0/3] Add DT nodes for watchdog and llcc for SC7180 and SM8150
 SoCs
Date: Wed, 11 Dec 2019 04:30:35 +0000
Message-ID: <0101016ef339161c-d333a495-5b37-4f5a-8312-4e36df77f422-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-SES-Outgoing: 2019.12.11-54.240.27.55
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_203038_727925_7FD7B85C 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.55 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds device tree node for watchdog on SC7180 and SM8150.
It also adds a node for LLCC (Last level cache controller) on SC7180.

Patch 3 depends on the dt binding change to LLCC node name:
 - https://patchwork.kernel.org/patch/11246055/

Sai Prakash Ranjan (3):
  arm64: dts: qcom: sc7180: Add APSS watchdog node
  arm64: dts: qcom: sm8150: Add APSS watchdog node
  arm64: dts: qcom: sc7180: Add Last level cache controller node

 arch/arm64/boot/dts/qcom/sc7180.dtsi | 13 +++++++++++++
 arch/arm64/boot/dts/qcom/sm8150.dtsi |  6 ++++++
 2 files changed, 19 insertions(+)

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
