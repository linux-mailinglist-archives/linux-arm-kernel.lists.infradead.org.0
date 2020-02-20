Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7022D165E8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:18:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NlCEf2zNhmPL5GVZ4CBDiziaF8d7cczGtTwo7iKBMPU=; b=PziULxJTm1vYtf
	w7eTO87Wn1RMWtFSNReoXrwjjdOj+pnC/D+uqAd7NjmMDhZmS5ktD+vlicceWUWpT5GPqBYsgx+Wb
	PMkEc6ASpaH/22tNdz2Y5f1SuL6QAjhYix1sNZXn+uvsk4HB00cUz+bBnBnzAQvIGYar7hWlSpaei
	LoTXCV+27uQBZJICVLiLQYGeQ5XV+g4scbfxm8IlViW0iaXV1E6yaSFebXnyU0YT7zCdIX/qU6aZ2
	vXwc3kj8G1lug8c4GjkOb49jfcXGzzeuvKqpm5TT7pRhMPbb8eNxkkAU4Zvw4d7KAtRtk5Nd6Mz8x
	72pH6XehOhG93V/2KWNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4liO-0001Gb-Kq; Thu, 20 Feb 2020 13:18:04 +0000
Received: from gateway34.websitewelcome.com ([192.185.148.109])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4li7-0001Es-Gk
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:17:50 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway34.websitewelcome.com (Postfix) with ESMTP id 1B1234020C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 07:17:35 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 4lhujRNXpEfyq4lhvjYxCK; Thu, 20 Feb 2020 07:17:35 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z1nik/sLu1rWe1J16Res5lnb/I2LgkK5u9A27nU3ovY=; b=WkfFysgNRAo+UWyPV48G7KJxrr
 QdENWL2WZlpyux/qZ58g4YNrrdODyN/3/5cURbxev/i8i5y9/fNa5+YyCQqKV2OF1pfuypyeMs6Lw
 Y92EXY+tFP+JEI7zuhJ9u/F6GFh7jn0iMXQaIrEbM3+gaYf84/xhX9DUaDN6ZeBMHJoz95ht6epCx
 mwmOwqv+ZxjhNYtjful6ZZFIlk487O59qsgsT0VioFBEeGpH9HBiP4Jg6ntzqB0+xPpRVA0H+Bz77
 pcSB4jcakHBCa6z+/lfyyqg19of677C4vhYE8WCxtJPfP7j9vA8WbGR6YsuqF2vp5ilM+33vEmh8f
 GwMVz72w==;
