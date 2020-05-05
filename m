Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0001D1C5393
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cu90nV6AIWhmvC5g1XgMCTcCY4hXQxMmQaZg/06pJAI=; b=plLAM3tPGAxVfkzygdrg8KqBG
	as+NOKGCAf0Gwjtb2RAY5iMFRh9oqxgacNXKgoVmzkjyzbutPUVqYMScBhfk6/KQ7FEnzwM/+jwgd
	tCJQmGxsbpLWPKkk5gfCBueoFzDJv+D3TZUxes6BXlzspQZLZ80wYf2sfjzIYG2qawJ+BrCPdfrJ3
	PxX0apzzITerhMA7KLb3W2IEYR0gHFCMgKkrixqKcC2vzSI+wDvJN+XPDRrOPUi88Rs9WO9w2obVn
	ApGFGNN89ttZqOBQMA/CiRSyIKoqBHQ016COfuDQcLQwx/zZ1B2B0qlhzuelXqgb5THp76PbwL7KS
	HfqtFwTTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVv55-0002Du-2Y; Tue, 05 May 2020 10:45:43 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVv4Z-0007yW-Pq
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:45:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1588675512; x=1620211512;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=XBSflEuWAde/CeVgwd1MVyCQIVmkLdJKa2kWwWmS9Qc=;
 b=c6tFCqppgnbtvi02SO6HRk9lCz0n8TAWqN/ENC8VMiJG1WoGBWnwag+U
 ZbrYwe5QkJ5DaRSAdGA1/5aH0xG0hT6GF6tW+t7CUEskUVY2b0t6m0DS3
 XqljHB3hUPynOqDimNa8ZHAbUpd9WMKZL4LPhln0sO5PuFeDFPncV3mx/ Y=;
IronPort-SDR: /zcmW88pk2aPTxCJdquuhy1OAS8pv2KZcoSP/u09BnfoQaUg8JxdjY2lqJSRaREoBcNIJ3WsQF
 +6613ajzi/Cw==
X-IronPort-AV: E=Sophos;i="5.73,354,1583193600"; d="scan'208";a="42749270"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1d-f273de60.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 05 May 2020 10:45:04 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-f273de60.us-east-1.amazon.com (Postfix) with ESMTPS
 id C2F85A26F7; Tue,  5 May 2020 10:44:58 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Tue, 5 May 2020 10:44:58 +0000
Received: from [192.168.13.172] (10.43.162.38) by EX13D01EUB001.ant.amazon.com
 (10.43.166.194) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 5 May 2020 10:44:48 +0000
Subject: [PATCH v6 1/2] dt-bindings: edac: al-mc-edac: Amazon's Annapurna Labs
 Memory Controller EDAC
To: Borislav Petkov <bp@alien8.de>, <robh+dt@kernel.org>
References: <20200224134132.23924-1-talel@amazon.com>
 <20200224134132.23924-2-talel@amazon.com> <20200428110659.GA11272@zn.tnic>
From: "Shenhar, Talel" <talel@amazon.com>
Message-ID: <5e2c5119-52e9-2c3c-e205-e661ba218fcb@amazon.com>
Date: Tue, 5 May 2020 13:44:43 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200428110659.GA11272@zn.tnic>
Content-Language: en-GB
X-Originating-IP: [10.43.162.38]
X-ClientProxiedBy: EX13D37UWC004.ant.amazon.com (10.43.162.212) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_034511_914138_762527D5 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.171.190.10 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, benh@kernel.crashing.org,
 hhhawa@amazon.com, gregkh@linuxfoundation.org, eitan@amazon.com,
 jonnyc@amazon.com, hanochu@amazon.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, dwmw@amazon.co.uk, catalin.marinas@arm.com,
 ronenk@amazon.com, mchehab@kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob and other DT folks,

Can you please help with below query?


On 4/28/2020 2:06 PM, Borislav Petkov wrote:
> On Mon, Feb 24, 2020 at 03:41:31PM +0200, Talel Shenhar wrote:
>> Document Amazon's Annapurna Labs Memory Controller EDAC SoC binding.
>>
>> Signed-off-by: Talel Shenhar <talel@amazon.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> ---
>>   .../bindings/edac/amazon,al-mc-edac.yaml      | 52 +++++++++++++++++++
>>   1 file changed, 52 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml b/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml
>> new file mode 100644
>> index 000000000000..20505f37c9f8
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml
>> @@ -0,0 +1,52 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
> WARNING: DT binding documents should be licensed (GPL-2.0-only OR BSD-2-Clause)
> #36: FILE: Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml:1:
> +# SPDX-License-Identifier: GPL-2.0-only
>
> Hi Rob, should I listen to checkpatch or ignore it?

Rob and other dt folks,

In continue to disscussion with Boris below, Looking at the checkpatch 
check:

    if ($realfile =~ m@^Documentation/devicetree/bindings/@ &&
        not $spdx_license =~/GPL-2\.0.*BSD-2-Clause/) {

It wants the whole string "GPL-2.0-only OR BSD-2-Clause" and my oatch has only "GPL-2.0-only".

Now, looking at a bunch of .yaml DT files, there are all kinds of formatting:

$ git grep -h SPDX *.yaml | sort | uniq -c
       3 1:# SPDX-License-Identifier: (GPL-2.0)
     313 1:# SPDX-License-Identifier: GPL-2.0
       9 1:# SPDX-License-Identifier: GPL-2.0+
       1 1:# SPDX-License-Identifier: (GPL-2.0-only)
      43 1:# SPDX-License-Identifier: GPL-2.0-only
       4 1:# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
       1 1:# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
     148 1:# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
      25 1:# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
     104 1:# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
       3 1:# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
       2 1:# SPDX-License-Identifier: (GPL-2.0+ OR BSD-2-Clause)
       1 1:# SPDX-License-Identifier: (GPL-2.0-or-later)
       5 1:# SPDX-License-Identifier: GPL-2.0-or-later
       3 1:# SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
       2 1:# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause
       3 1:# SPDX-License-Identifier: (GPL-2.0 OR MIT)
       3 1:# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
       3 1:# SPDX-License-Identifier: (GPL-2.0+ OR X11)

And the patch which did rule is:

commit 50c92900214dd9a55bcecc3c53e90d072aff6560
Author: Lubomir Rintel<lkundrak@v3.sk>
Date:   Mon Apr 6 20:11:13 2020 -0700

     checkpatch: check proper licensing of Devicetree bindings

     According to Devicetree maintainers (see Link: below), the Devicetree
     binding documents are preferrably licensed (GPL-2.0-only OR BSD-2-Clause).

     Let's check that.  The actual check is a bit more relaxed, to allow more
     liberal but compatible licensing (e.g.  GPL-2.0-or-later OR BSD-2-Clause).


Will love your help.
This patch already have your (Rob) Reviewed-by so Boris and myself are unsure what is the right thing to do now.

Thanks,
Talel.

>
> --
> Regards/Gruss,
>      Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
