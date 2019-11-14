Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F1FFC205
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 10:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DaUEnwmI4TAAybI4PAu12CSfMO60ph/omW2sGq9YDjY=; b=EEzThqJCJaomAq
	UUKi5Hu6Mr8218iO+JMl9L1kG6gl8OOZwShtJiyjcuHjJ5FdNBv6NQ1iVUJpv/LvKzXYqMDQrjzQz
	GT0cwzCBcxlVUT8vBL8v9O3eTypNivcylBTV6SJGuRVi/NpdSZi2TNtjm83xN7xlxNTmHiGqXSvw6
	LlGkINPmvj466ufjx0Bg3/w6FkiQEahoBHbZGEuYrcBMh1NFHlhGWdZcWuWWwgQBIt5RBCX5bEqte
	HQeVOf5YrKYc/+UYP4NO5tHeC75IGHfSy1ZU0KMrzDFagUTbHZMzynfirVseItNyD0YtZuyea1fs0
	lKoxBSaRmTkcZXZwxAEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVAzE-0001g8-4f; Thu, 14 Nov 2019 09:00:20 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVAz5-0001fH-UO
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 09:00:13 +0000
Received: by mail-lf1-x141.google.com with SMTP id y186so4404565lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 01:00:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PlNrN2GhAvRY7IW8hzvOGZWhxEVtG6SWuwKkUSlWRyI=;
 b=DqCtJziYkryUZAUqd2xAAGwJFBCGTywmDlEpqjTs1//7QvPdR0AwIUntDfUsmL7VXt
 inp5/f3kzSiCI/REeaZwhuroE7fO4RLz1hNiMXce1uHOOoWd/krMOrPvIsHk8VUu/Idx
 CVhp6Qxtadp2q8Bf0VYuQFMBrMOjcRmWU1E3U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PlNrN2GhAvRY7IW8hzvOGZWhxEVtG6SWuwKkUSlWRyI=;
 b=JXIke2+VZgpa0akBqzZuV+XxiR7RoFReU8TiHl77jiErD2nJRKjQoZXNMuldZxnlTc
 1/MFNv1EAvnv/MVRt8ZdBYiK99IzauO9G0bm11a20C+yplODvsH+9T/jgEFEcdZswqxm
 4+XmWz/hcWIJ4iyzWBxncfutRxZeLObAc/XtsnepsS61qqkMb7ZJMWSJTByUeVBPSgPL
 VQh5Ho5uLp5kZZhk7101nyRCX/QqCMZy7Orfj7XuFDMqYVHdnoQsSLfYIMU6tm6Fz2D6
 VQAJiiK/2YARy3K2RzSh2pVq9mUFUmD9hq5qmUQ+fm8E0zOGgZ1rYuSWi+2kXNz4NHMC
 M6yA==
X-Gm-Message-State: APjAAAU3xqFdekfv1/VxDidhKOf2k1NPmC5ScUolLzyGIOtzRN6j55lp
 hXlsHB+xeE/gPrjugLirEMckmg==
X-Google-Smtp-Source: APXvYqziuBwUwTFwvFITVp9Y42/Pf1aEQFfzH3vqpE2R1SKDE+E1rudpEqbbReFJja9okUlvGnJRkA==
X-Received: by 2002:a19:c386:: with SMTP id t128mr2627137lff.7.1573722009265; 
 Thu, 14 Nov 2019 01:00:09 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2073916lfi.57.2019.11.14.01.00.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Nov 2019 01:00:08 -0800 (PST)
Subject: Re: [PATCH v4 30/47] serial: ucc_uart: factor out soft_uart
 initialization
To: Timur Tabi <timur@kernel.org>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-31-linux@rasmusvillemoes.dk>
 <CAOZdJXVQ_wQLK-4uutb2e6zOt0b8FBVY3qoWdoo4UM8p7=bV0A@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <73337067-953c-55e2-986a-24116fb10544@rasmusvillemoes.dk>
Date: Thu, 14 Nov 2019 10:00:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOZdJXVQ_wQLK-4uutb2e6zOt0b8FBVY3qoWdoo4UM8p7=bV0A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_010011_981127_217C7C4E 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/11/2019 06.14, Timur Tabi wrote:
> On Fri, Nov 8, 2019 at 7:03 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
>>
>> -       /*
>> -        * Determine if we need Soft-UART mode
>> -        */
>>         if (of_find_property(np, "soft-uart", NULL)) {
>>                 dev_dbg(&ofdev->dev, "using Soft-UART mode\n");
>>                 soft_uart = 1;
>> +       } else {
>> +               return 0;
>>         }
> 
> How about:
> 
> if (!of_find_property(np, "soft-uart", NULL))
>     return 0;

of_property_read_bool() if anything. But I didn't want to do that kind
of transformation - just a pure "move this code out and fix the
indentation" with the minor edits needed to hook it back up where it
came from.

> And I think you should be able to get rid of the "soft_uart" variable.

Eh, no, it's used in several other places in the driver. I kind of hope
gcc is smart enough to see that in the !PPC32 case it is a static,
never-assigned-to, never-escapes variable so all the "if (soft_uart)"
branches go away, but that's not really very important.

Rasmus




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
