Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8FC1E007F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 18:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TX8Uvfm6b0eoMdsi75iTCV9yJn2DJHsaqSfc88ygCoE=; b=Ua6nKWTn+5kafH
	28nW+/DQKGkhTpeqqH/Bmd8IBjxPRrzqbOGBtI8FzAejfKblXGrHJLhMcKwoyqGMEV2iozv1uicPC
	AcH4z/8VvIaG2ZI11il1ma4FhZHVvDnVvNf4Fe/tFz7ySh/H5+WQyR3DQm29w0ibOnXZ/TC+dt0LC
	ol+cmDV34HToxXqdem/LTqEqSw7ms8p1i8jaRjQqKHl1TVxpeiYRkqSu/FgqK7zzstyjgcOYJir2+
	zGFaD3zfUvkslGBXXW7BNsCI/BrmN0G/53x6iUEkplyXCaF/0bLmXy4REw7BHhYUzV8jQt6VWMnME
	bPcYKByd7AVs2JrpNv2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jctLR-0002Rs-C7; Sun, 24 May 2020 16:19:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jctLJ-0002RC-NA
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 16:19:19 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F85520776;
 Sun, 24 May 2020 16:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590337157;
 bh=byWAOearMKEuXBmgx0LII0i67ProJOMxHQL8RV5rP/A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JvUcpJFKHz88LiH5SCQSet+ZpwD2HegE8hERUtZ/olPDY74CuXEAxm0uWSSUFPE9f
 7rQfrCtiDIrL/HdOJ2/joFHqfIEL3PkyfhvV34SKRSyVjGM8h5e+lJXZ/XlckA6c2q
 3l2j8O7BExBSwe5kdDzekrxQ3CMOY3SAuJkRMDSs=
Date: Sun, 24 May 2020 17:19:11 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v2 4/4] docs: counter: Document character device interface
Message-ID: <20200524171911.229e34f1@archlinux>
In-Reply-To: <db0a9206d31c82f8381316ef5ff9872bfb53665b.1589654470.git.vilhelm.gray@gmail.com>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
 <db0a9206d31c82f8381316ef5ff9872bfb53665b.1589654470.git.vilhelm.gray@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_091917_799174_B65B9AF1 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, david@lechnology.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 16 May 2020 15:20:02 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> This patch adds high-level documentation about the Counter subsystem