Received: from [201.144.174.47] (port=28175 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j4lht-003Yvz-1W; Thu, 20 Feb 2020 07:17:33 -0600
Date: Thu, 20 Feb 2020 07:20:17 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Johan Hovold <johan@kernel.org>, Felipe Balbi <balbi@kernel.org>
Subject: [PATCH] USB: Replace zero-length array with flexible-array member
Message-ID: <20200220132017.GA29262@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.144.174.47
X-Source-L: No
X-Exim-ID: 1j4lht-003Yvz-1W
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [201.144.174.47]:28175
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 13
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_051748_165339_B461C5BA 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.148.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.185.148.109 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/usb/atm/usbatm.h              | 2 +-
 drivers/usb/dwc2/hcd.h                | 2 +-
 drivers/usb/host/ehci-tegra.c         | 2 +-
 drivers/usb/host/ehci.h               | 4 ++--
 drivers/usb/host/fotg210.h            | 2 +-
 drivers/usb/host/ohci.h               | 4 ++--
 drivers/usb/host/xhci-mtk.h           | 2 +-
 drivers/usb/host/xhci.h               | 4 ++--
 drivers/usb/serial/io_usbvend.h       | 4 ++--
 drivers/usb/serial/ti_usb_3410_5052.c | 4 ++--
 include/linux/usb.h                   | 4 ++--
 include/linux/usb/audio-v2.h          | 2 +-
 include/linux/usb/audio-v3.h          | 2 +-
 include/linux/usb/gadget.h            | 2 +-
 include/linux/usb/hcd.h               | 2 +-
 include/linux/usbdevice_fs.h          | 2 +-
 16 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/usb/atm/usbatm.h b/drivers/usb/atm/usbatm.h
index d3bdc4cc47aa..8725755bd53d 100644
--- a/drivers/usb/atm/usbatm.h
+++ b/drivers/usb/atm/usbatm.h
@@ -164,7 +164,7 @@ struct usbatm_data {
 	unsigned char *cell_buf;	/* holds partial rx cell */
 	unsigned int buf_usage;
 
-	struct urb *urbs[0];
+	struct urb *urbs[];
 };
 
 static inline void *to_usbatm_driver_data(struct usb_interface *intf)
diff --git a/drivers/usb/dwc2/hcd.h b/drivers/usb/dwc2/hcd.h
index 8ca6d12a6f57..1224fa9df604 100644
--- a/drivers/usb/dwc2/hcd.h
+++ b/drivers/usb/dwc2/hcd.h
@@ -199,7 +199,7 @@ struct dwc2_hcd_urb {
 	u32 flags;
 	u16 interval;
 	struct dwc2_hcd_pipe_info pipe_info;
-	struct dwc2_hcd_iso_packet_desc iso_descs[0];
+	struct dwc2_hcd_iso_packet_desc iso_descs[];
 };
 
 /* Phases for control transfers */
diff --git a/drivers/usb/host/ehci-tegra.c b/drivers/usb/host/ehci-tegra.c
index d6433f206c17..10d51daa6a1b 100644
--- a/drivers/usb/host/ehci-tegra.c
+++ b/drivers/usb/host/ehci-tegra.c
@@ -282,7 +282,7 @@ static int tegra_ehci_hub_control(
 struct dma_aligned_buffer {
 	void *kmalloc_ptr;
 	void *old_xfer_buffer;
-	u8 data[0];
+	u8 data[];
 };
 
 static void free_dma_aligned_buffer(struct urb *urb)
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index ac5e967907d1..229b3de319e6 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -255,7 +255,7 @@ struct ehci_hcd {			/* one per controller */
 	struct list_head	tt_list;
 
 	/* platform-specific data -- must come last */
-	unsigned long		priv[0] __aligned(sizeof(s64));
+	unsigned long		priv[] __aligned(sizeof(s64));
 };
 
 /* convert between an HCD pointer and the corresponding EHCI_HCD */
@@ -460,7 +460,7 @@ struct ehci_iso_sched {
 	struct list_head	td_list;
 	unsigned		span;
 	unsigned		first_packet;
-	struct ehci_iso_packet	packet[0];
+	struct ehci_iso_packet	packet[];
 };
 
 /*
diff --git a/drivers/usb/host/fotg210.h b/drivers/usb/host/fotg210.h
index 1b4db95e5c43..6cee40ec65b4 100644
--- a/drivers/usb/host/fotg210.h
+++ b/drivers/usb/host/fotg210.h
@@ -490,7 +490,7 @@ struct fotg210_iso_packet {
 struct fotg210_iso_sched {
 	struct list_head	td_list;
 	unsigned		span;
-	struct fotg210_iso_packet	packet[0];
+	struct fotg210_iso_packet	packet[];
 };
 
 /*
diff --git a/drivers/usb/host/ohci.h b/drivers/usb/host/ohci.h
index b015b00774b2..27c26ca10bfd 100644
--- a/drivers/usb/host/ohci.h
+++ b/drivers/usb/host/ohci.h
@@ -337,7 +337,7 @@ typedef struct urb_priv {
 	u16			length;		// # tds in this request
 	u16			td_cnt;		// tds already serviced
 	struct list_head	pending;
-	struct td		*td [0];	// all TDs in this request
+	struct td		*td[];		// all TDs in this request
 
 } urb_priv_t;
 
@@ -435,7 +435,7 @@ struct ohci_hcd {
 	struct dentry		*debug_dir;
 
 	/* platform-specific data -- must come last */
-	unsigned long           priv[0] __aligned(sizeof(s64));
+	unsigned long           priv[] __aligned(sizeof(s64));
 
 };
 
diff --git a/drivers/usb/host/xhci-mtk.h b/drivers/usb/host/xhci-mtk.h
index 5ac458b7d2e0..acd56517215a 100644
--- a/drivers/usb/host/xhci-mtk.h
+++ b/drivers/usb/host/xhci-mtk.h
@@ -95,7 +95,7 @@ struct mu3h_sch_ep_info {
 	u32 pkts;
 	u32 cs_count;
 	u32 burst_mode;
-	u32 bw_budget_table[0];
+	u32 bw_budget_table[];
 };
 
 #define MU3C_U3_PORT_MAX 4
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index 3ecee10fdcdc..685180e1b98a 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -1642,7 +1642,7 @@ struct xhci_scratchpad {
 struct urb_priv {
 	int	num_tds;
 	int	num_tds_done;
-	struct	xhci_td	td[0];
+	struct	xhci_td	td[];
 };
 
 /*
@@ -1901,7 +1901,7 @@ struct xhci_hcd {
 
 	void			*dbc;
 	/* platform-specific data -- must come last */
-	unsigned long		priv[0] __aligned(sizeof(s64));
+	unsigned long		priv[] __aligned(sizeof(s64));
 };
 
 /* Platform specific overrides to generic XHCI hc_driver ops */
diff --git a/drivers/usb/serial/io_usbvend.h b/drivers/usb/serial/io_usbvend.h
index c38e87ac5ea9..0d1a5bb4636e 100644
--- a/drivers/usb/serial/io_usbvend.h
+++ b/drivers/usb/serial/io_usbvend.h
@@ -593,7 +593,7 @@ struct ti_i2c_desc {
 	__u8	Type;			// Type of descriptor
 	__le16	Size;			// Size of data only not including header
 	__u8	CheckSum;		// Checksum (8 bit sum of data only)
-	__u8	Data[0];		// Data starts here
+	__u8	Data[];		// Data starts here
 } __attribute__((packed));
 
 // for 5152 devices only (type 2 record)
@@ -601,7 +601,7 @@ struct ti_i2c_desc {
 struct ti_i2c_firmware_rec {
 	__u8	Ver_Major;		// Firmware Major version number
 	__u8	Ver_Minor;		// Firmware Minor version number
-	__u8	Data[0];		// Download starts here
+	__u8	Data[];		// Download starts here
 } __attribute__((packed));
 
 
diff --git a/drivers/usb/serial/ti_usb_3410_5052.c b/drivers/usb/serial/ti_usb_3410_5052.c
index ef23acc9b9ce..73075b9351c5 100644
--- a/drivers/usb/serial/ti_usb_3410_5052.c
+++ b/drivers/usb/serial/ti_usb_3410_5052.c
@@ -219,7 +219,7 @@ struct ti_write_data_bytes {
 	u8	bDataCounter;
 	__be16	wBaseAddrHi;
 	__be16	wBaseAddrLo;
-	u8	bData[0];
+	u8	bData[];
 } __packed;
 
 struct ti_read_data_request {
@@ -234,7 +234,7 @@ struct ti_read_data_bytes {
 	__u8	bCmdCode;
 	__u8	bModuleId;
 	__u8	bErrorCode;
-	__u8	bData[0];
+	__u8	bData[];
 } __packed;
 
 /* Interrupt struct */
diff --git a/include/linux/usb.h b/include/linux/usb.h
index ca1a5f1e1c5e..9f3c721c70dc 100644
--- a/include/linux/usb.h
+++ b/include/linux/usb.h
@@ -325,7 +325,7 @@ struct usb_interface_cache {
 
 	/* variable-length array of alternate settings for this interface,
 	 * stored in no particular order */
-	struct usb_host_interface altsetting[0];
+	struct usb_host_interface altsetting[];
 };
 #define	ref_to_usb_interface_cache(r) \
 		container_of(r, struct usb_interface_cache, ref)
@@ -1589,7 +1589,7 @@ struct urb {
 	int error_count;		/* (return) number of ISO errors */
 	void *context;			/* (in) context for completion */
 	usb_complete_t complete;	/* (in) completion routine */
-	struct usb_iso_packet_descriptor iso_frame_desc[0];
+	struct usb_iso_packet_descriptor iso_frame_desc[];
 					/* (in) ISO ONLY */
 };
 
diff --git a/include/linux/usb/audio-v2.h b/include/linux/usb/audio-v2.h
index cb9900b34b67..ead8c9a47c6a 100644
--- a/include/linux/usb/audio-v2.h
+++ b/include/linux/usb/audio-v2.h
@@ -153,7 +153,7 @@ struct uac2_feature_unit_descriptor {
 	__u8 bSourceID;
 	/* bmaControls is actually u32,
 	 * but u8 is needed for the hybrid parser */
-	__u8 bmaControls[0]; /* variable length */
+	__u8 bmaControls[]; /* variable length */
 } __attribute__((packed));
 
 /* 4.7.2.10 Effect Unit Descriptor */
diff --git a/include/linux/usb/audio-v3.h b/include/linux/usb/audio-v3.h
index 6b708434b7f9..c69a6f2e6837 100644
--- a/include/linux/usb/audio-v3.h
+++ b/include/linux/usb/audio-v3.h
@@ -109,7 +109,7 @@ struct uac3_feature_unit_descriptor {
 	__u8 bSourceID;
 	/* bmaControls is actually u32,
 	 * but u8 is needed for the hybrid parser */
-	__u8 bmaControls[0]; /* variable length */
+	__u8 bmaControls[]; /* variable length */
 	/* wFeatureDescrStr omitted */
 } __attribute__((packed));
 
diff --git a/include/linux/usb/gadget.h b/include/linux/usb/gadget.h
index 124462d65eac..9411c08a5c7e 100644
--- a/include/linux/usb/gadget.h
+++ b/include/linux/usb/gadget.h
@@ -767,7 +767,7 @@ struct usb_gadget_strings {
 
 struct usb_gadget_string_container {
 	struct list_head        list;
-	u8                      *stash[0];
+	u8                      *stash[];
 };
 
 /* put descriptor for string with that id into buf (buflen >= 256) */
diff --git a/include/linux/usb/hcd.h b/include/linux/usb/hcd.h
index 712b2a603645..e12105ed3834 100644
--- a/include/linux/usb/hcd.h
+++ b/include/linux/usb/hcd.h
@@ -228,7 +228,7 @@ struct usb_hcd {
 	/* The HC driver's private data is stored at the end of
 	 * this structure.
 	 */
-	unsigned long hcd_priv[0]
+	unsigned long hcd_priv[]
 			__attribute__ ((aligned(sizeof(s64))));
 };
 
diff --git a/include/linux/usbdevice_fs.h b/include/linux/usbdevice_fs.h
index 79aab0065ec8..14ea197ce37f 100644
--- a/include/linux/usbdevice_fs.h
+++ b/include/linux/usbdevice_fs.h
@@ -69,7 +69,7 @@ struct usbdevfs_urb32 {
 	compat_int_t error_count;
 	compat_uint_t signr;
 	compat_caddr_t usercontext; /* unused */
-	struct usbdevfs_iso_packet_desc iso_frame_desc[0];
+	struct usbdevfs_iso_packet_desc iso_frame_desc[];
 };
 
 struct usbdevfs_ioctl32 {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
