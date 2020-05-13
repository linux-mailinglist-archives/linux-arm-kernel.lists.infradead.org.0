Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B5D1D11B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WK6uO+EgrFfwpVZN9/4rlgFaAO0lRf5gDBnUAocolbA=; b=YzJfRAu/hy6t1I
	yZrn02QGPll3XM0jaKxwloGrrtsFHHDpqmo3o08ucXod1bG2wMtG2Tiedi0U+PihNo4cycW0S6Ley
	0KpznUjDICBDv27Oe/+jhUvh1ZbB8UBkP122O1JH8d18J62Xaslm9PRQGTqJBScH8C7LoqBR1sMsh
	O/9MVlREE9EYbamg4MNco7xFeoAjLJpYuEC5mN3+fKSYpAyDgW59j2zPJSP1nY75/7Qlj1rkMQCqP
	JjXUtQNaAIPHtryfUHW9xNPzQqI6UTcEbLaU8zby4fHXXo4NM3gmHd7YG7wXtWoVrmo8bPcVOfTuM
	xPB2bHm8KVAHjFhVTqLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpqP-0004PI-5h; Wed, 13 May 2020 11:46:37 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpqG-0004Nd-1y
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:46:29 +0000
Received: by mail-wm1-x343.google.com with SMTP id m24so16620507wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 04:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ARL8xyGIaHXk2o/Yx6BRPMsb1PUzwyBj6k1y6av6itM=;
 b=k+TdqyRgxoWkIW/nLDd9gMdzrW/XY00+H0ej5/9axyX5SHxJCJ7zz/G7aihleAv6Sj
 D8YRA5iMpWN5myZVktgDK+89dBIipQ/w03eq770K1TV7W5k0PLrdCoJ/PhewQXpk3wIB
 S9Kcdh15rqYlQ6EP1uJlhCbRsPihon2w7hPdu50kXd7TuMFzSU9cWDqfdhWP5GD5CIvs
 iYAdF+fBlAEQZKGOHNc3s3PZ18doU4p38k/ob2oAqhAkYY9qM33MJHmICex4m5ZunNTM
 nkrQmXFKyecXQzePJRJOekMhyQSi8trsjbMT9I2uh0lfuud1X85xQueyFFkf4pBjRCSh
 s+gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ARL8xyGIaHXk2o/Yx6BRPMsb1PUzwyBj6k1y6av6itM=;
 b=ZBrWLL7Qhtf9ErUC9V8l3t8Dg81JmMW/HNQg3JFkquwq41F4HkZLSb9SiTqggBb308
 i4XV2Vs32SIFbAabpjEcD+3IyezYXHD5fA2v4pRoS/agO6GrYUuzdZHzqYfLto0jGKrv
 +2F3KFuxLisETXkjUrNbIAjTuRNHr0Rtx4pjaGtTzMNPFvNsceveAGT/8RxROGTQgfcJ
 HTC3cssNQw/WxrS32HYoXxK+R8efeePK3pkv5Wx8KIHQgjSAeX4YUfl/a7Rd8gO7Ew2A
 jv0e6hPrAqA8UZ/56DgJWkB1JtQsA5/6Fg1f1Su7Zs8oNUsJIMC75j/8FeH7aLOY6rJb
 ImJg==
X-Gm-Message-State: AGi0PuZyfDeI1aU/uatPOZF1EcyWlkaqD4lkg/UtLrvx0/5OM6tLmTBb
 XbqNBc1urEWtctk2hvTUDEFuPFLg
X-Google-Smtp-Source: APiQypLQuhIabEH8lIUINjIPJ1dcC6aBSIHkesphsAc552ZJMv8iBptiv4k4OVEfnTCCPj5qdevp+w==
X-Received: by 2002:a1c:990d:: with SMTP id b13mr41835949wme.179.1589370383490; 
 Wed, 13 May 2020 04:46:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id v5sm26892576wrr.93.2020.05.13.04.46.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 04:46:23 -0700 (PDT)
Subject: Re: [PATCH 06/14] prctl.2: ffix quotation mark tweaks
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-7-git-send-email-Dave.Martin@arm.com>
 <7afe32a5-9675-74d4-7c39-f1271d475afd@gmail.com>
 <20200513113949.GI21779@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f575e35d-cd5e-5808-bed4-91bdfb9c2905@gmail.com>
Date: Wed, 13 May 2020 13:46:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513113949.GI21779@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_044628_102534_305F84DD 
X-CRM114-Status: GOOD (  23.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

On 5/13/20 1:39 PM, Dave Martin wrote:
> On Wed, May 13, 2020 at 12:11:21PM +0200, Michael Kerrisk (man-pages) wrote:
>> Hello Dave,
>>
>> On 5/12/20 6:36 PM, Dave Martin wrote:
>>> Convert quote marks used for information terms in prose to use
>>> \(oq .. \(cq, for better graphical rendering.
>>>
>>> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
>>
>> Again, this is a patch that I would prefer to see near the end 
>> of a series, rather than in the middle.
>>
>> I'm currently agnostic about this change. But, I do not
>> want to apply this patch, since no other pages in man-pages
>> use \(oq...\(cq.
>>
>> I haven't applied this patch. Luckily, that does not prevent
>> any of the later patches applying.
> 
> I'll be careful to move this sort of thing to the end of a series in
> future.
> 
> This was a provocative patch, so I'm happy for it to be dropped.
> 
> 
> The main motivation was that ' renders to PostScript etc. as a closing
> quote, which is fine for apostrophes but not fine for an opening quote
> mark.  Most of the current quotes in here are actually ", but I don't
> see an actual promise from groff that that renders as a neutral glyph
> either, so it seemed best to avoid.  For now " does seem to be rendered
> with a neutral glyph (i.e., neither opening or closing).

See my commit 11b0b31a14bd2c7dcb0cf7bc815b4c1887444a89, just pushed,
which addresses the ' issues.

>>> ---
>>>
>>> Note, this can lead to misrendering on badly-configured systems.
>>> However, many man pages do it.
>>
>> Can you say some more about this please?
> 
> Terminal character maps need to match LANG etc. in order for fancy
> characters coming out of nroff to display correctly.
> 
> ssh attempts to send LANG across, but terminal sessions between systems
> that have different locales installed can be a problem, as can dumb
> serial links that don't magically pass the locale and terminal type
> settings across.
> 
> The fact that I hit this problem a lot in some situations (particularly
> the serial link case) suggested to me that fancy characters are
> considered fine nowadays, but perhaps I'd need to dig into it some more
> to understand the situation fully.

Thanks for the clarification.

> (There are one or two ' that should really be \(aq anyway, but I'll
> try to address that separately.)

See above. I presume that patch is what you wanted?

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
