Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01541E0072
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 18:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nw0+A7eSlJ4Lu2oAnoTo+O2Exptz0Mn7izyF9nS6ygU=; b=iNVDFYiHct34/n
	TRRxBD3T5gNN1qMIcuBvlb5DLNgVWbvFTpcU/0ofC+QtEgrSQD8OHEpAzzzPBoKGJy1HohCLfrzMn
	vlRBGIrjGX86PTW61+CtMOINFAvjeb10KEs6zdl3HmU8qc84j0YkMqNiAGMcNu4tr95IvVFjA+/3q
	lRZEchkNe9XAB+JlCTPuU1+xs//kn3cFgyrjJ3pOtPKuJ3XtxZJqpMousIXMsuYYAwW6SkHUxotdC
	eYmLCoi2ekgR5lYR1WzXWDc4JdscTyvksnoaGkVxvzZ1mmUhoIX8x5Iqk4rEyHr5wSli6GyGmfxq7
	fiil5NmkONyPdh8nbgYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jctEr-00080N-8U; Sun, 24 May 2020 16:12:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jctEh-0007zZ-4m
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 16:12:28 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FCFD20776;
 Sun, 24 May 2020 16:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590336746;
 bh=MDvWQIJHTHAoKsAitZGo0oA2UKmgx6b2YNAAIpEubio=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GRgqbDTTw/YSjWOzZxwdoMCESdPizOXOj7/+zLwWWLqYxuuKLxDYJLSXoiYNPdMsQ
 zqnhSLuTq7iLuEioNJaoBZ2Bk7imo4NTJzPdXgWW34brPREnCTTc6miguoIUChA7hE
 6M2011hYR/DWkRaqbMm8G+AqTl3BjwYn35ukqrx8=
Date: Sun, 24 May 2020 17:12:21 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v2 2/4] docs: counter: Update to reflect sysfs
 internalization
Message-ID: <20200524171221.3ccb8c2f@archlinux>
In-Reply-To: <2a8d7fe2e0ea435e19c89ba2aff15218c7b6eb91.1589654470.git.vilhelm.gray@gmail.com>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
 <2a8d7fe2e0ea435e19c89ba2aff15218c7b6eb91.1589654470.git.vilhelm.gray@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_091227_230234_BCE5F56A 
X-CRM114-Status: GOOD (  31.25  )
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

On Sat, 16 May 2020 15:20:00 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> The Counter subsystem architecture and driver implementations have
> changed in order to handle Counter sysfs interactions in a more
> consistent way. This patch updates the Generic Counter interface
> documentation to reflect the changes.
> 
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
Looks good to me.

Jonathan

