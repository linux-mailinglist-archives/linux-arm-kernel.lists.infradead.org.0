Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A123F180B26
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 23:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WswFIFadZr6832+iEQVm8pCuI/DtgrsBlBC4PQdW4SI=; b=AC3nvrdURy7mcr
	Ajp/pTRj/DZqfeRlnywSNV5UD9XJMfrDWItgFEZ+pxn03xhucnjj2e+hPYeNj+rbAgQpJ7ts3s6pb
	BTUz6cP7/HMgAfSCv8sgQkJqj4PY3DQ6i+VjRgLMCGzBLjM8WgNDEEds0XiFEYxtAnrDsNxhyUu6z
	hVN74oviw3EZo+gtAt5B03ET6nUa37wO9d7HJhD/E+g/M+bxH30UJ44JEuG8Yuun6dXzlFqZB522u
	Ai1WqX7VUnu9jy6fNs/MbDLN5JBLIJY1FgqcrKMdQR7UOkQjYA2OWg6Id98gBxndTbURRYv0plvKx
	5vTAxnAoFzy1LhGdTKAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBmyO-0003yk-JR; Tue, 10 Mar 2020 22:03:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBmy8-0003wq-Ry
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 22:03:23 +0000
Received: by mail-wm1-x341.google.com with SMTP id r7so1761200wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 15:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=dYEP1uE4NnVFr/AeDKddTWSxJgA20EPFg2G+JAahXU0=;
 b=I20JsyOJIesiZZQ8aV/IdyM+r4UI4cQUwV9OU88GjMqXQdcGxyWCcTu+TKnMpQTwzR
 8zsRR1Ku3VvKEiqj1/PL8R5Nrk6wcQBvAnxyWKr7fOA7HdZ08IH0zfDTMBnRXrE4sv+B
 1FJbyCwTIoyCOqD2c6zdL2IiWQINHKswybaSp4LQ7NJ/mx5atiVaaCA7KJmFqkI1NxgO
 ZLyx0BgypSHUQzKXHvqeJWj1ZAU41f5jkODNqWwySdRgLuSbY/bjut3UAN1jCydVdFW5
 4q0nzPNiNsFhSQ2UmsMYO7SYzoSm7Xv0C8TZTspbL4HFRap19/7Ybum6IG+LQMJ662fW
 FIwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=dYEP1uE4NnVFr/AeDKddTWSxJgA20EPFg2G+JAahXU0=;
 b=ZvY6dWAk4XYxy1cU3Q8zSdWGIT4MgawCKRhGJTd7yVE5xT/heGECXXJAPEiCQWNpKr
 XHZtFmAN7gV+qfEqP5xZ6Wf/uKDcyYfAlA5t5cm9Q2oZeiTQAZ70906mFkR/htzUZQpV
 JJKJBixTPvA5VCrrvxTuYnWJ4WdqP0cV+cKRMOYsIbmO48RTcY9Ufvd7UTg3D7LgdcnW
 Ak8cCyz4eBmlGIzo9Zw8Nr4YR7hWpA2W20207xkpivOOfRafhfcuSs3aHv+qpW21LiJr
 4QVJIGnpwFRcONMQnW4FDZ0KT8e+dcCV6PreGqJNj8gJSI61ottezRH38Cr8UTW0hrKR
 Mzxw==
X-Gm-Message-State: ANhLgQ2vdGcPo5YvLI8vd4Q5JtB9gj22IC/odw/BC5u0/+2QbAwdjp6C
 brf8QbPw4CZp1rH9vPzBRd2Rnw==
X-Google-Smtp-Source: ADFU+vsFsnumgp9VoOGVYqCrNLZ5ay6csw80CWgZBfUy0rM6bs6wjkEgt0Ofqq4WtgfmKA4Ub4RhiQ==
X-Received: by 2002:a1c:4e14:: with SMTP id g20mr3853268wmh.143.1583877798471; 
 Tue, 10 Mar 2020 15:03:18 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id w67sm1892315wmb.41.2020.03.10.15.03.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Mar 2020 15:03:17 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: power: Fix dt_binding_check error
In-Reply-To: <CAL_JsqJAxfL_Q3HYHk_8VeefdXnhYT7kcPe3F5Gzk1Vfj+xtww@mail.gmail.com>
References: <1583164448-83438-1-git-send-email-jianxin.pan@amlogic.com>
 <7hsgiqra5x.fsf@baylibre.com>
 <CAL_JsqJAxfL_Q3HYHk_8VeefdXnhYT7kcPe3F5Gzk1Vfj+xtww@mail.gmail.com>
Date: Tue, 10 Mar 2020 15:03:15 -0700
Message-ID: <7h36afn9zw.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_150321_512582_62B38B26 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob Herring <robh+dt@kernel.org> writes:

> On Mon, Mar 2, 2020 at 10:31 AM Kevin Hilman <khilman@baylibre.com> wrote:
>>
>> Hi Jianxin,
>>
>> Jianxin Pan <jianxin.pan@amlogic.com> writes:
>>
>> > Missing ';' in the end of secure-monitor example node.
>> >
>> > Fixes: 165b5fb294e8 ("dt-bindings: power: add Amlogic secure power domains bindings")
>> > Reported-by: Rob Herring <robh+dt@kernel.org>
>> > Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>> > ---
>> >  Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>> > index af32209..bc4e037 100644
>> > --- a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>> > +++ b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>> > @@ -36,5 +36,5 @@ examples:
>> >              compatible = "amlogic,meson-a1-pwrc";
>> >              #power-domain-cells = <1>;
>> >          };
>> > -    }
>> > +    };
>>
>> Thanks for the fix.  Queued for v5.7.
>>
>> @Arnd, @Olof: you can ignore this one.  I requested Jianxin to send to
>> you thinking this was a fix for something you already queued, but it's
>> not.  I'll handle it.
>
> Someone has what needs fixing queued in linux-next, but this fix is
> still not there. Somehow it seems like features show up in linux-next
> faster than fixes for SoC tree...

The fix (this patch) is queued in my 'for-next' branch which I pushed
yesterday.  I guess it missed next-20200310 but should be in tomorrow.

Kevin


[1] https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git/log/?h=for-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
