Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2338E1687A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 20:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvs+qzExqt9Pgwno33zJCbTsyoDtSLMb4TpsTn8UqIE=; b=Y6MXBe8LAjgkEN
	Fk+Kt7aIU+8l9Pu8xi8wQgjNDvDWDFQhq+KA0HOSY3zTOu+3xiPeSMItF5f8crjRC9KTI9q7hhv3s
	O0Vzh1TJT3LgXzfxol1s8zlYgK0SNmLHTOrxvejyxR27LAhgu0TA5/a06azu7My+qWyma/orbpSIQ
	zFH2c1B3pIB772t5dPSsG6WSP4HXAYrdFgePZ9dcoM41blRWZLHY5sgV2ki8sj3/vHT5T3nTV0lpZ
	ADKGhh7yS+3EIOPxNkzTneUkbP7Zx8SUpfho7wdb3mTPNJ0UdB+C5y8uZ0yUvGZVlT4sIw0xrrp3n
	8cK3me9sWi+LfomJLeGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5EFF-00019v-NI; Fri, 21 Feb 2020 19:45:53 +0000
Received: from plasma5.jpberlin.de ([80.241.58.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5EF5-00011e-Cs
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 19:45:45 +0000
Received: from spamfilter01.heinlein-hosting.de
 (spamfilter01.heinlein-hosting.de [80.241.56.115])
 by plasma.jpberlin.de (Postfix) with ESMTP id 7B235A72FA;
 Fri, 21 Feb 2020 20:45:34 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id TyEsdkVzIIMa; Fri, 21 Feb 2020 20:45:32 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id BE5F6B8EBC;
 Fri, 21 Feb 2020 20:45:32 +0100 (CET)
Received: from [10.25.40.95] (10.25.255.1) by MXS01.open-synergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.468.0; Fri, 21 Feb
 2020 20:45:31 +0100
Subject: Re: [PATCH] Add virtio SCMI device specification
To: Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 "virtio-comment@lists.oasis-open.org" <virtio-comment@lists.oasis-open.org>
References: <20200220193715.12097-1-peter.hilber@opensynergy.com>
 <DBBPR08MB47902B48AE4B6F9B446EF4BD82120@DBBPR08MB4790.eurprd08.prod.outlook.com>
From: Peter Hilber <peter.hilber@opensynergy.com>
Autocrypt: addr=peter.hilber@opensynergy.com; prefer-encrypt=mutual; keydata=
 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
 lbekkuPTQs/m
Message-ID: <88588437-56c5-f5ca-e17f-ca283c1d154b@opensynergy.com>
Date: Fri, 21 Feb 2020 20:45:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <DBBPR08MB47902B48AE4B6F9B446EF4BD82120@DBBPR08MB4790.eurprd08.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.25.255.1]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_114543_746561_83A3E5CD 
X-CRM114-Status: GOOD (  30.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.58.36 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Sudeep Holla <Sudeep.Holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21.02.20 12:22, Souvik Chakravarty wrote:
> Hi Peter,
> 
> The overall proposal is mostly in sync with the SCMI specification. A few comments below.

Hi Souvik,

thanks for the review.

> 
>> -----Original Message-----
>> From: Peter Hilber <peter.hilber@opensynergy.com>
>> Sent: Thursday, February 20, 2020 7:37 PM
>>
>> This patch proposes a new virtio device for the Arm SCMI protocol.
>>
>> The device provides a simple transport for the Arm SCMI protocol[1]. The
>> *S*ystem *C*ontroller *M*anagement *I*nterface protocol allows speaking to
> 
> Its "System Control and Management Interface" (some recurrences are there below which I haven't pointed out).
> 
>> embedded system controllers that allow orchestrating things like power
> 
> If we are using Virtio, the system controller is probably no longer "embedded".
> 
>> management, system state management and sensor access. The SCMI protocol
>> is used on SoCs where multiple cores and co-processors need access to these
>> resources.
>>
>> The virtio transport allows making use of this protocol in virtualized embedded
>> systems.
> 
> Again, what stops this from being deployed beyond embedded?
> There is scope for hypervisors which might implement the full SCMI device for non-embedded usages as well.

I will update the commit message and device intro text for the next
patch version according to the above comments.

> 
>>
>> OpenSynergy has a prototype implementation, and plans to upstream the Linux
>> kernel driver.
>>
>> The PDF output (with ugly fonts, apologies) is available at [2].
>>
>> [1] https://developer.arm.com/docs/den0056/b
>> [2]
>> https://share.mailbox.org/ajax/share/0d959c190d5a1c47d18eb2fd5a1c40ad81
>> e8d7897ab9ca1e/1/8/Mjk/MjkvOA
>>
>> Signed-off-by: Peter Hilber <peter.hilber@opensynergy.com>
>> ---
>>  conformance.tex  |  27 ++++-
>>  content.tex      |   1 +
>>  introduction.tex |   3 +
>>  virtio-scmi.tex  | 269
>> +++++++++++++++++++++++++++++++++++++++++++++++
>>  4 files changed, 297 insertions(+), 3 deletions(-)  create mode 100644 virtio-
>> scmi.tex
>>
> 
> <SNIP>
> 
>> +
>> +\subsubsection{cmdq Operation}\label{sec:Device Types / SCMI Device /
>> +Device Operation / cmdq Operation}
>> +
>> +Each buffer in the cmdq holds a single SCMI command once the buffer has
>> +been made available. When the buffer has been marked as used, it
>> +contains the SCMI response. Conceptually, each SCMI message transmitted
>> +over the cmdq uses its own short-lived SCMI A2P (agent to platform)
>> +channel.
> 
> Any special significance of the "short-lived" phrase. Does it have any implications on how it will interact with the SCMI driver?

"Short-lived" should just illustrate that the conceptual channel is used
for the lifetime of a single message.

The motivation to introduce this concept: It should be clear that both
device and driver may send multiple messages at once (subject to the
other requirements). But the SCMI spec might be read to imply e.g. that
the platform must wait until the P2A "channel is now free and can be
used to send a further message" (DEN0056B p. 12). For the virtio
transport, since each message uses its own (conceptual) channel, it's
clear that the message's channel can never be considered occupied by
another message.

I think the short-lived channels don't match the meaning of channels in
the Linux kernel SCMI driver. From that driver POV, all messages in the
A2P resp. P2A direction would still go over the same channel (i.e. one
struct scmi_chan_info for A2P, one for P2A).

I'd try to reword the paragraph so the intent becomes more clear.

> 
>> +
>> +The SCMI response is in the same virtio buffer as the corresponding
>> +SCMI command. The response contains the return values which SCMI
>> +specifies for each command, whether synchronous or asynchronous.
>> +Delayed responses are distinct SCMI messages transmitted over the eventq.
>> +
>> +Buffers in the cmdq contain both the request and the response. A
>> +request has the following layout:
>> +
>> +\begin{lstlisting}
>> +struct virtio_scmi_request {
>> +        le32 len;
>> +        le32 hdr;
>> +        u8 params[<actual parameters size>]; }; \end{lstlisting}
>> +
>> +The virtio_scmi_request fields are interpreted as follows:
>> +
>> +\begin{description}
>> +\item[\field{len}] (device-readable) size of \field{hdr} and actual
>> +\field{params} in bytes \item[\field{hdr}] (device-readable) contains
>> +the SCMI message header \item[\field{params}] (device-readable)
>> +comprises the SCMI message parameters \end{description}
>> +
>> +A cmdq response has the following layout:
>> +
>> +\begin{lstlisting}
>> +struct virtio_scmi_response {
>> +        le32 len;
>> +        le32 hdr;
>> +        u8 ret_values[<actual return values size>]; }; \end{lstlisting}
>> +
>> +The virtio_scmi_response fields are interpreted as follows:
>> +
> 
> <SNIP>
> 
>> +\subsubsection{eventq Operation}
>> +
>> +Each buffer in the eventq holds (once the buffer is marked as used)
>> +either a single SCMI notification, or a single SCMI delayed response.
>> +Conceptually, each SCMI message transmitted over the eventq uses its
>> +own short-lived SCMI P2A (platform to agent) channel. Buffers in the
>> +eventq have the following layout:
> 
> Same question. Any special significance of the "short-lived" phrase?

Please see answer above.

> 
>> +
>> +\begin{lstlisting}
>> +struct virtio_scmi_event_msg {
>> +        /* start of device-writable data */
>> +        le32 len;
>> +        le32 hdr;
>> +        u8 payload[<actual payload size>]; }; \end{lstlisting}
>> +
>> +\begin{description}
>> +\item[\field{len}] (device-writable) size of \field{hdr} and actual
>> +\field{payload} in bytes \item[\field{hdr}] (device-writable) contains
>> +the SCMI message header \item[\field{payload}] (device-writable)
>> +comprises the SCMI message payload \end{description}
>> +
>> +\devicenormative{\paragraph}{eventq Operation}{Device Types / SCMI
>> +Device / Device Operation / eventq Operation}
>> +
>> +If the device intends to send a notification and there are no available
>> +buffers in the eventq, the device SHOULD send a corresponding
>> +notification later, once enough buffers become available.
> 
> Any reason why this is mandated? It should be possible for the device to drop the notification if there is no buffer available since this provides an implicit flow control as well, since the guest in this case is clearly unable to consume the notifications at a sufficient rate.
> Can we make this Recommended instead?

I was concerned that dropping non-periodic notifications during a
temporary overload could be problematic. If virtio driver
authors/integrators had the same concern, this could result in
unnecessarily large virtqueues to cover infrequent scenarios. By adding
this requirement, I intended to shift the responsibility for the
overload scenario to the virtio device authors.

If this is considered over-engineering, I will demote it to a
recommendation.

Best regards,

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
