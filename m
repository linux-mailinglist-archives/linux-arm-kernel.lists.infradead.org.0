Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114EC1D1163
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:31:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+dXRhBIpttv7ZpyrhF57XA/2tnJxDwK3muhJlVHtGY=; b=nIysBfRhZnoXy/
	V8uCJmGMUuQsg9as4YZyvyaicAMCxAk59JHNTUTy/smTuX/yXiSBChUCRhcWJ0JiXIBUkpCwh5Cfp
	rXBYsAEjdk4X0LBlVwvYRgc8zRPYv/zg8Ct4xQyndGhJ9P4wIkFXJxc/bA0x6L7sgJvx4qAwxPEaM
	hbB0XF8Pe1UOYJc2Hg8Em4r2HV5+VVFmMJt1wAR4agwcBhhx0vS9l1Lz4m3EnQzUaKW1nb5WDcnij
	EEmi1Rp/IkVAsc+3f+7ojLmqIIKPRJ1ykzMWOUvHv39AleriqOafci+bKxeSmxTmDtraiewUm6NfA
	VX3E/84q73doSK7lAyOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpc2-0002XT-U1; Wed, 13 May 2020 11:31:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpbu-0002Wh-1F
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:31:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id s8so20453101wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 04:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/Ambzc4/RQrE8zBZcRlDSvAzyYdjLZsqZpGTxOVxtr0=;
 b=QxVlO5EpxuoGUAVznRFFCdjta+iNxfYDREGBKQEWv8zTC3mmGObqSi59xTbY/TGnm3
 TkVd1nIDzDWGJOlIS0CTH+PenpBdEP6U2ArhnmgvnsEJJvHhuPAPdcFWf2kXjqtHTL0b
 XQY9SATlyiPR2dUVUdCc7btv9fut5KFSBHoML7uVWCUirGAjWW8bFFfmoxSsrgLE7K3d
 1NzViolD3wX4P+iJjY2Ou3ls8O19OsH8PI3hGHG/46XNUoXJs6K1hUoYjDNBpRlXhDll
 TjEaNywDzD51TKjdj+ECWNyX3PchC5hx6gfQXPVsMvppWrjcOmLxE6UjepyydcmucMnS
 59Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/Ambzc4/RQrE8zBZcRlDSvAzyYdjLZsqZpGTxOVxtr0=;
 b=bF3cKWr/QbCTyf759Thytkz/h8sfwyWugAxJ8S5Jgxs+CDXmjecmXYr1l4VkPUKvzh
 ivGWRMO1jhtCnecnEOheKR1C7OjYxYsieUedlxpByb0S7GgJvTlV0kIu+jCewAz09iqt
 bG2hi7VrNce5vkqz4atALrh8MDhnBHsmEQfFvIXMtOkWJoFZ34ZSgVEqQyNiq1RUAYQA
 6TC9HJkCazyw0vgk3QBa1S3sB9tX+NHilMOlMFB20V2CDisIiRqIUN+AGWtHRPGtufuG
 O6DescApwWLYQbsygTcTK7otmFZDZo7Er7jXxg/plGFe1gn/PMaRGfjbZEXFIE1pcFQz
 1m3w==
X-Gm-Message-State: AGi0Pubh1FW7amtI4PY5B45RgEZ5MUs4ca9rG7sSj2j6lrNTU9NVBrau
 c8n2sayY7z7wSs44HwRGHTMKlyth
X-Google-Smtp-Source: APiQypLzco78WgZlr7iRl0WAyVLGO1SbGEBrquQGC0nEqqBBWSQo6DLxXxLcgN/LeDuecWnVXkPNoQ==
X-Received: by 2002:a5d:49ca:: with SMTP id t10mr22120919wrs.285.1589369496335; 
 Wed, 13 May 2020 04:31:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id w9sm28742611wrc.27.2020.05.13.04.31.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 04:31:35 -0700 (PDT)
Subject: Re: [PATCH 05/14] prctl.2: tfix listing order of prctls
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-6-git-send-email-Dave.Martin@arm.com>
 <1bb991f4-176a-a74e-01fc-c73b49ed77f5@gmail.com>
 <20200513112133.GH21779@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6ef9a969-3e16-e21c-f047-e5a471cbc163@gmail.com>
Date: Wed, 13 May 2020 13:31:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513112133.GH21779@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_043138_075126_EF01F416 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 mtk.manpages@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 5/13/20 1:21 PM, Dave Martin wrote:
> On Wed, May 13, 2020 at 12:10:53PM +0200, Michael Kerrisk (man-pages) wrote:
>> Hi Dave,
>>
>> On 5/12/20 6:36 PM, Dave Martin wrote:
>>> The prctl list has historically been sorted by prctl name (ignoring
>>> any SET_ or GET_ prefix) to make individual prctls easier to find.
>>> Some noise seems to have crept in since.
>>>
>>> Sort the list back into order.  Similarly, reorder the list of
>>> prctls specified to return non-zero values on success.
>>
>> This is a good patch. But see my comments on patch 04.
>> I'd prefer a patch like this at the end of a series, 
>> rather than in the middle of it.
> 
> Ack.
> 
> Ideally we could check the order with a script, but that seemed a step
> too far.

Quite.

> What's the view on having parts of the man pages generated, rather then
> being distributed ready-built?

I'm not keen (until someone shows me compelling benefits). Splitting
things up would make pages harder to edit, and IMO increase
the chance for inconsistencies in pages.

> If we split prctl.2 up with a fragment per prctl, we could paste the
> fragments together in the right order with a script.
> 
>>
>>> Content movement only.  No semantic change.
>>
>> And explicitly noting that detail is very helpful to me.
> 
> Unless of course I'm lying ;)  (I'm not, but I won't be offended if you
> check.)

Actually, with your first two patches, you impressed right out of
the gate, so my "I'm gonna blindly trust this guy" needle already
switched up pretty high :-).

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
