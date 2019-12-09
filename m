Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 780A01169CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:44:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzEf7Af4g2J1GMTdWlQnAk2Z5EmrS3CK7cUT4QldjX4=; b=oMyp9EzBqbkX2p
	As/+4iDOH4fStfqqLRw8fYHpuDBBe3u6egmduHZCvYxbHwwoW+WX4SssZOMr8y9dQTCw6TJIPnOQl
	P47Nw0StwXkX0ncflDfSliaRWjeqNQR3ry6uu2vQAOztwjrz7LhYi7j7rv//OQ5n9lf5ieLFFxtGV
	L7bMPe5+mDrJ8V3zJSdPuGQzbPM7Rfwo456ZA7IXCnK1s9FsFKqYX/DKx5XjbG5rADTscMoQg3xiC
	lyZX8OdBUmFhRQukdWABLK7E+fHu00FVJ/AC6jlOuOKH8ZagsPAusZ1PKEdyOOPJ/ZXyyAnBmHLJd
	wUVFCMLGkdQWRPmKNliQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFav-0005dk-Ix; Mon, 09 Dec 2019 09:44:45 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFZx-0004zG-Bb
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:43:47 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB99hf2L033102;
 Mon, 9 Dec 2019 03:43:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575884621;
 bh=uSViP+QvJDzIv6c8dhx5jMKNUxJQ+VwAKiFTRE1e4co=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=KPzgZ+xorC/+hnSfVemPOyUjF4D9dyQ90O7xw1/As7IAZz3iXpYE4Eb2Ng+rpIhrR
 wN9eitL05T5RA61t3mDju6a3/7JwnQXzqyqZ8fLnjyiMM/vyzj7U7sjGwHmgIkmpqG
 YNnzoYbR3QRYrJgzLZ107PjjNvc8bqMeP0vlBxQI=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB99hfEp041537
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 9 Dec 2019 03:43:41 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 9 Dec
 2019 03:43:41 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 9 Dec 2019 03:43:41 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB99hOWk080263;
 Mon, 9 Dec 2019 03:43:37 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v7 03/12] dmaengine: doc: Add sections for per descriptor
 metadata support
Date: Mon, 9 Dec 2019 11:43:23 +0200
Message-ID: <20191209094332.4047-4-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209094332.4047-1-peter.ujfalusi@ti.com>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_014345_480168_2A0A1EE2 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the provider and client documentation with details about the
metadata support.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Reviewed-by: Tero Kristo <t-kristo@ti.com>
---
 Documentation/driver-api/dmaengine/client.rst | 75 +++++++++++++++++++
 .../driver-api/dmaengine/provider.rst         | 46 ++++++++++++
 2 files changed, 121 insertions(+)

diff --git a/Documentation/driver-api/dmaengine/client.rst b/Documentation/driver-api/dmaengine/client.rst
index 45953f171500..41309c176df4 100644
--- a/Documentation/driver-api/dmaengine/client.rst
+++ b/Documentation/driver-api/dmaengine/client.rst
@@ -151,6 +151,81 @@ The details of these operations are:
      Note that callbacks will always be invoked from the DMA
      engines tasklet, never from interrupt context.
 
