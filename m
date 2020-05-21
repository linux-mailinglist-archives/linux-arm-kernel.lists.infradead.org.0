Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6B81DD59D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 20:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwILxOu5y6THQmX9N7EAxlQj9ZmH/LKPjW5egmwK9m0=; b=eaclrBhTVRp/ug
	FeLAZo9dAvIPGXQInSROgamI88pc31H/wB5B8vSyoiMcMsEvw4vK2vqD5H1cf7GC+LoZ1HW2zv6qg
	K+3eH2koiSpP898XUnVFFxJKlwl/y7KzYYd3+UmvcxDwfIgQCYa8J6F63KMI0FD3LZ8P+fm6Ki56J
	GJf/w03JssnFqAIFxjoQOuDapRXarSRLswtnYPRMBb2qFhElAA+0wBEmg5VHEp6J86rEIkEW8BOzl
	AY8K/neNus+SlglupDWh5J2jCE5axQVNRjdcFd/tYdKIZs467PNjJV2OGfXVQhStgmnxuAniAku73
	9q50DlkkmV9cY1YbHxOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbpaD-0007dM-Gw; Thu, 21 May 2020 18:06:17 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbpZa-0007IF-2U
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 18:05:40 +0000
Received: by mail-pj1-x1043.google.com with SMTP id q9so3460452pjm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 11:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1Up8qkF4cjilL/ZHyB5Bti1REG3tn0Q9Ij4yShDTuk0=;
 b=ICYfQBy9+4T1yNxaehRgUV5NinDRgsWzm131ZbZYuMBqM7UF6wlkgyFH+Tz1nEuRvt
 GWRxYoHmtruox8IHH50VnJvPRZLKUwkreLgeBDFZ3oY3r9Zg4OPy1Mi3g7Q6oFSzPZN8
 QSubC7A3cGy5rHikw6hXeYvCdJBGRtWzbyoViRbRyzWTxaPxDagw9vRok++pwKtGTpGO
 lqKfq9oQ+AmxGjnarfbYyPw0xS7fhnK6GbJJXfecrLQuMZ+C52s88X46zirIi88Wci1G
 qp8GscF20pr3+1CUUVzf3MSgfAg+BhZMhlgGu3FjXXEhr7zY9G/C0Rl5Ns1btCyiNjx+
 H3Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1Up8qkF4cjilL/ZHyB5Bti1REG3tn0Q9Ij4yShDTuk0=;
 b=s9LYPe4af3GSFhmEnzk3DU913MdSYstx57JPlkTzr/eNeWMZAUC2MoQ5ctTp+l7muN
 WdJvFwOKOrdMHngbuiWbWk4QemmY7rW0p6izqZqXgUotV9ekp7s8q02lWT2/n/yGO1G8
 1ohrJATs1VECV81/SATOi+HC7l5Wtp+GfqkNN10urkdRKVHnyF/X6jw4y19S4FfDFEuX
 sMQhLHAHxfQsJZtM4u/LIJyJoHqyOMT4t8iNl9G6cn0/ID/SNKLrQd9/a5QeiDEfGUcV
 THhi3K+0j5V+twvAYmf0exU7P42v0G2i+/7K+tla6rTtQAEGo3Xe2+yql+Vnn0Ui7kTZ
 Ie8A==
X-Gm-Message-State: AOAM5303EAAV/3I/uljgJh1Jt5wVa+skSLvoLB7h4mEM4zAY0BB/KOdu
 SshD5ZCL8n42EfzkYNyHaOJk7A==
X-Google-Smtp-Source: ABdhPJzZMDSCLVXsbzsNBFZxhsFJpiG/gfq4SVdO6gN3E2uEoId967yamU8j7kiR/njs46wZO9Lemw==
X-Received: by 2002:a17:902:b712:: with SMTP id
 d18mr10108946pls.143.1590084335972; 
 Thu, 21 May 2020 11:05:35 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z29sm5133215pff.120.2020.05.21.11.05.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 11:05:35 -0700 (PDT)
