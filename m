Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EED512284C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 11:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nq7OdytA7kA1SFgu5mS+cnHWw9CHmgVon9YfARHAS5c=; b=mSojy3HK5apL/CYY++v15MC/z
	Kcp7ncYdCuQoV2sBiNzDN+66oOwxi2QgbPx4WytNieruSoJr0OyXKoTLTqCUR/pe4aTgrucg7KlDT
	nBon8oj0iX5p8VoVnozgpcRANd2NS/sM6226+s7bF9tVPMjIQ089t+jHbTj4p7/sBuZ3PSOjhakQu
	KVWAcO9hIskrEdOtPIOgUkzl19wlSC1iIXCrW22TWqQ0PJdVeqAi3pEiFXe5kI732XFqtgBlB4arg
	81L7JSBso5bKbLyruQr/PWrMmzUqv4R8pfkriKBhTMY43U+f6jsNs6w2ArCwVV6ty62g1Gdi6uLri
	i8lhD/6fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih9js-0001mn-0J; Tue, 17 Dec 2019 10:06:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih9jR-0001XE-As
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 10:05:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2DE8330E;
 Tue, 17 Dec 2019 02:05:32 -0800 (PST)
Received: from [10.37.12.145] (unknown [10.37.12.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A870D3F6CF;
 Tue, 17 Dec 2019 02:05:30 -0800 (PST)
Subject: Re: [PATCH 1/2] include: trace: Add SCMI header with trace events
To: Jim Quinlan <james.quinlan@broadcom.com>
References: <20191216161650.21844-1-lukasz.luba@arm.com>
 <20191216161650.21844-1-lukasz.luba@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <99cea477-d776-1723-162b-f12ca64fce6e@arm.com>
Date: Tue, 17 Dec 2019 10:05:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191216161650.21844-1-lukasz.luba@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_020533_421715_725A5BA4 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mingo@redhat.com, rostedt@goodmis.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Jim,

On 12/16/19 10:15 PM, Jim Quinlan wrote:
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
> unique, and the seq may not be unique.  The combination of the three
> may not be unique.  Would it make sense to assign a monotonically
> increasing ID to each msg so that one can easily match the two events
> for each msg?  This id could be the result of an atomic increment and
> could be stored in the xfer structure.  Of course, it would be one of
> the values printed out in the events.

Hmmm, an atomic variable in this code might be too heavy, especially in
case of fast_switch from cpufreq. Let me think about it and experiment.

> 
> Also, would you consider a third event, right after the
> scmi_fetch_response() invocation in scmi_rx_callback()?  I've found
> this to be insightful in situations where we were debugging a timeout.

Yes, of course. It would be really useful. Thank you for the
suggestion.

> 
> I'm fine if you elect not to do the above; I just wanted to post
> this for your consideration.

Thant's a valuable feedback. I will definitely consider it.

Regards,
Lukasz

> 
> Thanks,
> Jim Quinlan
> Broadcom
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
