Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFA6EB685
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:59:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mMs11SvFAviMBo3C2h8S49AtNkJV9GooHxep8yuTnEg=; b=Op3yq0ubCl9R+MQGEh0pl1ZOdQ
	GDYn3jiJTWMHMrvpYSQ2SHrbBLPRUWd/HPHYimDWYvvMAZW80BYOx0T4haSq6DkHDZzPKVSXd5BQ/
	M8T7Bw9JzlJJESTQirde13E9BjDeF1AbKhXF6p6kc1DXRRdCO9j9OkkgDYiam2ZyiCEYjFwC7LOYS
	HTHfXEdgBT0+s2LUxWXEfELjDbThLY5VVJGv9UPDGdmhRbT41u1FEslEam5jXOuSC2dYerkEXgimf
	rmwwgxAgpPVGX4qbnxXRl/FIfNdqntT7qde36fkjRicJJdeIZ6qMkNgBWAD6QpA9POrCMZ4Votpm1
	bdz5imhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEjE-00008l-Ut; Thu, 31 Oct 2019 17:59:24 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEiU-00088M-6c
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:58:40 +0000
Received: by mail-pf1-x42f.google.com with SMTP id 21so4859699pfj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 10:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3bEkTyHmWEIeRUo1Z0YDAwOhhfn1LtYohlH4mzS0zd8=;
 b=he1Mcq9Aw8jQleiPR1ObOVLe8cejk8WFNzMD5UPkEb/JHjHB3KupvG9QGvWR18KTQA
 PgF2BP/sPUshK8kLtzR0GGghKMcWPYVxm3euGv4j8tzMjv8blfen1RuwG2hsNTvAoMh3
 sKkV8XX/8uLIs1RzqRJdaUqolm+cLy1kS173wqrOJqb1cxZ4Phc8MrTrYRtRrE4M3e9m
 YEgXLZ0EbWJIOMrGY2taHW3ppaYMjnBC1Yy4U/XWpPHkOcM1hvQ23gLdsNoAMH9JRBvp
 zKZhiSIhab68PX46dN4iTofDG7rsbq1KH0zn+ALr7EBMVoLsyk2mSdZZNk2AWAg3eKys
 0+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3bEkTyHmWEIeRUo1Z0YDAwOhhfn1LtYohlH4mzS0zd8=;
 b=V8iPi6a5Szx5h9n36kYSfzLugGP2gPME/SdvB5GKzC2rp9Z4xK2Xw/1OSZJc1/y7MB
 Wms8kZB43bU72Tc1FV3mOVWjr2KhThKapMNhhCNeCvXb3b4WghwR+0doyCrVWLYVTbKV
 E8oIkqO38CIzn6P2SZICG0BPDnk9EepKYRszAYoPi0dQ++znxCg1WgTGZ1NAJzfa5J32
 5bhYyAFQ1bgjhcssRvJz7Oy/7L9V6Whz78CFwXsKRuNozz09Z98W5Xsin/2JinLlBZtr
 FS1az700u+XQ6KbpEur1x0qyveKexCdS5aY+SQFtI2G6ng+UtQmEEvrkZgMWg1y4AEKo
 IpbA==
X-Gm-Message-State: APjAAAV2gucphZT6O6gpxlv0UOhwWFXIo8EaJeuEQqCVdgcMilYeCGhu
 GBFxS/EouktZZIxws/cV7oQavFNV3tE=
X-Google-Smtp-Source: APXvYqxCqOmW6Tte/cDAuUujDXgDVFYfkH01ZwIVuTFNvmQibIJyeNDhk5eoxgp0wHvzNvR5kR74jA==
X-Received: by 2002:a65:4c8b:: with SMTP id m11mr8431878pgt.25.1572544716710; 
 Thu, 31 Oct 2019 10:58:36 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c6sm4382210pfj.59.2019.10.31.10.58.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 10:58:36 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: corbet@lwn.net
Subject: [PATCH 1/4] coresight: etm4x: docs: Update ABI doc for new sysfs name
 scheme.
Date: Thu, 31 Oct 2019 11:58:31 -0600
Message-Id: <20191031175834.17548-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191031175834.17548-1-mathieu.poirier@linaro.org>
References: <20191031175834.17548-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_105838_243397_C1A1B6F5 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

Recent updates to CoreSight drivers have changed the component naming
schema used in sysfs.

This updates the ABI document to reflect the new naming schema.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../testing/sysfs-bus-coresight-devices-etm4x | 136 +++++++++---------
 1 file changed, 68 insertions(+), 68 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
index 36258bc1b473..9290010e973e 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
@@ -1,4 +1,4 @@
-What:		/sys/bus/coresight/devices/<memory_map>.etm/enable_source
+What:		/sys/bus/coresight/devices/etm<N>/enable_source
 Date:		April 2015
 KernelVersion:  4.01
 Contact:        Mathieu Poirier <mathieu.poirier@linaro.org>
