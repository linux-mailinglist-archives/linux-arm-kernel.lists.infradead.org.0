Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 013A01FCB01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fucRIQfk4PWBp1qlToMKmPMKYr+v93TmJi8osP5+gQ=; b=fxXZ21JqAuYg/G
	ZJeOIAFbkG5vDNfNbpU6dt+mermgbjgu5N2ATeBW5AZm4nKjpcwykyhjvQ/WyIMyUuQL2rIMGQ3Hg
	EP1JfsLLWwViRMLEiXkR1uRmaVN7kNXccSDkJkohNjXGFBi/Jgc0ohYSb6qbB+tlIcmeg172/IBR9
	S37qYbPVDduDbzXo3L0rW9P+GBYrhCCCUOogWfcilTQYl8oanG9/J53pn+SpG8hhLrr3nANim9uby
	zoI0+G/YVI5Aj0LiaXLnVX849XMdZeGNUtAv/wPTWKxGN5a39l6g9z4JvefcJ5uU8T6OURAlqfdyV
	cgZo2lENFmk9d3VQs4yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVSE-00033R-A7; Wed, 17 Jun 2020 10:38:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVS1-000336-16
 for linux-arm-kernel@bombadil.infradead.org; Wed, 17 Jun 2020 10:37:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=n+76RBm2rdDCRUK0E1Dtw0hXTnElRxA512NWs4Bw2rA=; b=nzrIjfK168sF6q++Y2Aq6TXn3Q
 q1Bbgm2A108T83QE6N2WEXvoW0+5UUWY7a2HnbUu1mX9+Nyv88+bDzqj78T+80J7Y8zybLk/qu5LM
 n13mkTszpGCav3GYApbII8z025Q6qbgfCmzt2rAovn0OU8uPt4qB16+mr3u0GvCEq4rHqiY5g8XDq
 3wxEU3nGhKAq3IEd85+TbsZPSypcxWV/zQprVEwi7KatFn8Waz7hQAyAaUU59bfwYEL3JNfVdi06Z
 jmpzMEdGzHtFxw/EgCv4/Lmdy7tC8qsDmwqxFz4Ng1lum2OB+HaurwfworMcHL25foTcRO/OoKmZN
 aipZfu9w==;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVRy-00013j-RZ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:37:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592390228;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=n+76RBm2rdDCRUK0E1Dtw0hXTnElRxA512NWs4Bw2rA=;
 b=eVSYAf8NmQjm8yUj4GeQ5PuXm3p2EkOpZmwJcoTU/I51dp0DclKN3uN07j5Spdt6i15Hhm
 b8YvZReGTMi4l5955AQvtkIhG4LRQ0wvRxWvEdYPR5NwUyp70NzW8gkTAmbhFzS3ZMYrn4
 67Re0bLadPxk5D+nc8gZ5zR1QE86aOM=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592390247;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=n+76RBm2rdDCRUK0E1Dtw0hXTnElRxA512NWs4Bw2rA=;
 b=O/llNjzpTYQaQbeeD+Qh1vfshXvq9frtF26wOI9Ey2lcIDgy4lbUyLJ4aSmmIzW7WAZyw8
 2mk0oHtcD3Yc+mDYTtgmgm/0+SzP1ahlKan52jxcJTULzHq72MVkqpb8YI9acVeHVV3nPM
 hAuu3OUdMeo9pmSv+QPSAISH7QINdFI=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592390266;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=n+76RBm2rdDCRUK0E1Dtw0hXTnElRxA512NWs4Bw2rA=;
 b=VCblOpBsH2UbkWnULTbm3MXmABxbIZd9PUhGkHx2fn+An5KamYib/NV1onWN8eAHERjf30
 NHT7mu22CWDHGKpLb56cA86H4hEycBNEKXdHFsyrLKI/S4YNGZ6/oLQasKb6z1kBX1TeJl
 xWUmd3pZW2qgtCZ8TMWUfc5gESkaCME=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-257-P8SjbLLqNwOkZETISR0NRw-1; Wed, 17 Jun 2020 06:37:04 -0400
X-MC-Unique: P8SjbLLqNwOkZETISR0NRw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC2B88B1595;
 Wed, 17 Jun 2020 10:36:41 +0000 (UTC)
Received: from krava (unknown [10.40.193.76])
 by smtp.corp.redhat.com (Postfix) with SMTP id E91D35D9E4;
 Wed, 17 Jun 2020 10:36:38 +0000 (UTC)
Date: Wed, 17 Jun 2020 12:36:37 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 0/2] perf: Improve list for arm64
Message-ID: <20200617103637.GD2210496@krava>
References: <1592384514-119954-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592384514-119954-1-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, irogers@google.com, ak@linux.intel.com,
 peterz@infradead.org, linuxarm@huawei.com, acme@kernel.org,
 linux-kernel@vger.kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 05:01:52PM +0800, John Garry wrote:
> This couple of patches provides:
> - aliases for arm64 CPU core events in perf list, like x86
> - ensures that CPU core events are not sparsely listed
> 
> Differences to v1:
> - Add ack from Namhyung Kim (thanks)
> - use more concise logic in patch 2/2 and also add comment
> 
> John Garry (2):
>   perf pmu: List kernel supplied event aliases for arm64
>   perf pmu: Improve CPU core PMU HW event list ordering

Acked-by: Jiri Olsa <jolsa@redhat.com>

thanks,
jirka

> 
>  tools/perf/util/pmu.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> -- 
> 2.26.2
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
