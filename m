Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEB8146736
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:49:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=INiA0Kz0I36M8MI+XvQB9ZJHNbtpn4C2tligSmXIc38=; b=NzvTdGygigC4R3sK7z5NhtXuM
	vsirSYHEeQ8TaXTur+2gxpwbzPtaKY6sY+d2oFx81b9uAaRgvB6TyRs+OT5mKkVjoUBakJ7o2A1CY
	UQRu5jY3ETxUmvB9p1Dd/Vz+N2W1P0QpUMs6coj8FUdp1YY9jmm3UKhGrbLFQ1fU3V1unaOi0ICAp
	KrQTBmeOYOrHKZANUVltolYqnVrxOQMD0iWy5dJ/uu0XY06+3wKzB6244IBqWGB4d7OgHawDCKJXF
	bmuLpHm2sJKGstGBUhEnLbUnVCbTYFf3uCFHj9/DYVdqYuPgv6Hcv2RV/1qwgMMORgVMBXK4HRWYq
	qG/wvVmAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuayv-0004hJ-TQ; Thu, 23 Jan 2020 11:49:05 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuaw1-0002Gu-82
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579779963;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TINMfTTXVCZiZEAT1DE8Sul0vKADWHazf6vsI5AdTmI=;
 b=CTQB2nh9Hac6trZpUpaX8oLTVQVGuCGKtEwYStyQH56z2FB3RpKNrt3U7WZwYD8PiwVdNo
 yiDraA2wDoaFKkq47MrHdx4WM1pODHsGlflKIL+727fvML6zaoiI3Y0rZyZyC8UDcy6XuS
 LB30GMo8a6M1Z4AGx5yrSl1cDAn9vDE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-153-URMFD_qwNMyCsQLwsRnZmQ-1; Thu, 23 Jan 2020 06:46:02 -0500
Received: by mail-wm1-f70.google.com with SMTP id q206so872286wme.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 03:46:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TINMfTTXVCZiZEAT1DE8Sul0vKADWHazf6vsI5AdTmI=;
 b=J9nztvykb2CiktgUqMSfYPfxCd7/IqGILROiU9QnhgK+4SH/WCDVxmvY0IqLlMHm0y
 scGqWunuBdW1zHdOGYLduQjJziLu/WTpDzVVBE/IV5Lp0Cy2pp0fYouHi4rxB9vUPXfe
 LTJW4ucaNG+Jmm48gouUzuNR1gd7/IhDd2W//PMb+if8fb/C2TIZHtLuB3DU62HpIIa0
 DUtlmJHo4L5MwC+mxJ2FTnrtbB5qEb4a2Uyrb5oh+M86FENb/A8PK3H76/gECgIiF0Q4
 EfUP3pbDuqM0UGYMjE5pDccSm89s8zFSxuErYcFc3vNV5Sctdx9RNjlo9Irzke6OjPs1
 l7RQ==
X-Gm-Message-State: APjAAAWw9GmuTcf6kyXKemIWhnlAJWa+LHzvFn8yNkqGmujdl6TPoZ7P
 qhf4fZZTF6siGGInZc8tWiFJqTMhRJHC8OsOxj4OVh42MIeSXmipGC+bV3NTSLXNCqsQQSzWg/+
 GTlFfBZc7QVhUsGIP77e19g0jhqZqCMCUG9k=
X-Received: by 2002:a1c:f218:: with SMTP id s24mr3979408wmc.128.1579779960869; 
 Thu, 23 Jan 2020 03:46:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqwVnwCiCN3NOxdGWRBJAtDImJ6Nrbwlr+9vtghF6EhH/gepoqxynALefGm704TwHdxrrc4Fsg==
X-Received: by 2002:a1c:f218:: with SMTP id s24mr3979384wmc.128.1579779960668; 
 Thu, 23 Jan 2020 03:46:00 -0800 (PST)
Received: from [192.168.1.81]
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id z3sm2609010wrs.94.2020.01.23.03.45.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 03:46:00 -0800 (PST)
Subject: Re: [RFC v5 11/57] objtool: Abstract alternative special case handling
To: Peter Zijlstra <peterz@infradead.org>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-12-jthierry@redhat.com>
 <20200120145401.GB14897@hirez.programming.kicks-ass.net>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <b5066ff8-9bfc-635f-a4fd-2ed3e20271b6@redhat.com>
Date: Thu, 23 Jan 2020 11:45:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200120145401.GB14897@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-MC-Unique: URMFD_qwNMyCsQLwsRnZmQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_034605_397076_E81DB345 
X-CRM114-Status: GOOD (  15.62  )
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 raphael.gault@arm.com, jpoimboe@redhat.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/20/20 2:54 PM, Peter Zijlstra wrote:
> On Thu, Jan 09, 2020 at 04:02:14PM +0000, Julien Thierry wrote:
>> diff --git a/tools/objtool/arch/x86/arch_special.c b/tools/objtool/arch/x86/arch_special.c
>> new file mode 100644
>> index 000000000000..6dba31f419d0
>> --- /dev/null
>> +++ b/tools/objtool/arch/x86/arch_special.c
>> @@ -0,0 +1,34 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +#include "../../special.h"
>> +#include "../../builtin.h"
>> +
>> +void arch_handle_alternative(unsigned short feature, struct special_alt *alt)
>> +{
>> +	/*
>> +	 * If UACCESS validation is enabled; force that alternative;
>> +	 * otherwise force it the other way.
>> +	 *
>> +	 * What we want to avoid is having both the original and the
>> +	 * alternative code flow at the same time, in that case we can
>> +	 * find paths that see the STAC but take the NOP instead of
>> +	 * CLAC and the other way around.
>> +	 */
> 
> That comment ^,
> 
>> +	switch (feature) {
>> +	case X86_FEATURE_SMAP:
> 
> goes here >
> 

Good catch, I'll fix that.

>> +		if (uaccess)
>> +			alt->skip_orig = true;
>> +		else
>> +			alt->skip_alt = true;
>> +		break;
> 
>> +	case X86_FEATURE_POPCNT:
>> +		/*
>> +		 * It has been requested that we don't validate the !POPCNT
>> +		 * feature path which is a "very very small percentage of
>> +		 * machines".
>> +		 */
>> +		alt->skip_orig = true;
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +}
> 

Thanks,

-- 
Julien Thierry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
