Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D990D1D8394
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GS0Ysk5AbXEZWQHTikBP/pDe3keVCz4Rb/S3L0OCUlk=; b=GhyyN2au3hdb3+
	KTmUVs07Bwj5OUtp+QNE35se2bQSd0/d6/Rt4kRS+Dy+o96EuFLAD5hful0BgF0aOk2f/K2tY2AU5
	/ClANST1it72oi5TUfRCnyCAFY+7rpOnul5BzLIizLMVXqxzlJI1gVVt+Ja1vzVlYrVLpd096MQig
	v2DPWDQK7Lh3Tg2rovUBIUhmnv2H18iW8+OBRQ/oClDz5yh7LSNTY+n0soEKw/pQHaXJYPEgW2ykQ
	hCpFzYymp5ifqgOvJdo5s/R7SGcntl/fSqors5Sy46jPsl4ImLGXOeK+Mam7OO1qA/CXTk2pztniW
	Vvl7vIEl+ON5MjkUqFZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak9Q-0007wB-J0; Mon, 18 May 2020 18:06:08 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6G-0003Hx-Vv
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:55 +0000
Received: by mail-pl1-x633.google.com with SMTP id a13so2992426pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e0Pz6i6JWlIFvYArOTeih8eCx8iV9HZyZAVvys5cSoM=;
 b=T1IPvmubnKy3FrzpG2x3gObu92H7ScU2ErAm+ogozjvbWTpd7pw6LM4aOIIHXYByou
 LRuLZAL8Gd5c1YAKLuzJer93cYPG+F5OiJnXIkrwxQOXSj0e0X1fK2hTAvZso9V7+A8b
 ivbnHOi4NDNlR2PjEpHVl8YhNKMgMqLGtPzgySy04wjQ5NsB595Oy4E3Kwy3iy4XZB72
 bnGuU2lTNMTPgaGjtiDHMHkT/qUoJN2lF163cEHVbs0HsH3b1GmOgpcFIWQwTg4bWoXU
 g8p3WB6gMx8mJXxlzRjtqPkizGVmx62loOXRhH0oZ5dt5GPr55PmwIeBf5i7sBvOr5eG
 i4Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e0Pz6i6JWlIFvYArOTeih8eCx8iV9HZyZAVvys5cSoM=;
 b=XRgtDiUtrqDL4ig2UL4Mcmkblt9MNtgX8orKH95HEexksk2GMxEtA3HEUiN3bgf/tM
 IAcg1O5/3My72fnj8sN6fuXl0O+lnmYWkmEe5NKkkMYMDxFZowHrm4j+aHtlN5xlYwcj
 g1/tyjdoy0n0Wjl+Lu+Kuqmp1CNdIXSzpl1xUSSnTlGlSC2ExvbtdDsk2kUxYIWayQPY
 TFgtArPP0IAmX1ig/jQvV1El7FAwjm/Wzgtf2jLx2HZ1QhMkDom/Q8p6H8wK9LoTRcTF
 gFio14d/DS1rRzVPxu9Sfja9GEJRPjxaDS89rnPNHEerrDaN7PTtvUPPcr5dy8fEe7rI
 eZCg==
X-Gm-Message-State: AOAM531kv4W+50mjj1wFK53pFXrmf15lrdScqcehVwfksolAe1c8xeoO
 EuPUxtMeWMtPVyTDFrgGX7VR2g==
X-Google-Smtp-Source: ABdhPJzOQzE4YtrZ+JT6A7A6V6flhqDT09iabX9Ed2eM9fV3YI3iugRWD8L5txr9oqCDOiuhEiMEAg==
X-Received: by 2002:a17:902:7802:: with SMTP id
 p2mr9371956pll.38.1589824970369; 
 Mon, 18 May 2020 11:02:50 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:49 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 06/23] coresight: docs: Add information about the topology
 representations
Date: Mon, 18 May 2020 12:02:25 -0600
Message-Id: <20200518180242.7916-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110253_061782_5CB3F0BD 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:633 listed in]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

Update the CoreSight documents to describe the new connections directory
and the links between CoreSight devices in this directory.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../trace/coresight/coresight-ect.rst         |  5 +-
 Documentation/trace/coresight/coresight.rst   | 85 +++++++++++++++++++
 2 files changed, 89 insertions(+), 1 deletion(-)

diff --git a/Documentation/trace/coresight/coresight-ect.rst b/Documentation/trace/coresight/coresight-ect.rst
index ecc1e57012ef..50a5623d5d4f 100644
--- a/Documentation/trace/coresight/coresight-ect.rst
+++ b/Documentation/trace/coresight/coresight-ect.rst
@@ -72,7 +72,7 @@ capable of generating or using trigger signals.::
 
   >$ ls /sys/bus/coresight/devices/etm0/cti_cpu0
   channels  ctmid  enable  nr_trigger_cons mgmt  power powered  regs