> character device interface.
> 
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---
>  Documentation/driver-api/generic-counter.rst | 112 +++++++++++++------
>  1 file changed, 76 insertions(+), 36 deletions(-)
> 
> diff --git a/Documentation/driver-api/generic-counter.rst b/Documentation/driver-api/generic-counter.rst
> index 8f85c30dea0b..58045b33b576 100644
> --- a/Documentation/driver-api/generic-counter.rst
> +++ b/Documentation/driver-api/generic-counter.rst
> @@ -223,19 +223,6 @@ whether an input line is differential or single-ended) and instead focus
>  on the core idea of what the data and process represent (e.g. position
>  as interpreted from quadrature encoding data).
>  
> -Userspace Interface
> -===================
> -
> -Several sysfs attributes are generated by the Generic Counter interface,
> -and reside under the /sys/bus/counter/devices/counterX directory, where
> -counterX refers to the respective counter device. Please see
> -Documentation/ABI/testing/sysfs-bus-counter for detailed
> -information on each Generic Counter interface sysfs attribute.
> -
> -Through these sysfs attributes, programs and scripts may interact with
> -the Generic Counter paradigm Counts, Signals, and Synapses of respective
> -counter devices.
> -
>  Driver API
>  ==========
>  
> @@ -377,13 +364,13 @@ driver can be exemplified by the following::
>                  +----------------------------+          |
>                  | Processes data from device |   -------------------
>                  |----------------------------|  / driver callbacks /
> -                | Type: unsigned long        |  -------------------
> +                | Type: u64                  |  -------------------
>                  | Value: 42                  |          |
>                  +----------------------------+          |
>                          |                               |
> -                 ----------------                       |
> -                / unsigned long /                       |
> -                ----------------                        |
> +                 ----------                             |
> +                / u64     /                             |
> +                ----------                              |
>                          |                               |
>                          |                               V
>                          |               +----------------------+
> @@ -398,25 +385,32 @@ driver can be exemplified by the following::
>                          |               / driver callbacks /
>                          |               -------------------
>                          |                       |
> -                +-------+                       |
> +                +-------+---------------+       |
> +                |                       |       |
> +                |               +-------|-------+
> +                |               |       |
> +                V               |       V
> +        +--------------------+  |  +---------------------+
> +        | Counter sysfs      |<-+->| Counter chrdev      |
> +        +--------------------+     +---------------------+
> +        | Translates to the  |     | Translates to the   |
> +        | standard Counter   |     | standard Counter    |
> +        | sysfs output       |     | character device    |
> +        |--------------------|     |---------------------+
> +        | Type: const char * |     | Type: u64           |
> +        | Value: "42"        |     | Value: 42           |
> +        +--------------------+     +---------------------+
>                  |                               |
> -                |               +---------------+
> -                |               |
> -                V               |
> -        +--------------------+  |
> -        | Counter sysfs      |<-+
> -        +--------------------+
> -        | Translates to the  |
> -        | standard Counter   |
> -        | sysfs output       |
> -        |--------------------|
> -        | Type: const char * |
> -        | Value: "42"        |
> -        +--------------------+
> -                |
> -         ---------------
> -        / const char * /
> -        ---------------
> +         ---------------                 ----------
> +        / const char * /                / u64     /
> +        ---------------                 ----------
> +                |                               |
> +                |                               V
> +                |                       +-----------+
> +                |                       | read      |
> +                |                       +-----------+
> +                |                       \ Count: 42 /
> +                |                        -----------
>                  |
>                  V
>          +--------------------------------------------------+
> @@ -425,7 +419,7 @@ driver can be exemplified by the following::
>          \ Count: "42"                                      /
>           --------------------------------------------------
>  
> -There are three primary components involved:
> +There are four primary components involved:
>  
>  Counter device driver
>  ---------------------
> @@ -445,3 +439,49 @@ and vice versa.
>  Please refer to the `Documentation/ABI/testing/sysfs-bus-counter` file
>  for a detailed breakdown of the available Generic Counter interface
>  sysfs attributes.
> +
> +Counter chrdev
> +--------------
> +Translates counter data to the standard Counter character device; data
> +is transferred via standard character device read/write calls.
> +
> +Sysfs Interface
> +===============
> +
> +Several sysfs attributes are generated by the Generic Counter interface,
> +and reside under the `/sys/bus/counter/devices/counterX` directory,
> +where `X` is to the respective counter device id. Please see
> +Documentation/ABI/testing/sysfs-bus-counter for detailed information on
> +each Generic Counter interface sysfs attribute.
> +
> +Through these sysfs attributes, programs and scripts may interact with
> +the Generic Counter paradigm Counts, Signals, and Synapses of respective
> +counter devices.
> +
> +Counter Character Device
> +========================
> +
> +Counter character device nodes are created under the `/dev` directory as
> +`counterX`, where `X` is the respective counter device id. Defines for
> +the standard Counter data types are exposed via the userspace
> +`include/uapi/linux/counter-types.h` file.
> +
> +The first 196095 bytes of the character device serve as a control
> +selection area where control exposure of desired Counter components and
> +extensions may be selected. Each byte serves as a boolean selection
> +indicator for a respective Counter component or extension. The format of
> +this area is as follows:
> +
> +* For each device extension, a byte is required.
> +* For each Signal, a byte is reserved for the Signal component, and a
> +  byte is reserved for each Signal extension.
> +* For each Count, a byte is reserved for the Count component, a byte is
> +  reserved for the count function, a byte is reserved for each Synapse
> +  action, and byte is reserved for each Count extension.
> +
> +The selected Counter components and extensions may then be interfaced
> +after the first 196095 bytes via standard character device read/write
> +operations. The number of bytes available for each component or
> +extension is dependent on their respective data type: u8 will have 1
> +byte available, u64 will have 8 bytes available, strings will have 64
> +bytes available, etc.

From what I recall of the earlier conversation, I'm not sure this is what
was being suggested.  I 'think' what people were after was a simple
read interface for just the counters  (+ timestamps). This would also
include the option to use select / poll on the counter.

Simply moving over to a read / write really doesn't help for ease of use.
I'm not sure what the right control approach is, or perhaps if we even
need one (could just output all counts provided by hardware once the
chrdev is opened). 

Jonathan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
