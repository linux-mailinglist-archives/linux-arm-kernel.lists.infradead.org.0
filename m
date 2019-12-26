Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA2F12AF1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 23:18:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sr4LUZ6tyzHvuzy4ZkJRY76VzJQ3NIK/ZgZcZFG9BJE=; b=K89N8CDksU7qgj
	M5hThxZUXnIW8SV6wNYYnY84WE9EjW/UDpsONDKep5JbwPotBOLSvEF3UuhZxILJzOl3D1f4vzUTx
	6xIZeGc1PyNbrdFOd5sQLiz66gPTKRRb7QTqN65kvpDYyKniY6ze7sNSJ3R/aSdisxWNyNMsA1VgF
	vp4g0V9Ab1bjtsO5OJRf12nZB2BSILFfPQD/Z1ugjH68F55j4BZZQKrZuMauPhhZ9MGzwXVoLOprO
	V9Xbd+0bCv4QEBkJ6ii6u2a+UW2ZHXV1MnrQyGNw2CaDd7ydeWUUUysBvlIaR8i7fd3cJXn6W7t7k
	lLr8jiqt+FKpD6B6STSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikbSX-0003X2-7H; Thu, 26 Dec 2019 22:18:21 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikbRy-0003Ko-9n
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 22:17:49 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a6so3893613pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 14:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P7ESk9eQMRZr+kEQuMK0Z8FaJecR+BKoIpQxePhdF6o=;
 b=Vy0udCBfVuzARF9m0mc/Z7ONkkt6IwY8DJpXMCucBLV7TsxIK5bJ8eO+LLIwhAcreh
 CkGkrzG9pykpqkkC/iNQkJrXOTJJzLxzLV2Af/tFrnzxwp0qxTioh5LFMW+8Qa/ptf8o
 GvOs519X10lPwvXPESozI0QrNaX466/0LxX4ZzyLb2JEiPJbe/6z0MBezOrlDr7xPNgR
 2jQYAUfXVZDB8eexJKD56ciO+LezslNbzyWDQHcJi4/bSTbbK05iRhwJT63FtAgIJDnn
 nza9W86KONxRz8DtZsKb3Yj3k2PFTrn5o2z/X3XQmu3ZvTxV3fi4qyFLvI72CP4p/Uzr
 wXHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P7ESk9eQMRZr+kEQuMK0Z8FaJecR+BKoIpQxePhdF6o=;
 b=Ddl7hckqpeWoIGmiKxwhmH6je6d2j/tO4dy/YGfAItB6rDeH2LLgTyuhhnoBNs/PNO
 h+m+hZrnac/nBQmEZzm+KC7Vk3/gwA1zbDNfhaI3qaOTF4JGxAldyC1z5luhIHn5muW/
 7rnWd2HbY+O4UB+8LJRJ+3VMNuivq2hNgIFnvf0gBSO4aCZhhOYqEY/8Apt2SgnSoIT0
 5dps0s+I+GCDgJSqqPpnYLYux3yZHtCkVs5jNkpxudXxoBtjx3jRneE2ET+2X3Ial06t
 IzQn7MT+yPM9JW1WYi8/4soAizogAJrXSiFvhJsJO1Ggj8uv0mEE6Or0ybkXzV/xGLck
 6xkA==
X-Gm-Message-State: APjAAAWh6ZnNJcUx64fPQwzd9S3J+Xc4CPGF6EdqgL5p4g8NCIIzXsp2
 DkbgUD3Kl0HTVsrqj7Xwc4f6/w==
X-Google-Smtp-Source: APXvYqzeKxoKEB96j5hPs7KlRto6hP0WKGq35P+5NZsItv40vaoBcyhUle3i4Zaj9vYVjTLZejXkWA==
X-Received: by 2002:a17:90a:1a0d:: with SMTP id
 13mr22096750pjk.129.1577398664714; 
 Thu, 26 Dec 2019 14:17:44 -0800 (PST)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 2sm11779409pjh.19.2019.12.26.14.17.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 14:17:44 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 0/3] iommu/arm-smmu: Qualcomm bootsplash/efifb
Date: Thu, 26 Dec 2019 14:17:06 -0800
Message-Id: <20191226221709.3844244-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_141746_922645_E3D138FF 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Clark <robdclark@gmail.com>, Patrick Daly <pdaly@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Pratik Patel <pratikp@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patches implements the stream mapping inheritance that's necessary in
order to not hit a security violation as the display hardware looses its stream
mapping during initialization of arm-smmu in various Qualcomm platforms.

This was previously posted as an RFC [1], changes since then involves the
rebase and migration of the read-back code to the Qualcomm specific
implementation, the mapping is maintained indefinitely - to handle probe
deferring clients - and rewritten commit messages.

[1] https://lore.kernel.org/linux-arm-msm/20190605210856.20677-1-bjorn.andersson@linaro.org/

Bjorn Andersson (3):
  iommu/arm-smmu: Don't blindly use first SMR to calculate mask
  iommu/arm-smmu: Expose s2cr and smr structs to impl
  iommu/arm-smmu: Allow inherting stream mapping from bootloader

 drivers/iommu/arm-smmu-qcom.c | 35 ++++++++++++++++++
 drivers/iommu/arm-smmu.c      | 70 +++++++++++++++++++++++------------
 drivers/iommu/arm-smmu.h      | 15 ++++++++
 3 files changed, 96 insertions(+), 24 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