-  subsystem triggers0 triggers1  uevent
+  connections subsystem triggers0 triggers1  uevent
 
 *Key file items are:-*
    * ``enable``: enables/disables the CTI. Read to determine current state.
@@ -88,6 +88,9 @@ capable of generating or using trigger signals.::
    * ``channels``: Contains the channel API - CTI main programming interface.
    * ``regs``: Gives access to the raw programmable CTI regs.
    * ``mgmt``: the standard CoreSight management registers.
+   * ``connections``: Links to connected *CoreSight* devices. The number of
+     links can be 0 to ``nr_trigger_cons``. Actual number given by ``nr_links``
+     in this directory.
 
 
 triggers<N> directories
diff --git a/Documentation/trace/coresight/coresight.rst b/Documentation/trace/coresight/coresight.rst
index 108600ee1e12..0b73acb44efa 100644
--- a/Documentation/trace/coresight/coresight.rst
+++ b/Documentation/trace/coresight/coresight.rst
@@ -241,6 +241,91 @@ to the newer scheme, to give a confirmation that what you see on your
 system is not unexpected. One must use the "names" as they appear on
 the system under specified locations.
 
+Topology Representation
+-----------------------
+
+Each CoreSight component has a ``connections`` directory which will contain
+links to other CoreSight components. This allows the user to explore the trace
+topology and for larger systems, determine the most appropriate sink for a
+given source. The connection information can also be used to establish
+which CTI devices are connected to a given component. This directory contains a
+``nr_links`` attribute detailing the number of links in the directory.
+
+For an ETM source, in this case ``etm0`` on a Juno platform, a typical
+arrangement will be::
+
+  linaro-developer:~# ls - l /sys/bus/coresight/devices/etm0/connections
+  <file details>  cti_cpu0 -> ../../../23020000.cti/cti_cpu0
+  <file details>  nr_links
+  <file details>  out:0 -> ../../../230c0000.funnel/funnel2
+
+Following the out port to ``funnel2``::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/funnel2/connections
+  <file details> in:0 -> ../../../23040000.etm/etm0
+  <file details> in:1 -> ../../../23140000.etm/etm3
+  <file details> in:2 -> ../../../23240000.etm/etm4
+  <file details> in:3 -> ../../../23340000.etm/etm5
+  <file details> nr_links
+  <file details> out:0 -> ../../../20040000.funnel/funnel0
+
+And again to ``funnel0``::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/funnel0/connections
+  <file details> in:0 -> ../../../220c0000.funnel/funnel1
+  <file details> in:1 -> ../../../230c0000.funnel/funnel2
+  <file details> nr_links
+  <file details> out:0 -> ../../../20010000.etf/tmc_etf0
+
+Finding the first sink ``tmc_etf0``. This can be used to collect data
+as a sink, or as a link to propagate further along the chain::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/tmc_etf0/connections
+  <file details> cti_sys0 -> ../../../20020000.cti/cti_sys0
+  <file details> in:0 -> ../../../20040000.funnel/funnel0
+  <file details> nr_links
+  <file details> out:0 -> ../../../20150000.funnel/funnel4
+
+via ``funnel4``::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/funnel4/connections
+  <file details> in:0 -> ../../../20010000.etf/tmc_etf0
+  <file details> in:1 -> ../../../20140000.etf/tmc_etf1
+  <file details> nr_links
+  <file details> out:0 -> ../../../20120000.replicator/replicator0
+
+and a ``replicator0``::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/replicator0/connections
+  <file details> in:0 -> ../../../20150000.funnel/funnel4
+  <file details> nr_links
+  <file details> out:0 -> ../../../20030000.tpiu/tpiu0
+  <file details> out:1 -> ../../../20070000.etr/tmc_etr0
+
+Arriving at the final sink in the chain, ``tmc_etr0``::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/tmc_etr0/connections
+  <file details> cti_sys0 -> ../../../20020000.cti/cti_sys0
+  <file details> in:0 -> ../../../20120000.replicator/replicator0
+  <file details> nr_links
+
+As described below, when using sysfs it is sufficient to enable a sink and
+a source for successful trace. The framework will correctly enable all
+intermediate links as required.
+
+Note: ``cti_sys0`` appears in two of the connections lists above.
+CTIs can connect to multiple devices and are arranged in a star topology
+via the CTM. See (:doc:`coresight-ect`) [#fourth]_ for further details.
+Looking at this device we see 4 connections::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/cti_sys0/connections
+  <file details> nr_links
+  <file details> stm0 -> ../../../20100000.stm/stm0
+  <file details> tmc_etf0 -> ../../../20010000.etf/tmc_etf0
+  <file details> tmc_etr0 -> ../../../20070000.etr/tmc_etr0
+  <file details> tpiu0 -> ../../../20030000.tpiu/tpiu0
+
+
 How to use the tracer modules
 -----------------------------
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