+  Optional: per descriptor metadata
+  ---------------------------------
+  DMAengine provides two ways for metadata support.
+
+  DESC_METADATA_CLIENT
+
+    The metadata buffer is allocated/provided by the client driver and it is
+    attached to the descriptor.
+
+  .. code-block:: c
+
+     int dmaengine_desc_attach_metadata(struct dma_async_tx_descriptor *desc,
+				   void *data, size_t len);
+
+  DESC_METADATA_ENGINE
+
+    The metadata buffer is allocated/managed by the DMA driver. The client
+    driver can ask for the pointer, maximum size and the currently used size of
+    the metadata and can directly update or read it.
+
+  .. code-block:: c
+
+     void *dmaengine_desc_get_metadata_ptr(struct dma_async_tx_descriptor *desc,
+		size_t *payload_len, size_t *max_len);
+
+     int dmaengine_desc_set_metadata_len(struct dma_async_tx_descriptor *desc,
+		size_t payload_len);
+
+  Client drivers can query if a given mode is supported with:
+
+  .. code-block:: c
+
+     bool dmaengine_is_metadata_mode_supported(struct dma_chan *chan,
+		enum dma_desc_metadata_mode mode);
+
+  Depending on the used mode client drivers must follow different flow.
+
+  DESC_METADATA_CLIENT
+
+    - DMA_MEM_TO_DEV / DEV_MEM_TO_MEM:
+      1. prepare the descriptor (dmaengine_prep_*)
+         construct the metadata in the client's buffer
+      2. use dmaengine_desc_attach_metadata() to attach the buffer to the
+         descriptor
+      3. submit the transfer
+    - DMA_DEV_TO_MEM:
+      1. prepare the descriptor (dmaengine_prep_*)
+      2. use dmaengine_desc_attach_metadata() to attach the buffer to the
+         descriptor
+      3. submit the transfer
+      4. when the transfer is completed, the metadata should be available in the
+         attached buffer
+
+  DESC_METADATA_ENGINE
+
+    - DMA_MEM_TO_DEV / DEV_MEM_TO_MEM:
+      1. prepare the descriptor (dmaengine_prep_*)
+      2. use dmaengine_desc_get_metadata_ptr() to get the pointer to the
+         engine's metadata area
+      3. update the metadata at the pointer
+      4. use dmaengine_desc_set_metadata_len()  to tell the DMA engine the
+         amount of data the client has placed into the metadata buffer
+      5. submit the transfer
+    - DMA_DEV_TO_MEM:
+      1. prepare the descriptor (dmaengine_prep_*)
+      2. submit the transfer
+      3. on transfer completion, use dmaengine_desc_get_metadata_ptr() to get the
+         pointer to the engine's metadata area
+      4. Read out the metadata from the pointer
+
+  .. note::
+
+     Mixed use of DESC_METADATA_CLIENT / DESC_METADATA_ENGINE is not allowed,
+     client drivers must use either of the modes per descriptor.
+
 4. Submit the transaction
 
    Once the descriptor has been prepared and the callback information
diff --git a/Documentation/driver-api/dmaengine/provider.rst b/Documentation/driver-api/dmaengine/provider.rst
index dfc4486b5743..da557c21c619 100644
--- a/Documentation/driver-api/dmaengine/provider.rst
+++ b/Documentation/driver-api/dmaengine/provider.rst
@@ -247,6 +247,52 @@ after each transfer. In case of a ring buffer, they may loop
 (DMA_CYCLIC). Addresses pointing to a device's register (e.g. a FIFO)
 are typically fixed.
 
+Per descriptor metadata support
+-------------------------------
+Some data movement architecture (DMA controller and peripherals) uses metadata
+associated with a transaction. The DMA controller role is to transfer the
+payload and the metadata alongside.
+The metadata itself is not used by the DMA engine itself, but it contains
+parameters, keys, vectors, etc for peripheral or from the peripheral.
+
+The DMAengine framework provides a generic ways to facilitate the metadata for
+descriptors. Depending on the architecture the DMA driver can implement either
+or both of the methods and it is up to the client driver to choose which one
+to use.
+
+- DESC_METADATA_CLIENT
+
+  The metadata buffer is allocated/provided by the client driver and it is
+  attached (via the dmaengine_desc_attach_metadata() helper to the descriptor.
+
+  From the DMA driver the following is expected for this mode:
+  - DMA_MEM_TO_DEV / DEV_MEM_TO_MEM
+    The data from the provided metadata buffer should be prepared for the DMA
+    controller to be sent alongside of the payload data. Either by copying to a
+    hardware descriptor, or highly coupled packet.
+  - DMA_DEV_TO_MEM
+    On transfer completion the DMA driver must copy the metadata to the client
+    provided metadata buffer.
+
+- DESC_METADATA_ENGINE
+
+  The metadata buffer is allocated/managed by the DMA driver. The client driver
+  can ask for the pointer, maximum size and the currently used size of the
+  metadata and can directly update or read it. dmaengine_desc_get_metadata_ptr()
+  and dmaengine_desc_set_metadata_len() is provided as helper functions.
+
+  From the DMA driver the following is expected for this mode:
+  - get_metadata_ptr
+    Should return a pointer for the metadata buffer, the maximum size of the
+    metadata buffer and the currently used / valid (if any) bytes in the buffer.
+  - set_metadata_len
+    It is called by the clients after it have placed the metadata to the buffer
+    to let the DMA driver know the number of valid bytes provided.
+
+  Note: since the client will ask for the metadata pointer in the completion
+  callback (in DMA_DEV_TO_MEM case) the DMA driver must ensure that the
+  descriptor is not freed up prior the callback is called.
+
 Device operations
 -----------------
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