@@ -8,82 +8,82 @@ Description:	(RW) Enable/disable tracing on this specific trace entiry.
 		of coresight components linking the source to the sink is
 		configured and managed automatically by the coresight framework.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/cpu
+What:		/sys/bus/coresight/devices/etm<N>/cpu
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) The CPU this tracing entity is associated with.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/nr_pe_cmp
+What:		/sys/bus/coresight/devices/etm<N>/nr_pe_cmp
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Indicates the number of PE comparator inputs that are
 		available for tracing.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/nr_addr_cmp
+What:		/sys/bus/coresight/devices/etm<N>/nr_addr_cmp
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Indicates the number of address comparator pairs that are
 		available for tracing.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/nr_cntr
+What:		/sys/bus/coresight/devices/etm<N>/nr_cntr
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Indicates the number of counters that are available for
 		tracing.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/nr_ext_inp
+What:		/sys/bus/coresight/devices/etm<N>/nr_ext_inp
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Indicates how many external inputs are implemented.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/numcidc
+What:		/sys/bus/coresight/devices/etm<N>/numcidc
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Indicates the number of Context ID comparators that are
 		available for tracing.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/numvmidc
+What:		/sys/bus/coresight/devices/etm<N>/numvmidc
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Indicates the number of VMID comparators that are available
 		for tracing.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/nrseqstate
+What:		/sys/bus/coresight/devices/etm<N>/nrseqstate
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Indicates the number of sequencer states that are
 		implemented.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/nr_resource
+What:		/sys/bus/coresight/devices/etm<N>/nr_resource
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Indicates the number of resource selection pairs that are
 		available for tracing.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/nr_ss_cmp
+What:		/sys/bus/coresight/devices/etm<N>/nr_ss_cmp
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Indicates the number of single-shot comparator controls that
 		are available for tracing.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/reset
+What:		/sys/bus/coresight/devices/etm<N>/reset
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(W) Cancels all configuration on a trace unit and set it back
 		to its boot configuration.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mode
+What:		/sys/bus/coresight/devices/etm<N>/mode
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
@@ -91,302 +91,302 @@ Description: 	(RW) Controls various modes supported by this ETM, for example
 		P0 instruction tracing, branch broadcast, cycle counting and
 		context ID tracing.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/pe
+What:		/sys/bus/coresight/devices/etm<N>/pe
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Controls which PE to trace.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/event
+What:		/sys/bus/coresight/devices/etm<N>/event
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Controls the tracing of arbitrary events from bank 0 to 3.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/event_instren
+What:		/sys/bus/coresight/devices/etm<N>/event_instren
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Controls the behavior of the events in bank 0 to 3.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/event_ts
+What:		/sys/bus/coresight/devices/etm<N>/event_ts
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Controls the insertion of global timestamps in the trace
 		streams.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/syncfreq
+What:		/sys/bus/coresight/devices/etm<N>/syncfreq
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Controls how often trace synchronization requests occur.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/cyc_threshold
+What:		/sys/bus/coresight/devices/etm<N>/cyc_threshold
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Sets the threshold value for cycle counting.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/bb_ctrl
+What:		/sys/bus/coresight/devices/etm<N>/bb_ctrl
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Controls which regions in the memory map are enabled to
 		use branch broadcasting.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/event_vinst
+What:		/sys/bus/coresight/devices/etm<N>/event_vinst
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Controls instruction trace filtering.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/s_exlevel_vinst
+What:		/sys/bus/coresight/devices/etm<N>/s_exlevel_vinst
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) In Secure state, each bit controls whether instruction
 		tracing is enabled for the corresponding exception level.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/ns_exlevel_vinst
+What:		/sys/bus/coresight/devices/etm<N>/ns_exlevel_vinst
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) In non-secure state, each bit controls whether instruction
 		tracing is enabled for the corresponding exception level.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/addr_idx
+What:		/sys/bus/coresight/devices/etm<N>/addr_idx
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Select which address comparator or pair (of comparators) to
 		work with.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/addr_instdatatype
+What:		/sys/bus/coresight/devices/etm<N>/addr_instdatatype
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Controls what type of comparison the trace unit performs.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/addr_single
+What:		/sys/bus/coresight/devices/etm<N>/addr_single
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Used to setup single address comparator values.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/addr_range
+What:		/sys/bus/coresight/devices/etm<N>/addr_range
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Used to setup address range comparator values.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/seq_idx
+What:		/sys/bus/coresight/devices/etm<N>/seq_idx
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Select which sequensor.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/seq_state
+What:		/sys/bus/coresight/devices/etm<N>/seq_state
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Use this to set, or read, the sequencer state.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/seq_event
+What:		/sys/bus/coresight/devices/etm<N>/seq_event
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Moves the sequencer state to a specific state.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/seq_reset_event
+What:		/sys/bus/coresight/devices/etm<N>/seq_reset_event
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Moves the sequencer to state 0 when a programmed event
 		occurs.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/cntr_idx
