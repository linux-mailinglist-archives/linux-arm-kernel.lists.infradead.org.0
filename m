Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8FD1E7E9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 15:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0bCDkj9vL0RjRsfv7Ne93EfcooXX3zisYvDOJM+Lkk=; b=DcdnZCZyzfc/DD
	GusGQwdehejXieD87ABq8XrbbojuvflaACfHe0y+v152KrsggqOgQj3KyuXvLq7zGCn9acGpW+LKs
	ZbgZIvt8nh2QFSZAEEmlKuZiJGC2/LzuawaYoNrdam4a9ssRgO4Zf7UOwsVZdt77IQWmzkBOAFkc+
	FjU0gNF45kENsgHB/O2Q+97Y5KhqdU02OCoiKtI5/lwcNqh9WlxQANOV6skO6i75TOc51opUW6LtQ
	adAsap/uhSUpbXvurlFrFHd3EppVjTRxifmK+Aj3fU4xsb4QjlidTUncMb7HgoT9MVEcQWCvaFqoC
	vKKl6jOboZvALsdCHwjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jef26-0002EP-OG; Fri, 29 May 2020 13:26:46 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jef1r-00029M-Lf
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 13:26:33 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 904CF1C0389; Fri, 29 May 2020 15:26:14 +0200 (CEST)
Date: Fri, 29 May 2020 15:26:04 +0200
From: Pavel Machek <pavel@ucw.cz>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v2 4/4] docs: counter: Document character device interface
Message-ID: <20200529132604.GB1339@bug>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
 <db0a9206d31c82f8381316ef5ff9872bfb53665b.1589654470.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db0a9206d31c82f8381316ef5ff9872bfb53665b.1589654470.git.vilhelm.gray@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_062631_860217_6DD031EC 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, david@lechnology.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat 2020-05-16 15:20:02, William Breathitt Gray wrote:
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

This looks like very, very strange interface, and not described in detail
required to understand it.

Could you take a look at input subsystem, /dev/input/event0? Perhaps it is 
directly usable, and if not something similar should probably be acceptable.

Best regards,
									Pavel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
