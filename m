Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A81D2DD54
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RBSoGQ5VesSpFaFWW/I9wgCRNMz4+6uxXOS3+UP47l4=; b=sK5qC+uOKI+9Iru+EcCsOC8xc
	ErOkyfV4nMnRz/+qgJLB9dZ4kKgT15pdHr81ZNnhBrZIKpvJI1s3q972GR2x3orRji915s8MuN2ml
	wgW6ZaXzLnxRZwu4TZqc2GSHrDeushgt7efCrS2kBfEBpAjTBBqvz1kvZ/Cb/CHprrbWFS4l9wKcc
	ZFa4RunuHK2CpHms9B6cTX5cylBHf4iXtArTS86AIjt6vdSaVOlDo1+EnXoQl7Y9wXlifrurEZJKu
	Oa5ucPzh5uFZk7SXws719O4QkrggGfLttRJhykjyquf61BfUzR6j9J/B4j+tT0vlAq8cEzkVpUvH/
	XiMHi95dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxsa-0003lQ-9R; Wed, 29 May 2019 12:40:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxsS-0003kb-Nf
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:40:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id s24so886178plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 05:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=P4/IUlrr1evi37yoa1wMPw3lbTyHMqQSbn2mIGZdBv0=;
 b=oMtyHtBB6St248zv/nIh+eoYH0Npn5mikvEOv/23yRg4eu5mo8B7V17JXyqlmIg+OA
 efL5010uCcLw/WUd3vGWRxxT/KRk48hM5gHDKt9DMjzxlZsTI07gJ06Iofa/sPC7P+ig
 AUpg3S0nmjUPnudA2vVEXqE6CKXpg/UZ1wsbLBplMvIqHZ0An4522dvy6vrus7y6d9ke
 wHCbM1+FJ5bM1AoRq7hhT9Bjl76W9OTYmj69UDXE9arNOuNe5US43CkJjhOGVfg1NBoF
 qP5KCX5hkHy4S7ks9x36EXPbRHTr2ODY6kvPXny1S8nYUNgOMGCq3OhMErJQyVbgoLW6
 yszw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=P4/IUlrr1evi37yoa1wMPw3lbTyHMqQSbn2mIGZdBv0=;
 b=MUxZaFjolS5H3G3fYIeDISU2Jn/NHdojrmk1QyOTclqS2Tn705cdPdOpsD0ud73cXR
 Mitn/Ycv4cbLKpaW8rUJH55926xy/r0GXekE08K8QzEZFcVCljgiJvypeFqB9BZ6aLOn
 ODVJuHSC1/EQBCbey84wn52VGXPx2MKmwikUqhS9PDJ8lwKAhETHF8DnDyksMtOabJSl
 JEDu0dZZhRabs7jKikDidMGMVKj9LMBcDYHzoauPBXg4KrallnU2pEJJ4rnYnE1Degib
 mKkn+pkLmLoPnYvIyfoIE4TdziKmJZ+Fl2s+CBSfwlAisHQPJKLrRnh0HTxXUeRIPE9g
 dAAg==
X-Gm-Message-State: APjAAAUumm/Jopk1vQr5GWHiO2SegLJmDw2Nr901I8q3H2uIWDXAH4bh
 gVNAzO+MR2vO8lGXNKCqh6A/Lke9BqQ=
X-Google-Smtp-Source: APXvYqxVUuOzE4bbxCoVGQ2RIzcnimP9AyU9zP/BbHERJRgmIpigahXeeg+v8KhBpZpLPyRNv6JPyg==
X-Received: by 2002:a17:902:9889:: with SMTP id
 s9mr7508574plp.65.1559133613833; 
 Wed, 29 May 2019 05:40:13 -0700 (PDT)
Received: from [10.44.0.192] ([103.48.210.53])
 by smtp.gmail.com with ESMTPSA id j14sm21177611pfe.10.2019.05.29.05.40.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 05:40:13 -0700 (PDT)
From: Greg Ungerer <gregungerer00@gmail.com>
X-Google-Original-From: Greg Ungerer <gerg@linux-m68k.org>
Subject: Re: [PATCH] binfmt_flat: make load_flat_shared_library() work
To: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 Jann Horn <jannh@google.com>, Andrew Morton <akpm@linux-foundation.org>
References: <20190524201817.16509-1-jannh@google.com>
 <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
 <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
 <6956cfe5-90d4-aad4-48e3-66b0ece91fed@linux-m68k.org>
 <7cac8be1-1667-6b6e-d2b8-d6ec5dc6da09@physik.fu-berlin.de>
Message-ID: <246af630-5957-0cdc-491d-5e59c520ebf6@linux-m68k.org>
Date: Wed, 29 May 2019 22:40:07 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <7cac8be1-1667-6b6e-d2b8-d6ec5dc6da09@physik.fu-berlin.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_054020_771131_DA015850 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gregungerer00[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gregungerer00[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, linux-m68k@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 kernel list <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29/5/19 10:32 pm, John Paul Adrian Glaubitz wrote:
> On 5/28/19 12:56 PM, Greg Ungerer wrote:
>>> Maybe... but I didn't want to rip it out without having one of the
>>> maintainers confirm that this really isn't likely to be used anymore.
>>
>> I have not used shared libraries on m68k non-mmu setups for
>> a very long time. At least 10 years I would think.
> We use shared libraries in Debian on m68k and Andreas Schwab uses them
> on openSUSE/m68k.

When used on no-mmu platforms?

Regards
Greg


> So, they should keep working.
> 
> Thanks,
> Adrian
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
