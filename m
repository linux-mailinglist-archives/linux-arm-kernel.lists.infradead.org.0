Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A965F1C11A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 13:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNvCTmydGOxF/Jokb14Flput/D6IMkxGxoC8FfhZ7k8=; b=GmdNRlF7sB3m2C
	g5yz7RumZSnPKF5hHBYxBeUT+BxvSLcMYQj+yJ+ukf/mSAvi2oLxV2+r5GiFgizQz9dQLIQNCftm/
	k1Z2npkIEfkZZssksykpZFCB/IifBr3bR+vfoc+5W0wUwlXAwOdMGjQAVa5KCLKtj2JDMzjnPx4Wz
	01+sKkKPBqozpXA27u/FpYd+zh7Iyjb1rs1Mqec93nx0AZ1vWg4xy0FGgavMBJejY9NET7tPY/F16
	VnuOOrryyXibhhbuJbRB7Sds0nDa4YyOFlrRyIdSn9hXuWB7DNJ13KV6G2pIYQ0zmlwvLJc2kSkgj
	HxLAhmiH2bTRy6kXR+gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUA0-0002cJ-Rl; Fri, 01 May 2020 11:48:52 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUU9t-0002bC-Lx
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 11:48:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id l19so2346852lje.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 04:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dig23RuRs189LdUum62TrNfBwCZg16Ct3kOkDao4T0s=;
 b=Sf4z3HGyNgtaUDgQdmV4w7ppiVAD2yApc+2f9DshZTgeeHrXWs3GIl5v2JZMMdTneJ
 UkKGKv1uBzbPWEaua/VyDRgfiQl0hhxx6pJzgtDZRCiEj+3rnr/mFTogG+IxuGaXR0xs
 NS1w+5UJuaUac65Ie6qFs6oJIQ0S55SK+UKiHt+p0RLrSZjmmmeit7ALgu+Mbv/5/PAl
 6cGNtly/IIRJmpAyArs4juRFZom/0mUfUYpG+LPIpJh0qndu1yY5NgtBhEyAmp90LR4E
 PQgGli3fJrzDqpVHL3sc8vM+tGrVA6X7qk1Sq0dLWPEcN7/MO4aDBelvs5sIflmIWKcT
 ZVIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dig23RuRs189LdUum62TrNfBwCZg16Ct3kOkDao4T0s=;
 b=nAnm0C65PmYQherPIWEZ7Sn3RZYLs5kR+6W6cma6UuUaeObHtbbk/YTTkh8sj3vAao
 VlyTiXG/W5VUddEhPXkbYlIAMAD87Jw/Vijex3gSGUdi9y6T6rVouooBQ2bUDa3Kd4Nq
 bPjaeqgtJPCrSS0/jgtN1iV2XpZrb07RrjVgROrvb6XsbJiTqTNhBdK3OgUL5aGwNlbd
 MXA2/kFzgJtMMH5uQ1DdoVACA4R2ZkcNB+bqybG0s1PqQVcRLoLsBUUxZxwvOLxs5pZq
 RslmX9/dR+9tLZmAvoN2fh4NoDpxMtGSv23gaND0JrCSSuOPAZk3if6DCfuXI5ClGQnH
 nN0Q==
X-Gm-Message-State: AGi0Pua2/3/iykkdzp87N1ympu4rgckSh/R5zIasC2do+wwRhtiwdCFc
 3h3iyCu/HIvkQp0PWJR4Yog=
X-Google-Smtp-Source: APiQypIWbdKP3x5oc5BQj1xS00WNTozEO+AuxkfFnYcJu3dZqHObbFTxNVNKA+3oP/IeUHNQRjeSwQ==
X-Received: by 2002:a2e:95d2:: with SMTP id y18mr2259265ljh.65.1588333722221; 
 Fri, 01 May 2020 04:48:42 -0700 (PDT)
Received: from [192.168.0.74] ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id g19sm2023579lfb.30.2020.05.01.04.48.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 04:48:41 -0700 (PDT)
Subject: Re: [RFC PATCH v2 1/3] printk: Add function to set console to
 preferred console's driver
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200430161438.17640-2-alpernebiyasak@gmail.com>
 <20200501014454.GB288759@jagdpanzerIV.localdomain>
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Message-ID: <b1b5514e-936e-a5e4-3dd6-3e640a819ffc@gmail.com>
Date: Fri, 1 May 2020 14:48:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200501014454.GB288759@jagdpanzerIV.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_044845_722265_4D7B015F 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alpernebiyasak[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, Feng Tang <feng.tang@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Arvind Sankar <nivedita@alum.mit.edu>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/05/2020 04:44, Sergey Senozhatsky wrote:
> Hmm. Preferred console selection is very fragile, there are too many
> setups and workarounds that even minor tweaks introduce regressions
> oftentimes.

All this would only execute on #ifdef VT_CONSOLE right now and I think
they can be gated further by a new Kconfig like VT_CONSOLE_PREFERRED, if
that'd make it better.

> We have, by the way, a pending patchset which changes the same
> are - preferred console selection.
>
> git://git.kernel.org/pub/scm/linux/kernel/git/pmladek/printk.git for-5.7-preferred-console

I was working on next-20200430 where that patchset is already included,
can confirm it doesn't solve this problem. I hope I've correctly avoided
breaking it by setting its "has_preferred_console" variable (thus this
patchset somewhat depends on that).

> Let me take a look over the weekend.

Thanks in advance.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
