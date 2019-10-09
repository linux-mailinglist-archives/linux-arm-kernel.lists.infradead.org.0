Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45656D0E33
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 14:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AnfTZYoddDOVo9GUwnsnla4yr9NwmiZA6qhuT/t2++M=; b=LC87CvL4D2iDH6cit2mn8zSx1B
	5vjMnX7GYB14NN6llIojsX16yDKJ1Lev6YPYXLf8AAeHHsNzJrGDLF7h0YcnGDtGedfNJd/ydWm/w
	Qn2BCbBn39vvFiGV0KN9zV1PbsejABHgQi5PMUmzJvQPjFeyp2oatoSy82abG/xNVabWqIhDWD+UV
	mWtUqa+Jblo3MlzE3MAjY6enMGdhdbv+jfal181zTw4ZDyoqkuOHQDRytRoAHeoQcaOod9PZYtk0S
	U4oKw6NWTtAXK+04af6xc70dBk/18urWQ2C++0+RZ4vO2Xxhzgc0C3Lm8MBnvg3jKfvYvazE1h4PA
	7YC7oHMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAi6-0006kh-Ci; Wed, 09 Oct 2019 12:04:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAhx-0006jR-3b
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 12:04:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id z9so2595383wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 05:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=JO2boY9XIzvrkHIaKUA5yfCjUYvN4PStHFpOCRTj0IU=;
 b=Sb27QG4zeMrMyblGOWbVXVqhM64b9igT0eyvM0n+yMALY78Hhs/InNJRQZRzEHrM64
 pRRSbkPlsVh28m0q6F6QIgXdusWugNeN1FOB2DtjQlJXIUY0NADoTEyuIutff25FPG/9
 MqhCbG4cznoIHCysiEwXaiKnFRS+GLuZxg11+KHOFAqcCoWd1SOPSKoT4qcEBEcve4vR
 zvPgb2594qAI4ORHz68aXDFY9669SZphZcBQhDSmEmZJz6WmeY9T5p8Uk/bh31aijbZh
 XlNL50zWs3JbKYXeh8/3evsO5gF0Ux6dxAViQ3ZIZ5rlxHHXKi59dr5QhIzUDtoqnWWT
 WCWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=JO2boY9XIzvrkHIaKUA5yfCjUYvN4PStHFpOCRTj0IU=;
 b=eLDDZhvcuNje0OKbw6ZYkYn9uiRkKOA0Fcy7BDFcQdHzPhnZlMps6EPdP7KifRJWn0
 0yjTmcMN0iWOWMCsGAd170ItHu1Agl31gNE5TEI5cYtOW5uqr+E7DP1SwYSNyx8PwElM
 cG5/1lx8O178hWYPS6X0itIPh7dCdmI5g5wbVt9IJPZv0nIbKDCEwPqdw9YNPiODqOsf
 X4aTySyeSNywNgr7XNgdQpUoR+Z/tgTrbl9k/OrrT2omKuVHBwwqZQLI79Y8azCSPj2n
 rE51JiXcMJ1E52xu0o1aRuIqEpJYIPcleWvs7hEWaYcIWWiVoJZyie42DjTpzFqJ33yi
 H2tQ==
X-Gm-Message-State: APjAAAWr80indB6I8r6AScHqQH3Xq9hmq7KFpJwuNty3y/p1TejOmLL+
 b8FkySX4tjDfycIArdQwZ/I57w==
X-Google-Smtp-Source: APXvYqxfSJCr9n23ZoCYM//W85uSjfZCWYHlQ3vm8HJkbBUb5NQ2yN7Uw43iwcqmki/bK3aM87soog==
X-Received: by 2002:adf:fa92:: with SMTP id h18mr2616323wrr.220.1570622683443; 
 Wed, 09 Oct 2019 05:04:43 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b5sm1890075wmj.18.2019.10.09.05.04.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 05:04:42 -0700 (PDT)
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-6-linux.amoon@gmail.com>
 <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
 <7hsgo4cgeg.fsf@baylibre.com>
 <CANAwSgRfcFa6uBNtpqz6y=9Uwsa4gcp_4tDD+Chhg4SynJCq0Q@mail.gmail.com>
 <CAFBinCA6ZoeR4m4bhj08HF1DqxY1qB5mygpaQCGbo3d8M+Wr9Q@mail.gmail.com>
 <CANAwSgSeYTnUkLnjw-RORw76Fyj3_WT0cdM9D0vFsY8g=9L94Q@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Anand Moon <linux.amoon@gmail.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to
 y
In-reply-to: <CANAwSgSeYTnUkLnjw-RORw76Fyj3_WT0cdM9D0vFsY8g=9L94Q@mail.gmail.com>
Date: Wed, 09 Oct 2019 14:04:41 +0200
Message-ID: <1jwode9lba.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_050445_214029_74D95605 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed 09 Oct 2019 at 10:48, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Kernel command line: console=ttyAML0,115200n8
> root=PARTUUID=45d7d61e-01 rw rootwait
> earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
>
> [0] https://pastebin.com/eBgJrSKe
>
>> you can also try the command line parameter "clk_ignore_unused" (it's
>> just a gut feeling: maybe a "critical" clock is being disabled because
>> it's not wired up correctly).
>>
>
> It look like some clk issue after I added the *clk_ignore_unused* to
> kernel command line
> it booted further to login prompt and cpufreq DVFS seem to be loaded.
> So I could conclude this is clk issue.below is the boot log
>
> Kernel command line: console=ttyAML0,115200n8
> root=PARTUUID=45d7d61e-01 rw rootwait
> earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
> clk_ignore_unused
>
> [1] https://pastebin.com/Nsk0wZQJ
>

Next step it to try narrow down the clock causing the issue.
Remove clk_ignore_unused from the command line and add CLK_INGORE_UNUSED
to the flag of some clocks your clock controller (g12a I think) until

The peripheral clock gates already have this flag (something we should
fix someday) so don't bother looking there.

Most likely the source of the pwm is getting disabled between the
late_init call and the probe of the PWM module. Since the pwm is already
active (w/o a driver), gating the clock source shuts dowm the power to
the cores.

Looking a the possible inputs in pwm driver, I'd bet on fdiv4.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
