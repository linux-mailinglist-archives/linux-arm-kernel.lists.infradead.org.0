Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9C8195043
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 06:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1CdlUsauwvqEcJOUMXLWs6JDjOjQXs3nJRhLZfuiFY=; b=g9g8l3FA/w4YeQ
	9/sb1HF8xxoBx5oIkXVk2OtAvTTloaCkUNOgKTGh5sj6icZbYvIxZODNtCoVpzSvHDpePX4+sbLax
	OIYhISoYXeyki/w3+FI8NOmX8OflTOW+7H9QWPfVyzGbj8L6S6hiiWuwqLc+AaUiyMfLoXyiUTldj
	yTnkEaG+6qeC+AGK+LO/MU5PXFpJqHKZXvShUKhKJR0N1xMTcLLlwfGUddAERMYxbX9pZ7h3XYakJ
	yGbyopWrnV0VrURUWxw1yiYrLx+xji8aeWeB/vImNT2FeW8AOp9b87jpnTiMzSgYunDYL14oN4cO9
	B3p462xjWN4Rz8VOqt5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHhDX-0002WH-JZ; Fri, 27 Mar 2020 05:07:39 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHhDP-0002VR-Cf
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 05:07:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id x1so3027632plm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 22:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Iv3MEfa1fLsm1P+lQ/YbVFj+C1aE8Z6h4hjjsLO7OOA=;
 b=YDjzlvpe67j7di3PgiS4ehSR6OPFMJSMbRyvVc4p+WtJnPQu7MXIQSYnuCAqj3+dmH
 3/wSMiIsqWGZrca8fhRLpiAmJs5JvWsRt+U2YwRoGJxpzzBKJ3/O6GlSULOlrKKU+Nb1
 fnzYbhYpkvR9ZuyrTOXZuqYEfYAMRurk3NlmAV9M4owMpTFSbPD8AFh90Zxm1x5ludPS
 ayxCtQS2DG63k5saTyFAG+Ya7e29zwCIxm5BDMuPZfOfm0SIXpDCv/IXCu1lFX7ADzbZ
 4piykSSpSE0xy4r7PTjMM1EXWkZ08TqPFRFe7o/QPJhrdBAc+RzSftuWO/MoDauHQ6/X
 fdiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Iv3MEfa1fLsm1P+lQ/YbVFj+C1aE8Z6h4hjjsLO7OOA=;
 b=ouWlhN/EYMUtHgQxCOmw9VMXH5ulNVdGgXUlcVd95RGCoS+nvbh8dWKLCa10SIWfFL
 OyLA2CjqtjABsXWLRXenkhrcdG89Eibkm2wPuWniTRGJfMYMSxXi3TIe5B6seMIUz+Bb
 oc9Ibc6BluBr7MmqsVBd9mGHbZxAKog3Y9aJw/zNMXIRR6Xn3lO62Xy3/IfHhN8/UFBY
 0TZYpWbkFqsExHmI1NB/2s7+F4fGbv8uatMXGaHAPrXbSAdLoGgeWGUpHKDXN4ANI+Wr
 0xnPkcJWNlODQdgysbR2ljWhgAOkmgJKh0GAc3v843gaPGJGTPtgA5IpbSm/DnOfy5+S
 swHA==
X-Gm-Message-State: ANhLgQ1D0vWY/BPFdyk7hW2kFsGPM1PAA0QTfNtLaSOWDCH8vVbqKM8o
 vmLv4TfgeudQwxfI+CJq+QLEEA==
X-Google-Smtp-Source: ADFU+vsiIgtR6Lboeyp5Ru36Ts+J3wktuhfruYCvtyY4MG96Ha9RjX437sGp5QpcFX7cu3F/1IQ8rw==
X-Received: by 2002:a17:902:9890:: with SMTP id
 s16mr10752755plp.77.1585285649898; 
 Thu, 26 Mar 2020 22:07:29 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id r59sm2866290pjb.45.2020.03.26.22.07.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Mar 2020 22:07:29 -0700 (PDT)
Date: Fri, 27 Mar 2020 10:37:27 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: config: multi_v7 Use schedutil cpufreq
Message-ID: <20200327050727.yxzu4b5mu2rdkdz4@vireshk-i7>
References: <20200229210225.173084-1-linus.walleij@linaro.org>
 <20200302042205.tonnru7ysr46fht4@vireshk-i7>
 <CAK8P3a3CkAfozaMMNsGk5VDib53veMhm7ExWZT+A2gc+J_GqWA@mail.gmail.com>
 <CACRpkdaYo0w8Zy4MjxC9Hqhyv7rhOMzSf_t1ZqWnyXW=9Q7iJg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdaYo0w8Zy4MjxC9Hqhyv7rhOMzSf_t1ZqWnyXW=9Q7iJg@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_220731_954000_5FF1799E 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26-03-20, 23:08, Linus Walleij wrote:
> On Wed, Mar 25, 2020 at 5:28 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Mon, Mar 2, 2020 at 5:22 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> 
> > > FWIW, I have tried something similar for arm64 earlier.
> > >
> > > https://lore.kernel.org/lkml/af12e002bc165844101830c0eb00e283b536a879.1510813288.git.viresh.kumar@linaro.org/
> >
> > I've dropped this one and not applied it for now after rereading the old thread.
> > If there is a broader agreement on what the default should be, please
> > collect more Acks and we can apply whatever you come up with.
> 
> I think there is a more compelling argument: if I understand correctly
> the energy aware scheduling and HMP on big.LITTLE only works
> correctly if schedutil is used as cpufreq governor (correct Vincent, Viresh?)
> 
> That would make the default multi_v7 unusable (or misbehaving)
> on e.g. Vexpress TC2.
> 
> Thus I suspect the Vexpress and other machines using HMP
> and big.LITTLE should just select
> CPU_FREQ_DEFAULT_GOV_SCHEDUTIL in their Kconfig.
> 
> That will of course make it percolate up to multi_v7 by default
> as well.
> 
> If more magic configs are necessary to select to make a TC2
> work properly I'd like to know these as well so we can just select
> them all by default also for these targets.

I always agreed that schedutil must be selected as default governor
instead of ondemand and I still want to get my arm64 patch merged :)

And yes, schedutil will work the best for big LITTLE stuff.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