> ---
>  Documentation/driver-api/generic-counter.rst | 215 +++++++++++++------
>  1 file changed, 149 insertions(+), 66 deletions(-)
> 
> diff --git a/Documentation/driver-api/generic-counter.rst b/Documentation/driver-api/generic-counter.rst
> index e622f8f6e56a..8f85c30dea0b 100644
> --- a/Documentation/driver-api/generic-counter.rst
> +++ b/Documentation/driver-api/generic-counter.rst
> @@ -250,8 +250,8 @@ for defining a counter device.
>  .. kernel-doc:: drivers/counter/counter.c
>     :export:
>  
> -Implementation
> -==============
> +Driver Implementation
> +=====================
>  
>  To support a counter device, a driver must first allocate the available
>  Counter Signals via counter_signal structures. These Signals should
> @@ -267,25 +267,58 @@ respective counter_count structure. These counter_count structures are
>  set to the counts array member of an allocated counter_device structure
>  before the Counter is registered to the system.
>  
> -Driver callbacks should be provided to the counter_device structure via
> -a constant counter_ops structure in order to communicate with the
> -device: to read and write various Signals and Counts, and to set and get
> -the "action mode" and "function mode" for various Synapses and Counts
> -respectively.
> +Driver callbacks must be provided to the counter_device structure in
> +order to communicate with the device: to read and write various Signals
> +and Counts, and to set and get the "action mode" and "function mode" for
> +various Synapses and Counts respectively.
>  
>  A defined counter_device structure may be registered to the system by
>  passing it to the counter_register function, and unregistered by passing
>  it to the counter_unregister function. Similarly, the
> -devm_counter_register and devm_counter_unregister functions may be used
> -if device memory-managed registration is desired.
> -
> -Extension sysfs attributes can be created for auxiliary functionality
> -and data by passing in defined counter_device_ext, counter_count_ext,
> -and counter_signal_ext structures. In these cases, the
> -counter_device_ext structure is used for global/miscellaneous exposure
> -and configuration of the respective Counter device, while the
> -counter_count_ext and counter_signal_ext structures allow for auxiliary
> -exposure and configuration of a specific Count or Signal respectively.
> +devm_counter_register function may be used if device memory-managed
> +registration is desired.
> +
> +The struct counter_data structure is used to define counter extensions
> +for Signals, Synapses, and Counts.
> +
> +The "type" member specifies the type of data (e.g. unsigned long,
> +boolean, etc.) handled by this extension. The "read" and "write" members
> +can then be set by the counter device driver with callbacks to handle
> +that data.
> +
> +Convenience macros such as `COUNTER_DATA_COUNT_U64` are provided for use
> +by driver authors. In particular, driver authors are expected to use
> +the provided macros for standard Counter subsystem attributes in order
> +to maintain a consistent interface for userspace. For example, a counter
> +device driver may define several standard attributes like so::
> +
> +	struct counter_data count_ext[] = {
> +		COUNTER_DATA_DIRECTION(count_direction_read),
> +		COUNTER_DATA_ENABLE(count_enable_read, count_enable_write),
> +		COUNTER_DATA_CEILING(count_ceiling_read, count_ceiling_write),
> +	};
> +
> +This makes it intuitive to see, add, and modify the attributes that are
> +supported by this driver ("direction", "enable", and "ceiling") and to
> +maintain this code without getting lost in a web of struct braces.
> +
> +Callbacks must match the function type expected for the respective
> +component or extension. These function types are defined in the struct
> +counter_data structure as the "`*_read`" and "`*_write`" union members.
> +
> +The corresponding callback prototypes for the extensions mentioned in
> +the previous example above would be::
> +
> +	int count_direction_read(struct counter_device *counter,
> +				 struct counter_count *count, u8 *direction);
> +	int count_enable_read(struct counter_device *counter,
> +			      struct counter_count *count, u8 *enable);
> +	int count_enable_write(struct counter_device *counter,
> +			       struct counter_count *count, u8 enable);
> +	int count_ceiling_read(struct counter_device *counter,
> +			       struct counter_count *count, u64 *ceiling);
> +	int count_ceiling_write(struct counter_device *counter,
> +				struct counter_count *count, u64 ceiling);
>  
>  Determining the type of extension to create is a matter of scope.
>  
> @@ -313,52 +346,102 @@ Determining the type of extension to create is a matter of scope.
>    chip overheated via a device extension called "error_overtemp":
>    /sys/bus/counter/devices/counterX/error_overtemp
>  
> -Architecture
> -============
> -
> -When the Generic Counter interface counter module is loaded, the
> -counter_init function is called which registers a bus_type named
> -"counter" to the system. Subsequently, when the module is unloaded, the
> -counter_exit function is called which unregisters the bus_type named
> -"counter" from the system.
> -
> -Counter devices are registered to the system via the counter_register
> -function, and later removed via the counter_unregister function. The
> -counter_register function establishes a unique ID for the Counter
> -device and creates a respective sysfs directory, where X is the
> -mentioned unique ID:
> -
> -    /sys/bus/counter/devices/counterX
> -
> -Sysfs attributes are created within the counterX directory to expose
> -functionality, configurations, and data relating to the Counts, Signals,
> -and Synapses of the Counter device, as well as options and information
> -for the Counter device itself.
> -
> -Each Signal has a directory created to house its relevant sysfs
> -attributes, where Y is the unique ID of the respective Signal:
> -
> -    /sys/bus/counter/devices/counterX/signalY
> -
> -Similarly, each Count has a directory created to house its relevant
> -sysfs attributes, where Y is the unique ID of the respective Count:
> -
> -    /sys/bus/counter/devices/counterX/countY
> -
> -For a more detailed breakdown of the available Generic Counter interface
> -sysfs attributes, please refer to the
> -Documentation/ABI/testing/sysfs-bus-counter file.
> -
> -The Signals and Counts associated with the Counter device are registered
> -to the system as well by the counter_register function. The
> -signal_read/signal_write driver callbacks are associated with their
> -respective Signal attributes, while the count_read/count_write and
> -function_get/function_set driver callbacks are associated with their
> -respective Count attributes; similarly, the same is true for the
> -action_get/action_set driver callbacks and their respective Synapse
> -attributes. If a driver callback is left undefined, then the respective
> -read/write permission is left disabled for the relevant attributes.
> -
> -Similarly, extension sysfs attributes are created for the defined
> -counter_device_ext, counter_count_ext, and counter_signal_ext
> -structures that are passed in.
> +Subsystem Architecture
> +======================
> +
> +Counter drivers pass and take data natively (i.e. `u8`, `u64`, `char *`,
> +etc.) and the shared counter module handles the translation between the
> +sysfs interface. This gurantees a standard userspace interface for all
> +counter drivers, and helps generalize the Generic Counter driver ABI in
> +order to support the Generic Counter chrdev interface without
> +significant changes to the existing counter drivers.
> +
> +A high-level view of how a count value is passed down from a counter
> +driver can be exemplified by the following::
> +
> +       Count data request:
> +       ~~~~~~~~~~~~~~~~~~~
> +                 ----------------------
> +                / Counter device       \
> +                +----------------------+
> +                | Count register: 0x28 |
> +                +----------------------+
> +                        |
> +                 -----------------
> +                / raw count data /
> +                -----------------
> +                        |
> +                        V
> +                +----------------------------+
> +                | Counter device driver      |----------+
> +                +----------------------------+          |
> +                | Processes data from device |   -------------------
> +                |----------------------------|  / driver callbacks /
> +                | Type: unsigned long        |  -------------------
> +                | Value: 42                  |          |
> +                +----------------------------+          |
> +                        |                               |
> +                 ----------------                       |
> +                / unsigned long /                       |
> +                ----------------                        |
> +                        |                               |
> +                        |                               V
> +                        |               +----------------------+
> +                        |               | Counter core         |
> +                        |               +----------------------+
> +                        |               | Routes device driver |
> +                        |               | callbacks to the     |
> +                        |               | userspace interfaces |
> +                        |               +----------------------+
> +                        |                       |
> +                        |                -------------------
> +                        |               / driver callbacks /
> +                        |               -------------------
> +                        |                       |
> +                +-------+                       |
> +                |                               |
> +                |               +---------------+
> +                |               |
> +                V               |
> +        +--------------------+  |
> +        | Counter sysfs      |<-+
> +        +--------------------+
> +        | Translates to the  |
> +        | standard Counter   |
> +        | sysfs output       |
> +        |--------------------|
> +        | Type: const char * |
> +        | Value: "42"        |
> +        +--------------------+
> +                |
> +         ---------------
> +        / const char * /
> +        ---------------
> +                |
> +                V
> +        +--------------------------------------------------+
> +        | `/sys/bus/counter/devices/counterX/countY/count` |
> +        +--------------------------------------------------+
> +        \ Count: "42"                                      /
> +         --------------------------------------------------
> +
> +There are three primary components involved:
> +
> +Counter device driver
> +---------------------
> +Communicates with the hardware device to read/write data; e.g. counter
> +drivers for quadrature encoders, timers, etc.
> +
> +Counter core
> +------------
> +Registers the counter device driver to the system so that the respective
> +callbacks are called during userspace interaction.
> +
> +Counter sysfs
> +-------------
> +Translates counter data to the standard Counter sysfs interface format
> +and vice versa.
> +
> +Please refer to the `Documentation/ABI/testing/sysfs-bus-counter` file
> +for a detailed breakdown of the available Generic Counter interface
> +sysfs attributes.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
