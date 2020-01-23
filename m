Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52E8146734
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:48:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GYzIoz51nJK02V34oUG9VR4+ekEocNkVRP8l04NDGEc=; b=tihRdoNecUrGun3sK+5tnWbgh
	yz2FodIX0/OsJTBF/vOibkAv6v60RIBxnCtjRh4eNO4yJ6P6j7iHnMrcSDcO0kUyrJUr33As2oCyh
	vmmcKFp3hleEYDPwrekXe+osDTAO93rwXmcz7yYfIahiFt0jQ/co7bQUX8kXRcvgs4IfldIfAilu9
	qjxesEtRL0nlAHpL4mIky+nLr0a/7R8rs0WhZn7oePd9DRXVrDXSFQVIltCAecCjsXS8bVcfbptcq
	OpCioBMTBf4VtNZ+5m9a0ZbfObRHMc5TBPNZB5s85AMNGAMgcWEYGv6NUMTVNSEnqAeufdz98JKq0
	3g5D3yMew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuayU-0004Fq-7v; Thu, 23 Jan 2020 11:48:38 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuavn-000260-Ur
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:45:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579779948;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=snyDmTf7CBCw1wnH6HPrXaSpHlhW2BCaG6gTHi350h0=;
 b=LXh0vze4bKB5+GkEoCnOY7aUBwwE3FiMbELTKHvinw2q7UXfQQv+3mwJsd6NJRwBlm75Qk
 AZG463UWN78tQJP2r7Nv7OQuwmRqd8zekjhKpt2MsRNEhn/8/1QL24EYPuhbdCn/fk9+57
 VCTlcIIIUTqEp+UGzdrgBXVdt9U1fpc=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-409-puUstfPlP-alreSPH82Knw-1; Thu, 23 Jan 2020 06:45:45 -0500
Received: by mail-wm1-f71.google.com with SMTP id m21so294229wmg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 03:45:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=snyDmTf7CBCw1wnH6HPrXaSpHlhW2BCaG6gTHi350h0=;
 b=Mi/yCKiaX03g1VUofVOZgIy8OpqvsdkwwJreBWpm2cFP5QSYS2MJsAC0UUebbHeqyW
 zxeCF2Uh3+OhTIqPoA4H7Kw01LYozxfaMGkNv1AI80CsPyurJTfd9MxIzerNTVh0hmga
 HGEe4PihYCMS4LRUpLLEZjm1nOJxrWggT08KYU8WJO4BCtA+i9W4Z6sgT1SA64jA4t7g
 tX49J35yZeTfrRaoT2Hm30KKdCXmcin8CsBlugZhSEYKHXSu5RaVW/CAmADo6GpE5oGq
 WT2PmU4FBgTcW6VTMNZ7wEvsXgS93Fi2OxINNefjWgj+kT3yB5KzCgs9OfTLpFwxrLcA
 OJ4w==
X-Gm-Message-State: APjAAAX5GNXt+ipUUGSukM3IPWfbnJZiaCbma2bo78DJd6GsR1oXNjrU
 z1OFuVaxXdZHz1W7Tqw8iD/NDdfaLcQoSQcNSAk4O7IMk9TmH4pCbOFHYfRNpT6QVE6zfg6UDVE
 pUOXfMF/G6+ApWvUiQ6R3HTL6iLNoPmzl5j4=
X-Received: by 2002:a05:600c:48a:: with SMTP id
 d10mr3806701wme.87.1579779944254; 
 Thu, 23 Jan 2020 03:45:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqwo5inKTgvBc+mV0kyUUFtWKnKpn/c8kgV9a7x3qOk7KCsOT9oh7insLR6xbWgPYU9HP5HyOQ==
X-Received: by 2002:a05:600c:48a:: with SMTP id
 d10mr3806671wme.87.1579779944005; 
 Thu, 23 Jan 2020 03:45:44 -0800 (PST)
Received: from [192.168.1.81]
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id u18sm2739453wrt.26.2020.01.23.03.45.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 03:45:43 -0800 (PST)
Subject: Re: [RFC v5 04/57] objtool: check: Ignore empty alternative groups
To: Josh Poimboeuf <jpoimboe@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-5-jthierry@redhat.com>
 <20200121163011.tk5koyg24gzuhoaa@treble>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <35333a67-cf5b-450f-0f9b-c75ae1f9be8b@redhat.com>
Date: Thu, 23 Jan 2020 11:45:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200121163011.tk5koyg24gzuhoaa@treble>
Content-Language: en-US
X-MC-Unique: puUstfPlP-alreSPH82Knw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_034552_086434_2C708CCF 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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
 raphael.gault@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/21/20 4:30 PM, Josh Poimboeuf wrote:
> On Thu, Jan 09, 2020 at 04:02:07PM +0000, Julien Thierry wrote:
>> Atlernative section can contain entries for alternatives with no
>> instructions. Objtool will currently crash when handling such an entry.
>>
>> Just skip that entry, but still give a warning to discourage useless
>> entries.
>>
>> Signed-off-by: Julien Thierry <jthierry@redhat.com>
>> ---
>>   tools/objtool/check.c | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
>> index 5968e6f08891..27e5380e0e0b 100644
>> --- a/tools/objtool/check.c
>> +++ b/tools/objtool/check.c
>> @@ -866,6 +866,13 @@ static int add_special_section_alts(struct objtool_file *file)
>>   		}
>>   
>>   		if (special_alt->group) {
>> +			if (!special_alt->orig_len) {
>> +				WARN("empty alternative entry at %s+0x%lx",
>> +				     orig_insn->sec->name,
>> +				     orig_insn->offset);
>> +				continue;
>> +			}
>> +
> 
> I think WARN_FUNC() can be used here instead.
> 

I'll do that.

Thanks,

-- 
Julien Thierry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
