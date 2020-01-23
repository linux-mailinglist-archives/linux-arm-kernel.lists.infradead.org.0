Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80043146FD8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 18:37:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evqh/tokJbpcO8E6jU+Z6ev+vGJirvM+pXl0nLM2gK8=; b=MDyz+ej2ggnXjX
	FylH+6FhIluIYiwOOnKWUA0YjPb0EOQoYPP8Jx5MmULxKWEtU+W/yRfHVLdX8u/cd2wivlNDTXUNP
	MuPpMmt62jXJ5pV0SZYeqXq6YG1oTYsyvK4UCSonvkDb+s2opyPM+tGL+aqv1PyxbC3pYW9uib3SK
	ry17E1beYswrxDAouwGwjcCS7MnLFrcuqDhVS8lTcOAmy4O+xgwrL+SIPW+a2DmB5HS9jzANpcVzS
	5eKF+sdVbA1RX5uz/TVKsyali6W+oJFxRgpXCt3OZkp+AtSfAytrnLAOmgSxQme6A5eSg3rBAJPZq
	Pr7tJqJeraJ/QhH7BePg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iugPc-0000F6-EP; Thu, 23 Jan 2020 17:37:00 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iugPS-0000ED-0W
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 17:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579801006;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D54wJCq+dcoWe+lOlchk/VMBTGpgOIcpCavPiOTlG1Y=;
 b=gnrFCkM0ISO8DmSWmwUpnYxPERc2I4THwxqZxbmifoyV/56vz8kP7FEl0k1d66QCFx/MKS
 Qo7Rzd65QOGQ19onYE6hqY946+P0HmCIhKbQ8v9zVGPNLlEVBQ0JKPW5l5d6kIQ018vyWa
 tj/YjET8iMF7qg/Vr1Nkrj4AfSDY1AE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-d4aV-R_nMuWLziZ8mN2NoA-1; Thu, 23 Jan 2020 12:36:41 -0500
X-MC-Unique: d4aV-R_nMuWLziZ8mN2NoA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF6A31005514;
 Thu, 23 Jan 2020 17:36:39 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7762F8644F;
 Thu, 23 Jan 2020 17:36:37 +0000 (UTC)
Subject: Re: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
To: Qian Cai <cai@lca.pw>, Will Deacon <will@kernel.org>
References: <20200123165614.GA20126@willie-the-truck>
 <48DF011A-3074-422C-BFBA-1A9F2EF4A7BA@lca.pw>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <f95c27b1-a8ca-bac8-e6bb-07ca9e87bcd9@redhat.com>
Date: Thu, 23 Jan 2020 12:36:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <48DF011A-3074-422C-BFBA-1A9F2EF4A7BA@lca.pw>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_093650_128973_CBFBA9DC 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/23/20 12:31 PM, Qian Cai wrote:
>
>> On Jan 23, 2020, at 11:56 AM, Will Deacon <will@kernel.org> wrote:
>>
>> Damn, the whole point of this was to warn in the case that
>> vcpu_is_preempted() does get defined for arm64. Can we force it to evaluate
>> the macro argument instead (e.g. ({ (cpu), false; }) or something)?
> Actually, static inline should be better.
>
> #define vcpu_is_preempted vcpu_is_preempted
> static inline bool vcpu_is_preempted(int cpu)
> {
> 	return false;
> }
>
Yes, that may work.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
