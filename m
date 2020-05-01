Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9F81C17DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BTQRr1KRBLucCw2nkKQWogLhs/2I2eX+QZSUT713wAY=; b=MUE
	BlrMtKGh0QEpey5yc2xa72mK3P4p/xVkEMHZeieW9brnqq9/1Qpkh0013kD0Y2R+bonU2fbuWyd8I
	Ou/U/5oNeWTmTwFMzihlafP2fyGldcA19x5kPscvDu6YnEVdiC0eOj28buPP0qTUxK6vkSmnqkXBt
	3lTKTMFzBJp4A79wSmuwQcOJtyYbuR7YE1H5X5b7Fnd6859jmDAOn2G+KeAnmaqekFSAh/JfKrZ0D
	M18EWmJK6XvHX21sMC21DCQ4ZhKnUYNIKa7pVA2Qmpjdr39FLkKRQKEmefB18GU8TTUUPr9t4iYFo
	zXfJWmZ16Bz4NGPhBQ1wFr2UzGeMH3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWmF-0007MK-OW; Fri, 01 May 2020 14:36:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWm5-0007Fr-L2
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 14:36:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id k1so11748305wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 07:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qezlbEs26gOrWFMyWMZpjZ8xghXGSjIgdcezc4CI8eY=;
 b=NZ1zpulfQHxcBjCRJz+dbH9uUgkQbKPQ4ynbioMg3EyOYoyttoozmzd4rVucZG+QwM
 lG+HGJa4UBSLSeXGDS/JXQrES1ICu5e8IjsMnRuPYIoD3wDFNZHX4A8ieVie6dygnVJM
 Rmio6BxmYlbncELdKHsRCE+Ll6Yj/MlpimGsfRFvI4gXcIF8F/GrGQpWT0i742jfnSMv
 TyCdf/OqiR+NiixAYfE+sOSNZZ0/ldTAO2Fi3nD6Wdi43vFwoWihvWvWYQu/qH00pR7I
 vrRVR5/76W3XUVR7dLKkR+ATp2F4JEepMXV2bQP4+/nPoJpfRq7y5GD509/dk+GV7CKO
 in6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qezlbEs26gOrWFMyWMZpjZ8xghXGSjIgdcezc4CI8eY=;
 b=gQ7yZ8zRblVMAI8/5Pmy7kx/vYnwlDTOcygRMSjsVYUmk4zA39kd8uY+JHuGXzTnqu
 U8LQQdslm4bfyeH7il8gtFc24aLZnfuJ0wLAhKJwx9ons5WUqfKIxiseTvj1qOB+tav1
 agUhFLsAQOUBZw09Yxq2OtpZ5sQY9knnf5RIF0fE811OHus//YCpT8n1nARj7HjBakcQ
 b615q73hYHUesbNU4gAQ+VxetpsSFQmZi4SsJyMQcv3gbQ+Pk8iVJ3VnEXqGRGPB7RD6
 ZXcCTezaF12GmAoyJ1H7rqJkx0Y309V10Oy7VJb5xXPUV5SNNwF/sB/pkFL5QULL+Pg2
 af3w==
X-Gm-Message-State: AGi0PuYtEoNdtUg1LcpQYo0Mb1AkQeMSr9b6XEnJr9Qq5GJ9L4EkOUSf
 jNmO567KbXr5W7vi7IPy7SbilPG3YHk=
X-Google-Smtp-Source: APiQypImSe8yuivKOHKCNp93T5FkysYQ8r2xtCVoVj1NQvb8wNUiHJE5THy5jkxXcbBhPCjFB1Of8w==
X-Received: by 2002:adf:82ac:: with SMTP id 41mr2436039wrc.110.1588343779109; 
 Fri, 01 May 2020 07:36:19 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id z22sm4204992wma.20.2020.05.01.07.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 07:36:18 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] perf: cs-etm: Update to build with latest opencsd version.
Date: Fri,  1 May 2020 15:36:15 +0100
Message-Id: <20200501143615.1180-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_073621_694747_3233844F 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Perf build feature test updated to require a minimum of 0.14.0

Tested on Linux 5.7-rc3.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 tools/build/feature/test-libopencsd.c           | 4 ++--
 tools/perf/util/cs-etm-decoder/cs-etm-decoder.c | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/tools/build/feature/test-libopencsd.c b/tools/build/feature/test-libopencsd.c
index 2b0e02c38870..1547bc2c0950 100644
--- a/tools/build/feature/test-libopencsd.c
+++ b/tools/build/feature/test-libopencsd.c
@@ -4,9 +4,9 @@
 /*
  * Check OpenCSD library version is sufficient to provide required features
  */
-#define OCSD_MIN_VER ((0 << 16) | (11 << 8) | (0))
+#define OCSD_MIN_VER ((0 << 16) | (14 << 8) | (0))
 #if !defined(OCSD_VER_NUM) || (OCSD_VER_NUM < OCSD_MIN_VER)
-#error "OpenCSD >= 0.11.0 is required"
+#error "OpenCSD >= 0.14.0 is required"
 #endif
 
 int main(void)
diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
index cd92a99eb89d..cd007cc9c283 100644
--- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
+++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
@@ -564,6 +564,8 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
 		resp = cs_etm_decoder__set_tid(etmq, packet_queue,
 					       elem, trace_chan_id);
 		break;
+	/* Unused packet types */
+	case OCSD_GEN_TRC_ELEM_I_RANGE_NOPATH:
 	case OCSD_GEN_TRC_ELEM_ADDR_NACC:
 	case OCSD_GEN_TRC_ELEM_CYCLE_COUNT:
 	case OCSD_GEN_TRC_ELEM_ADDR_UNKNOWN:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
