Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79933B5B2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 10:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3NmSjwcEX8oUzcZ5XmFKRsWr3G+6AVTJbkI+uUhRlnQ=; b=uadrwCBVK5zkztoKPNiZMH8oLl
	zlTNkMnp5En9hEqSPvaolqrPubUcbwMo9doGCHTi0sVJyqmoCqe67ree/nDff6dkneTMZs1LWLcKF
	S9LfGOjuvumDkZyhiBOGy04+vI4cnL1QoOKLNj46b4eImvuR10dCwKgI7D8LN4DDrQT8VZpeEmsES
	+xkwjmTv78PY5xBxL35vqT/+VI8Dxv1oujVjDuZup0daKOLkLMLndFXeXqg3tKzxKu55xkJmj96Fx
	VPxJohdLWdBLXnXgR+eVI7ua2GMweF5nkGdtVWtgjZ+DsDE93q9663mjueXSw9BirW0kSOOhgZDbV
	NaO2lR8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfFE-0007GC-0A; Sun, 28 Apr 2019 08:33:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfEz-00074R-5p
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 08:32:56 +0000
Received: by mail-pl1-x642.google.com with SMTP id d9so3611283pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 01:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=za5L9TH7RfVFEUEVo+b+Xe+/+fVMc7D24YekrWmKylM=;
 b=aJgC+ktE44qrl5zRP84bJJagrrWxh9plDl7AkXkHZjy0goL6aE1PC0dJYg8ZIvnA3A
 +SeyCgowcSpuVPm2b9an/EFpBwk1uP/QHaXT5n52kcAGYzziXy0YkvRcsDyz8H+CfFbr
 ARKRvaIPlHZRQfSy8uk9CSGNt7SLbRYo7XvYq0VivFYyPJhV25nxCS00wim2Y7zX9gmf
 gXf2OFzrhB2a4KBUJM4+rvcyd0pR12w9B2PGqTlVn6cCE4sm2milmo2T4qD2MJ0iL8Es
 gdxhlXGn+yM+Lp1h4XB/anMSlFNO+o/GyoIfF7BfHta7+AQ0OEEtOeTsLF9xVvd3oMUB
 RByQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=za5L9TH7RfVFEUEVo+b+Xe+/+fVMc7D24YekrWmKylM=;
 b=OWhzxembnDOilUuLU/sRKTRrs0tmxfkfbgCl0pRSUMSJy3D6Tb4DW9y3AjKWsU+XLx
 sfooyZZ6WVwOT74SqIre4eh0NvdBHhl2QSBBkUPI+CnKcAvtgYGZlyQf0rprbpL2qe3s
 PKG7V8SwOq+XiFby/KAhCkHuPY8/Do6BAbhpSt9OFVwgoQa0Tk5B8AGmVqASlNMPnriJ
 iSVdnTCpXJVH0YZs52jJkbcYwjEZiTT6k5xJ/gkkzZKgNbyqzoOmOhkj5+67iBfigxeG
 wv+2FCJ6WRy52GQNnddMvYgFKBWEiSyFB1qsMGwJE75IjmwsRG6aGl4Y57CROnEp3NUu
 DaWw==
X-Gm-Message-State: APjAAAWYqZeoLVbnqn1svQeAHqgWRQnU6yDxcz0sWxhcW06ogrPZvapG
 NdKE5/VygpMHrbPkKHieB9gTOw==
X-Google-Smtp-Source: APXvYqx8RGU+BbxHTEkhKwnbWli0aNRX8OVkO9X2sD8pXe5tI9nrbVtkzkIzCU3DqyO2yjTvtrKPig==
X-Received: by 2002:a17:902:1103:: with SMTP id
 d3mr17956465pla.247.1556440370534; 
 Sun, 28 Apr 2019 01:32:50 -0700 (PDT)
Received: from localhost.localdomain (li990-117.members.linode.com.
 [45.33.40.117])
 by smtp.gmail.com with ESMTPSA id a12sm31960518pgq.21.2019.04.28.01.32.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 01:32:49 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Robert Walker <robert.walker@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] perf cs-etm: Don't check cs_etm_queue::prev_packet
 validity
Date: Sun, 28 Apr 2019 16:32:28 +0800
Message-Id: <20190428083228.20246-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190428083228.20246-1-leo.yan@linaro.org>
References: <20190428083228.20246-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_013253_491358_77CEEB50 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since cs_etm_queue::prev_packet is allocated for all cases, it will
never be NULL pointer; now validity checking prev_packet is pointless,
remove all of them.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 054b480aab04..de488b43f440 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -979,7 +979,6 @@ static int cs_etm__sample(struct cs_etm_queue *etmq)
 	 * PREV_PACKET is a branch.
 	 */
 	if (etm->synth_opts.last_branch &&
-	    etmq->prev_packet &&
 	    etmq->prev_packet->sample_type == CS_ETM_RANGE &&
 	    etmq->prev_packet->last_instr_taken_branch)
 		cs_etm__update_last_branch_rb(etmq);
@@ -1012,7 +1011,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq)
 		etmq->period_instructions = instrs_over;
 	}
 
-	if (etm->sample_branches && etmq->prev_packet) {
+	if (etm->sample_branches) {
 		bool generate_sample = false;
 
 		/* Generate sample for tracing on packet */
@@ -1069,9 +1068,6 @@ static int cs_etm__flush(struct cs_etm_queue *etmq)
 	struct cs_etm_auxtrace *etm = etmq->etm;
 	struct cs_etm_packet *tmp;
 
-	if (!etmq->prev_packet)
-		return 0;
-
 	/* Handle start tracing packet */
 	if (etmq->prev_packet->sample_type == CS_ETM_EMPTY)
 		goto swap_packet;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
