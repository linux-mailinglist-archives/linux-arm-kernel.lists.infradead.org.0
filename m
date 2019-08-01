Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7360B7DFEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FWJqFfi6XUYamlZe4SY2kg2AZOm3u5Yi2tcmngFCrKo=; b=Fnnulgk/WW5V4EBBsu0zsQNTb
	Ja30QyS5UZgi2QV3v7bfb7xQUgDdLwKghvcxAJ1T3czl+QkFU2B9VxfaYxjRyK4Tm0JKNVshF6N2r
	mQGVyLE7QyjlvG7GM/Oy1Y2+/CGTV+hTjcsd+94k3J/lxou6hJcGAv0A5L5p9V1njYxb4rLvhx9JK
	xtw03bmQLvr2i6tHCDBYxeXY/6k0nEmCqR6vBdL8yMjMC9/JeXOjzz3sfsChtQyucVI0moGgnYHaf
	+jc9RrQhlt/oKH47IRdWJFrDqc2XFkW47gq3x2oZAhCGYfcosNmhhZUz6IlAIHRPtqT6gfaR2yXI5
	uCNpMXiYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDmK-0002FA-Jg; Thu, 01 Aug 2019 16:18:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htDm6-00029u-Qd
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 16:17:56 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 2F86A60790; Thu,  1 Aug 2019 16:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564676274;
 bh=9f4HQjscs5/Ehb2Crl8DCKPjm+oT5IGUO5fSHVOJagg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=h3LyqepF6GOPXKybGJnIBQ/BdAQIdw7YBp/0w3vDEWxTZMfw5TDsb1vEK4A8rr553
 eNozKvNqmgjVNWd3iWVx2ep0AyUMpjL29csAv5k9FlPEW0WSXgUvDr5w/r/ywwaDfe
 V5qjWzuhyDvxDSzcQZU3A1BPKBQHTtrSKys7vDN8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.226.58.28] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jhugo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2F4816043F;
 Thu,  1 Aug 2019 16:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564676273;
 bh=9f4HQjscs5/Ehb2Crl8DCKPjm+oT5IGUO5fSHVOJagg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=oD7uX7Ks4g+cpUqM147VW+9bKwblimFpPWCbQpRXsB7ExPO19S87y1xE/KsoY+JRv
 XwLhHTS9pIk9ZHkU8ITuZaF0m9yAwOtZESNzXtSLnIJFjqswyHmivP/MOuqXxw+wTy
 AB5j7taz8a8bab6g7ZYAUaP0XHVHz3LbjFKK8+4w=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2F4816043F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jhugo@codeaurora.org
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
To: Linus Walleij <linus.walleij@linaro.org>, Timur Tabi <timur@kernel.org>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
 <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
 <cbbe381e-a154-ced1-fbcb-9db2135e4e5b@codeaurora.org>
 <c2e5cd69-2f95-fc47-4541-17a1d744f003@kernel.org>
 <CACRpkdbpBnO4KgpjYReafWKKoq0AX5kAb99tCC9LXE0_7sW7Jg@mail.gmail.com>
From: Jeffrey Hugo <jhugo@codeaurora.org>
Message-ID: <561027aa-a0fc-61eb-2a06-595a9e6f59d3@codeaurora.org>
Date: Thu, 1 Aug 2019 10:17:52 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CACRpkdbpBnO4KgpjYReafWKKoq0AX5kAb99tCC9LXE0_7sW7Jg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_091754_904542_CBC9DDC6 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Lina Iyer <ilina@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Mark Brown <broonie@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/1/2019 1:09 AM, Linus Walleij wrote:
> On Thu, Aug 1, 2019 at 5:49 AM Timur Tabi <timur@kernel.org> wrote:
>> On 7/31/19 12:58 PM, Jeffrey Hugo wrote:
>>>>>
>>>>> Timur/Stephen: any ideas?
>>>
>>> Timur's CAF account is no longer valid, I added his @kernel one.
>>
>> Delete everything specific to the QDF2400.
> 
> It appears Mark is still using it in his test farm, and now its sole
> role is finding bugs in my code. Which it did! With so much elegance
> that we could fix it up quickly.
> 
>> Qualcomm has made it very clear that they have no interest in developing
>> ARM server chips.  No QDF2400 system ever made it to official production.
> 
> That's sad. I remember we had lots of discussions around this at the
> time. The ACPI code base and quirks we added is however used in
> other Qualcomm-based machines now (what Lee is doing), so the effort
> is not wasted at all.

There are a few QDF2400 systems around that are being supported. 
Certainly not to the scale that was intended/envisioned, but they do exist.

Feel free to poke me for questions/issues, although its not my primary 
job so responses may be a bit slow.


-- 
Jeffrey Hugo
Qualcomm Technologies, Inc. is a member of the
Code Aurora Forum, a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