Date: Thu, 21 May 2020 11:04:17 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 3/4] remoteproc: add support for a new 64-bit trace version
Message-ID: <20200521180417.GJ408178@builder.lan>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-4-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325204701.16862-4-s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_110538_163972_A58324E4 
X-CRM114-Status: GOOD (  28.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic Pallardy <loic.pallardy@st.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel@vger.kernel.org, Clement Leger <cleger@kalray.eu>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 25 Mar 13:47 PDT 2020, Suman Anna wrote:

> Introduce a new trace entry resource structure that accommodates
> a 64-bit device address to support 64-bit processors. This is to
> be used using an overloaded version value of 1 in the upper 32-bits
> of the previous resource type field. The new resource still uses
> 32-bits for the length field (followed by a 32-bit reserved field,
> so can be updated in the future), which is a sufficiently large
> trace buffer size. A 32-bit padding field also had to be added
> to align the device address on a 64-bit boundary, and match the
> usage on the firmware side.
> 
> The remoteproc debugfs logic also has been adjusted accordingly.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  drivers/remoteproc/remoteproc_core.c    | 40 ++++++++++++++++++++-----
>  drivers/remoteproc/remoteproc_debugfs.c | 37 ++++++++++++++++++-----
>  include/linux/remoteproc.h              | 26 ++++++++++++++++
>  3 files changed, 87 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 53bc37c508c6..b9a097990862 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -609,21 +609,45 @@ void rproc_vdev_release(struct kref *ref)
>   *
>   * Returns 0 on success, or an appropriate error code otherwise
>   */
> -static int rproc_handle_trace(struct rproc *rproc, struct fw_rsc_trace *rsc,
> +static int rproc_handle_trace(struct rproc *rproc, void *rsc,
>  			      int offset, int avail, u16 ver)
>  {
>  	struct rproc_debug_trace *trace;
>  	struct device *dev = &rproc->dev;
> +	struct fw_rsc_trace *rsc1;
> +	struct fw_rsc_trace2 *rsc2;
>  	char name[15];
> +	size_t rsc_size;
> +	u32 reserved;
> +	u64 da;
> +	u32 len;
> +
> +	if (!ver) {

This looks like a switch to me, but I also do think this looks rather
crude, if you spin off the tail of this function and call it from a
rproc_handle_trace() and rproc_handle_trace64() I believe this would be
cleaner.

> +		rsc1 = (struct fw_rsc_trace *)rsc;
> +		rsc_size = sizeof(*rsc1);
> +		reserved = rsc1->reserved;
> +		da = rsc1->da;
> +		len = rsc1->len;
> +	} else if (ver == 1) {
> +		rsc2 = (struct fw_rsc_trace2 *)rsc;
> +		rsc_size = sizeof(*rsc2);
> +		reserved = rsc2->reserved;
> +		da = rsc2->da;
> +		len = rsc2->len;
> +	} else {
> +		dev_err(dev, "unsupported trace rsc version %d\n", ver);

If we use "type" to describe your 64-bit-da-trace then this sanity check
would have been taken care of by the core.

> +		return -EINVAL;
> +	}
>  
> -	if (sizeof(*rsc) > avail) {
> +	if (rsc_size > avail) {
>  		dev_err(dev, "trace rsc is truncated\n");
>  		return -EINVAL;
>  	}
>  
>  	/* make sure reserved bytes are zeroes */
> -	if (rsc->reserved) {
> -		dev_err(dev, "trace rsc has non zero reserved bytes\n");
> +	if (reserved) {
> +		dev_err(dev, "trace rsc has non zero reserved bytes, value = 0x%x\n",
> +			reserved);
>  		return -EINVAL;
>  	}
>  
> @@ -632,8 +656,8 @@ static int rproc_handle_trace(struct rproc *rproc, struct fw_rsc_trace *rsc,
>  		return -ENOMEM;
>  
>  	/* set the trace buffer dma properties */
> -	trace->trace_mem.len = rsc->len;
> -	trace->trace_mem.da = rsc->da;
> +	trace->trace_mem.len = len;
> +	trace->trace_mem.da = da;
>  
>  	/* set pointer on rproc device */
>  	trace->rproc = rproc;
> @@ -652,8 +676,8 @@ static int rproc_handle_trace(struct rproc *rproc, struct fw_rsc_trace *rsc,
>  
>  	rproc->num_traces++;
>  
> -	dev_dbg(dev, "%s added: da 0x%x, len 0x%x\n",
> -		name, rsc->da, rsc->len);
> +	dev_dbg(dev, "%s added: da 0x%llx, len 0x%x\n",
> +		name, da, len);
>  
>  	return 0;
>  }
> diff --git a/drivers/remoteproc/remoteproc_debugfs.c b/drivers/remoteproc/remoteproc_debugfs.c
> index 3560eed7a360..ff43736db45a 100644
> --- a/drivers/remoteproc/remoteproc_debugfs.c
> +++ b/drivers/remoteproc/remoteproc_debugfs.c
> @@ -192,7 +192,8 @@ static int rproc_rsc_table_show(struct seq_file *seq, void *p)
>  	struct resource_table *table = rproc->table_ptr;
>  	struct fw_rsc_carveout *c;
>  	struct fw_rsc_devmem *d;
> -	struct fw_rsc_trace *t;
> +	struct fw_rsc_trace *t1;
> +	struct fw_rsc_trace2 *t2;
>  	struct fw_rsc_vdev *v;
>  	int i, j;
>  
> @@ -205,6 +206,7 @@ static int rproc_rsc_table_show(struct seq_file *seq, void *p)
>  		int offset = table->offset[i];
>  		struct fw_rsc_hdr *hdr = (void *)table + offset;
>  		void *rsc = (void *)hdr + sizeof(*hdr);
> +		u16 ver = hdr->st.v;
>  
>  		switch (hdr->st.t) {
>  		case RSC_CARVEOUT:
> @@ -230,13 +232,32 @@ static int rproc_rsc_table_show(struct seq_file *seq, void *p)
>  			seq_printf(seq, "  Name %s\n\n", d->name);
>  			break;
>  		case RSC_TRACE:
> -			t = rsc;
> -			seq_printf(seq, "Entry %d is of type %s\n",
> -				   i, types[hdr->st.t]);
> -			seq_printf(seq, "  Device Address 0x%x\n", t->da);
> -			seq_printf(seq, "  Length 0x%x Bytes\n", t->len);
> -			seq_printf(seq, "  Reserved (should be zero) [%d]\n", t->reserved);
> -			seq_printf(seq, "  Name %s\n\n", t->name);
> +			if (ver == 0) {

Again, this is a switch, here in a switch. Just defining a new
RSC_TRACE64 type would reduce the amount of code here...

> +				t1 = rsc;
> +				seq_printf(seq, "Entry %d is version %d of type %s\n",
> +					   i, ver, types[hdr->st.t]);
> +				seq_printf(seq, "  Device Address 0x%x\n",
> +					   t1->da);
> +				seq_printf(seq, "  Length 0x%x Bytes\n",
> +					   t1->len);
> +				seq_printf(seq, "  Reserved (should be zero) [%d]\n",
> +					   t1->reserved);
> +				seq_printf(seq, "  Name %s\n\n", t1->name);
> +			} else if (ver == 1) {
> +				t2 = rsc;
> +				seq_printf(seq, "Entry %d is version %d of type %s\n",
> +					   i, ver, types[hdr->st.t]);
> +				seq_printf(seq, "  Device Address 0x%llx\n",
> +					   t2->da);
> +				seq_printf(seq, "  Length 0x%x Bytes\n",
> +					   t2->len);
> +				seq_printf(seq, "  Reserved (should be zero) [%d]\n",
> +					   t2->reserved);
> +				seq_printf(seq, "  Name %s\n\n", t2->name);
> +			} else {
> +				seq_printf(seq, "Entry %d is an unsupported version %d of type %s\n",
> +					   i, ver, types[hdr->st.t]);
> +			}
>  			break;
>  		case RSC_VDEV:
>  			v = rsc;
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 526d3cb45e37..3b3bea42f8b1 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -243,6 +243,32 @@ struct fw_rsc_trace {
>  	u8 name[32];
>  } __packed;
>  
> +/**
> + * struct fw_rsc_trace2 - trace buffer declaration supporting 64-bits
> + * @padding: initial padding after type field for aligned 64-bit access
> + * @da: device address (64-bit)
> + * @len: length (in bytes)
> + * @reserved: reserved (must be zero)
> + * @name: human-readable name of the trace buffer
> + *
> + * This resource entry is an enhanced version of the fw_rsc_trace resourec entry
> + * and the provides equivalent functionality but designed for 64-bit remote
> + * processors.
> + *
> + * @da specifies the device address of the buffer, @len specifies
> + * its size, and @name may contain a human readable name of the trace buffer.
> + *
> + * After booting the remote processor, the trace buffers are exposed to the
> + * user via debugfs entries (called trace0, trace1, etc..).
> + */
> +struct fw_rsc_trace2 {

Sounds more like fw_rsc_trace64 to me - in particular since the version
of trace2 is 1...

> +	u32 padding;
> +	u64 da;
> +	u32 len;
> +	u32 reserved;

What's the purpose of this reserved field?

Regards,
Bjorn

> +	u8 name[32];
> +} __packed;
> +
>  /**
>   * struct fw_rsc_vdev_vring - vring descriptor entry
>   * @da: device address
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
