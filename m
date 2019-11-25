Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4A5108B77
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 11:15:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ADH8yy34f1Hw1yvCVDuIT0/QSiZwmfqFaaWbZgw8rJA=; b=LcQgkqIwVBUqVin8tuTc7mOlAG
	a+yvLc+r/Y4Hjxd16aBwnQ3EOf7QfSj8+EABpdkCiYHkdI6rbTmUvi1CTgl7sUe7z8AlLWDyzYdN9
	yJ0BjNl4BcA8npxPhD//aIwcFtrNPJmeZG+oXbMH5QtgKqrq7y7z9un7KejM3bULWUEJCcpsQjGNT
	c0rxbJ52RdXz3SygTyDoQ37OpI66ITLdZR5HW1/PvoccJKIj9UTNUAK4+0WdHZzyP5BFHYgAHqsqn
	Ps2G3Dvc1TJZ+OyXHsjzslVctzstdQ2dPMBr2tYnOOA7ZIPSN+fD3EsAz5vnhBOI+2v+qtGoC86YQ
	peBuyw1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZBOl-0001Sd-RE; Mon, 25 Nov 2019 10:15:15 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZBOT-0001Qq-Mh
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 10:14:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id t26so15234579wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 02:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=K61KDC/w3VRipSxtXvNga+5fh0z8paKLB1vFxmok1y4=;
 b=sA4wb45ovcGlqxPBCSA49oBborhJUSfY00UQh7VAfyxGrbMtidhQVtYZFRyr3wqOJA
 G/m4e9avLJSZHR1Z5k0yAZxZw48uBaTsChuzi6kJbExRffn8gEstelaJfoOhbUlKfUqh
 u2MBHnSlbHS7ztMLwvFR9EAG81WCr2HReBT/ByfS60J/hJQyFuRop2IIpnhwp3xTuIuZ
 2Sqshnu6va75Q7n2VH2ZZ0G8nnp/BnQazRgPdcJmtUS6SGGjTEOSlJjcB1B+0KzcgPk0
 w7eo3ivs+Vgev8jpsJVwduhhIVQC0Jj3RVvbQ7jTcLZG6i3vvqnzeH0x6iWNS6d4ZPU8
 aRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=K61KDC/w3VRipSxtXvNga+5fh0z8paKLB1vFxmok1y4=;
 b=l/wq2LC1tOb26cunA/cQLNRDM2LIVU3MUBJ+eq1821r6RPqwEhKCnd5Uq3QBM+/NzL
 Qq0GKGLpKM7vOqScEYd44bMsgZt2068WVfdPHx3LdljhzTmeR6SCZyl50qCXouP+NOIa
 4wQA7cQoZK54ppjJYdsQTZ0P+a17uGmaEABZ6CI1ARZIkJ/2883CNpYw/QQznts9ihUh
 u0eBO+UJLdWu27irVnJ0Qo4GGijsYa/FZsB3GLrvi7GEv0m3ymQXbcYsguMfvw5cMzdq
 +4Tpdw0sO2YOnhCvdU4GVFSrQ14yEnrsE6w+Sa/6c+xmV+mulEmsuKrigBWhOzmNHXcH
 N62A==
X-Gm-Message-State: APjAAAVFw8chcnht6EUkVKuPNAiV7czCvipg2YqIQseDsxNs8JqcC9CP
 mrGsEXt0+pOmDOt9hbN5rTwk6g==
X-Google-Smtp-Source: APXvYqxlqGbRVb1q7Ats9JEHWlI6DXCc42Eir63k/2XjzqDQfir3rntlAPQcFe8O/L4oiGkYaRuCRQ==
X-Received: by 2002:a7b:c76a:: with SMTP id x10mr26459343wmk.123.1574676895066; 
 Mon, 25 Nov 2019 02:14:55 -0800 (PST)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
 by smtp.gmail.com with ESMTPSA id 60sm8778477wrn.86.2019.11.25.02.14.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 02:14:54 -0800 (PST)
References: <1571382865-41978-1-git-send-email-jian.hu@amlogic.com>
 <1571382865-41978-4-git-send-email-jian.hu@amlogic.com>
 <1jsgnmba1a.fsf@starbuckisacylon.baylibre.com>
 <49b33e94-910b-3fd9-4da1-050742d07e93@amlogic.com>
 <1jblts3v7e.fsf@starbuckisacylon.baylibre.com>
 <f02b6fb2-5b98-0930-6d47-a3e65840fb82@amlogic.com>
 <1jh839f2ue.fsf@starbuckisacylon.baylibre.com>
 <20d04452-fc63-9e9e-220f-146b493a860f@amlogic.com>
 <1695e9b0-1730-eef6-491d-fe90ac897ee9@amlogic.com>
 <1jtv6yftmm.fsf@starbuckisacylon.baylibre.com>
 <9e652ed1-384e-f630-f2a4-0aa4486df577@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 3/3] clk: meson: a1: add support for Amlogic A1 clock
 driver
In-reply-to: <9e652ed1-384e-f630-f2a4-0aa4486df577@amlogic.com>
Date: Mon, 25 Nov 2019 11:14:53 +0100
Message-ID: <1j7e3oqn36.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_021457_739631_8A4577D5 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Thu 21 Nov 2019 at 04:21, Jian Hu <jian.hu@amlogic.com> wrote:

> Hi, Jerome
>
> On 2019/11/20 23:35, Jerome Brunet wrote:
>>
>> On Wed 20 Nov 2019 at 10:28, Jian Hu <jian.hu@amlogic.com> wrote:
>>
>>> Hi, jerome
>>>
>>> Is there any problem about fixed_pll_dco's parent_data?
>>>
>>> Now both name and fw_name are described in parent_data.
>>
>> Yes, there is a problem.  This approach is incorrect, as I've tried to
>> explain a couple times already. Let me try to re-summarize why this
>> approach is incorrect.
>>
>> Both fw_name and name should be provided when it is possible that
>> the DT does not describe the input clock. IOW, it is only for controllers
>> which relied on the global name so far and are now starting to describe
>> the clock input in DT
>>
>> This is not your case.
>> Your controller is new and DT will have the correct
>> info
>>
>> You are trying work around an ordering issue by providing both fw_name
>> and name. This is not correct and I'll continue to nack it.
>>
>> If the orphan clock is not reparented as you would expect, I suggest you
>> try to look a bit further at how the reparenting of orphans is done in
>> CCF and why it does not match your expectation.
>>
> I have debugged the handle for orphan clock in CCF, Maybe you are missing
> the last email.

Nope, got it the first time

> Even though the clock index exit, it will get failed for the orphan clock's
> parent clock due to it has not beed added to the provider.

If the provider is not registered yet, of course any query to it won't
work. This why I have suggested to this debug *further* :

* Is the orphan reparenting done when a new provider is registered ?
* If not, should it be done ? is this your problem ?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
