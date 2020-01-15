Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9D813B8E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 06:14:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOBHWoDCw6e9T58hbgooQ76M5xHwmZL7QsZQbQAZCR8=; b=k9NCwM7sfPaf69
	bh1yRnOEciJSSflTMOVmIEd3HLAIOyKFgYI/ypbq5zdP7mIHsZsuqtvufemyuC4nJvYOiaXKBjNbv
	imKhN9BUbsT/6lpGGxggXlZzwfmjTOUfsLBQW2x/e7WgHYmiPjKAaCANYVTgJskfgP3VFnvgprP8k
	+hlhTu2vv12lZNvZcMLUG1IlAC32+zWPZmcDFjGScmHdWJYI0cIiCmYp7T8tKitl5elsnlVv5Pgx+
	F+aSxN/tItfPWTOGqtrFf/XM6yvbuQSZCKBjj7XNTPafjUHkWCAyw9XuoENA3bnexcGvLWgTi/l/Z
	4lovcs6m3Z/lJyz00eQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irb0l-0002vD-Tm; Wed, 15 Jan 2020 05:14:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irb0e-0002tQ-V2
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 05:14:30 +0000
Received: by mail-wr1-x441.google.com with SMTP id q6so14378930wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 21:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GkaaiWNwz+qLk6MBn6/v2/U2WtP9s7PZHQQeckfaXS0=;
 b=rB+L1ofAAmW/AGoUaavXjPvXvD8vfZNF+XxuNynvKqF2IiLcGZGaRppgfofu6fRqRE
 hIlRbwuO5PbFgz7fQeqcTzDh4N1YQUzSx7LpTzhpAZ0plt+NPB/ijHQ2f2+Kt5aPB5fZ
 JQvlU84YrDUue/v4k+/dcglGpVmW5jXG8T18E25Ho94+lCqXiIYOtq4FhAyP9FrRZUfT
 hwP3vyZYXp1seZ/DTY+GNdquPUHjrQ4QTF/TdVcDnfQps9exfIy3auQfU+GtBMjLKKkj
 s5SpMMXeCes0aavCYmD5lauELB6EOe/giYupd5J18KVyczw2mFhXbKr4xDmfJ1hXowVo
 AcdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GkaaiWNwz+qLk6MBn6/v2/U2WtP9s7PZHQQeckfaXS0=;
 b=Aq1ooV2KJatizWLBzzqcCAKukWykM1bCdii7W81sS+G0xX6X8LwoKNKhWCewW7uZYb
 eSqmLTjc8axAUp6QLBNLC4h338iLttxMQiHWlHI0kv9A5Er2JsLk38YMrWqpw5kZ7pQs
 Zifoax3YY1r6jfyanf8hi/SCX0uhSSoYe55MSNFHL3UH7dkUSLTu6l0zdiPM+O/gqyWe
 NF37dRCEbL5fFtuaT4VGjR0/Vo8DEkJ1qoNFnglvc0qhcawZZogW2+rNXd0rtM9p71a/
 UXkMs/zNWMpOKh7D5qFWraA5jbW8ewcXSK11NZ+7TjG8hG7NoqGl+pskQbAbKtLsvsww
 A6EQ==
X-Gm-Message-State: APjAAAWm3d3/Usis9/VY7DABL2RT5+WSLSkbepJxS9uOjT1gLIbx4d4L
 dMG5KB85xkBu+IzhU4YbTSAB0LSaYlo=
X-Google-Smtp-Source: APXvYqz+V7Ojh808no3MT6bEHx+LDotECTzRt8tXKdUgTZONiZK1I7HLZDZfyHzIHmUaeJpxSHaQew==
X-Received: by 2002:adf:fe86:: with SMTP id l6mr28150110wrr.252.1579065267152; 
 Tue, 14 Jan 2020 21:14:27 -0800 (PST)
Received: from [192.168.43.97] (cst-prg-10-109.cust.vodafone.cz.
 [46.135.10.109])
 by smtp.gmail.com with ESMTPSA id c5sm22521495wmd.42.2020.01.14.21.14.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jan 2020 21:14:26 -0800 (PST)
Subject: Re: [RFC][PATCH] ARM: dts: renesas: Add missing ethernet PHY reset
 GPIO on Gen2 reference boards
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20200112191315.118831-1-marek.vasut@gmail.com>
 <CAMuHMdWc97=-9yBF0CJDZpWH9ZGX9uoDY_t6E6TQNc4MO93W_w@mail.gmail.com>
From: Marek Vasut <marek.vasut@gmail.com>
Message-ID: <cfb752e0-46b5-1936-c3f1-8c6d781bebb5@gmail.com>
Date: Wed, 15 Jan 2020 06:14:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWc97=-9yBF0CJDZpWH9ZGX9uoDY_t6E6TQNc4MO93W_w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_211428_995897_275CA30C 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/13/20 9:58 AM, Geert Uytterhoeven wrote:
> Hi Marek,

Hi,

[...]

>>  arch/arm/boot/dts/r8a7790-lager.dts   | 1 +
>>  arch/arm/boot/dts/r8a7790-stout.dts   | 1 +
>>  arch/arm/boot/dts/r8a7791-koelsch.dts | 1 +
>>  arch/arm/boot/dts/r8a7791-porter.dts  | 1 +
>>  arch/arm/boot/dts/r8a7793-gose.dts    | 1 +
>>  arch/arm/boot/dts/r8a7794-alt.dts     | 1 +
>>  arch/arm/boot/dts/r8a7794-silk.dts    | 1 +
> 
> I believe all of the above (except for stout) are available in Magnus' farm...
> 
> r8a7743-sk-rzg1m.dts and r8a7745-sk-rzg1e.dts need similar changes as
> r8a7791-porter.dts resp. r8a7794-silk.dts.

Do you have those two boards / can you prepare and test a patch ?

[...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
