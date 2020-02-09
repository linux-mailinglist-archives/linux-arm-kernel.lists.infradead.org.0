Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE01B1569FF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 12:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cQ2AMxkeJ34pE6jMRpVmoEpofWEPwKEe+lWHgPJzGk=; b=JxFUjBPFgRTsFr
	qNCpMoaUSwYVs4eNMcU/n14lPnb5GC6lLrwM2DuPDMSuOCqUeFQMlQXLPP3VKSd08gcmYmLzddUij
	Pkh/iSRuZdDdlits0Io5qbjtLzB5f6Vpki3vV5KVWY59kmu3y/q9dhEv47XT9OOLLvF47GLDU3B2u
	U3jiD3OBWxQoq88du4HhmEHVXcYsy0eFcwLo/wT7Al0uMRlAIelad7mEuNR1byG371ssdKNAYfjY5
	smzjaQy4idghjmmsDnoCvJb4ZEavQYiYsDWGnlL8jS3DrFpuPAq1qaM1InrPt/IQN1cx62Kbt+1tF
	gVmZtALvDzSPZJ/cN9AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0l7j-000348-4A; Sun, 09 Feb 2020 11:51:39 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0l7b-00033f-L9
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Feb 2020 11:51:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id z16so4442973iod.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 03:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sq5R9ahAL9Mr9V6FJNbQb8e+IZHCcD5EZ44nzkpqzUA=;
 b=rBmlLjSw4cvzylmGQGaWwEK/M4bf4HUZwDR+vV13sy12Hys6anu+hkbf665TNop6k3
 4gtgDSnKuZ4q4IauPnGHzDtp4ciXm7AQz/jexGEeuHX/8aKtrKCh9lN9PtzM3x0OUjUc
 GX9DC6VSBkKb2OUjyUgY8Gd9EWiVYqtj1Yox9YywAFnRIBUhIwLzZxz2EXPwaDB8281v
 YZtVQBu2VtIbOlXJJ3aQfFEbohYVEnlwzifOhebGdMF1iXwOFC5TYUhFa7Z8pOHHnSlu
 gUA7r3cuz6objWzk6dWGt8K6TZWlb7hcRNFVcZF0kDnT3nOJSDdt56152SGbxZ7OQc49
 7rLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sq5R9ahAL9Mr9V6FJNbQb8e+IZHCcD5EZ44nzkpqzUA=;
 b=YIynCH7+W1IvvGyy3705B17LEjSNqMzTNTyKt9pUC7o43Gelf2QwhXwayP2DvZhgcH
 m9FCrYQB+PYN+vjUKhNF7J5ck69+figAhLf2hyFnq4KjSn5UdOLWgoMENQNpN7emnJDh
 yUojl6/lq+lC9NMKJnnL96cw2+ivzfNV7U/DUxLB78Kdqsuvr8I5Q0lvQXRRKH7ZxD2M
 pJOmSWGot3RGHHteJqJvSWcthEScCl73tXWTCg7xnqrK6hbFFcXz7qOEAhiBpsqcFVWC
 p2WHVUUklfiriJkkB4kDjW6BN5zSR/LqT5yQAx6OIXLuSIdakfOlWhmXUKD85xYE3/s9
 vkMA==
X-Gm-Message-State: APjAAAXUEgK3J3Xa5WQTE4snVr7qtojV/nQye8h4YT7Rj/NId/I4JITZ
 /l5xBLSgRtR92SqzAedtTeIGzwPfub8+ZQAfeO7dtA==
X-Google-Smtp-Source: APXvYqyP38/P/44KzhWmMAfgVYgenviQtbgEKHBvrLKpW/Fper4GxgsFbB9OaHlLMZH9rSCS1/149yVurtFzf86rrTo=
X-Received: by 2002:a6b:b24c:: with SMTP id b73mr5153842iof.277.1581249088923; 
 Sun, 09 Feb 2020 03:51:28 -0800 (PST)
MIME-Version: 1.0
References: <c6f76adc-b32f-a64f-c7b1-417a26de1667@st.com>
In-Reply-To: <c6f76adc-b32f-a64f-c7b1-417a26de1667@st.com>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 9 Feb 2020 12:51:17 +0100
Message-ID: <CAOesGMhxN3MW69EcJ_DigrvfruHzACNP8J-JOR9GmCnk4Tjodw@mail.gmail.com>
Subject: Re: [GIT PULL] STi DT update for v5.6 round 1
To: Patrice CHOTARD <patrice.chotard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_035131_716891_4C0D6FD6 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "khilman@baylibre.com" <khilman@baylibre.com>,
 "arm@kernel.org" <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Patrice,

[Please also cc soc@kernel.org on pull requests, since they then end
up in our patchwork and we're less likely to miss them]

On Tue, Feb 4, 2020 at 1:37 PM Patrice CHOTARD <patrice.chotard@st.com> wrote:
>
> Hi Arnd, Olof, Kevin
>
> Please find STi dt update for v5.6 round 1:

The timing for this is bad. Material should arrive to our tree around
-rc6 timeframe for the previous release, for us to have time to merge
it and expose it in linux-next for a while before the merge window
opens.

>
> The following changes since commit d5226fa6dbae0569ee43ecfc08bdcd6770fc4755:
>
>
>   Linux 5.5 (2020-01-26 16:23:03 -0800)

... we also ask that the incoming branches are based on rc1 or rc2 of
the previous release, not the latest possible release (unless there's
a good reason for it).

>
> are available in the Git repository at:
>
>   git@gitolite.kernel.org:pub/scm/linux/kernel/git/pchotard/sti.git tags/sti-dt-for-5.6-round1

Please use the public git:// or https:// versions in pull requests.

> for you to fetch changes up to 21eebae9a11ff18fe6d6b43adccadd533abdf0d6:
>
>   ARM: stihxxx-b2120.dtsi: fixup sound frame-inversion (2020-02-04 11:21:37 +0100)
>
> ----------------------------------------------------------------
> STi dt fixes:
> -------------
>   - remove deprecated Synopsys PHY dt properties
>   - fix sound frame-inversion property
>
> ----------------------------------------------------------------
> Kuninori Morimoto (1):
>       ARM: stihxxx-b2120.dtsi: fixup sound frame-inversion
>
> Patrice Chotard (1):
>       ARM: dts: stih410-b2260: Remove deprecated snps PHY properties

It's a good idea to keep a reasonably consistent prefix usage. "ARM:
dts: <platform>:" is what we prefer, so feel free to touch that up for
patches that you apply.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
