Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28328FD772
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 08:57:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhuS/GlxKMtx/BTyfXghElnz2+yW06M4PxS8iFlAGAk=; b=GJmKtMVlwmDHhP
	A+wh308pX0tTltdsj9vlYlMlA6EGEzLnNCgS6QWBPLAkPMt6d7+1M+dDHdnqZEc6BSAhaVbrJuxAY
	36mGx4dknswLkhZ9QW9Z3/JF5dtzRFlIGRozs1ZJvNB5vlTjgUlylwBzgH1mQDJnh0m0ZhLAgmfi/
	A5KAicZWEMHRIoO7y/MyZpOCaeBQZYeT4S1s0/ewEaN5adz2HhaqTFwMHurwHH/2LKVoJf+L01ZLN
	48BcfD3vmMEEC6+PB1ID6SRmc5MdoxVTFkRgdUaqpIs4oUjGCmT6qb91aA7RxYy7NX4WrkTecQZi9
	+/gxJ6DesQCvop/Zkvrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVWTm-0006Wn-3Z; Fri, 15 Nov 2019 07:57:18 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWTZ-0006WT-Pg
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 07:57:07 +0000
Received: by mail-lf1-x142.google.com with SMTP id z12so7275029lfj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 23:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zLHtq3yfrffU9o2nF0X7zoTmdgeT+a2HOFrUz+0J25Q=;
 b=BjHqHXiGMgpJVRBuo+lq+sEes/L+3Pgkfq4t22+sAm3ZkEfNZJjCgNxK0Lq2+SC82z
 q4IiSNGldEN1uq+0oO7YsbEQj/jG8NjDGr2TQGUPclpVxjdT+bLba2JJiXE7NvHKORtO
 xVd6o/D+7FumLWsNsyWQxMok7BRgJFk6bpv/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zLHtq3yfrffU9o2nF0X7zoTmdgeT+a2HOFrUz+0J25Q=;
 b=UbYgPZD9m8NakDyKrE2vvRDHcPysYkTol5kbRZlpG9oDJh3Rd7mn0rSdjghf0sUyM/
 obmrG9Gjulqvs5lrGJDeHvqWZCAeIx5d99Q01wY6Y4Nxkggm2CgNyxyvo1FwBVBtuh7e
 sYH5PXWri7whHPnCE6IcB7JhyjRkEutVRCf3GkcB6r4uVwuTK5nLs+bVU7cQDoUNyBiQ
 ihN+/xTilDpQNjypUu7mLueL4+EeOM4FBLeiyD9tsPLPGlmFqqkeDeMcifhao8Nw39lE
 hX5aEAny6lWqk9hzY5gwyQXNB/+NtsTJyJ3bPjSrmFGptmXZDe67WosdfBKZHzWrio+x
 43DQ==
X-Gm-Message-State: APjAAAV5SmlL/f9ZUwSPuFRdx0sbFDSB/EVG60Exx/QdKqtJ14TCIkqx
 I3XT8tw+ttUfHJRyR0EDnq2gbA==
X-Google-Smtp-Source: APXvYqzS4mGv0Td6lhMx6P1LJw0rbb74jK3Vo5agUi9HiQO2P985F1jTJV8/p7ydSoDXjafwq0X1nQ==
X-Received: by 2002:ac2:5236:: with SMTP id i22mr10287608lfl.19.1573804623889; 
 Thu, 14 Nov 2019 23:57:03 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id z21sm4888837lfg.0.2019.11.14.23.57.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Nov 2019 23:57:03 -0800 (PST)
Subject: Re: [PATCH v4 32/47] serial: ucc_uart: use of_property_read_u32() in
 ucc_uart_probe()
To: Timur Tabi <timur@kernel.org>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-33-linux@rasmusvillemoes.dk>
 <CAOZdJXVpDSk2AWT7pYjrsk5HUmAeosCNf8zWX1CEEtZshAh9Sw@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <f584ea71-694f-3d3a-7228-9232531e3918@rasmusvillemoes.dk>
Date: Fri, 15 Nov 2019 08:57:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOZdJXVpDSk2AWT7pYjrsk5HUmAeosCNf8zWX1CEEtZshAh9Sw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_235705_833290_DBC43AA8 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

On 15/11/2019 05.25, Timur Tabi wrote:
> On Fri, Nov 8, 2019 at 7:03 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
>>
>> +       if (of_property_read_u32(np, "cell-index", &val) &&
>> +           of_property_read_u32(np, "device-id", &val)) {
> 
> I know that this is technically correct, but it's obfuscated IMHO.
> 'val' is set correctly only when of_property_read_u32(...) is "false",
> which is doubly-weird because of_property_read_u32(...) doesn't
> actually return a boolean.
> 
> I would rather you break this into two if-statements like the original code.
> 

Sure, I can do that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
