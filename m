Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A8F1BB31F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 02:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTmut2XG/2ZaR50yS3tj0JN7Z7QcSrX2+KRq335O+CA=; b=jb/UEOHKZQ/QjO
	9SXFh7Le2iPS2M9OtQakWtn1YSl9tu5AhMz/1lOi1kRLrYIYuTwYrCpLYC8Bjt8TFg63OLasK6hWs
	RyjBkYIb5wBSJ28jk2jm1rc0wZj0Hbz++38AStpfJNsLSBg3FbcmN8F/wPmohPBLW3Kv1YcAEu7JM
	6vF3M5nxWkBTNK9jIa0d6qSuXRuIkSJZpwG2GR8ynB0Ho9AU7ibXkpP3dl3+0fF0Db7NClhQQfmza
	ujhg34t2Vo/mLK0leGCPlUgiNZhs1pZ1htPA4sXjxBG8c0TAVrU9ZGPYXrao6I61dHvPQdcQWDjIe
	fH1rEcqfPH5rCyAVWPyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTEb5-0001DB-HG; Tue, 28 Apr 2020 00:59:39 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTEaw-0001BJ-8B
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 00:59:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588035567;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eCXtDAIPXE5kafrfekAlH3tsNBYP9X2R1z9BOoq2aRk=;
 b=YKt1hryqKzUo05yylcpxXYsCc9Wahcu3yB2apuNgIGBO6XqwerZThLoUu9SebE6e1OHxUI
 gg9VyNAdt7LXUxSjDYqwyRP+Doe9XgsG1nzVb31tgSUzfTG+rEp1T3kKtI5Swg11khYtmh
 rm0M2AxyeGdtxh1lxt8sjjTtctHpxCU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-Z_pq3ejJNnaSiSk3m0hvjw-1; Mon, 27 Apr 2020 20:59:20 -0400
X-MC-Unique: Z_pq3ejJNnaSiSk3m0hvjw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D786468;
 Tue, 28 Apr 2020 00:59:19 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-127.bne.redhat.com
 [10.64.54.127])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C40F750C22;
 Tue, 28 Apr 2020 00:59:16 +0000 (UTC)
Subject: Re: [PATCH] arm64/mm: Reject invalid NUMA option
To: Mark Rutland <mark.rutland@arm.com>
References: <20200424045314.16017-1-gshan@redhat.com>
 <20200424101132.GC1167@C02TD0UTHF1T.local>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <f83c0ce1-b1b2-31f4-60c8-15567b87a8ff@redhat.com>
Date: Tue, 28 Apr 2020 10:59:14 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200424101132.GC1167@C02TD0UTHF1T.local>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_175930_377300_A886CE79 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, shan.gavin@gmail.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 4/24/20 8:11 PM, Mark Rutland wrote:
> [Adding Steve, who added str_has_prefix()]
> 
> On Fri, Apr 24, 2020 at 02:53:14PM +1000, Gavin Shan wrote:
>> The NUMA option is parsed by str_has_prefix() and the invalid option
>> like "numa=o" can be regarded as "numa=off" wrongly.
> 
> Are you certain that can pass? If that can happen, str_has_prefix() is
> misnamed and does not seem to do what its kerneldoc says it does, as
> "off" is not a prefix of "o".
> 

Yes, It's possible. str_has_prefix() depends on strncmp(). In this particular
case, it's equal to the snippet of code as below: strncmp() returns zero.
str_has_prefix() returns 3.

int strncmp(const char *cs, const char *ct, size_t count)
{
         unsigned char c1, c2;

         while (count) {
                 c1 = *cs++;
                 c2 = *ct++;
                 if (c1 != c2)
                         return c1 < c2 ? -1 : 1;
                 if (!c1)                             /* break after first character is compared */
                         break;
                 count--;
         }
         return 0;                                    /* 0 returned */
}

static __always_inline size_t str_has_prefix(const char *str, const char *prefix)
{
         size_t len = strlen("o");
         return strncmp("o", "off", 1) == 0 ? len : 0;
}

>> This fixes the issue with sysfs_streq(), which have more sanity checks,
>> to avoid accepting the invalid options.
> 
> That doesn't sound immediately right, since this is an early parameter,
> which has nothing to do with sysfs. Perhaps that's just a misleading
> name?
> 

sysfs_streq() was introduced to compare the parameters received from sysfs
entry, but I don't think it has to be necessarily tied with sysfs entry.
So the name is bit misleading. Alternatively, we also can fix it in another
way (as below) if we try to avoid using sysfs_streq().

diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
index 4decf1659700..b0c1ec78f50f 100644
--- a/arch/arm64/mm/numa.c
+++ b/arch/arm64/mm/numa.c
@@ -29,9 +29,13 @@ static __init int numa_parse_early_param(char *opt)
  {
         if (!opt)
                 return -EINVAL;
-       if (str_has_prefix(opt, "off"))
+
+       if (strlen(opt) >= 3 && str_has_prefix(opt, "off"))
                 numa_off = true;

> Thanks,
> Mark.
> 

Thanks,
Gavin

>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>> ---
>>   arch/arm64/mm/numa.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
>> index 4decf1659700..bd458b28616a 100644
>> --- a/arch/arm64/mm/numa.c
>> +++ b/arch/arm64/mm/numa.c
>> @@ -29,7 +29,8 @@ static __init int numa_parse_early_param(char *opt)
>>   {
>>   	if (!opt)
>>   		return -EINVAL;
>> -	if (str_has_prefix(opt, "off"))
>> +
>> +	if (sysfs_streq(opt, "off"))
>>   		numa_off = true;
>>   
>>   	return 0;
>> -- 
>> 2.23.0
>>
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
