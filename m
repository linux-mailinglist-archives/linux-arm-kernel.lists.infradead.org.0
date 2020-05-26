Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC6E1E202D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BxPrCOUokkow8mEWqA5WJ1g78IBhTVa7fbkuYErWS3Q=; b=Nv1/cx0G9ry+uvHjSZClE6phXM
	/IpxplPTesUlAsP8ePW9CJovFBl75spkArv1EWibBHyoy25DF1kzgQTngou+pCxaT3PpFcaNe26N1
	21eQdTAtZ72EyxqhKFg4LMfqvb9v0876ltbYh8Z7A+AYfJN4wl0IGdNBjBwMH+wjx45gqN6mpZ0QK
	ufnBtYlzX9UpOFbnRuloiEU4BjwKE7TdeunGByjg2cv+31af3LkH8uZsJOkMsowqjPq6MmJC/4VMf
	JIMxCRtE0fjOnN+7DVTjAaKG4a2Xp6vpCfcNOeEeHlfnQuCLVWrkm/gRMxmpB321bH/6vOoLx1Ayo
	Z06tlM8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXDN-0006MI-Ex; Tue, 26 May 2020 10:53:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXCu-0006Ab-Di
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:53:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id e1so19938200wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 03:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y/X/VgnyC3HIoMTaZFKxWYG40oheShX3/ZPr18h9D1M=;
 b=Vc85tChelfWUsKYMlUXXJcIclXD0SP+4qTCuB01m0OhuQfmU2v6Bd/7wuJ4+QxQrDN
 LL/niYIf1u7fr6T/lrMq34JSdwSs6VTM5xv8iEYFVPXekiTGHgPhMSo6EJZA2RhbPCFl
 BTrtO355Exs9Hoit8jHxYHV2uC3Vht4nV4IQunmwreoSVRxObXqDx4VulGWdEuRDt1n7
 neDcSdcv4kF/mqfPa4MfFVBZl5QZMltFRTaBEsdiIsk7v1GMCAV+6yr6yl08eRLcduH+
 rSN4NMxt4yfbgMFFevBFKVCIfD/CIpBp9xZZl2mLsPaTkPrbSXGf7Al0d9g2hU8PY57P
 zUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y/X/VgnyC3HIoMTaZFKxWYG40oheShX3/ZPr18h9D1M=;
 b=Keh/569EYoaQHRLMaYGkdIzoJCy18hjdKiEmnXRs9uA1RC18IXhaP8IbUXfOmI3PXu
 t7p98FKoyVKFjdffSSEZ6ndP6uo873be86gxEXAIvjdCOoEzm5gqzoT9Iv2JNw1pUuoA
 tFF4iCN0OEQNtaoqTCay2HnxpGe898VvE98x3Mc5PuYIzpwfi/4ryqYu4BUEB3u65bkp
 bZcBl73dCKkjybpdpjs17m6AN4GFs6q/zBT5a+euujxzRvw3IPJCq2eRcdp/O3u02E8E
 Ua6BEjukX+X9xEvBNa9xUEfA+1FV51Fhd6ZrHF5ydMR3YfcpMPFQebyhJGbqitFfx1B+
 Hm6g==
X-Gm-Message-State: AOAM533fceOGER99eOkAb5x2x1UK40XX2AkLf1Cmv6mjQFppWKm/H1FS
 2p2PZbYfEIEnDuIP/CxxtNerJXNKwbc=
X-Google-Smtp-Source: ABdhPJyE4hdLBk98AqoF2vCujR8GjEG4YMHN12wrAaGuVW8KY7u4Cd1xS3+zTBdkQXJvLUOxIgksoA==
X-Received: by 2002:adf:f8c8:: with SMTP id f8mr6638631wrq.151.1590490395069; 
 Tue, 26 May 2020 03:53:15 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id s7sm7244395wrr.60.2020.05.26.03.53.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 03:53:14 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, acme@kernel.org
Subject: [PATCH v4 1/1] perf: cs-etm: Allow no CoreSight sink to be specified
 on command line
Date: Tue, 26 May 2020 11:53:10 +0100
Message-Id: <20200526105310.9706-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526105310.9706-1-mike.leach@linaro.org>
References: <20200526105310.9706-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_035316_457045_3DD7C4CB 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 mathieu.poirier@linaro.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust the handling of the session sink selection to allow no sink to
be selected on the command line. This then forwards the sink selection to
the CoreSight infrastructure which will attempt to select a sink based
on the default sink select priorities.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 tools/perf/arch/arm/util/cs-etm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index 941f814820b8..ed9ea2c60f27 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -242,10 +242,10 @@ static int cs_etm_set_sink_attr(struct perf_pmu *pmu,
 	}
 
 	/*
-	 * No sink was provided on the command line - for _now_ treat
-	 * this as an error.
+	 * No sink was provided on the command line - allow the CoreSight
+	 * system to look for a default
 	 */
-	return ret;
+	return 0;
 }
 
 static int cs_etm_recording_options(struct auxtrace_record *itr,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
