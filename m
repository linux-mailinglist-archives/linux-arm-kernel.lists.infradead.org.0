Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86EF1EA8FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xn8Naw8YI2bM25WSdeyJVtnc/YqKMJV3/mcOyvj8T6A=; b=BMjYzIS0X1AkBo
	v4XwaJ7ymVOKhnqyV/6NLJUYfGDp4awtP3rpp8GwxvgYvxPQI+R1Djat56OidI6w8ms+412GnKhni
	RwOSSXoZpgBKIpnAHH2cFdldFj00D1ALDgPJD4PiO2c3577XKH3JL1cJvY290jyZl5F4wrLSqgGu/
	3yBN6lZoC4szThSmqM9gXrG0Tt+rPghQp/dHvWz/BXlXMH/+V+6TClErmJGv4R25XHwFbvDg3ZW9h
	cXjm2gYkyX6tNS0E4hdc4dg1I2fSjBxu9uKSIhb/x+qCsmMDVSvGgs6NOn2vys12aftqC29+lcIhR
	yOF0vpKIHE/zIFG2PALA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfoh8-0006IX-8j; Mon, 01 Jun 2020 17:57:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfofM-0004YZ-Mi
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:56:06 +0000
Received: by mail-pl1-x644.google.com with SMTP id t16so250000plo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4k72LVztQ+3OPIVfCjk5AKi+kBj/xA40V3ZRlBXiosE=;
 b=lwiDftbDn6zhaZZ4Jh4yVwIWU/cWgoePKS3jSUwjCl3Jfy2BfO7OzD3lXgOxCKSE6s
 EA0t9HA794QQuONUBIuG6b5LxDfH+Aw1c+/aneuoX/JjlzTQlbrAkDwwctTvo0RFXXVf
 RMe4teHr2HjquWdvA65du0gNHxLxbazkjPjxQf6BnGcoYzV/msXJjc/06OjrdozJyw1c
 MN/0xmcmq0yupcEbzeFr13DCoRnR+yqLYo28OOzIYC3ltUP0POk4iLxhxtzWu1RUbcCh
 lvSpreUDi/2CEOjllgx6Q10FBpzJf658wf9utALJLpgORudxuGyl21DkX+T8FE0cVT51
 y1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4k72LVztQ+3OPIVfCjk5AKi+kBj/xA40V3ZRlBXiosE=;
 b=NlC5/shUyYxn9e9eXY8QwWOPvOUrdyDcSca4I3ew5LYK8krp+kp/nXnZrDU+AVlMOe
 PdRXptcE1v+oFigp/HK68Y3bhNFlLAwoyfcyClReleS3lWjHstto6aftywg577XHFwiR
 wrWsoVbVw7rRnlioAMyD5LSD56QQ8qfesf/CX0XLBGYHpcjeXP7zYWLSxRqi6ZFIFz4G
 2jrWhzHJ1t8pr2losHQL7XsNmVc92PLCrZFnf55NyydvKP1M8wpu56ft/q6Rar0EDOlM
 KaW3EFaT8PdCmDlV3eKRKK9vlrj5mAvzF0n5nOHFZjvyynoZDtws7H0pcp/vnCVjDhnI
 2YGQ==
X-Gm-Message-State: AOAM5330TdklBg8xZkhNsd9aXLl1A/Q0zn8gOxWvFuFLlCG1QNzB6Tbo
 CMLBUJiGS2MsRS3f5AempNqAwQ==
X-Google-Smtp-Source: ABdhPJysMznlN/ClmaL8ZQBX6gr9202gWa/xTGIljnYs+zC6HL/jwJa9bKBC2cihfsJrdqTHVAfzzg==
X-Received: by 2002:a17:90b:8b:: with SMTP id
 bb11mr561940pjb.219.1591034163607; 
 Mon, 01 Jun 2020 10:56:03 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p7sm64771pfq.184.2020.06.01.10.56.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:56:03 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v4 07/11] remoteproc: Make function rproc_resource_cleanup()
 public
Date: Mon,  1 Jun 2020 11:55:48 -0600
Message-Id: <20200601175552.22286-8-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601175552.22286-1-mathieu.poirier@linaro.org>
References: <20200601175552.22286-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_105604_763097_25A1767C 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make function rproc_resource_cleanup() public so that it can be
used by platform drivers when allocating resources to be used by
a detached remote processor.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/remoteproc/remoteproc_core.c | 3 ++-
 include/linux/remoteproc.h           | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index a8adc712e7f6..6b0ded714beb 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1272,7 +1272,7 @@ static void rproc_coredump_cleanup(struct rproc *rproc)
  * This function will free all resources acquired for @rproc, and it
  * is called whenever @rproc either shuts down or fails to boot.
  */
-static void rproc_resource_cleanup(struct rproc *rproc)
+void rproc_resource_cleanup(struct rproc *rproc)
 {
 	struct rproc_mem_entry *entry, *tmp;
 	struct rproc_debug_trace *trace, *ttmp;
@@ -1316,6 +1316,7 @@ static void rproc_resource_cleanup(struct rproc *rproc)
 
 	rproc_coredump_cleanup(rproc);
 }
+EXPORT_SYMBOL(rproc_resource_cleanup);
 
 static int rproc_start(struct rproc *rproc, const struct firmware *fw)
 {
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index cf5e31556780..7c0567029f7c 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -610,6 +610,7 @@ void rproc_put(struct rproc *rproc);
 int rproc_add(struct rproc *rproc);
 int rproc_del(struct rproc *rproc);
 void rproc_free(struct rproc *rproc);
+void rproc_resource_cleanup(struct rproc *rproc);
 
 struct rproc *devm_rproc_alloc(struct device *dev, const char *name,
 			       const struct rproc_ops *ops,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
