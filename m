Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0811612467D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:09:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFPdMUzkaJ0dBJ4oVO5/Yd2agKLRnMdJYYMDDz9nBo8=; b=CP9aKSRCu7MedP
	gZ6Ug2YrYLXjra8W1FdQ8TvCkU5RafuYwJJYsSDz6xzfOA9MPlrKxFiKbAQcrGWMEz12JCPiLHvHf
	bqnQTiRskjpX8b5Rd4siWf0O/q/6RWpU+uKgyTIqbigRbtX/9fJ2xYadn1jmdVcLnzwtiLPtNY0z/
	fHNeUWhD8Las99699zV+DVALwypA3DWVZ3zu7zRaCx/v4NwvhXggfqjuutzMGQtvug7tMett9u33d
	hAR+jfCzKwDrHs6IZIzooXTnY7rnSFdDjd4UZc8esNRQ7eSMIg+rDgEAXWs5ye8CZ/NRSL/kVGQ04
	R98Jqjuru9sY30NmOIUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihY8j-0002E4-FX; Wed, 18 Dec 2019 12:09:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihY8b-0002DG-2j
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:09:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C5F930E;
 Wed, 18 Dec 2019 04:09:07 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 290633F6CF;
 Wed, 18 Dec 2019 04:09:06 -0800 (PST)
Date: Wed, 18 Dec 2019 12:09:00 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH 1/2] include: trace: Add SCMI header with trace events
Message-ID: <20191218120900.GA28599@bogus>
References: <20191216161650.21844-1-lukasz.luba@arm.com>
 <20191216161650.21844-1-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216161650.21844-1-lukasz.luba@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_040909_167651_57E537AE 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, rostedt@goodmis.org, mingo@redhat.com,
 lukasz.luba@arm.com, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 05:15:54PM -0500, Jim Quinlan wrote:
> From: Lukasz Luba <lukasz.luba@arm.com>
>
> +
> +TRACE_EVENT(scmi_xfer_begin,
> +	TP_PROTO(u8 id, u8 protocol_id, u16 seq, bool poll),
> +	TP_ARGS(id, protocol_id, seq, poll),
> +
> +	TP_STRUCT__entry(
> +		__field(u8, id)
> +		__field(u8, protocol_id)
> +		__field(u16, seq)
> +		__field(bool, poll)
> +	),
> +
> +	TP_fast_assign(
> +		__entry->id = id;
> +		__entry->protocol_id = protocol_id;
> +		__entry->seq = seq;
> +		__entry->poll = poll;
> +	),
> +
> +	TP_printk("id=%u protocol_id=%u seq=%u poll=%u", __entry->id,
> +		__entry->protocol_id, __entry->seq, __entry->poll)
> +);
> +
> +TRACE_EVENT(scmi_xfer_end,
> +	TP_PROTO(u8 id, u8 protocol_id, u16 seq, u32 status),
> +	TP_ARGS(id, protocol_id, seq, status),
> +
> +	TP_STRUCT__entry(
> +		__field(u8, id)
> +		__field(u8, protocol_id)
> +		__field(u16, seq)
> +		__field(u32, status)
> +	),
> +
> +	TP_fast_assign(
> +		__entry->id = id;
> +		__entry->protocol_id = protocol_id;
> +		__entry->seq = seq;
> +		__entry->status = status;
> +	),
> +
> +	TP_printk("id=%u protocol_id=%u seq=%u status=%u", __entry->id,
> +		__entry->protocol_id, __entry->seq, __entry->status)
> +);
>
> Hello,
>
> When there are multiple messages in the mbox queue, I've found it
> a chore matching up the 'begin' event with the 'end' event for each
> SCMI msg.  The id (command) may not be unique, the proto_id may not be
> unique, and the seq may not be unique.

I agree on id and proto_id part easily and the seq may not be unique
if and only if the previous command has completed.

> The combination of the three may not be unique.

Not 100% sure on that. I remember one of the issue you reported where OS
times out and platform may still be processing it. That's one of the
case where seq id may get re-assigned, but now that's fixed and the
scenario may not happen. I am trying to understand why you think it
is not unique ?

> Would it make sense to assign a monotonically increasing ID to each
> msg so that one can easily match the two events for each msg?

I am not sure if we need to maintain a tracker/counter just for trace
purposes.

> This id could be the result of an atomic increment and
> could be stored in the xfer structure.  Of course, it would be one of
> the values printed out in the events.
>
> Also, would you consider a third event, right after the
> scmi_fetch_response() invocation in scmi_rx_callback()?  I've found
> this to be insightful in situations where we were debugging a timeout.
>
> I'm fine if you elect not to do the above; I just wanted to post
> this for your consideration.
>

I am interested in the scenario we can make use of this and also help
in testing it if we add this. I am not against it but I don't see the
need for it.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
