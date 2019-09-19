Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0830FB79F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9m+LpVFV9lsmz9DhH/DHXM7KsGkMBBT5cHP51b4xPQ8=; b=iXn5hD3mwkxtxt
	FslLyTJCNfrpdRjU8slb3NNwC23MdKHHx2qytohC9J5Zy/qk3BRJhVowan7O4kgSPI/d3tS3UjdAO
	dvIFUEnKUBMYa7niRHarxkV1j6ijbH/Os3Y3V0zOlVhTh2UT953dkUL9/v7Y/6UGZYaxkOqPkvEVa
	G7mROMKI3sNFI1908s2YS+seZRqAFKMnmt5c3uoMFUXfmT1crky8IJFGMVAgPJNO3VvBoHtOGpJ18
	vvefs3Tkh7+5McUe/yZo8AQxSM6oHK2qiosM7hmvuyBJ59l1IQ2A5RC6InkH+zfj6zxjfSzjbsa2+
	y7jDCLEDfSAalOTT9CpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAw1o-0002Tm-IX; Thu, 19 Sep 2019 12:59:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAw1Z-0002TI-AD
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 12:59:06 +0000
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 717A6218AF
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 12:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568897944;
 bh=Q8XQ7yEptEJjsrg2dRMQAh8Ewg1fi7/O+TC1/+NyGA8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=beNYs1IDfBymvGrrSglpl6q8PXqxictV6OYOE8gYvbQ85zRx4RNJaWg3gGeCnGp1f
 LK3jZRy0BUANXjWBm9PM4eTVHxeI0I2l6K9Gg3bwnrIa5WyQG6f5iIVBPQaPQDjrYl
 qJMFI/Ozb3fBpRkmZHHI+7HZX6CGH3X3sFMW2Hb0=
Received: by mail-ot1-f46.google.com with SMTP id s22so2962611otr.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 05:59:04 -0700 (PDT)
X-Gm-Message-State: APjAAAXvTwgVyZpOjOs678U9uSa7cKiNU+2aiiJni22y/ueptlE70hUY
 R8QspNOmOGpYPfbd/vabxejyexNlN/N3hq2u+3M=
X-Google-Smtp-Source: APXvYqyPpRpHKXGqXeiUp4UsE0gjnPTa12R2JBL+9NbOd7thAIFl1MrNFlIQaRaNj/YALaGFGqmZfNIqU3lo9cSjxn8=
X-Received: by 2002:a9d:6c9a:: with SMTP id c26mr6640459otr.241.1568897943807; 
 Thu, 19 Sep 2019 05:59:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680@eucas1p2.samsung.com>
 <20190918104634.15216-9-s.nawrocki@samsung.com> <20190919082211.GF13195@pi3>
 <a0072745-f7c1-86ad-2344-d73dd210e1ad@samsung.com>
In-Reply-To: <a0072745-f7c1-86ad-2344-d73dd210e1ad@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 19 Sep 2019 14:58:51 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfwAx7vWSWS0M1JuGJvn6tKTp9yaT2qEOwmAWTUdvoptQ@mail.gmail.com>
Message-ID: <CAJKOXPfwAx7vWSWS0M1JuGJvn6tKTp9yaT2qEOwmAWTUdvoptQ@mail.gmail.com>
Subject: Re: [PATCH v1 8/9] ASoC: samsung: arndale: Add missing OF node
 dereferencing
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_055905_372753_7CA7B830 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 ckeepax@opensource.cirrus.com,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 at 14:49, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>
> On 9/19/19 10:22, Krzysztof Kozlowski wrote:
> > Wasn't this issue introduced in 5/9? It looks weird to fix it here...
>
> It has not been introduced by 5/9, the issue was there already before
> my patch, there was even no remove() callback where OF node references
> could be dropped.

I see. Then please put it as first patch. You should not mix bugfixes
with features. If mixing, be sure they can be applied before the
features.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
