Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD6F172208
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:16:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XPcfNoJ5XiFFgT1kSHuZxm8OHc7I5z4vRKqD2OxQfME=; b=Xtd65H7/FolFkqahQT5tgM9s5X
	3BPzldKpkaJhFw3JuKegWrcEMOZY4Ziwpiy4SKjwbNUzYiGPEB80Xk6V6p45BPdl8irfm0UOreLq6
	ybt7kw0LhTnipnIgVt2DJeokhs9/ICbC3am5O9T1HI+iFHgEH5+aikm6kx6ScHxiiblxOTixh1mSr
	K+6c8BQhx9VhC09k5yqhDoQ5pWYD+pB2NIcww9rN0P0fOetnv5pAD8Cchhi6x3qHnxc+Teh122Inm
	jh5ONDF0v6BiyOONa6KwFoQjwmLEH41Q1rIhGT5O5lCRCuw71ZDmwimK4Hm8zGLoqZSOHeVzatGOy
	O4XZCG/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Kth-0002lb-B2; Thu, 27 Feb 2020 15:16:21 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ks0-00008q-IX
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:14:38 +0000
Received: by mail-wm1-x333.google.com with SMTP id a5so4009723wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 07:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0dvq0TIvLIhYW6FRHb2k6j4t1FaEUBN90K81y+vKrss=;
 b=n3dfJoV3D6qtoScNIKFTLoXkidqgBL9BgtF6Y4SweATy7nHjRMGikNNWjPH/JLrt2g
 5hWx1D+DIFycvH62F1+p8Ie8w8AfTz821Uzb0TAbtnFxUJw+q4URbDYjG84wx8Ue32iE
 0jb5//mN0QFp334ZGFkDA2WJnMNoHOwcelt+NLw5t55RbTzKMNIkin2cFMv6b5JzWzr0
 rwbII38y+SkKSK7a/KiX6l882RelEgCAAHH/7LEWEW2K1A2Ni90sUAbwmrIOrlswEP0b
 A8fpW1MzM+diCyT4l5bhEdp9Q04oS9OUWKS1Ue0/uW8FVdpDrLp9hLcw0443S9oWLpaX
 Be9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0dvq0TIvLIhYW6FRHb2k6j4t1FaEUBN90K81y+vKrss=;
 b=UgamWFrB8hFpTzmsxDiM4/y7dwmb97VviMeJUKMSw23pNDVXobs/tQm3dDnoJGW3uP
 3od5Lak7QJNVEhpvtUle0Ga2nQQtlHkmdZ7BmHElQ9ZY+HIM1KLrCGi5EYudM1MLbcms
 76u5R48rPiJtGG46sQHVTDfDMu+iHOhdWKHXQlMJmrGGax1PhUOdifnmKEbc07bGU0J3
 glejTDbCxv7OnPJj0pegyZii48T5NguxawipaejLaSDWcO+04F7+RKi9RVkvSqZ9lQER
 XXr85OD5BDRbRZFZRsvq8y4hsxGpIXZvRLTByKC+XS/PXi1mMHZ9hnDkBtRMGDi22zWT
 bxow==
X-Gm-Message-State: APjAAAWTNZmVr7G3MoNxjPk/XwzFSsJGiTYQx47kih5g2vrAZEYhj4si
 sMnO1btazHl0YW5uGdeXgbyNSSlQMFg=
X-Google-Smtp-Source: APXvYqzyZ0jyt4lFW5kshD8LLCN+heer9j/vnrZt0b0UOmMwmVFlpTvo+3iTRCXmNrQPH0rFQ8WXmg==
X-Received: by 2002:a05:600c:149:: with SMTP id w9mr10823wmm.132.1582816473630; 
 Thu, 27 Feb 2020 07:14:33 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6801:1801:2dc1:e60d:4b1c:70e0])
 by smtp.gmail.com with ESMTPSA id q12sm8973079wrg.71.2020.02.27.07.14.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 07:14:32 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v5 6/6] coresight: docs: Add information about the topology
 representations
Date: Thu, 27 Feb 2020 15:14:16 +0000
Message-Id: <20200227151416.14271-7-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227151416.14271-1-mike.leach@linaro.org>
References: <20200227151416.14271-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_071436_634868_6B9DF351 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mike Leach <mike.leach@linaro.org>, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the CoreSight documents to describe the new connections directory
and the links between CoreSight devices in this directory.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../trace/coresight/coresight-ect.rst         |  5 +-
 Documentation/trace/coresight/coresight.rst   | 85 +++++++++++++++++++
 2 files changed, 89 insertions(+), 1 deletion(-)

diff --git a/Documentation/trace/coresight/coresight-ect.rst b/Documentation/trace/coresight/coresight-ect.rst
index 067cee91c857..3539af895832 100644
--- a/Documentation/trace/coresight/coresight-ect.rst
+++ b/Documentation/trace/coresight/coresight-ect.rst
@@ -71,7 +71,7 @@ capable of generating or using trigger signals.::
 
   >$ ls /sys/bus/coresight/devices/etm0/cti_cpu0
   channels  ctmid  enable  nr_trigger_cons mgmt  power  regs  subsystem
-  triggers0 triggers1  uevent
+  connections triggers0 triggers1  uevent
 
 *Key file items are:-*
    * ``enable``: enables/disables the CTI.
@@ -84,6 +84,9 @@ capable of generating or using trigger signals.::
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
