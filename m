Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB321B5161
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 02:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6F4ovCepII1tiSgBN/bxImeLYWe69VzQQr8EQoZHUKw=; b=ELtoTptqd21M/P
	dACzAxdD2TxdAZsIKxARLvRzacfFpzAIB1HL0cm/ntlhGDQIIK3v6kgDKmqIBtlAdZ7mxUW1l5QWy
	ppHxi5kB7VlOhH7ZrdU9rrVNxlD5y0q8HQmzgYL5jVwHyr2wg12JcbZuGXuadJqBhTGeWpVZ60mJj
	qGkVUOOQ6PRvOwx5H+FKg/JOTLqK5hH5dFKPby78kvRIN+IUqn1XNv4qAvIYgCQ2m9ZgzOM1HdGw6
	zLY/1q0ng5wX7NC/2l14bjxXMMPqYXQqLUbRlT83moKtQpQGOM9DfDBbDRbiMaGhvXM0DU5blYR/o
	a4JvYTeQh0ofDAwtGVZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRPsj-0008MB-2F; Thu, 23 Apr 2020 00:38:21 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRPsa-0008JR-E1
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 00:38:14 +0000
Received: by mail-pl1-x642.google.com with SMTP id t16so1635202plo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 17:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=75TUGWxKMG+i7tFa2VqXTsbczTpvn8gAWE0prn7/ZWo=;
 b=Bt1mUO+l/1mVfkOUUYZ/vPLooOPPe2yy40kGK8VcjvtAzsSqTHrRzK2SrxdZfESL25
 xIhyrTUVQOpkLdo2Cy3uiDoEjf3Jbz7eT1wgoK9POxngD3LR5FziEYCRZYgW6NJY6GGw
 5Ud1iXBI0aLIgsvXnrO9Y8T07eEsOCqRd2cY1a3kpqOc34nnZoNmeVqri1MpehT38tTX
 mKNE+EGdlZ3oySSoIghIScraOGmz/RuK4j20yUW7xf3Ip2aDehUuteE3XSC4Z0HMKw/L
 IAasCCd0aLdN18dqDWj0SyEPxg+qjZvTRVmlS3aDZvHSjsTdPpuJqqGZxuROsUD9Fcjx
 wvmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=75TUGWxKMG+i7tFa2VqXTsbczTpvn8gAWE0prn7/ZWo=;
 b=F6sKMmcrmWjW/pTpuy971TqGtcyTPulXgzRGHCMzmJ0KgIhFzGJjtwOD50T1o7jkcg
 ACNzV0pfTCPzNlJQyaCvDh80a4evYn+FTJ01vjHIUYSJfY0yKRJrep2DUBGrln3UWEKW
 k2G0A4P/kvsH1tOvGF8j7nwqbdW3t0p2687Z8hIwMKF3dgL/C7Ssc27FVdCKBzLlrlGc
 2TxIo5yYOM+pzY0OO0zvLD6wD8yUX6qQVzqaE24WYRvFRSap0XlaxoE0E7WcamT+Xzhe
 ELiZPG22Gn+QAF4f2oSh6pdrMl9V9FLJGDLGQgcbKP0ckkRzIOkGN+csdsfp0wtVrcBJ
 P3RA==
X-Gm-Message-State: AGi0PuajEY2ILXmzO1C2I5AHesv4SveqBWWccb/HkVczXDrNRu/cZoAk
 CyGm4GWtxJECs9sZdqWkmtjHcA==
X-Google-Smtp-Source: APiQypKajNV82QXE5K2iKfsEJ0r4+uN55Qcwur5XRKTlxsgeo77a7Pr94QQHDYOrM+bNQLwFdLPljQ==
X-Received: by 2002:a17:902:b187:: with SMTP id s7mr1435976plr.0.1587602286693; 
 Wed, 22 Apr 2020 17:38:06 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 6sm432225pgz.0.2020.04.22.17.38.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 17:38:05 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ohad Ben-Cohen <ohad@wizery.com>
Subject: [PATCH 0/4] rpmsg: Refactor Qualcomm glink_ssr
Date: Wed, 22 Apr 2020 17:37:32 -0700
Message-Id: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_173812_475696_4D0BC6DF 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Lew <clew@codeaurora.org>,
 Sibi <sibis@codeaurora.org>, Siddharth Gupta <sidgup@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to allow for wider use of the SSR notifier in remoteproc's qcom_common
this series internalizes the notifier chain used by glink_ssr. To simplify the
Kconfig dependencies it also moves the glink_ssr implementation to rpmsg and
merges it with qcom_glink_native, as these do go hand in hand.

Bjorn Andersson (4):
  remoteproc: qcom: Pass ssr_name to glink subdevice
  soc: qcom: glink_ssr: Internalize ssr_notifiers
  rpmsg: glink: Integrate glink_ssr in qcom_glink
  arm64: defconfig: Remove QCOM_GLINK_SSR

 arch/arm64/configs/defconfig                  |  1 -
 drivers/remoteproc/qcom_common.c              | 17 ++++++++++-
 drivers/remoteproc/qcom_common.h              |  5 +++-
 drivers/remoteproc/qcom_q6v5_adsp.c           |  2 +-
 drivers/remoteproc/qcom_q6v5_mss.c            |  2 +-
 drivers/remoteproc/qcom_q6v5_pas.c            |  2 +-
 drivers/rpmsg/Kconfig                         |  6 ++--
 drivers/rpmsg/Makefile                        |  3 +-
 .../glink_ssr.c => rpmsg/qcom_glink_ssr.c}    | 28 +++++++++++++------
 drivers/soc/qcom/Kconfig                      |  9 ------
 drivers/soc/qcom/Makefile                     |  1 -
 include/linux/rpmsg/qcom_glink.h              |  3 +-
 12 files changed, 49 insertions(+), 30 deletions(-)
 rename drivers/{soc/qcom/glink_ssr.c => rpmsg/qcom_glink_ssr.c} (83%)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