+What:		/sys/bus/coresight/devices/etm<N>/cntr_idx
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Select which counter unit to work with.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/cntrldvr
+What:		/sys/bus/coresight/devices/etm<N>/cntrldvr
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) This sets or returns the reload count value of the
 		specific counter.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/cntr_val
+What:		/sys/bus/coresight/devices/etm<N>/cntr_val
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) This sets or returns the current count value of the
                 specific counter.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/cntr_ctrl
+What:		/sys/bus/coresight/devices/etm<N>/cntr_ctrl
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Controls the operation of the selected counter.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/res_idx
+What:		/sys/bus/coresight/devices/etm<N>/res_idx
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Select which resource selection unit to work with.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/res_ctrl
+What:		/sys/bus/coresight/devices/etm<N>/res_ctrl
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description: 	(RW) Controls the selection of the resources in the trace unit.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/ctxid_idx
+What:		/sys/bus/coresight/devices/etm<N>/ctxid_idx
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(RW) Select which context ID comparator to work with.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/ctxid_pid
+What:		/sys/bus/coresight/devices/etm<N>/ctxid_pid
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(RW) Get/Set the context ID comparator value to trigger on.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/ctxid_masks
+What:		/sys/bus/coresight/devices/etm<N>/ctxid_masks
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(RW) Mask for all 8 context ID comparator value
 		registers (if implemented).
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/vmid_idx
+What:		/sys/bus/coresight/devices/etm<N>/vmid_idx
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(RW) Select which virtual machine ID comparator to work with.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/vmid_val
+What:		/sys/bus/coresight/devices/etm<N>/vmid_val
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(RW) Get/Set the virtual machine ID comparator value to
 		trigger on.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/vmid_masks
+What:		/sys/bus/coresight/devices/etm<N>/vmid_masks
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(RW) Mask for all 8 virtual machine ID comparator value
 		registers (if implemented).
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trcoslsr
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcoslsr
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the OS Lock Status Register (0x304).
 		The value it taken directly  from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trcpdcr
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcpdcr
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the Power Down Control Register
 		(0x310).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trcpdsr
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcpdsr
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the Power Down Status Register
 		(0x314).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trclsr
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trclsr
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the SW Lock Status Register
 		(0xFB4).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trcauthstatus
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcauthstatus
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the Authentication Status Register
 		(0xFB8).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trcdevid
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcdevid
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the Device ID Register
 		(0xFC8).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trcdevtype
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcdevtype
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the Device Type Register
 		(0xFCC).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trcpidr0
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcpidr0
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the Peripheral ID0 Register
 		(0xFE0).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trcpidr1
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcpidr1
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the Peripheral ID1 Register
 		(0xFE4).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trcpidr2
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcpidr2
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the Peripheral ID2 Register
 		(0xFE8).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trcpidr3
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcpidr3
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the Peripheral ID3 Register
 		(0xFEC).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trcconfig
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcconfig
 Date:		February 2016
 KernelVersion:	4.07
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the trace configuration register
 		(0x010) as currently set by SW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/mgmt/trctraceid
+What:		/sys/bus/coresight/devices/etm<N>/mgmt/trctraceid
 Date:		February 2016
 KernelVersion:	4.07
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Print the content of the trace ID register (0x040).
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr0
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr0
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Returns the tracing capabilities of the trace unit (0x1E0).
 		The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr1
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr1
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Returns the tracing capabilities of the trace unit (0x1E4).
 		The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr2
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr2
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
@@ -394,7 +394,7 @@ Description:	(R) Returns the maximum size of the data value, data address,
 		VMID, context ID and instuction address in the trace unit
 		(0x1E8).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr3
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr3
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
@@ -403,42 +403,42 @@ Description:	(R) Returns the value associated with various resources
 		architecture specification for more details (0x1E8).
 		The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr4
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr4
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Returns how many resources the trace unit supports (0x1F0).
 		The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr5
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr5
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Returns how many resources the trace unit supports (0x1F4).
 		The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr8
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr8
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Returns the maximum speculation depth of the instruction
 		trace stream. (0x180).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr9
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr9
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Returns the number of P0 right-hand keys that the trace unit
 		can use (0x184).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr10
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr10
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(R) Returns the number of P1 right-hand keys that the trace unit
 		can use (0x188).  The value is taken directly from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr11
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr11
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
@@ -446,7 +446,7 @@ Description:	(R) Returns the number of special P1 right-hand keys that the
 		trace unit can use (0x18C).  The value is taken directly from
 		the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr12
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr12
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
@@ -454,7 +454,7 @@ Description:	(R) Returns the number of conditional P1 right-hand keys that
 		the trace unit can use (0x190).  The value is taken directly
 		from the HW.
 
-What:		/sys/bus/coresight/devices/<memory_map>.etm/trcidr/trcidr13
+What:		/sys/bus/coresight/devices/etm<N>/trcidr/trcidr13
 Date:		April 2015
 KernelVersion:	4.01
 Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
