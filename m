Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 958CB188DE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 20:21:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6w8HB6P0XkRw4EhSN2Fm+KdHcZshvgFYlTXXBu8kBUg=; b=KdIywAxPPz4UUn
	D3SP97gHlMSlh4HDhXngJjGma3OCDGDU++vmhLnc8zmgUCbO+gkhwh2KPJf8Qs1QVnM9SDT+u8veb
	Xz3CfDJpvxlqbNXGYYsIvhOeB3xugO4dwwt8vklpAyawYdLhN+5iMe2IPqOc0FnqxyS7B5Bj7m4z+
	0OayZUFPfsUzkdaRA2T6zm4hZIrpeuVD9M4ZkXlqkEgv04WkTSAr6nD7h6kcIjzd9ciIqJ5ucGlls
	9is/ZJjVTGIi/kieCnSFSJ5GUqeZzYOFusGGloaB4JEwUktxE6UOvzirjNkTtyQDUpqLiJNFduWLz
	yQu7RPADvvBNObBna1Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEHmU-0000sy-Ib; Tue, 17 Mar 2020 19:21:38 +0000
Received: from plasma4.jpberlin.de ([80.241.57.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEHmI-0000sF-HF
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 19:21:29 +0000
Received: from gerste.heinlein-support.de (gerste.heinlein-support.de
 [91.198.250.173])
 by plasma.jpberlin.de (Postfix) with ESMTP id DF1FBB9634;
 Tue, 17 Mar 2020 20:21:17 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([91.198.250.140])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id DSLs7-eCfS8U; Tue, 17 Mar 2020 20:21:15 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 65998B95B3;
 Tue, 17 Mar 2020 20:21:15 +0100 (CET)
Received: from os-lin-phi.open-synergy.com (10.25.255.1) by
 MXS01.open-synergy.com (10.25.10.17) with Microsoft SMTP Server (TLS) id
 14.3.487.0; Tue, 17 Mar 2020 20:21:14 +0100
From: Peter Hilber <peter.hilber@opensynergy.com>
To: <virtio-comment@lists.oasis-open.org>
Subject: [PATCH v3] Add virtio SCMI device specification
Date: Tue, 17 Mar 2020 20:20:53 +0100
Message-ID: <20200317192053.15665-1-peter.hilber@opensynergy.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227113735.23605-1-peter.hilber@opensynergy.com>
References: <20200227113735.23605-1-peter.hilber@opensynergy.com>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_122126_883014_6C63C84E 
X-CRM114-Status: GOOD (  21.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.57.33 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Hilber <peter.hilber@opensynergy.com>,
 virtio-dev@lists.oasis-open.org, Souvik.Chakravarty@arm.com,
 linux-arm-kernel@lists.infradead.org, Sudeep.Holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch proposes a new virtio device for the Arm SCMI protocol.

The device provides a simple transport for the Arm SCMI protocol[1]. The
*S*ystem *C*ontrol and *M*anagement *I*nterface protocol allows speaking
to system controllers that allow orchestrating things like power
management, system state management and sensor access. The SCMI protocol
is used on SoCs where multiple cores and co-processors need access to
these resources.

The virtio transport allows making use of this protocol in virtualized
systems.

[1] https://developer.arm.com/docs/den0056/b

Signed-off-by: Peter Hilber <peter.hilber@opensynergy.com>
---
Changes for v3:

- Add tentative device ID 32 in device section.

- Remove redundant 'len' fields. The length of the payload fields can
already be deduced from the generic virtqueue 'len' fields. Therefore,
remove the redundant device-specific 'len' fields.

- Reword requirement that driver must not put too small buffers into
eventq.

Changes for v2:

- CC virtio-dev list.
- Define size of erroneous delayed/not delayed responses.
- Use correct long name for SCMI.
- Remove restriction to `embedded' in commit message.
- Add motivation for conceptual per-message-channels.
- Device may now just drop notification if no buffers are available.

OpenSynergy has a prototype implementation (without device specific
features so far), and plans to upstream the Linux kernel driver.

The PDF output is available at [2].

[2] https://share.mailbox.org/ajax/share/056076e70571144f50c4ca7571144b319a1d7236dda1cd3b/1/8/MzQ/MzQvMQ

 conformance.tex  |  27 ++++-
 content.tex      |   1 +
 introduction.tex |   3 +
 virtio-scmi.tex  | 269 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 297 insertions(+), 3 deletions(-)
 create mode 100644 virtio-scmi.tex

diff --git a/conformance.tex b/conformance.tex
index b6fdec0..99f037a 100644
--- a/conformance.tex
+++ b/conformance.tex
@@ -15,7 +15,7 @@ \section{Conformance Targets}\label{sec:Conformance / Conformance Targets}
   \begin{itemize}
     \item Clause \ref{sec:Conformance / Driver Conformance}.
     \item One of clauses \ref{sec:Conformance / Driver Conformance / PCI Driver Conformance}, \ref{sec:Conformance / Driver Conformance / MMIO Driver Conformance} or \ref{sec:Conformance / Driver Conformance / Channel I/O Driver Conformance}.
-    \item One of clauses \ref{sec:Conformance / Driver Conformance / Network Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Block Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Console Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Entropy Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Traditional Memory Balloon Driver Conformance}, \ref{sec:Conformance / Driver Conformance / SCSI Host Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Input Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Crypto Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Socket Driver Conformance} or \ref{sec:Conformance / Driver Conformance / IOMMU Driver Conformance}.
+    \item One of clauses \ref{sec:Conformance / Driver Conformance / Network Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Block Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Console Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Entropy Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Traditional Memory Balloon Driver Conformance}, \ref{sec:Conformance / Driver Conformance / SCSI Host Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Input Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Crypto Driver Conformance}, \ref{sec:Conformance / Driver Conformance / Socket Driver Conformance}, \ref{sec:Conformance / Driver Conformance / IOMMU Driver Conformance} or \ref{sec:Conformance / Driver Conformance / SCMI Driver Conformance}.
     \item Clause \ref{sec:Conformance / Legacy Interface: Transitional Device and Transitional Driver Conformance}.
   \end{itemize}
 \item[Device] A device MUST conform to four conformance clauses:
@@ -32,8 +32,9 @@ \section{Conformance Targets}\label{sec:Conformance / Conformance Targets}
 \ref{sec:Conformance / Device Conformance / Input Device Conformance}, 
 \ref{sec:Conformance / Device Conformance / Crypto Device Conformance}, 
 \ref{sec:Conformance / Device Conformance / Socket Device Conformance}, 
-\ref{sec:Conformance / Device Conformance / RPMB Device Conformance} or 
-\ref{sec:Conformance / Device Conformance / IOMMU Device Conformance}.
+\ref{sec:Conformance / Device Conformance / RPMB Device Conformance},
+\ref{sec:Conformance / Device Conformance / IOMMU Device Conformance} or
+\ref{sec:Conformance / Device Conformance / SCMI Device Conformance}.
     \item Clause \ref{sec:Conformance / Legacy Interface: Transitional Device and Transitional Driver Conformance}.
   \end{itemize}
 \end{description}
@@ -220,6 +221,15 @@ \section{Conformance Targets}\label{sec:Conformance / Conformance Targets}
 \item \ref{drivernormative:Device Types / IOMMU Device / Device operations / Fault reporting}
 \end{itemize}
 
+\conformance{\subsection}{SCMI Driver Conformance}\label{sec:Conformance / Driver Conformance / SCMI Driver Conformance}
+
+An SCMI driver MUST conform to the following normative statements:
+
+\begin{itemize}
+\item \ref{drivernormative:Device Types / SCMI Device / Device Operation / cmdq Operation}
+\item \ref{drivernormative:Device Types / SCMI Device / Device Operation / Setting Up eventq Buffers}
+\end{itemize}
+
 \conformance{\section}{Device Conformance}\label{sec:Conformance / Device Conformance}
 
 A device MUST conform to the following normative statements:
@@ -408,6 +418,17 @@ \section{Conformance Targets}\label{sec:Conformance / Conformance Targets}
 \item \ref{devicenormative:Device Types / IOMMU Device / Device operations / Fault reporting}
 \end{itemize}
 
+\conformance{\subsection}{SCMI Device Conformance}\label{sec:Conformance / Device Conformance / SCMI Device Conformance}
+
+An SCMI device MUST conform to the following normative statements:
+
+\begin{itemize}
+\item \ref{devicenormative:Device Types / SCMI Device / Feature bits}
+\item \ref{devicenormative:Device Types / SCMI Device / Device Operation / cmdq Operation}
+\item \ref{devicenormative:Device Types / SCMI Device / Device Operation / eventq Operation}
+\item \ref{devicenormative:Device Types / SCMI Device / Device Operation / Shared Memory Operation}
+\end{itemize}
+
 \conformance{\section}{Legacy Interface: Transitional Device and Transitional Driver Conformance}\label{sec:Conformance / Legacy Interface: Transitional Device and Transitional Driver Conformance}
 A conformant implementation MUST be either transitional or
 non-transitional, see \ref{intro:Legacy
diff --git a/content.tex b/content.tex
index b91a132..6c97f04 100644
--- a/content.tex
+++ b/content.tex
@@ -6062,6 +6062,7 @@ \subsubsection{Legacy Interface: Framing Requirements}\label{sec:Device
 \input{virtio-fs.tex}
 \input{virtio-rpmb.tex}
 \input{virtio-iommu.tex}
+\input{virtio-scmi.tex}
 
 \chapter{Reserved Feature Bits}\label{sec:Reserved Feature Bits}
 
diff --git a/introduction.tex b/introduction.tex
index 33da3ec..3a2ee80 100644
--- a/introduction.tex
+++ b/introduction.tex
@@ -66,6 +66,9 @@ \section{Normative References}\label{sec:Normative References}
         \phantomsection\label{intro:eMMC}\textbf{[eMMC]} &
         eMMC Electrical Standard (5.1), JESD84-B51,
         \newline\url{http://www.jedec.org/sites/default/files/docs/JESD84-B51.pdf}\\
+	\phantomsection\label{intro:SCMI}\textbf{[SCMI]} &
+	Arm System Control and Management Interface, DEN0056,
+	\newline\url{https://developer.arm.com/docs/den0056/b}, version B and any future revisions\\
 
 \end{longtable}
 
diff --git a/virtio-scmi.tex b/virtio-scmi.tex
new file mode 100644
index 0000000..c728741
--- /dev/null
+++ b/virtio-scmi.tex
@@ -0,0 +1,269 @@
+\section{SCMI Device}\label{sec:Device Types / SCMI Device}
+
+An SCMI device implements the Arm System Control and Management
+Interface (SCMI). SCMI can be used for sensors, power state management,
+clock management and performance management among other things.
+
+This section relies on definitions from the \hyperref[intro:SCMI]{SCMI
+specification}.
+
+Virtio SCMI device and driver are mapped to SCMI platform and agent
+respectively. The device is visible to a particular SCMI agent. The
+device allows a guest to communicate as an SCMI agent using one or more
+SCMI protocols. The default SCMI protocols are defined in the
+\hyperref[intro:SCMI]{SCMI specification}. Virtio provides a transport
+medium for exchanging SCMI messages between the SCMI agent and platform.
+The virtio SCMI transport allows the queueing of multiple messages and
+responses.
+
+SCMI FastChannels are not supported.
+
+\subsection{Device ID}\label{sec:Device Types / SCMI Device / Device ID}
+
+32
+
+\subsection{Virtqueues}\label{sec:Device Types / SCMI Device / Virtqueues}
+
+\begin{description}
+\item[0] cmdq
+\item[1] eventq
+\end{description}
+
+The cmdq is used by the driver to send commands to the device. The
+device replies with responses (not delayed responses) over the cmdq.
+
+The eventq is used by the device to send notifications and delayed
+responses. The eventq only exists if VIRTIO_SCMI_F_P2A_CHANNELS was
+negotiated.
+
+\subsection{Feature bits}\label{sec:Device Types / SCMI Device / Feature bits}
+
+\begin{description}
+\item[VIRTIO_SCMI_F_P2A_CHANNELS (0)] Device implements some SCMI
+notifications, or delayed responses.
+\item[VIRTIO_SCMI_F_SHARED_MEMORY (1)] Device implements any SCMI
+statistics shared memory region.
+\end{description}
+
+VIRTIO_SCMI_F_P2A_CHANNELS is used to determine the existence of the
+eventq. The eventq is required for SCMI notifications and delayed
+responses.
+
+VIRTIO_SCMI_F_SHARED_MEMORY is used to determine whether the device
+provides any SCMI statistics shared memory region. SCMI statistics
+shared memory regions are defined by some SCMI protocols.
+
+The SCMI protocols provide the PROTOCOL_MESSAGE_ATTRIBUTES commands to
+inquire about the particular SCMI notifications and delayed responses
+implemented by the device. The SCMI protocols provide additional
+commands to detect other features implemented by the device.
+
+\devicenormative{\subsubsection}{Feature bits}{Device Types / SCMI Device / Feature bits}
+
+The device MUST offer VIRTIO_SCMI_F_P2A_CHANNELS if the device can
+implement at least one SCMI notification, or delayed response.
+
+The device MUST offer VIRTIO_SCMI_F_SHARED_MEMORY if the device can
+implement at least one SCMI statistics shared memory region.
+
+\subsection{Device configuration layout}\label{sec:Device Types / SCMI Device / Device configuration layout}
+
+There is no configuration data for the device.
+
+\subsection{Device Initialization}\label{sec:Device Types / SCMI Device / Device Initialization}
+
+The
+\hyperref[sec:General Initialization And Device Operation / Device Initialization]{general
+requirements on device initialization} apply.
+
+\subsection{Device Operation}\label{sec:Device Types / SCMI Device / Device Operation}
+
+The SCMI transport used for the device puts each SCMI message into a
+dedicated virtio buffer. The driver uses the cmdq for transmitting SCMI
+commands and receiving the corresponding SCMI responses. The device uses
+the eventq for transmitting SCMI notifications and delayed responses.
+Each message includes an SCMI protocol header and payload, as defined by
+the \hyperref[intro:SCMI]{SCMI specification}.
+
+\subsubsection{cmdq Operation}\label{sec:Device Types / SCMI Device / Device Operation / cmdq Operation}
+
+Each buffer in the cmdq holds a single SCMI command once the buffer has
+been made available. When the buffer has been marked as used, it
+contains the SCMI response. An arbitrary number of such SCMI messages
+can be in transit at the same time. Conceptually, each SCMI message in
+the cmdq uses its own SCMI A2P (agent to platform) channel.
+
+The SCMI response is in the same virtio buffer as the corresponding SCMI
+command. The response contains the return values which SCMI specifies
+for each command, whether synchronous or asynchronous. Delayed responses
+are distinct SCMI messages transmitted over the eventq.
+
+Buffers in the cmdq contain both the request and the response. A request
+has the following layout:
+
+\begin{lstlisting}
+struct virtio_scmi_request {
+        le32 hdr;
+        u8 params[<actual parameters size>];
+};
+\end{lstlisting}
+
+The virtio_scmi_request fields are interpreted as follows:
+
+\begin{description}
+\item[\field{hdr}] (device-readable) contains the SCMI message header
+\item[\field{params}] (device-readable) comprises the SCMI message
+parameters
+\end{description}
+
+A cmdq response has the following layout:
+
+\begin{lstlisting}
+struct virtio_scmi_response {
+        le32 hdr;
+        u8 ret_values[<actual return values size>];
+};
+\end{lstlisting}
+
+The virtio_scmi_response fields are interpreted as follows:
+
+\begin{description}
+\item[\field{hdr}] (device-writable) contains the SCMI message header
+\item[\field{ret_values}] (device-writable) comprises the SCMI message
+return values
+\end{description}
+
+If VIRTIO_SCMI_F_P2A_CHANNELS was not negotiated, the device responds to
+SCMI commands as if no SCMI notifications or delayed responses were
+implemented.
+
+\devicenormative{\paragraph}{cmdq Operation}{Device Types / SCMI Device / Device Operation / cmdq Operation}
+
+The device MAY process available commands out of order and in parallel.
+
+The device MUST process all available commands eventually, even in the
+case of bursts of multiple command messages.
+
+If the \field{status} field in the \field{virtio_scmi_response}
+\field{ret_values} has a value other than SUCCESS, the device MUST set
+the size of \field{ret_values} to the size of the \field{status} field.
+
+If the driver requests an SCMI notification or a delayed response and
+there are currently NOT enough available buffers in the eventq, the
+device SHOULD still return SCMI status code SUCCESS.
+
+If VIRTIO_SCMI_F_P2A_CHANNELS was not negotiated, the device MUST deny
+any request for an SCMI notification or a delayed response by returning
+SCMI status code NOT_SUPPORTED.
+
+If VIRTIO_SCMI_F_P2A_CHANNELS was not negotiated, the device MUST NOT
+indicate in the PROTOCOL_MESSAGE_ATTRIBUTES return values that any SCMI
+notification, or delayed response, is implemented.
+
+\drivernormative{\paragraph}{cmdq Operation}{Device Types / SCMI Device / Device Operation / cmdq Operation}
+
+Before sending a command, the driver MUST wait for responses to all
+commands whose completion the driver considers prerequisites to
+executing the command.
+
+With every command message, the driver MUST provide enough
+device-writable memory to enable the device to return corresponding
+return values.
+
+If VIRTIO_SCMI_F_P2A_CHANNELS was not negotiated, the driver MUST NOT
+request any SCMI notification, nor any delayed response.
+
+\subsubsection{Setting Up eventq Buffers}
+
+The driver has to populate the eventq before the device can use it.
+
+\drivernormative{\paragraph}{Setting Up eventq Buffers}{Device Types / SCMI Device / Device Operation / Setting Up eventq Buffers}
+
+If VIRTIO_SCMI_F_P2A_CHANNELS was negotiated, the driver SHOULD populate
+the eventq with buffers.
+
+The driver MUST NOT put device-readable descriptors into the eventq.
+
+The driver MUST NOT put into the eventq any buffer which is smaller than
+the largest SCMI P2A (platform to agent) message which the driver will
+request.
+
+\subsubsection{eventq Operation}
+
+Each buffer in the eventq holds (once the buffer is marked as used)
+either a single SCMI notification, or a single SCMI delayed response. An
+arbitrary number of such SCMI messages can be in transit at the same
+time. Conceptually, each SCMI message transmitted over the eventq uses
+its own SCMI P2A (platform to agent) channel. Buffers in the eventq have
+the following layout:
+
+\begin{lstlisting}
+struct virtio_scmi_event_msg {
+        /* start of device-writable data */
+        le32 hdr;
+        u8 payload[<actual payload size>];
+};
+\end{lstlisting}
+
+\begin{description}
+\item[\field{hdr}] (device-writable) contains the SCMI message header
+\item[\field{payload}] (device-writable) comprises the SCMI message
+payload
+\end{description}
+
+\devicenormative{\paragraph}{eventq Operation}{Device Types / SCMI Device / Device Operation / eventq Operation}
+
+If the device intends to send a notification and there are no available
+buffers in the eventq, the device MAY drop the notification, or send a
+corresponding notification later, once enough buffers become available.
+
+The device MAY send the notification later if the events which cause the
+notification take place in quick succession.
+
+If the device sends the notification later, the device MAY send the
+notification with updated data, unless the specific SCMI protocol
+disallows this.
+
+If the device intends to send a notification and there are available
+buffers, but one of the buffers is too small to fit the notification,
+the device MAY omit the notification.
+
+If the device intends to send a delayed response and there are no
+available buffers in the eventq, the device MUST send the corresponding
+delayed response once enough buffers become available.
+
+If the \field{status} field in a delayed response \field{payload} has a
+value other than SUCCESS, the device MUST set the size of
+\field{payload} to the size of the \field{status} field.
+
+\subsubsection{Shared Memory Operation}
+
+Various SCMI protocols define statistics shared memory regions (for
+statistics and sensor values).
+
+\devicenormative{\paragraph}{Shared Memory Operation}{Device Types / SCMI Device / Device Operation / Shared Memory Operation}
+
+If VIRTIO_SCMI_F_SHARED_MEMORY was negotiated, the device MAY implement
+an SCMI statistics shared memory region using a virtio shared memory
+region.
+
+If the device implements a shared memory region, the device MUST assign
+the corresponding shmid as per the following table:
+
+\begin{tabular}{|l|l|}
+\hline
+SCMI statistics shared memory region & Virtio shmid \\
+\hline \hline
+Power state statistics shared memory region & 1 \\
+\hline
+Performance domain statistics shared memory region & 2 \\
+\hline
+Sensor Values Shared Memory & 3 \\
+\hline
+Reserved for future use & 4 to 0x7F \\
+\hline
+Vendor-specific statistics shared memory regions & 0x80 to 0xFF \\
+\hline
+Reserved for future use & 0x100 and greater \\
+\hline
+\end{tabular}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
