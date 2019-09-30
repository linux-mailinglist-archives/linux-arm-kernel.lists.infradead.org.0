Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BD2C2453
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k73v99yOLPgFBTdbLAc8QZmDwZegFZq8pw/lTuXIhYo=; b=KZHFGDnAraig22
	9QbqlIXFubViieIWiSiPkhAUmWo3d/JT6ZEoSKoJdenIydvcXadS9eatOb3HmlSyJbLqBRlnJS2fG
	0L+VQIt6xJjXAWc1+WVeyrWUBYm4dCnAVRVj09PugATdyQ0IoJ8ZpeS1xUuaYXzdiB5oNC1BQ9G5W
	mNSL58mFdKvhv+S7tvBLM+yFeFCIizcx45tarugepNUGiCArTSocT8t5yBbdjwkRXyjkqDCtYUoO4
	6UpessjCKG5x4cCFO/H99jRUEm0WgVtUQE/T5N6PpWBdV9CjRXMGTWKns6b8LDIdSECFXOEgcnOZ+
	1SLS+Q8dTBd/vnHOKH6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExeq-0006hU-EP; Mon, 30 Sep 2019 15:32:16 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExee-0006fv-Ap
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:32:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id y22so5828793pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 08:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=b9OIKjSpfkGrTr/Y+X6VF1Witd9jN67vbQVGdxPPoBs=;
 b=DspFEq75s07cCzNf7CqP6PTbMlsS4I1/Y5EMMidfiBKMKPEOVkzHyfB86z4hXh5CYv
 Sb13RT2+eu/w7qNYHeavj7j9zZjYB4aDH3fEkvuCes729VTlJBHJ1UjaI8ztmdgmBRm0
 Logvd/uy6w9zJVAxYWfvbsQjCx/vF255+NMRMeA64Lsl98tV2UihbhqADqSgR+A+Wlcu
 UlMetQe7vajfPbtYGmgC1Hf8KI1Lflf6YkdwaEoUoj9yi9278RdZoZOXz55gMP3h+h2i
 44VWq9QDXxgm6JQhORBO8WzpXqktlFGS7/AfmaeTTTtbPS+8pVDytfqNGGiZ6sYMaHNg
 3CHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=b9OIKjSpfkGrTr/Y+X6VF1Witd9jN67vbQVGdxPPoBs=;
 b=brkU/6ZdQLSpxYGG79Wk/mkEPMBc6XlrGf069eKPJF0Qd52yBRKHQdjy3g9oF3dI2D
 Z2fRX97kPrlWkzDaYneoouMiGFGEiyLyCTq9NXu6dVqGswA6esF8ISRWGADq1tL6XVbW
 vq6T+BYF1RDsHWEDMo/hYQJSdv+zipZxYcpehG/9t7Go4fe5vxVrAqS4W/34bGVKDwan
 Pdyjr/DGQeyrGgRscakCFtTdlIKamItbtvaj0zBN7/4JlMHX1YJWUMgfMscaUe7zicyB
 Dl3/x31ODkWIyMUkFuvZvCHxIxLI7bRADqZAIqrrgxKUnQ47UfXiM7/JhCXtMU90H0V0
 +K6Q==
X-Gm-Message-State: APjAAAX/sX2/538We1mkgF3DvG8uwzUAANO1oJ5XV6196rdZXjoG6rJ+
 KE3tVhbsHkN1X+DeM7XFkRYIdw==
X-Google-Smtp-Source: APXvYqydQjTboQcTPVReW9T7Hi/m3KQq6ErGddNRlsfOxd4kT5ADyRwF+TwSTZBJlbg8hvOPivEyBA==
X-Received: by 2002:a63:cb07:: with SMTP id p7mr24892312pgg.232.1569857522901; 
 Mon, 30 Sep 2019 08:32:02 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id y7sm11869079pfn.142.2019.09.30.08.32.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Sep 2019 08:32:02 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Jerome Brunet <jbrunet@baylibre.com>, linux-amlogic@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 2/2] soc: amlogic: ee-pwrc: ensure driver state maches
 HW state
In-Reply-To: <1jd0fi19dn.fsf@starbuckisacylon.baylibre.com>
References: <20190925213528.21515-1-khilman@kernel.org>
 <20190925213528.21515-3-khilman@kernel.org>
 <8936e777-8996-5c7b-ea9d-8e17c8d6c4b1@baylibre.com>
 <7hwodulvu6.fsf@baylibre.com>
 <21eafa69-fe26-2df1-d187-cddfe5b37951@baylibre.com>
 <1jd0fi19dn.fsf@starbuckisacylon.baylibre.com>
Date: Mon, 30 Sep 2019 08:32:01 -0700
Message-ID: <7hv9t9g5qm.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_083204_372679_C40871FA 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> On Fri 27 Sep 2019 at 08:37, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
>> On 26/09/2019 21:08, Kevin Hilman wrote:
>>> Neil Armstrong <narmstrong@baylibre.com> writes:
>>> 
>>>> On 25/09/2019 23:35, Kevin Hilman wrote:
>>>>> From: Kevin Hilman <khilman@baylibre.com>
>>>>>
>>>>> During init, ensure that the driver on/off state as well as clock and
>>>>> reset state matches the hardware state.  Do this by always calling the
>>>>> drivers 'on' function, and then callling the 'off' function if the
>>>>> HW state was initially detected as off.
>>> 
>>> [...]
>>> 
>>>> I don't see what you are trying to solve except simplifying the code.
>>> 
>>> Simplifying the code is a worthwhile goal on its own, but that's not the
>>> only thing I'm tring to accomplish.
>>
>> I still find it ugly to power_on a domain to power it off right afterwards.
>> The issue is with the CCF enable handling which is not in sync with the
>> HW, if you boot with an already enabled clock, it won't be marked enabled
>> in CCF, and it's clearly bad when you want to have a fine-tuned gate state
>> handling.
>>
>
> CCF should disable unused clock so, in theory, you should not have to
> call enable() then disable() to get things in sync.

But CCF won't disabled unused clocks until late(ish) in the boot
process, which is also when the unused PM domains will be disabled, so I
think there's still a potential for race between the late "disable
unused" features of clocks and pm-domains.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
