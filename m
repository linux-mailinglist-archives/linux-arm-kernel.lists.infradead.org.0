Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100811AB259
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 22:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xMAeBpAsKS+HpNNa+Z0syBz4r+SafDJntH10mnSnwv0=; b=VPl
	rTZ7HlgExfl3IkoP9e6pHgYZsbE5/lVL2Rd7RuL6p3UT5h1ZqvUTHjncYnQaFc+drBDF3FRNa7kff
	sLkSLA1PZd/aKsHTG3Qw4JyBLDkB0GYMhjlH06SIts196m0YueL2Q6vCpJKQCwP7oCRjgmuUEzdyy
	rV/0K+QyYbt2rBBsNTlQxbbMexUpy6bHVHNj3lkYo/KDudLOt3gPoquZJyULbTp1GsPtwMt/dOacp
	EkhZQ9tw4XlyF9PlGxz9C6PRi+6CfS6zSAsLT9uih//SeV7CbQ27tIC3cfRVLRAl1LvReYmX+j6iS
	p2Mxn6z4RW/W4+si5wHuMSeAKdZrKPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOoQa-0006uF-52; Wed, 15 Apr 2020 20:14:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOoQS-0006ts-F3
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 20:14:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id y24so1349363wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 13:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ODOvndW4LiKNLVugKfg+XGH/+IQIVz2j2QhcNZNNNDw=;
 b=CaQwlT/FCuz7txLgHcAuiZlNax5IL/PAk5jNXi58jO/V0R0XMdSUedQt3XjwGuffpQ
 w5qyuWW3O0jV7QBqiFXC6lIrAbmvyS2aBMxxd09tJWQIh/b3IOl6+07MzV+JIZT88r9I
 tj09BzwMPvCUHz/A7QU6rVC31qy8bBMKrmPb0+k997dTjFgmjF5VGYsHg9AAjntgJK+2
 np3AJmZxJtZ77SH4JBsebQbF+FLiOPOeCXVwnjUwOh5RjnQjsfaxGDSYE33NMrKF3UTq
 AGoG4ES1hV9TSrd87RYLJUVpL0+T50ia80qh9yIMgDNSaY3K3/ZKzXMhDa+8gxjR4bgH
 JYgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ODOvndW4LiKNLVugKfg+XGH/+IQIVz2j2QhcNZNNNDw=;
 b=Ytbuh5pEilrrxh0Cqq1g7x1S4osGJQxowt6bOy6n1NQJ2R+crXyx/PVRjGTkw5qlYO
 gTTY96ENBk5TIS05LBsGNHvz6uMyANB4PHzJp+w1/3dNWAF+nzDewEUBDeLdpGwiza2X
 buemYKHb49/IpuHSKVCbvz0ZMSYDhlPcDYFpP0vDOOlrWGC8qu7Bgj6YDHII5NsPRquz
 w6hv0EIFy6abuKyJgGPfl+TjqM70vdO9olECw/4SGYdYQF92Z+TPflWAwBDom6J05atG
 824I8JPmFe8ZVCydonq48gWRK28wM5eL2jEfs1qhSK2if8fPTx1T/1OxK1PhLgPLrVnP
 F8Dw==
X-Gm-Message-State: AGi0PuZ9286NPN5lXn6ha0rGyANoTRXaqiNk/dlIo5mcacbKhhnt6SUq
 rOto1kRBiEkUlkjDC8aZkx+BLao9ucbw2w==
X-Google-Smtp-Source: APiQypJZIP9bAo45DYG4zOGjoaVp9RiNqSCx3wezM6Eex8q2r3S+QMaUKrN6PphcUwxMmDdzYEgmQw==
X-Received: by 2002:a1c:99d3:: with SMTP id b202mr1055203wme.126.1586981662560; 
 Wed, 15 Apr 2020 13:14:22 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id 17sm812782wmo.2.2020.04.15.13.14.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 13:14:22 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH] perf: cs-etm: Update to build with latest opencsd version.
Date: Wed, 15 Apr 2020 21:14:20 +0100
Message-Id: <20200415201420.15958-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_131424_500435_250225E9 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peterz@infradead.org, mingo@redhat.com, Mike Leach <mike.leach@linaro.org>,
 acme@kernel.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OpenCSD version v0.14.0 adds in a new output element. This is represented
by a new value in the generic element type enum, which must be added to
the handling code in perf cs-etm-decoder to prevent build errors due to
build options on the perf project.

This element is not currently used by the perf decoder.

Tested on Linux 5.7-rc1.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 tools/perf/util/cs-etm-decoder/cs-etm-decoder.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
index cd92a99eb89d..da4737cbc2ab 100644
--- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
+++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
@@ -564,6 +564,10 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
 		resp = cs_etm_decoder__set_tid(etmq, packet_queue,
 					       elem, trace_chan_id);
 		break;
+	/* Unused packet types */
+#if OCSD_VER_NUM >= 0x0E00
+	case OCSD_GEN_TRC_ELEM_I_RANGE_NOPATH:
+#endif
 	case OCSD_GEN_TRC_ELEM_ADDR_NACC:
 	case OCSD_GEN_TRC_ELEM_CYCLE_COUNT:
 	case OCSD_GEN_TRC_ELEM_ADDR_UNKNOWN:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
