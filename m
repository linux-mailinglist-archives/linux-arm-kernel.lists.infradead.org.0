Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE36018F160
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eneqxnoQTbmUz3Xg73KBTRK66Te+G5ZkhK9XUVEs+wQ=; b=cNloLrffZvtJN9lHUvzr0hzwEy
	lPF/28V3wuJw6ezsvxzhrGMq32AO+W2ijt1Kdtvd/4aGE5PXmBxbu5SNT3UVCCMok+pNY7Am2/xbF
	Rd3ukFh+JE7bD4Tl94595j2r8raXID3dmjgKDPIavgyHuWf4e/+80D8XzTKGz1YdMH7NPj/y004z0
	G+64CjAIYMPyjMMJIA0JXjmzAy9fq6rQEm04aBZMhXAwqccrUk2OmCAj+AS1d/zmJER4ooJLHCKvD
	JmcDrksmYiUKFBNTKumWs4CtGbzYHvbWZRlGGmqYtmCcF+09U5mIJrDROQixRUOiTVJNnTpVKBNkg
	ppXTYo1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJ0J-0004er-BY; Mon, 23 Mar 2020 09:04:15 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJ03-0004e9-6F
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:04:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id b12so677026wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 02:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=lPutVzS3Ynb1eSmgIsa4JmohPw4ZclRrh1KFVq8nWQ0=;
 b=waSIN8+ApYqW/LXnPGRL/NvneWe4/UMrJ9lHgLm+ihlGugDYOwJ6NZkrFpWxvP6MC8
 GNsIhdx1sE0PQNevvLnFU8JLGhBZQCcM2iuXOWZHDd6af+85XDnWTjRVbwkVfZgA6PeF
 l0e1vdhqnc8FBwWg8vUGp27gtAkcfvVU/5tktj+zX+p8+lBs6MC90BoMyIOLPH2MhaTo
 45RTZrMkvxEjep4JO6e+BufQZJamczxfLM8nme9e6rCkqkb9C0FBnOjVf9PxprElx5Zj
 rmrlPd6yS7hTFWmy4oW4XCTX9u6yeSNaotUzdicCYqM0JaLIz/ug+LCBJ9x1OWwCwopN
 OKDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=lPutVzS3Ynb1eSmgIsa4JmohPw4ZclRrh1KFVq8nWQ0=;
 b=AU4k8YGEy+bUGtDu/5PUB+MhbJqMo+5WfKpbhjLLAD0nBdlTEciLUgqzNrC2X420Qr
 p4gc4rwN56v417w9xpTCLqqide3Q/sRfc4MYWK7JNwpPOh0KKBT0rQiLjrL3bdFm5t6I
 OwXi7mzfJSEZIiRXxhhm8xaioXmbUfKqrjjWHSkObP6h6iaxH6o8S2jioiJ0Z5RrSCxB
 20w/NS/SU8hdoerSHgJkeIZHoFw3aaJUtEGgrBFq49jQX6iFwN0Q+R/ElPTGZExsZmnh
 NIm2k0CK+0RDQ9wbPEpAbDEHnZjOICYxWfJFgZnbZOPCJZTC4K5fJhjhwCW6obcO8dk0
 bj8w==
X-Gm-Message-State: ANhLgQ0Hk/6AL6iVdHq/jpSZPP9yHZtcRAkqox/wlppXqLshMLOoDQuW
 M1voVfEHd1MfhBq6nxnBn+ScXw==
X-Google-Smtp-Source: ADFU+vta0fIyRtESZphpxuC88pwvr1xjRflNRJ4U+UNesyEuY+m+xd0K3+8cVkrJCyM2KNvZ6DRGtA==
X-Received: by 2002:a1c:b144:: with SMTP id a65mr27313095wmf.54.1584954237568; 
 Mon, 23 Mar 2020 02:03:57 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id f15sm22881505wru.83.2020.03.23.02.03.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 02:03:56 -0700 (PDT)
References: <20200302125310.742-1-linux.amoon@gmail.com>
 <20200302125310.742-3-linux.amoon@gmail.com> <7hlfoir8rj.fsf@baylibre.com>
 <CAFBinCB2WXZNRg4wdFD0RJ5k4hHqcfAOCHemvHzZE42-Mo5vzA@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCHv2 2/2] clk: meson: g12a: set cpub_clk flags to
 CLK_IS_CRITICAL
In-reply-to: <CAFBinCB2WXZNRg4wdFD0RJ5k4hHqcfAOCHemvHzZE42-Mo5vzA@mail.gmail.com>
Date: Mon, 23 Mar 2020 10:03:55 +0100
Message-ID: <1jr1xjcuis.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_020359_228869_629E2E35 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, Anand Moon <linux.amoon@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 20 Mar 2020 at 00:39, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> Hi Kevin,
>
> On Mon, Mar 2, 2020 at 6:01 PM Kevin Hilman <khilman@baylibre.com> wrote:
> [...]
>> > updating flags to CLK_IS_CRITICAL which help enable all the parent for
>> > cpub_clk.
>>
>> With current mainline, I've tested DVFS using CPUfreq on both clusters
>> on odroid-n2, and both clusters are booting, so I don't understand the
>> need for this patch.
> I *think* there is a race condition at kernel boot between cpufreq and
> disabling orphaned clocks
> I'm not sure I fully understand it though and I don't have any G12B
> board to verify it
>
> my understanding is that u-boot runs Linux off CPU0 which is clocked by cpub_clk
> this means we need to keep cpub_clk enabled as long as Linux wants the
> CPU0 processor to be enabled (on 32-bit ARM platforms that would be
> smp_operations.cpu_{kill,die})
> cpufreq does not call clk_prepare_enable on the CPU clocks so this
> means that the orphaned clock cleanup mechanism can disable it "at any
> time",

If nothing calls enable the cpu clock while it is managed by Linux
(cpufreq), there might something worth fixing. Adding CLK_IS_CRITICAL
will mask an issue that is still not explained.

"at any time": absolutely not.
Disabling unused clocks, is done only once, at during the late_init
stage.

If your clock gets disabled later on, it means it has been turned on and
off by another driver (possibly due to probe deferral)

> killing everything running on CPU0 and CPU1 (which are both
> clocked by cpub_clk)
>
> I have no explanation why this depends on booting from SD or eMMC.
>
> for the 32-bit SoCs we have CLK_IS_CRITICAL on the CPU clock as well
> since commit 0dad1ec65bc30a
> on G12A we have CLK_IS_CRITICAL on the sys_pll clocks, however my
> understanding is that cpub_clk could also be fed by one of the
> fixed_pll derived clocks (which have a gate as well, which may or may
> not be turned off by the orphaned clock cleanup - that is pure
> speculation from my side though).

Yes there are other critical clocks on Amlogic, mostly because the SCP Fw
driver does not claim the clocks it depends on. At least we know why
this flag is set and there should be a comment associated with it.

ATM, the issue reported by Anand (anyone else ?) is not explained. 

>
>
> Martin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
