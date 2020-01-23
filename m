Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C120614695E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:42:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OMYqgIxrko5GgwDytTqboxIw9e512dSHlMOEVPqoUC8=; b=ql3igjYzYpGE9vp1U1cIaUgIu
	7ISCJDg/NYFEpg6U5kBlD8duIlEMMae05zwdNAnqszFLSs2TqwfEMTMF8Zgd2S1o3kBWkShMtJGrJ
	w+X3iWO2euJyCeTnX3J6Zoxq4SyCE1CXx/bk0lOS3eWDIgfSQYfaJWUisPq+YOyA8Viavg3vYYkCX
	ZMio0Wsn87u77f7/uolzKE6GXebq4CasipKgaJLHwE+yxgpbA0fFu21eEzfOCocg9c3WV+MizrgzD
	8EWwrL940nWRFGIZ0Q7lVMNgVO8R2/PUp5OYXe0SIEVBiD3QO6h5BW7ryZ2KzphFtzt2Vimj6Rx/4
	WQ+/R4HZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuckb-0005o4-4w; Thu, 23 Jan 2020 13:42:25 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuckN-0005na-H8
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 13:42:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579786929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tmBW3f8TyoLwTSIM/+PNUzRqVEHkMdoufacPfKN/cck=;
 b=KFnGo1aoDMIQVbofnYTsGomqKIQhZe6a6fs0QBhCuQM73ArW4kDtBQEOZBiiDfkyQrPPtS
 zO4j6v8LuR3LLaO2VWFr5Y5soEEmEN1oJyDACsZKetu/+boof675UFHWGtkvkd3pjGSD/F
 ZaeAqlT83XaFsaO9EiNqhv9szYFmW5Q=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-t-y7yh4tMrq2hpTQcmXKGg-1; Thu, 23 Jan 2020 08:42:08 -0500
Received: by mail-wr1-f72.google.com with SMTP id u12so1732871wrt.15
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 05:42:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tmBW3f8TyoLwTSIM/+PNUzRqVEHkMdoufacPfKN/cck=;
 b=RR/P/eFbRmGtfBiQm/Xb7JjSBhyc5SsJRxrz8M4FOyFq0CgRLhwjYqUVERJlGDFJMb
 xZfuBgEE+iu+AX83Lpz1thUXC+kcabVRwGeV7NZx1anyd8l/i17Zcf4oYdGHqjK/jffj
 b/ODvfImE0ZvhNdLk9stDhI7ZGe6m+q45EZ2ahv3Jmp631vDYTYWSvv8LDX/uYlPt5qJ
 enYGhtEsm3b+Iv6tuhrLnhO8vlgB5OkN8XoI3H7pgKaQEirNQTImy1fs1SL7xAU4T4aK
 PjMO/y0iZW4llqDNbt20Kt2ZYygA+XByvC4pAVGJvjXvLOPb2KqM8r3Ck4+n0d23CIJf
 wCVA==
X-Gm-Message-State: APjAAAUqQThG7G6+cKeQ7pBiiiMUcxWJmzd5FE17soQFzZQHGzOyvLVS
 pjpSTFlwsEixWpd0tCtH+HzVwUwEKLbP+vQcNLIFYepWHzur4R/6vYzQVGfuxMTl3Iw+0Q1GH8C
 RpSJFmMG5NPRoyAG1HvHYpMfVkMQqx0XwPog=
X-Received: by 2002:adf:dd46:: with SMTP id u6mr17073815wrm.13.1579786926934; 
 Thu, 23 Jan 2020 05:42:06 -0800 (PST)
X-Google-Smtp-Source: APXvYqwUbQx3hjI5twu/eFRZDeK/mX9ClB3LVjfr7g8X3OfTEi4yxEjHCcdyKi+gN3mf4omGeSTWlA==
X-Received: by 2002:adf:dd46:: with SMTP id u6mr17073791wrm.13.1579786926745; 
 Thu, 23 Jan 2020 05:42:06 -0800 (PST)
Received: from [192.168.1.81]
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id n189sm2881039wme.33.2020.01.23.05.42.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 05:42:06 -0800 (PST)
Subject: Re: [RFC v5 12/57] objtool: check: Allow jumps from an alternative
 group to itself
To: Josh Poimboeuf <jpoimboe@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-13-jthierry@redhat.com>
 <20200121173305.urv77ral76su26cs@treble>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <37aaea62-4737-d7e7-8107-4e8b05fc849c@redhat.com>
Date: Thu, 23 Jan 2020 13:42:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200121173305.urv77ral76su26cs@treble>
Content-Language: en-US
X-MC-Unique: t-y7yh4tMrq2hpTQcmXKGg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_054212_052634_AD2FCAA8 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
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



On 1/21/20 5:33 PM, Josh Poimboeuf wrote:
> On Thu, Jan 09, 2020 at 04:02:15PM +0000, Julien Thierry wrote:
>> Alternatives can contain instructions that jump to another instruction
>> in the same alternative group. This is actually a common pattern on
>> arm64.
>>
>> Keep track of instructions jumping within their own alternative group
>> and carry on validating such branches.
>>
>> Signed-off-by: Julien Thierry <jthierry@redhat.com>
>> ---
>>   tools/objtool/check.c | 48 ++++++++++++++++++++++++++++++++++---------
>>   tools/objtool/check.h |  1 +
>>   2 files changed, 39 insertions(+), 10 deletions(-)
>>
>> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
>> index 8f2ff030936d..c7b3f1e2a628 100644
>> --- a/tools/objtool/check.c
>> +++ b/tools/objtool/check.c
>> @@ -722,6 +722,14 @@ static int handle_group_alt(struct objtool_file *file,
>>   	sec_for_each_insn_from(file, insn) {
>>   		if (insn->offset >= special_alt->orig_off + special_alt->orig_len)
>>   			break;
>> +		/* Is insn a jump to an instruction within the alt_group */
>> +		if (insn->jump_dest && insn->sec == insn->jump_dest->sec &&
>> +		    (insn->type == INSN_JUMP_CONDITIONAL ||
>> +		     insn->type == INSN_JUMP_UNCONDITIONAL)) {
>> +			dest_off = insn->jump_dest->offset;
>> +			insn->intra_group_jump = special_alt->orig_off <= dest_off &&
>> +				dest_off < special_alt->orig_off + special_alt->orig_len;
>> +		}
> 
> This patch adds some complexity, just so we can keep the
> 
>    "don't know how to handle branch to middle of alternative instruction group"
> 
> warning for the case where code from outside an alternative insn group
> is branching to inside the group.  But I've never actually seen that
> case in practice, and I get the feeling that warning isn't very useful
> or realistic.
> 
> How about we just remove the warning?
> 

I'm happy to remove it.

I was trying to look for a less intrusive place to only check for 
instructions jumping into alternatives. add_jump_destinations() could be 
an option, but it would require to duplicate some stuff done in 
add_special_section_alts(). So maybe just ignoring for now can be fine.

Thanks,

-- 
Julien Thierry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
